CREATE PROC [CommCRM].[CLEANUP_EXPIRED_RECORDS] AS

declare 
	@sql_query varchar(max),
	@nbr_statements int,
	@i int,
	@target_table varchar(255)

begin
 	
	-------- 1. Create loop for tables that are to be cleaned up -----------
	create table #cursor_temptable with (distribution = round_robin) 
	as
	select	
		ROW_NUMBER() OVER(ORDER BY (SELECT NULL)) AS sequence,
		target_table
	from 
		CommCRMConfig.CFG_SFDC_EXTRACTS
	where
		cleanup_expired_records = 'Y'

	set @nbr_statements = (SELECT COUNT(*) FROM #cursor_temptable)
	set @i = 1

	------ 2. Loop over each table to be cleaned up -------------
	WHILE   @i <= @nbr_statements
	BEGIN

		SELECT 
			@target_table = target_table
		FROM #cursor_temptable 
		WHERE sequence = @i

		------ 3. Delete the expired records from the table ------------
		set @sql_query = 'DELETE FROM CommCRM.' + upper(@target_table) + ' WHERE current_row = 0'

		exec(@sql_query)

		set @i +=1;

	end

	drop table #cursor_temptable	

end