﻿CREATE TABLE [CommCRM].[E_CYCLE_PLAN_TARGET]
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
	[CYCLE_PLAN_VOD__C] [nvarchar](18) NULL,
	[ACTUAL_CALLS_VOD__C] [numeric](18, 0) NULL,
	[CYCLE_PLAN_ACCOUNT_VOD__C] [nvarchar](18) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[ORIGINAL_PLANNED_CALLS_VOD__C] [numeric](18, 0) NULL,
	[PLANNED_CALLS_VOD__C] [numeric](18, 0) NULL,
	[TOTAL_ACTUAL_CALLS_VOD__C] [numeric](18, 0) NULL,
	[TOTAL_PLANNED_CALLS_VOD__C] [numeric](18, 0) NULL,
	[ZVOD_DISPLAY_PRODUCT_DETAILS_VOD__C] [bit] NULL,
	[EXTERNAL_ID_VOD__C] [nvarchar](100) NULL,
	[SCHEDULED_CALLS_VOD__C] [numeric](18, 0) NULL,
	[TOTAL_SCHEDULED_CALLS_VOD__C] [numeric](18, 0) NULL,
	[ZVOD_ADDRESS_NAME__C] [nvarchar](80) NULL,
	[ZVOD_ADDRESS_CITY_VOD__C] [nvarchar](50) NULL,
	[ZVOD_ADDRESS_ZIP_VOD__C] [nvarchar](20) NULL,
	[ZVOD_ACCOUNT_PHONE__C] [nvarchar](40) NULL,
	[ZVOD_ACCOUNT_ELA_ZONE__C] [nvarchar](1000) NULL,
	[ELA_LAST_CALL_DATE__C] [date] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)