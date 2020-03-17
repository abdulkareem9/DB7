CREATE PROC [CommCRM].[RESET_CRM_DATA_ENVIRONMENT] AS

declare 
	@executing_user varchar(1000),
	@sql_query varchar(max),
	@nbr_statements int,
	@i int,
	@target_table varchar(255)

begin
 
	------------------ Check if user authorized -----------------------
	select @executing_user = upper(current_user)

	if 
		@executing_user like 'SAM%'
		or @executing_user like 'ABDUL%'
		or @executing_user like 'VARUN%'
			or @executing_user like 'COMM%'
	
	begin

		-------- 1. Truncate all base tables -----------
		create table #cursor_temptable with (distribution = round_robin) 
		as
		select	
			ROW_NUMBER() OVER(ORDER BY (SELECT NULL)) AS sequence,
			target_table
		from 
			CommCRMConfig.CFG_SFDC_EXTRACTS

		set @nbr_statements = (SELECT COUNT(*) FROM #cursor_temptable)
		set @i = 1

		WHILE   @i <= @nbr_statements
		BEGIN

			SELECT 
				@target_table = target_table
			FROM #cursor_temptable 
			WHERE sequence = @i

			set @sql_query = 'TRUNCATE TABLE CommCRM.' + upper(@target_table)

			exec(@sql_query)

			set @i +=1;

		end

		drop table #cursor_temptable


		----------- 2. Truncate File list table ----------------
		TRUNCATE TABLE [CommCRMConfig].[DATAEXTRACT_FILE_LIST]


		---------- 3. Reset last_extract_date in config table -----------

		UPDATE CommCRMConfig.CFG_SFDC_EXTRACTS
		set last_extract_date = '01-JAN-1900'	

	end

	else
		print('Unauthorized User')
	

end