CREATE TABLE [CommCRM].[E_SFE_METRIC]
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
	[LASTVIEWEDDATE] [datetime] NULL,
	[LASTREFERENCEDDATE] [datetime] NULL,
	[ELA_TERRITORY_DEFINITION__C] [nvarchar](18) NULL,
	[ELA_APRIL__C] [numeric](18, 0) NULL,
	[ELA_AUGUST__C] [numeric](18, 0) NULL,
	[ELA_CALENDAR_YEAR__C] [nvarchar](4) NULL,
	[ELA_DECEMBER__C] [numeric](18, 0) NULL,
	[ELA_FEBRUARY__C] [numeric](18, 0) NULL,
	[ELA_JANUARY__C] [numeric](18, 0) NULL,
	[ELA_JULY__C] [numeric](18, 0) NULL,
	[ELA_JUNE__C] [numeric](18, 0) NULL,
	[ELA_MARCH__C] [numeric](18, 0) NULL,
	[ELA_MAY__C] [numeric](18, 0) NULL,
	[ELA_NOVEMBER__C] [numeric](18, 0) NULL,
	[ELA_OCTOBER__C] [numeric](18, 0) NULL,
	[ELA_Q1__C] [numeric](18, 0) NULL,
	[ELA_Q2__C] [numeric](18, 0) NULL,
	[ELA_Q3__C] [numeric](18, 0) NULL,
	[ELA_Q4__C] [numeric](18, 0) NULL,
	[ELA_S1__C] [numeric](18, 0) NULL,
	[ELA_S2__C] [numeric](18, 0) NULL,
	[ELA_SEPTEMBER__C] [numeric](18, 0) NULL,
	[ELA_YEAR__C] [nvarchar](2) NULL,
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