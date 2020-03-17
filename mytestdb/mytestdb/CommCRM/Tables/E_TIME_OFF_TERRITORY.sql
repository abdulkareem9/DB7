CREATE TABLE [CommCRM].[E_TIME_OFF_TERRITORY]
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
	[LASTACTIVITYDATE] [date] NULL,
	[MAYEDIT] [bit] NULL,
	[ISLOCKED] [bit] NULL,
	[LASTVIEWEDDATE] [datetime] NULL,
	[LASTREFERENCEDDATE] [datetime] NULL,
	[REASON_VOD__C] [nvarchar](1000) NULL,
	[TERRITORY_VOD__C] [nvarchar](255) NULL,
	[DATE_VOD__C] [date] NULL,
	[TIME_VOD__C] [nvarchar](1000) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[HOURS_OFF_VOD__C] [nvarchar](1000) NULL,
	[START_TIME_VOD__C] [nvarchar](1000) NULL,
	[ELA_COMMENTS__C] [nvarchar](max) NULL,
	[ELA_OWNER_LOOKUP__C] [nvarchar](18) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)