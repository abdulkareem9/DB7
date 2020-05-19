﻿CREATE TABLE [CommCRM].[E_PRODUCT_METRICS]
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
	[MAYEDIT] [bit] NULL,
	[ISLOCKED] [bit] NULL,
	[ACCOUNT_VOD__C] [nvarchar](18) NULL,
	[PRODUCTS_VOD__C] [nvarchar](18) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[EXTERNAL_ID_VOD__C] [nvarchar](255) NULL,
	[DETAIL_GROUP_VOD__C] [nvarchar](18) NULL,
	[ELA_ADOPTION_LADDER_TOPIC__C] [nvarchar](1000) NULL,
	[ELA_ADOPTION_LADDER__C] [nvarchar](1000) NULL,
	[ELA_MRKT_ACCESS_RESTRICTION__C] [nvarchar](1000) NULL,
	[ELA_BARRIERS__C] [nvarchar](1000) NULL,
	[ELA_USAGE_LEVEL__C] [nvarchar](1000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)