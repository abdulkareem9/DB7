CREATE TABLE [CommCRM].[E_FEED_ASSAY_CA]
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
	[ELA_PCT_CLAIM__C] [nvarchar](50) NULL,
	[ELA_ACCOUNT__C] [nvarchar](18) NULL,
	[ELA_ASSAY_REQUESTED__C] [nvarchar](100) NULL,
	[ELA_CUSTOMER_SAMPLE_ID__C] [nvarchar](50) NULL,
	[ELA_DATE_APPROVED__C] [date] NULL,
	[ELA_EXPECTED_LEVEL__C] [nvarchar](50) NULL,
	[ELA_EXTERNAL_ID__C] [nvarchar](100) NULL,
	[ELA_FEED_DESCRIPTION__C] [nvarchar](max) NULL,
	[ELA_LAB_SAMPLE_ID__C] [nvarchar](50) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[ELA_RECIPIENT_EMAIL__C] [nvarchar](80) NULL,
	[ELA_RECIPIENT_FAX__C] [nvarchar](40) NULL,
	[ELA_RESULT__C] [nvarchar](50) NULL,
	[ELA_SPECIES__C] [nvarchar](50) NULL,
	[ELA_SUBMITTER__C] [nvarchar](max) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)