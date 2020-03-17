CREATE TABLE [CommCRMConfig].[DATAEXTRACT_FILE_LIST]
(
	[table_rowid] [int] IDENTITY(1,1) NOT NULL,
	[file_name] [varchar](255) NULL,
	[api_name] [varchar](255) NULL,
	[create_date] [datetime] NULL,
	[process_flag] [varchar](255) NULL,
	[processed_date] [datetime] NULL,
	[error_message] [varchar](8000) NULL,
	[sfdc_extract_count] [int] NULL,
	[sql_expired_count] [int] NULL,
	[sql_insert_count] [int] NULL,
	[DBR_process_flag] [varchar](255) NULL,
	[DBR_processed_date] [datetime] NULL,
	[DBR_sql_expired_count] [int] NULL,
	[DBR_sql_insert_count] [int] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)