CREATE TABLE [CommCRM].[E_ACCOUNT_TACTIC]
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
	[ACCOUNT_VOD__C] [nvarchar](18) NULL,
	[ACCOUNT_PLAN_VOD__C] [nvarchar](18) NULL,
	[COMPLETE_VOD__C] [bit] NULL,
	[DESCRIPTION_VOD__C] [nvarchar](max) NULL,
	[PRODUCT_STRATEGY_VOD__C] [nvarchar](18) NULL,
	[TYPE_VOD__C] [nvarchar](1000) NULL,
	[PRODUCT_TACTIC_VOD__C] [nvarchar](18) NULL,
	[PRODUCT__C] [nvarchar](1000) NULL,
	[DUE_DATE__C] [date] NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[CALL_OBJECTIVE_PROGRESS_VOD__C] [nvarchar](100) NULL,
	[COMPLETED_CALL_OBJECTIVES_VOD__C] [numeric](18, 0) NULL,
	[PLAN_TACTIC_VOD__C] [nvarchar](18) NULL,
	[TOTAL_CALL_OBJECTIVES_VOD__C] [numeric](18, 0) NULL,
	[ELA_PRODUCTS__C] [nvarchar](18) NULL,
	[ELA_FROM_POSITION__C] [nvarchar](255) NULL,
	[ELA_TO_POSITION__C] [nvarchar](255) NULL,
	[ELA_PROGRESS__C] [nvarchar](100) NULL,
	[ELA_ACTUAL_DATE__C] [date] NULL,
	[ELA_TACTIC_STAKEHOLDER__C] [nvarchar](18) NULL,
	[ELA_START_DATE__C] [date] NULL,
	[ELA_GROW_DEFEND__C] [nvarchar](1000) NULL,
	[ELA_CUSTOMER_PEV__C] [nvarchar](100) NULL,
	[ELA_ASK__C] [nvarchar](100) NULL,
	[ELA_DELIVERED_VALUE__C] [nvarchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)