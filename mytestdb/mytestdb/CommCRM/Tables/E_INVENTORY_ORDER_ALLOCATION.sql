﻿CREATE TABLE [CommCRM].[E_INVENTORY_ORDER_ALLOCATION]
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
	[CREATEDDATE] [datetime] NULL,
	[CREATEDBYID] [nvarchar](18) NULL,
	[LASTMODIFIEDDATE] [datetime] NULL,
	[LASTMODIFIEDBYID] [nvarchar](18) NULL,
	[SYSTEMMODSTAMP] [datetime] NULL,
	[MAYEDIT] [bit] NULL,
	[ISLOCKED] [bit] NULL,
	[LASTVIEWEDDATE] [datetime] NULL,
	[LASTREFERENCEDDATE] [datetime] NULL,
	[ACTIVE_VOD__C] [bit] NULL,
	[ALLOCATION_END_DATE_VOD__C] [date] NULL,
	[ALLOCATION_START_DATE_VOD__C] [date] NULL,
	[ALLOW_DATE_EXCEPTIONS_VOD__C] [nvarchar](1000) NULL,
	[ALLOW_QUANTITY_EXCEPTIONS_VOD__C] [nvarchar](1000) NULL,
	[DESCRIPTION_VOD__C] [nvarchar](255) NULL,
	[EXTERNAL_ID_VOD__C] [nvarchar](100) NULL,
	[PRODUCT_ORDER_ALLOCATION_QUANTITY_VOD__C] [numeric](18, 0) NULL,
	[MINIMUM_SINGLE_ORDER_QUANTITY_VOD__C] [numeric](18, 0) NULL,
	[ORDER_END_DATE_VOD__C] [date] NULL,
	[ORDER_START_DATE_VOD__C] [date] NULL,
	[PARENT_ALLOCATION_ID_VOD__C] [nvarchar](18) NULL,
	[PRODUCT_VOD__C] [nvarchar](18) NULL,
	[USER_VOD__C] [nvarchar](18) NULL,
	[USER_ALLOCATION_GROUP_VOD__C] [nvarchar](1000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)