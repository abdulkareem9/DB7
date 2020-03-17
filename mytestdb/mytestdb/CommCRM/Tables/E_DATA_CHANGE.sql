CREATE TABLE [CommCRM].[E_DATA_CHANGE]
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
	[NAME] [nvarchar](80) NULL,
	[CREATEDDATE] [datetime] NULL,
	[CREATEDBYID] [nvarchar](18) NULL,
	[LASTMODIFIEDDATE] [datetime] NULL,
	[LASTMODIFIEDBYID] [nvarchar](18) NULL,
	[SYSTEMMODSTAMP] [datetime] NULL,
	[LASTACTIVITYDATE] [date] NULL,
	[MAYEDIT] [bit] NULL,
	[ISLOCKED] [bit] NULL,
	[LASTVIEWEDDATE] [datetime] NULL,
	[LASTREFERENCEDDATE] [datetime] NULL,
	[ELA_ACCOUNT__C] [nvarchar](18) NULL,
	[ELA_CHANGE_DESCRIPTION__C] [nvarchar](max) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[ELA_STATUS__C] [nvarchar](1000) NULL,
	[ELA_CHANGE_TYPE__C] [nvarchar](1000) NULL,
	[ELA_REQUESTED_BY__C] [nvarchar](18) NULL,
	[ELA_COMMENTS__C] [nvarchar](max) NULL,
	[ELA_DATA_STEWARD__C] [nvarchar](18) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)