CREATE PROC [CommCRM].[EXTRACT_MANAGE_FILE_ENTRY] @in_filename [varchar](1000),@in_apiname [varchar](100),@in_prcsd_flag [varchar](1),@in_sfdc_extract_count [int],@in_sql_expired_count [int],@in_sql_insert_count [int] AS

declare 
	@var_filecount int,
	@curr_datetime datetime

begin
 
	set @curr_datetime = getdate()
	---------------------------------------------------------
	------- Check if the file entry exists (START) ----------
	---------------------------------------------------------

	select 
		@var_filecount = count(1)
	from
		CommCRMConfig.DATAEXTRACT_FILE_LIST
	where
		file_name = @in_filename

	-- TODO: Delete the fields from SFDC_STG table that are in the CFG table exclusion list

	---------------------------------------------------------
	------- Check if the file entry exists (END) -------------
	---------------------------------------------------------

	---------------------------------------------------------
	------- Insert or Update file status (START) ------------
	---------------------------------------------------------

	--- If the table does not exist in SQL, create new file entry
	IF @var_filecount = 0
	begin

		insert into CommCRMConfig.DATAEXTRACT_FILE_LIST
		(
			file_name,
			api_name,
			create_date,
			process_flag,
			processed_date,
			sfdc_extract_count
		)
		values
		(
			@in_filename,
			@in_apiname,
			@curr_datetime,
			@in_prcsd_flag,
			null,
			@in_sfdc_extract_count
		)
		
	end
	
	--- Else If only one file exists in SQL, update to processed
	ELSE IF @var_filecount = 1
	begin

		update CommCRMConfig.DATAEXTRACT_FILE_LIST
		set
			process_flag = @in_prcsd_flag,
			processed_date = @curr_datetime,
			sql_expired_count = @in_sql_expired_count,
			sql_insert_count = @in_sql_insert_count
		where
			file_name = @in_filename

	end

	---- Else if more than 1 file exists, return error
	--ELSE
	--begin

	--	--RAISEERROR('More than 1 files found', '10', '1');

	--end

	---------------------------------------------------------
	------------ Sync Data in SQL table (END) ---------------
	---------------------------------------------------------

end