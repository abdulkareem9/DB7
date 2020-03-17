CREATE TABLE [CommCRM].[E_EMAIL_ACTIVITY]
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
	[RECORDTYPEID] [nvarchar](18) NULL,
	[CREATEDDATE] [datetime] NULL,
	[CREATEDBYID] [nvarchar](18) NULL,
	[LASTMODIFIEDDATE] [datetime] NULL,
	[LASTMODIFIEDBYID] [nvarchar](18) NULL,
	[SYSTEMMODSTAMP] [datetime] NULL,
	[LASTACTIVITYDATE] [date] NULL,
	[MAYEDIT] [bit] NULL,
	[ISLOCKED] [bit] NULL,
	[SENT_EMAIL_VOD__C] [nvarchar](18) NULL,
	[ACTIVITY_DATETIME_VOD__C] [datetime] NULL,
	[CITY_VOD__C] [nvarchar](20) NULL,
	[CLICK_URL_VOD__C] [nvarchar](1000) NULL,
	[CLIENT_NAME_VOD__C] [nvarchar](20) NULL,
	[CLIENT_OS_VOD__C] [nvarchar](20) NULL,
	[CLIENT_TYPE_VOD__C] [nvarchar](20) NULL,
	[COUNTRY_VOD__C] [nvarchar](20) NULL,
	[DEVICE_TYPE_VOD__C] [nvarchar](20) NULL,
	[EVENT_MSG_VOD__C] [nvarchar](max) NULL,
	[EVENT_TYPE_VOD__C] [nvarchar](1000) NULL,
	[IP_ADDRESS_VOD__C] [nvarchar](32) NULL,
	[REGION_VOD__C] [nvarchar](20) NULL,
	[USER_AGENT_VOD__C] [nvarchar](255) NULL,
	[VAULT_DOC_ID_VOD__C] [nvarchar](100) NULL,
	[VAULT_DOC_NAME_VOD__C] [nvarchar](100) NULL,
	[VAULT_DOCUMENT_MAJOR_VERSION_VOD__C] [nvarchar](10) NULL,
	[VAULT_DOCUMENT_MINOR_VERSION_VOD__C] [nvarchar](10) NULL,
	[VAULT_DOCUMENT_NUMBER_VOD__C] [nvarchar](100) NULL,
	[VAULT_DOCUMENT_TITLE_VOD__C] [nvarchar](255) NULL,
	[VAULT_INSTANCE_ID_VOD__C] [nvarchar](100) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)