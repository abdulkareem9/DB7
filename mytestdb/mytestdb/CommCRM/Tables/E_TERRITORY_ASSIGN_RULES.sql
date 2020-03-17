CREATE TABLE [CommCRM].[E_TERRITORY_ASSIGN_RULES]
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
	[ELA_TERRITORY_DEFINITION__C] [nvarchar](18) NULL,
	[ELA_COUNTRY__C] [nvarchar](1000) NULL,
	[ELA_COUNTY__C] [nvarchar](50) NULL,
	[ELA_COVERAGE_LEVEL__C] [nvarchar](1000) NULL,
	[ELA_DISTRICT__C] [nvarchar](50) NULL,
	[ELA_FIPS_CODE__C] [nvarchar](10) NULL,
	[ELA_STATE__C] [nvarchar](1000) NULL,
	[ELA_ZIP__C] [nvarchar](20) NULL,
	[ELA_TERRITORY__C] [nvarchar](80) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)