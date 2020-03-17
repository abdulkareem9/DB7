CREATE TABLE [CommCRM].[E_SURVEY_TARGET]
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
	[LASTVIEWEDDATE] [datetime] NULL,
	[LASTREFERENCEDDATE] [datetime] NULL,
	[ACCOUNT_DISPLAY_NAME_VOD__C] [nvarchar](100) NULL,
	[ACCOUNT_VOD__C] [nvarchar](18) NULL,
	[CHANNELS_VOD__C] [nvarchar](255) NULL,
	[END_DATE_VOD__C] [date] NULL,
	[ENTITY_REFERENCE_ID_VOD__C] [nvarchar](100) NULL,
	[EXTERNAL_ID_VOD__C] [nvarchar](120) NULL,
	[LANGUAGE_VOD__C] [nvarchar](1000) NULL,
	[LOCK_VOD__C] [bit] NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[NO_AUTOASSIGN_VOD__C] [bit] NULL,
	[REGION_VOD__C] [nvarchar](255) NULL,
	[SEGMENT_VOD__C] [nvarchar](max) NULL,
	[START_DATE_VOD__C] [date] NULL,
	[STATUS_VOD__C] [nvarchar](1000) NULL,
	[SURVEY_VOD__C] [nvarchar](18) NULL,
	[TERRITORY_VOD__C] [nvarchar](255) NULL,
	[ZVOD_ADDRESS_VOD__C] [bit] NULL,
	[ZVOD_SPECIALTY_VOD__C] [bit] NULL,
	[TERRITORIES_VOD__C] [nvarchar](max) NULL,
	[USER_VOD__C] [nvarchar](18) NULL,
	[DETAIL_GROUP_VOD__C] [nvarchar](18) NULL,
	[PRODUCT_VOD__C] [nvarchar](18) NULL,
	[SENT_EMAIL_VOD__C] [nvarchar](18) NULL,
	[SUBMITTED_DATETIME_VOD__C] [datetime] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)