CREATE TABLE [CommCRM].[E_ORDER_ADJUSTMENT]
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
	[ELA_ORDER__C] [nvarchar](18) NULL,
	[ELA_ADJUSTMENT_AMOUNT__C] [nvarchar](100) NULL,
	[ELA_APPROVED_BY__C] [nvarchar](18) NULL,
	[ELA_COUNTY_TAX__C] [nvarchar](100) NULL,
	[ELA_CREDIT_DEBIT__C] [nvarchar](1000) NULL,
	[ELA_DOSE_DISCOUNT_INCENTIVE__C] [nvarchar](100) NULL,
	[ELA_DOSE_DISCOUNT_OTHER__C] [nvarchar](100) NULL,
	[ELA_DOSE_PRICE__C] [nvarchar](100) NULL,
	[ELA_DOSES__C] [numeric](18, 0) NULL,
	[ELA_EXTERNAL_ID__C] [nvarchar](255) NULL,
	[ELA_LINE_NUMBER__C] [nvarchar](6) NULL,
	[ELA_PRODUCT__C] [nvarchar](18) NULL,
	[ELA_REASON__C] [nvarchar](1000) NULL,
	[ELA_SAP_ORDER_NUMBER__C] [nvarchar](255) NULL,
	[ELA_SPECIAL_TAX__C] [nvarchar](100) NULL,
	[ELA_STATE_TAX__C] [nvarchar](100) NULL,
	[ELA_STATUS_DATE__C] [datetime] NULL,
	[ELA_STATUS__C] [nvarchar](1000) NULL,
	[ELA_UNITS__C] [numeric](18, 0) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)