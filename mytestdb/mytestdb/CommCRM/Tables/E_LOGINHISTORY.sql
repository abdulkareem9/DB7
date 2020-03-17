CREATE TABLE [CommCRM].[E_LOGINHISTORY]
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
	[USERID] [nvarchar](18) NULL,
	[LOGINTIME] [datetime] NULL,
	[LOGINTYPE] [nvarchar](1000) NULL,
	[SOURCEIP] [nvarchar](39) NULL,
	[LOGINURL] [nvarchar](255) NULL,
	[AUTHENTICATIONSERVICEID] [nvarchar](18) NULL,
	[LOGINGEOID] [nvarchar](18) NULL,
	[TLSPROTOCOL] [nvarchar](1000) NULL,
	[CIPHERSUITE] [nvarchar](1000) NULL,
	[BROWSER] [nvarchar](64) NULL,
	[PLATFORM] [nvarchar](64) NULL,
	[STATUS] [nvarchar](128) NULL,
	[APPLICATION] [nvarchar](64) NULL,
	[CLIENTVERSION] [nvarchar](64) NULL,
	[APITYPE] [nvarchar](64) NULL,
	[APIVERSION] [nvarchar](32) NULL,
	[COUNTRYISO] [nvarchar](3) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)