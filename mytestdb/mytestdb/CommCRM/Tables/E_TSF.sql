CREATE TABLE [CommCRM].[E_TSF]
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
	[ADDRESS_VOD__C] [nvarchar](18) NULL,
	[LAST_ACTIVITY_DATE_VOD__C] [date] NULL,
	[MY_TARGET_VOD__C] [bit] NULL,
	[ROUTE_VOD__C] [nvarchar](1000) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[EXTERNAL_ID_VOD__C] [nvarchar](255) NULL,
	[TERRITORY_VOD__C] [nvarchar](80) NULL,
	[YTD_ACTIVITY_VOD__C] [numeric](18, 0) NULL,
	[PREFERRED_ACCOUNT_VOD__C] [nvarchar](18) NULL,
	[ALLOWED_PRODUCTS_VOD__C] [nvarchar](max) NULL,
	[ELA_PRIORITY__C] [nvarchar](1000) NULL,
	[ELA_MY_POTENTIAL__C] [nvarchar](1000) NULL,
	[ELA_MY_ZONE__C] [nvarchar](1000) NULL,
	[ELA_KEY_ACCOUNT__C] [bit] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)