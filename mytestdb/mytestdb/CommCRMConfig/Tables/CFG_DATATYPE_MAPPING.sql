CREATE TABLE [CommCRMConfig].[CFG_DATATYPE_MAPPING]
(
	[sfdc_datatype] [varchar](255) NULL,
	[sql_datatype] [varchar](255) NULL,
	[sql_length] [varchar](255) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)