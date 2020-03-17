CREATE TABLE [CommCRMConfig].[CFG_SFDC_EXTRACTS]
(
	[table_rowid] [int] IDENTITY(1,1) NOT NULL,
	[api_name] [varchar](255) NULL,
	[target_table] [varchar](255) NULL,
	[last_extract_date] [datetime] NULL,
	[last_metadata_sync_date] [varchar](1000) NULL,
	[exclude_columns] [varchar](8000) NULL,
	[extract_filters] [varchar](8000) NULL,
	[field_mapping] [varchar](max) NULL,
	[load_group] [varchar](255) NULL,
	[cleanup_expired_records] [varchar](1) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[api_name] ASC
	)
)