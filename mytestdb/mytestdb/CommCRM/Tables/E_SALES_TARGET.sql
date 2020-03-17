CREATE TABLE [CommCRM].[E_SALES_TARGET]
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
	[ELA_EXTERNAL_ID__C] [nvarchar](255) NULL,
	[ELA_PRODUCT__C] [nvarchar](18) NULL,
	[ELA_SALES_ACTUAL__C] [numeric](18, 0) NULL,
	[ELA_SALES_REP__C] [nvarchar](18) NULL,
	[ELA_SALES_TARGET_Y_1__C] [nvarchar](18) NULL,
	[ELA_SALES_TARGET__C] [numeric](18, 0) NULL,
	[ELA_MONTH__C] [nvarchar](1000) NULL,
	[ELA_CURRENCY__C] [nvarchar](1000) NULL,
	[ELA_QUARTER__C] [nvarchar](1000) NULL,
	[ELA_USE_BU_ALLOCATED_SALES__C] [bit] NULL,
	[ELA_YEAR__C] [nvarchar](1000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)