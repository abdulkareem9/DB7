﻿CREATE TABLE [CommCRM].[TRANSIT_SUGGESTIONS_LOAD_HISTORY]
(
	[TABLE_ROWID] [int] IDENTITY(1,1) NOT NULL,
	[TITLE_VOD__C] [nvarchar](255) NULL,
	[OWNERID] [nvarchar](18) NULL,
	[ACCOUNT_VOD__C] [nvarchar](18) NULL,
	[ELA_CRM_ID__C] [int] NULL,
	[CUSTOMER_IDENTIFIER] [nvarchar](100) NULL,
	[REASON_VOD__C] [nvarchar](2000) NULL,
	[PRIORITY_VOD__C] [nvarchar](255) NULL,
	[RECORD_TYPE_NAME_VOD__C] [nvarchar](2000) NULL,
	[POSTED_DATE_VOD__C] [date] NULL,
	[EXPIRATION_DATE_VOD__C] [date] NULL,
	[DISMISSED_VOD__C] [nvarchar](1) NULL,
	[SUPPRESSED_VOD__C] [nvarchar](1) NULL,
	[NO_HOMEPAGE_VOD__C] [nvarchar](1) NULL,
	[PLANNED_CALL_DATE_VOD__C] [date] NULL,
	[EMAIL_TEMPLATE_ID_VOD__C] [nvarchar](255) NULL,
	[EMAIL_TEMPLATE_VAULT_ID_VOD__C] [nvarchar](255) NULL,
	[EMAIL_TEMPLATE_VOD__C] [nvarchar](255) NULL,
	[PRODUCT_VOD__C] [nvarchar](2000) NULL,
	[ELA_CAMPAIGN_ID__C] [nvarchar](80) NULL,
	[ELA_CAMPAIGN_NAME__C] [nvarchar](255) NULL,
	[ACCOUNT_PRIORITY_SCORE_VOD__C] [int] NULL,
	[DISPLAY_SCORE_VOD__C] [nvarchar](1) NULL,
	[CALC_RECORDTYPE_ID] [nvarchar](18) NULL,
	[CALC_ACCOUNT_ID] [nvarchar](18) NULL,
	[CALC_EXTERNAL_ID] [nvarchar](100) NULL,
	[CREATEDDATE] [datetime] NULL,
	[PROCESSED_FLAG] [nvarchar](1) NULL,
	[ERROR_REASON] [nvarchar](2000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)