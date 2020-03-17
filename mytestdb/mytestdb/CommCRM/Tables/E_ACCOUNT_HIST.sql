CREATE TABLE [CommCRM].[E_ACCOUNT_HIST]
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
	[ISDELETED] [bit] NULL,
	[ACCOUNTID] [nvarchar](18) NULL,
	[CREATEDBYID] [nvarchar](18) NULL,
	[CREATEDDATE] [datetime] NULL,
	[FIELD] [nvarchar](1000) NULL,
	[OLDVALUE] [nvarchar](4000) NULL,
	[NEWVALUE] [nvarchar](4000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)