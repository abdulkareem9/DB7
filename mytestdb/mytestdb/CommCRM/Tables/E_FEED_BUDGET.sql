﻿CREATE TABLE [CommCRM].[E_FEED_BUDGET]
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
	[ELA_PCT_DDGS_INCLUSION__C] [nvarchar](100) NULL,
	[ELA_PCT_SBM_INCLUSION__C] [nvarchar](100) NULL,
	[ELA_ADDITIONAL_PROFILE_DATA__C] [nvarchar](18) NULL,
	[ELA_DIET_PHASE__C] [nvarchar](1000) NULL,
	[ELA_EXTERNAL_ID__C] [nvarchar](60) NULL,
	[ELA_LBS_OF_FEED__C] [numeric](18, 0) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[ELA_POSITION__C] [nvarchar](1000) NULL,
	[ELA_PRODUCT_MED_ADD_DOSE__C] [nvarchar](1000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)