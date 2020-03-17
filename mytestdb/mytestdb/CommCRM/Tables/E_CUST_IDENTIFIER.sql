CREATE TABLE [CommCRM].[E_CUST_IDENTIFIER]
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
	[LASTVIEWEDDATE] [datetime] NULL,
	[LASTREFERENCEDDATE] [datetime] NULL,
	[ELA_TYPE__C] [nvarchar](100) NULL,
	[ELA_ID__C] [nvarchar](100) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[ELA_CUSTID_ACCOUNT__C] [nvarchar](18) NULL,
	[ELA_COUNTRY__C] [nvarchar](2) NULL,
	[ELA_EXTERNAL_ID__C] [nvarchar](255) NULL,
	[ELA_ADDRESS_LINE_1__C] [nvarchar](80) NULL,
	[ELA_ADDRESS_LINE_2__C] [nvarchar](100) NULL,
	[ELA_CITY__C] [nvarchar](50) NULL,
	[ELA_STATE__C] [nvarchar](50) NULL,
	[ELA_ZIP__C] [nvarchar](25) NULL,
	[ELA_CUSTOMER_NAME__C] [nvarchar](100) NULL,
	[ELA_MARKET_CATEGORY__C] [nvarchar](1000) NULL,
	[ELA_SAP_SHIP_TO__C] [bit] NULL,
	[ELA_PAYMENT_TERMS__C] [nvarchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)