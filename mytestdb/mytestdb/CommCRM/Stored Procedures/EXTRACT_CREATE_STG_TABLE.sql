CREATE PROC [CommCRM].[EXTRACT_CREATE_STG_TABLE] @in_tablename [varchar](100) AS

declare 
	@var_base_table_name varchar(255),
	@var_stg_table_name varchar(255),
	@new_table_query varchar(max),
	@json_text varchar(max)

begin 

	set @var_base_table_name = 'CommCRM.' + @in_tablename
	set @var_stg_table_name = 'CommCRM.STG_EXTRACT_' + @in_tablename
	

	select 
		@json_text = field_mapping 
	from 
		CommCRMConfig.CFG_SFDC_EXTRACTS 
	where 
		target_table = @in_tablename

	SELECT @json_text = value
	FROM OPENJSON(@json_text)
	where type = 5

	SELECT @json_text = STRING_AGG(value, ',') 
	FROM OPENJSON(@json_text)

	IF OBJECT_ID (@var_stg_table_name) IS NOT NULL   
		exec('DROP table ' + @var_stg_table_name)

	print(@json_text)
	print(@var_stg_table_name)

	set @new_table_query = 'CREATE TABLE ' + @var_stg_table_name + ' with (distribution = round_robin, clustered index (ID)) as Select ' + @json_text

	print(@new_table_query)

	set @new_table_query = @new_table_query + ' from ' + @var_base_table_name + ' where 1 = 2'

	print(@new_table_query)

	exec(@new_table_query)	

end