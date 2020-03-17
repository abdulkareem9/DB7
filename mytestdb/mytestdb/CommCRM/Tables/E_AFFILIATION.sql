CREATE TABLE [CommCRM].[E_AFFILIATION]
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
	[PARENT_VOD__C] [bit] NULL,
	[FROM_ACCOUNT_VOD__C] [nvarchar](18) NULL,
	[COMMENTS_VOD__C] [nvarchar](max) NULL,
	[CHILD_AFFILIATION_VOD__C] [nvarchar](18) NULL,
	[ROLE_VOD__C] [nvarchar](1000) NULL,
	[TO_ACCOUNT_VOD__C] [nvarchar](18) NULL,
	[INFLUENCE_VOD__C] [nvarchar](1000) NULL,
	[TO_CONTACT_VOD__C] [nvarchar](18) NULL,
	[FROM_CONTACT_VOD__C] [nvarchar](18) NULL,
	[DESTROY_VOD__C] [bit] NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[DISABLE_TRIGGER_VOD__C] [bit] NULL,
	[EXTERNAL_ID_VOD__C] [nvarchar](255) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)