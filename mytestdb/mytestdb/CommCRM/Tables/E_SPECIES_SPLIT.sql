CREATE TABLE [CommCRM].[E_SPECIES_SPLIT]
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
	[RECORDTYPEID] [nvarchar](18) NULL,
	[CREATEDDATE] [datetime] NULL,
	[CREATEDBYID] [nvarchar](18) NULL,
	[LASTMODIFIEDDATE] [datetime] NULL,
	[LASTMODIFIEDBYID] [nvarchar](18) NULL,
	[SYSTEMMODSTAMP] [datetime] NULL,
	[MAYEDIT] [bit] NULL,
	[ISLOCKED] [bit] NULL,
	[ELA_ACCOUNT__C] [nvarchar](18) NULL,
	[ELA_BEEF_PCTG__C] [nvarchar](100) NULL,
	[ELA_BROILER_PCTG__C] [nvarchar](100) NULL,
	[ELA_CAT_PCTG__C] [nvarchar](100) NULL,
	[ELA_COMMENTS__C] [nvarchar](max) NULL,
	[ELA_DAIRY_PCTG__C] [nvarchar](100) NULL,
	[ELA_DIVISION__C] [nvarchar](1000) NULL,
	[ELA_DOG_PCTG__C] [nvarchar](100) NULL,
	[ELA_FOOD_SOLUTION_PCTG__C] [nvarchar](100) NULL,
	[ELA_HOG_PCTG__C] [nvarchar](100) NULL,
	[ELA_LAYER_PCTG__C] [nvarchar](100) NULL,
	[ELA_PRODUCT__C] [nvarchar](18) NULL,
	[ELA_EXTERNAL_ID__C] [nvarchar](255) NULL,
	[ELA_TURKEY_PCTG__C] [nvarchar](100) NULL,
	[ELA_EQUINE_PCTG__C] [nvarchar](100) NULL,
	[ELA_RABBIT_PCTG__C] [nvarchar](100) NULL,
	[ELA_SHEEP_PCTG__C] [nvarchar](100) NULL,
	[ELA_FISH_PCTG__C] [nvarchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)