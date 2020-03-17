CREATE PROC [CommCRM].[TEST_METADATA_SYNC_FIELDS] @tablename [varchar](100) AS

declare 
	@new_table_query varchar(max),
	@alter_query varchar(max),
	@field_name varchar(255), 
	@var_exclude_colums varchar(8000),
	@field_datatype varchar(255),
	@field_length int, 
	@sql_field_name varchar(255),
	@sql_field_datatype varchar(255),
	@field_mapping varchar(max),
	@nbr_statements int,
	@i int,
	@modify_mapping varchar(1) = 'N',
	@view_name varchar(100),
	@isdeleted_flag varchar(1) = 'N'
			

begin
 
	------------------ Set variables -----------------------
	select @view_name = 'CommCRM.V_' + upper(api_name)
	from CommCRMConfig.CFG_SFDC_EXTRACTS
	where target_table = @tablename
	
	---------------------------------------------------------
	------- Prepare SFDC Metadata Details (START) -----------
	---------------------------------------------------------

	--drop table #temp_sfdc_fields

	set @new_table_query = 'create table #temp_sfdc_fields with (distribution = round_robin) as select * from CommCRM.METADATA_STG_' + upper(@tablename +' where field_calculated = ''FALSE''')

	exec(@new_table_query)

	
	-- Delete the fields from SFDC_STG table that are in the CFG table exclusion list
	select @var_exclude_colums = exclude_columns
	from   CommCRMConfig.CFG_SFDC_EXTRACTS
	where  target_table = @tablename

	delete from #temp_sfdc_fields
	where  upper(field_name) in (select upper(trim(value)) from string_split(@var_exclude_colums, ','))

	
	-- Update the SFDC fields datatype to map to SQL field datatypes
	update #temp_sfdc_fields
	set
		field_datatype = 
		(
			select 
				sql_datatype + 
				case 
					when sql_length = '0' then ''
					when sql_length = 'SFDC' then '(' + trim(str(field_length)) + ')'
					else '(' + sql_length + ')'
				end
			from 
				CommCRMConfig.CFG_DATATYPE_MAPPING 
			where 
				sfdc_datatype = field_datatype
		)

	---------------------------------------------------------
	------- Prepare SFDC Metadata Details (END) -------------
	---------------------------------------------------------

	---------------------------------------------------------
	----------- Sync Data in SQL table (START) --------------
	---------------------------------------------------------

	--- If the table does not exist in SQL, create new table
	IF OBJECT_ID ('CommCRM.TST_'+@tablename) IS NULL
	begin

		---------------------------------------------------------
		------------ Create new SQL table (START) ---------------
		---------------------------------------------------------

		set @modify_mapping = 'Y' 
		set @isdeleted_flag = 'N'

		create table #cursor_temptable with (distribution = round_robin) 
		as
		select	
			ROW_NUMBER() OVER(ORDER BY (SELECT NULL)) AS sequence,
			sfdc.field_name, 
			sfdc.field_datatype
		from 
			#temp_sfdc_fields sfdc

		set @nbr_statements = (SELECT COUNT(*) FROM #cursor_temptable)
		set @i = 1

		set @new_table_query = 'CREATE TABLE CommCRM.TST_' + @tablename + '('
		set @new_table_query = @new_table_query + ' TABLE_ROWID int identity, ID nvarchar(18), CURRENT_ROW int, START_DATE date, EXPIRED_DATE date, CREATED_BY nvarchar(1000), CREATED_DATE datetime, UPDATED_BY nvarchar(1000), UPDATED_DATE datetime, '

		WHILE   @i <= @nbr_statements
		BEGIN
				
			SELECT 
				@field_name = field_name,
				@field_datatype = field_datatype
			FROM #cursor_temptable 
			WHERE sequence = @i

			if upper(@field_name) != 'ID'
				set @new_table_query = @new_table_query + upper(@field_name) + ' ' + @field_datatype + ', '

			if upper(@field_name) = 'ISDELETED'
				set @isdeleted_flag = 'Y'

			set @i +=1;

		end

		drop table #cursor_temptable

		if right(rtrim(@new_table_query),1) = ','
			set @new_table_query = substring(rtrim(@new_table_query),1,len(rtrim(@new_table_query))-1)

		set @new_table_query = @new_table_query + ') with (clustered index (ID))'

		exec(@new_table_query)

		---------------------------------------------------------
		------------- Create new SQL table (END) ----------------
		---------------------------------------------------------

		---------------------------------------------------------
		------------- Create current data view (START) ----------
		---------------------------------------------------------


--		IF OBJECT_ID (@view_name) IS NOT NULL   
--			exec('DROP view ' + @view_name)
--
--		If @isdeleted_flag = 'Y'
--			set @new_table_query = 'Create view ' + @view_name + ' as select * from CommCRM.' + @tablename + ' where current_row = 1 and isdeleted = 0'
--		else
--			set @new_table_query = 'Create view ' + @view_name + ' as select * from CommCRM.' + @tablename + ' where current_row = 1'
--
--		exec(@new_table_query)
--
--		set @new_table_query = ''
--
		---------------------------------------------------------
		------------- Create current data view (END) ------------
		---------------------------------------------------------
		
	end
	
	--- Else If the table exists in SQL, check for change in columns
--	ELSE
--	begin
	--
	--	---------------------------------------------------------
	--	------- Prepare SQL Metadata Details (START) ------------
	--	---------------------------------------------------------
	--
	--	create table #temp_sql_fields with (distribution = round_robin) as
	--	select 
	--		upper(c.name) field_name,
	--		t.Name field_datatype,
	--		case 
	--			when t.name = 'nvarchar' then c.max_length/2 
	--			else c.max_length end field_length
	--	from    
	--		sys.columns c
	--		inner join sys.types t ON c.user_type_id = t.user_type_id
	--	where
	--		c.object_id = object_id('CommCRM.' + @tablename)
	--
	--
	--	update #temp_sql_fields
	--	set
	--		field_datatype = field_datatype + '(' + trim(case when field_length = 0 then 'MAX' else str(field_length) end) + ')'
	--	where
	--		field_datatype in ('nvarchar', 'varchar')
	--
	--	---------------------------------------------------------
	--	------- Prepare SQL Metadata Details (END) --------------
	--	---------------------------------------------------------
	--
	--	---------------------------------------------------------
	--	--- Add/ Alter Columns if different than SFDC (START) ---
	--	--------------------------------------------------------- 
	--
	--	create table #cursor_temptable with (distribution = round_robin) 
	--	as
	--	select	
	--		ROW_NUMBER() OVER(ORDER BY (SELECT NULL)) AS sequence,
	--		sfdc.field_name, 
	--		sfdc.field_datatype, 
	--		sfdc.field_length, 
	--		sql.field_name as sql_field_name, 
	--		sql.field_datatype as sql_field_datatype
	--	from 
	--		#temp_sfdc_fields sfdc
	--		left join #temp_sql_fields sql on upper(sfdc.field_name) = upper(sql.field_name)
	--	where 
	--		sql.field_name is null 
	--		or sql.field_datatype != sfdc.field_datatype
	--
	--	set @nbr_statements = (SELECT COUNT(*) FROM #cursor_temptable)
	--	set @i = 1
	--
	--	WHILE   @i <= @nbr_statements
	--	BEGIN
	--			
	--		SELECT 
	--			@field_name = field_name,
	--			@field_datatype = field_datatype,
	--			@field_length = field_length,
	--			@sql_field_name = sql_field_name,
	--			@sql_field_datatype = sql_field_datatype
	--		FROM #cursor_temptable 
	--		WHERE sequence = @i
	--
	--		if @sql_field_name is null
	--		begin 
	--			set @modify_mapping = 'Y'
	--			set @alter_query = 'ALTER TABLE CommCRM.' + @tablename + ' add ' + upper(@field_name) + ' ' + @field_datatype
	--			exec(@alter_query)
	--			set @alter_query = ''
	--		end
	--
	--		else if @sql_field_datatype != @field_datatype
	--		begin
	--			set @modify_mapping = 'Y'
	--			set @alter_query = 'ALTER TABLE CommCRM.' + @tablename + ' alter column ' + upper(@field_name) + ' ' + @field_datatype
	--			exec(@alter_query)
	--			set @alter_query = ''
	--		end
	--
	--		set @i +=1;
	--
	--	end
	--
	--	drop table #cursor_temptable

		---------------------------------------------------------
		---- Add/ Alter Columns if different than SFDC (END) ----
		---------------------------------------------------------

	--end

	---------------------------------------------------------
	------------ Sync Data in SQL table (END) ---------------
	---------------------------------------------------------

	---------------------------------------------------------
	---------- Refresh View Definition (START) --------------
	---------------------------------------------------------

	--IF OBJECT_ID (@view_name, 'V') IS NOT NULL
	--
	--begin
	--	select
	--		@alter_query = definition
	--	from 
	--		sys.objects o
	--		join sys.sql_modules m on m.object_id = o.object_id
	--	where 
	--		o.object_id = object_id(@view_name, 'V')
	--
	--
	--	set @alter_query = replace(@alter_query, 'CREATE', 'ALTER')
	--
	--	exec (@alter_query)
	--
	--end
	---------------------------------------------------------
	----------- Refresh View Definition (END) ---------------
	---------------------------------------------------------



	---------------------------------------------------------
	----------- Update Object Mapping (START) ---------------
	---------------------------------------------------------

			
--	create table #cursor_temptable with (distribution = round_robin) 
--	as
--	select	
--		ROW_NUMBER() OVER(ORDER BY (SELECT NULL)) AS sequence,
--		sfdc.field_name
--	from 
--		#temp_sfdc_fields sfdc
--
--	set @nbr_statements = (SELECT COUNT(*) FROM #cursor_temptable)
--	set @i = 1
--	set @field_mapping = '{"type":"TabularTranslator","columnMappings":{'
--
--	WHILE   @i <= @nbr_statements
--	begin
--
--		SELECT @field_name = field_name
--		FROM #cursor_temptable 
--		WHERE sequence = @i
--
--		set @field_mapping = @field_mapping + '"' + @field_name + '":"' + upper(@field_name) + '",'
--
--		set @i +=1;
--
--	end
--
--	if right(rtrim(@field_mapping),1) = ','
--		set @field_mapping = substring(rtrim(@field_mapping),1,len(rtrim(@field_mapping))-1)
--
--	set @field_mapping = @field_mapping + '}}'
--
--	drop table #cursor_temptable
--
--	update CommCRMConfig.CFG_SFDC_EXTRACTS
--	set field_mapping = @field_mapping
--	where target_table = @tablename
--
	
	---------------------------------------------------------
	------------ Update Object Mapping (END) ----------------
	---------------------------------------------------------

	set @new_table_query = 'drop table CommCRM.METADATA_STG_' + @tablename

	--exec(@new_table_query)

end


exec [CommCRM].[TEST_METADATA_SYNC_FIELDS]  'E_ACCOUNT'

select * from commcrm.e_account_tst

select * from #temp_sfdc_fields