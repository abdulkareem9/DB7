﻿CREATE TABLE [CommCRM].[E_MULTICHANNEL_CONSENT]
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
	[MAYEDIT] [bit] NULL,
	[ISLOCKED] [bit] NULL,
	[LASTVIEWEDDATE] [datetime] NULL,
	[LASTREFERENCEDDATE] [datetime] NULL,
	[ACCOUNT_VOD__C] [nvarchar](18) NULL,
	[CAPTURE_DATETIME_VOD__C] [datetime] NULL,
	[CHANNEL_VALUE_VOD__C] [nvarchar](255) NULL,
	[DETAIL_GROUP_VOD__C] [nvarchar](18) NULL,
	[EXTERNAL_ID_VOD__C] [nvarchar](120) NULL,
	[LAST_DEVICE_VOD__C] [nvarchar](1000) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[OPT_EXPIRATION_DATE_VOD__C] [date] NULL,
	[OPT_TYPE_VOD__C] [nvarchar](1000) NULL,
	[OPTOUT_EVENT_TYPE_VOD__C] [nvarchar](1000) NULL,
	[PRODUCT_VOD__C] [nvarchar](18) NULL,
	[SIGNATURE_DATETIME_VOD__C] [datetime] NULL,
	[SIGNATURE_ID_VOD__C] [nvarchar](30) NULL,
	[SIGNATURE_VOD__C] [nvarchar](max) NULL,
	[SAMPLE_CONSENT_TEMPLATE_DATA_VOD__C] [nvarchar](100) NULL,
	[SAMPLE_CONSENT_TEMPLATE_VOD__C] [nvarchar](18) NULL,
	[CONSENT_LINE_VOD__C] [nvarchar](18) NULL,
	[CONSENT_TYPE_VOD__C] [nvarchar](18) NULL,
	[DEFAULT_CONSENT_TEXT_VOD__C] [nvarchar](max) NULL,
	[DISCLAIMER_TEXT_VOD__C] [nvarchar](max) NULL,
	[SUB_CHANNEL_KEY_VOD__C] [nvarchar](255) NULL,
	[CONSENT_CONFIRM_DATETIME_VOD__C] [datetime] NULL,
	[RELATED_TRANSACTION_ID_VOD__C] [nvarchar](50) NULL,
	[SENT_EMAIL_VOD__C] [nvarchar](18) NULL,
	[CONTENT_TYPE_VOD__C] [nvarchar](18) NULL,
	[RECEIPT_EMAIL_VOD__C] [nvarchar](80) NULL,
	[RECEIPT_SENT_EMAIL_TRANSACTION_ID_VOD__C] [nvarchar](255) NULL,
	[RECEIPT_SENT_EMAIL_VOD__C] [nvarchar](18) NULL,
	[CHANNEL_SOURCE_VOD__C] [nvarchar](255) NULL,
	[ELA_INTERNALLY_SYNCED__C] [bit] NULL,
	[ELA_RECORD_CREATION_SOURCE__C] [nvarchar](1000) NULL,
	[ELA_SENT_TO_CDC__C] [bit] NULL,
	[ELA_CDC_SYNC_STATUS__C] [nvarchar](1000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)