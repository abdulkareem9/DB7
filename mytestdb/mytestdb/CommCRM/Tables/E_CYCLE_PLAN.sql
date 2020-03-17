CREATE TABLE [CommCRM].[E_CYCLE_PLAN]
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
	[CREATEDDATE] [datetime] NULL,
	[CREATEDBYID] [nvarchar](18) NULL,
	[LASTMODIFIEDDATE] [datetime] NULL,
	[LASTMODIFIEDBYID] [nvarchar](18) NULL,
	[SYSTEMMODSTAMP] [datetime] NULL,
	[MAYEDIT] [bit] NULL,
	[ISLOCKED] [bit] NULL,
	[LASTVIEWEDDATE] [datetime] NULL,
	[LASTREFERENCEDDATE] [datetime] NULL,
	[ACTIVE_VOD__C] [bit] NULL,
	[COMMENTS_VOD__C] [nvarchar](max) NULL,
	[END_DATE_VOD__C] [date] NULL,
	[EXTERNAL_ID_VOD__C] [nvarchar](100) NULL,
	[LOCK_VOD__C] [bit] NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[START_DATE_VOD__C] [date] NULL,
	[STATUS_VOD__C] [nvarchar](1000) NULL,
	[TERRITORY_VOD__C] [nvarchar](100) NULL,
	[ELA_ENABLE_AUTO_MANAGEMENT__C] [bit] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)