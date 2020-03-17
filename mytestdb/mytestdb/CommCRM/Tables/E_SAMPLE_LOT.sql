CREATE TABLE [CommCRM].[E_SAMPLE_LOT]
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
	[SAMPLE_LOT_ID_VOD__C] [nvarchar](200) NULL,
	[ACTIVE_VOD__C] [bit] NULL,
	[SAMPLE_VOD__C] [nvarchar](100) NULL,
	[U_M_VOD__C] [nvarchar](1000) NULL,
	[EXPIRATION_DATE_VOD__C] [date] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)