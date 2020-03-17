CREATE PROC [CommCRM].[CREATE_TEMP_METADATA_STG_TABLE] @in_tablename [varchar](100) AS

declare 
	@table_name varchar(255),
	@new_table_query varchar(max)

begin 

	set @table_name = 'CommCRM.METADATA_STG_' + upper(@in_tablename)

	IF OBJECT_ID (@table_name) IS NOT NULL   
		exec('DROP table ' + @table_name)

	set @new_table_query = 'CREATE TABLE ' + @table_name + ' (field_name varchar(255), field_datatype varchar(255), field_length int, field_calculated varchar(255))'

	exec(@new_table_query)	

end