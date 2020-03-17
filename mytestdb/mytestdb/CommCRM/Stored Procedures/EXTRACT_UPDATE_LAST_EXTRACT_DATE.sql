CREATE PROC [CommCRM].[EXTRACT_UPDATE_LAST_EXTRACT_DATE] @in_apiname [varchar](100),@in_lastextractdatetime [varchar](100) AS

declare 
	@last_extract_datetime varchar(100)

begin

	set @last_extract_datetime = LEFT(@in_lastextractdatetime, LEN(@in_lastextractdatetime) - CHARINDEX('.',REVERSE(@in_lastextractdatetime)) + 4)
 
	update CommCRMConfig.CFG_SFDC_EXTRACTS
	set last_extract_date = @last_extract_datetime
	where api_name = @in_apiname

end