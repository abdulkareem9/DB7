CREATE PROC [CommCRM].[EXTRACT_GET_SFDC_FIELD_LIST] @in_apiname [varchar](100) AS

declare 
	@out_sfdc_field_list varchar(max),
	@json_text varchar(max),
	@column_name varchar(255),
	@nbr_statements int,
	@i int

begin 

	set @out_sfdc_field_list = ''

	select 
		@json_text = field_mapping 
	from 
		CommCRMConfig.CFG_SFDC_EXTRACTS 
	where 
		api_name = @in_apiname

	SELECT @json_text = value
	FROM OPENJSON(@json_text)
	where type = 5

	---------------- Get fields to be inserted ------------------------
	create table #cursor_temptable
	(
	sequence int,
	column_name varchar(255)
	)
	with (distribution = round_robin) 

	insert into #cursor_temptable
	select 
		ROW_NUMBER() OVER(ORDER BY (SELECT NULL)) AS sequence,
		"key" as column_name
	FROM OPENJSON(@json_text)

	set @nbr_statements = (SELECT COUNT(*) FROM #cursor_temptable)
	set @i = 1

	WHILE   @i <= @nbr_statements
	begin

		SELECT @column_name = column_name
		FROM #cursor_temptable 
		WHERE sequence = @i

		set @out_sfdc_field_list = @out_sfdc_field_list + @column_name + ','

		set @i +=1;

	end

	if right(rtrim(@out_sfdc_field_list),1) = ','
		set @out_sfdc_field_list = substring(rtrim(@out_sfdc_field_list),1,len(rtrim(@out_sfdc_field_list))-1)

	drop table #cursor_temptable

	SELECT @out_sfdc_field_list as out_sfdc_field_list

end