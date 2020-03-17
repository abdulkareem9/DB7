CREATE TABLE [CommCRM].[E_SALES_TRANSACTION]
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
	[ELA_ACCOUNT__C] [nvarchar](18) NULL,
	[ELA_AMOUNT__C] [numeric](18, 0) NULL,
	[ELA_INVOICEDATE__C] [date] NULL,
	[ELA_INVOICE_NUMBER__C] [nvarchar](30) NULL,
	[ELA_PERIOD__C] [nvarchar](6) NULL,
	[ELA_QUANTITY__C] [numeric](18, 0) NULL,
	[ELA_SALES_PRODUCT_SUMMARY__C] [nvarchar](18) NULL,
	[ELA_SOURCECODE__C] [nvarchar](30) NULL,
	[ELA_SOURCEPRODUCTCODE__C] [nvarchar](50) NULL,
	[ELA_SOURCE_CUSTOMER_NO__C] [nvarchar](50) NULL,
	[ELA_EXTERNAL_ID__C] [nvarchar](255) NULL,
	[ELA_CURRENCY__C] [nvarchar](10) NULL,
	[ELA_PRODUCT__C] [nvarchar](18) NULL,
	[ELA_BUSINESS_UNIT__C] [nvarchar](1000) NULL,
	[ELA_SALES_CLASS__C] [nvarchar](1000) NULL,
	[ELA_SELLING_CUSTOMER__C] [nvarchar](80) NULL,
	[ELA_SALES_LINE_SUMMARY__C] [nvarchar](18) NULL,
	[ELA_AMOUNT_GROSS__C] [numeric](18, 0) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)