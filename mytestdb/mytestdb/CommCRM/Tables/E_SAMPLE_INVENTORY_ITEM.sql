CREATE TABLE [CommCRM].[E_SAMPLE_INVENTORY_ITEM]
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
	[UNLOCK_VOD__C] [bit] NULL,
	[LOT_VOD__C] [nvarchar](80) NULL,
	[SAMPLE_VOD__C] [nvarchar](100) NULL,
	[COUNT_VOD__C] [numeric](18, 0) NULL,
	[INVENTORY_NAME_VOD__C] [nvarchar](18) NULL,
	[EXPECTED_QUANTITY_VOD__C] [numeric](18, 0) NULL,
	[EXPIRATION_DATE_VOD__C] [date] NULL,
	[U_M_VOD__C] [nvarchar](100) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)