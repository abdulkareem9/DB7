﻿CREATE TABLE [CommCRM].[E_CONSENT_LINE]
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
	[CONSENT_TYPE_VOD__C] [nvarchar](18) NULL,
	[DETAIL_GROUP_DISPLAY_NAME_VOD__C] [nvarchar](100) NULL,
	[DETAIL_GROUP_VOD__C] [nvarchar](18) NULL,
	[DISPLAY_ORDER_VOD__C] [numeric](18, 0) NULL,
	[END_DATE_VOD__C] [date] NULL,
	[GROUP_BY_VOD__C] [nvarchar](255) NULL,
	[PRODUCT_DISPLAY_NAME_VOD__C] [nvarchar](100) NULL,
	[PRODUCT_VOD__C] [nvarchar](18) NULL,
	[START_DATE_VOD__C] [date] NULL,
	[SUB_CHANNEL_DESCRIPTION_VOD__C] [nvarchar](max) NULL,
	[SUB_CHANNEL_DISPLAY_NAME_VOD__C] [nvarchar](100) NULL,
	[SUB_CHANNEL_KEY_VOD__C] [nvarchar](255) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)