CREATE TABLE [CommCRM].[E_REPORT_CALL_TARGET]
(
	[TABLE_ROWID] [int] IDENTITY(1,1) NOT NULL,
	[ID] [nvarchar](18) NULL,
	[CURRENT_ROW] [int] NULL,
	[START_DATE] [date] NULL,
	[EXPIRED_DATE] [date] NULL,
	[CREATED_BY] [nvarchar](1000) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_BY] [nvarchar](1000) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[OWNERID] [nvarchar](18) NULL,
	[ISDELETED] [bit] NULL,
	[NAME] [nvarchar](80) NULL,
	[RECORDTYPEID] [nvarchar](18) NULL,
	[CREATEDDATE] [datetime] NULL,
	[CREATEDBYID] [nvarchar](18) NULL,
	[LASTMODIFIEDDATE] [datetime] NULL,
	[LASTMODIFIEDBYID] [nvarchar](18) NULL,
	[SYSTEMMODSTAMP] [datetime] NULL,
	[MAYEDIT] [bit] NULL,
	[ISLOCKED] [bit] NULL,
	[ELA_ACCOUNT__C] [nvarchar](18) NULL,
	[ELA_AMOUNT_ACTUAL__C] [numeric](18, 0) NULL,
	[ELA_DAILY_TARGET__C] [numeric](18, 0) NULL,
	[ELA_DATE__C] [date] NULL,
	[ELA_EXTERNAL_ID__C] [nvarchar](255) NULL,
	[ELA_OWNER_LOOKUP__C] [nvarchar](18) NULL,
	[ELA_TOT_DAYS__C] [numeric](18, 0) NULL,
	[ELA_TOT_RECORD_COUNT__C] [numeric](18, 0) NULL,
	[ELA_TARGET_RECORD__C] [nvarchar](18) NULL,
	[ELA_CALL_DAYS__C] [numeric](18, 0) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)