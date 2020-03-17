CREATE TABLE [CommCRM].[E_MEDICAL_EVENT]
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
	[LASTACTIVITYDATE] [date] NULL,
	[MAYEDIT] [bit] NULL,
	[ISLOCKED] [bit] NULL,
	[LASTVIEWEDDATE] [datetime] NULL,
	[LASTREFERENCEDDATE] [datetime] NULL,
	[PRIMARY_PRODUCT__C] [nvarchar](1000) NULL,
	[DESCRIPTION_VOD__C] [nvarchar](max) NULL,
	[START_DATE_VOD__C] [date] NULL,
	[LOCATION__C] [nvarchar](40) NULL,
	[END_DATE_VOD__C] [date] NULL,
	[SECONDARY_PRODUCT__C] [nvarchar](1000) NULL,
	[WEBSITE__C] [nvarchar](1000) NULL,
	[ACTIVE_VOD__C] [bit] NULL,
	[EVENT_TYPE__C] [nvarchar](1000) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[ELA_PRIMARY_PRODUCT__C] [nvarchar](18) NULL,
	[ELA_SECONDARY_PRODUCT__C] [nvarchar](18) NULL,
	[ADDRESS_VOD__C] [nvarchar](18) NULL,
	[ELA_DIVISIONS__C] [nvarchar](4000) NULL,
	[ALTERNATE_NAME_VOD__C] [nvarchar](100) NULL,
	[ELA_EXTERNAL_ID__C] [nvarchar](255) NULL,
	[COUNTRY_NAME_VOD__C] [nvarchar](255) NULL,
	[EVENT_DISPLAY_NAME_VOD__C] [nvarchar](80) NULL,
	[WALK_IN_FIELDS_VOD__C] [nvarchar](255) NULL,
	[ACCOUNT_ATTENDEE_FIELDS_VOD__C] [nvarchar](max) NULL,
	[CONTACT_ATTENDEE_FIELDS_VOD__C] [nvarchar](max) NULL,
	[USER_ATTENDEE_FIELDS_VOD__C] [nvarchar](max) NULL,
	[SPONSOR_VOD__C] [nvarchar](255) NULL,
	[WEB_SOURCE_VOD__C] [nvarchar](max) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)