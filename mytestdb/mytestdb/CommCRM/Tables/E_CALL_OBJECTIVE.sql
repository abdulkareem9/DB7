CREATE TABLE [CommCRM].[E_CALL_OBJECTIVE]
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
	[BUSINESS_EVENT_TARGET_VOD__C] [nvarchar](18) NULL,
	[ACCOUNT_VOD__C] [nvarchar](18) NULL,
	[BUSINESS_EVENT_VOD__C] [nvarchar](18) NULL,
	[CALL2_VOD__C] [nvarchar](18) NULL,
	[COMPLETED_FLAG_VOD__C] [bit] NULL,
	[PRE_EXPLAIN_FLAG_VOD__C] [bit] NULL,
	[INFORMATION_VOD__C] [nvarchar](100) NULL,
	[COMMENT_VOD__C] [nvarchar](max) NULL,
	[FROM_DATE_VOD__C] [date] NULL,
	[TO_DATE_VOD__C] [date] NULL,
	[DATE_VOD__C] [datetime] NULL,
	[DELIVERY_METHOD_VOD__C] [nvarchar](1000) NULL,
	[NUMBER_OF_PATIENTS_VOD__C] [numeric](18, 0) NULL,
	[NUMBER_OF_PIS_VOD__C] [numeric](18, 0) NULL,
	[NCW_REASON_VOD__C] [nvarchar](1000) NULL,
	[ACCOUNT_TACTIC_VOD__C] [nvarchar](18) NULL,
	[PRODUCT_VOD__C] [nvarchar](18) NULL,
	[NAME_VOD__C] [nvarchar](80) NULL,
	[ACCOUNT_PLAN_VOD__C] [nvarchar](18) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)