CREATE PROC [CommCRM].[EXTRACT_MERGE_DATA] @in_tablename [varchar](100) AS

declare 
	@var_base_tablename varchar(255),
	@var_stg_tablename varchar(255),
	@var_query nvarchar(max), 
	@var_stg_table_columns varchar(max),
	@column_name varchar(255),
	@nbr_statements int,
	@i int,
	@count_expired int,
	@count_inserted int,
	@start_time datetime

begin
 
	
	---------------- Set variables ---------------------------------

	set @var_base_tablename = 'CommCRM.' + @in_tablename
	set @var_stg_tablename = 'CommCRM.STG_EXTRACT_' + @in_tablename
	set @var_stg_table_columns = ''
	set @start_time = getutcdate()

	----------- Expire old records from base table ------------------

	set @var_query = 
	'update ' + @var_base_tablename + ' ' +
	'set 
		current_row = 0,
		expired_date = getutcdate(),
		updated_by = current_user,
		updated_date = getutcdate()
	where ' + 
		'ID in (select ID from ' + @var_stg_tablename + ')' +
		' and current_row != 0'

	exec(@var_query)

	set @var_query = 
	N'select
		@cnt = count(*)
	from ' +
		@var_base_tablename + ' ' +
	'where   
		updated_date > ''' + convert(nvarchar(20), @start_time) + ''''

	print(@var_query)

	exec sp_executesql @var_query, N'@cnt int out', @count_expired out

	---------------- Get fields to be inserted ----------------------
	create table #cursor_temptable with (distribution = round_robin) 
	as
	select 
		ROW_NUMBER() OVER(ORDER BY (SELECT NULL)) AS sequence,
		c.name as column_name
	from    
		sys.columns c
	where
		c.object_id = object_id(@var_stg_tablename)

	set @nbr_statements = (SELECT COUNT(*) FROM #cursor_temptable)
	set @i = 1

	WHILE   @i <= @nbr_statements
	begin

		SELECT @column_name = column_name
		FROM #cursor_temptable 
		WHERE sequence = @i

		set @var_stg_table_columns = @var_stg_table_columns + @column_name + ', '

		set @i +=1;

	end

	if right(rtrim(@var_stg_table_columns),1) = ','
		set @var_stg_table_columns = substring(rtrim(@var_stg_table_columns),1,len(rtrim(@var_stg_table_columns))-1)

	drop table #cursor_temptable

	print(@var_stg_table_columns)


	----------- Insert new records in base table ------------------

	set @var_query = 
	'insert into ' + @var_base_tablename + ' ' +
	'(' +
		@var_stg_table_columns + ',' +
		'current_row, ' +
		'start_date,' +
		'created_by,' +
		'created_date' +
	')' +
	'select ' + 
		@var_stg_table_columns + ', ' +
		'1, ' +
		'getutcdate(), ' +
		'current_user, ' +
		'getutcdate() ' +
	'from ' + @var_stg_tablename

	exec(@var_query)

	set @var_query = 
	N'select
		@cnt = count(*)
	from ' +
		@var_base_tablename + ' ' +
	'where   
		created_date > ''' + convert(nvarchar(20), @start_time) + ''''

	exec sp_executesql @var_query, N'@cnt int out', @count_inserted out

	----------- Drop Stage table ------------------

	set @var_query = 'drop table ' + @var_stg_tablename

	exec(@var_query)

	select @count_expired as count_expired, @count_inserted as count_inserted

end