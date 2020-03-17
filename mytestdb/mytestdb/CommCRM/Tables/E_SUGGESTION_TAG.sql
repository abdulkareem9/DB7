﻿CREATE TABLE [CommCRM].[E_SUGGESTION_TAG]
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
	[SUGGESTION_VOD__C] [nvarchar](18) NULL,
	[DETAIL_GROUP_VOD__C] [nvarchar](18) NULL,
	[DRIVER_VOD__C] [nvarchar](255) NULL,
	[EMAIL_FRAGMENT_ORDER_VOD__C] [nvarchar](255) NULL,
	[EMAIL_FRAGMENT_VOD__C] [nvarchar](18) NULL,
	[EXTERNAL_ID_VOD__C] [nvarchar](255) NULL,
	[PRODUCT_VOD__C] [nvarchar](18) NULL,
	[RECORD_TYPE_NAME_VOD__C] [nvarchar](80) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)