CREATE TABLE [CommCRM].[E_SENT_EMAIL]
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
	[ACCOUNT_EMAIL_VOD__C] [nvarchar](80) NULL,
	[ACCOUNT_VOD__C] [nvarchar](18) NULL,
	[APPROVED_EMAIL_TEMPLATE_VOD__C] [nvarchar](18) NULL,
	[CAPTURE_DATETIME_VOD__C] [datetime] NULL,
	[DETAIL_GROUP_VOD__C] [nvarchar](18) NULL,
	[EMAIL_CONFIG_VALUES_VOD__C] [nvarchar](max) NULL,
	[EMAIL_CONTENT2_VOD__C] [nvarchar](max) NULL,
	[EMAIL_CONTENT_VOD__C] [nvarchar](max) NULL,
	[EMAIL_FRAGMENTS_VOD__C] [nvarchar](max) NULL,
	[EMAIL_SENT_DATE_VOD__C] [datetime] NULL,
	[FAILURE_MSG_VOD__C] [nvarchar](255) NULL,
	[LAST_ACTIVITY_DATE_VOD__C] [datetime] NULL,
	[LAST_DEVICE_VOD__C] [nvarchar](1000) NULL,
	[MC_CAPTURE_DATETIME_VOD__C] [datetime] NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[PRODUCT_VOD__C] [nvarchar](18) NULL,
	[SENDER_EMAIL_VOD__C] [nvarchar](80) NULL,
	[STATUS_VOD__C] [nvarchar](1000) NULL,
	[VALID_CONSENT_EXISTS_VOD__C] [bit] NULL,
	[RECEIPT_ENTITY_TYPE_VOD__C] [nvarchar](1000) NULL,
	[RECEIPT_RECORD_ID_VOD__C] [nvarchar](100) NULL,
	[SUGGESTION_VOD__C] [nvarchar](18) NULL,
	[SCHEDULED_SEND_DATETIME_VOD__C] [datetime] NULL,
	[EMAIL_SOURCE_VOD__C] [nvarchar](255) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)