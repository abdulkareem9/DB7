CREATE TABLE [CommCRM].[E_CALL2_DISCUSSION]
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
	[CALL2_VOD__C] [nvarchar](18) NULL,
	[ACTIVITY__C] [nvarchar](1000) NULL,
	[COMMENTS__C] [nvarchar](max) NULL,
	[CONTACT_VOD__C] [nvarchar](18) NULL,
	[CALL_DATE_VOD__C] [date] NULL,
	[PRODUCT_STRATEGY_VOD__C] [nvarchar](18) NULL,
	[PRODUCT_TACTIC_VOD__C] [nvarchar](18) NULL,
	[RESTRICTED_COMMENTS__C] [nvarchar](max) NULL,
	[PRODUCT_VOD__C] [nvarchar](18) NULL,
	[PRESENTATION__C] [nvarchar](1000) NULL,
	[DISCUSSION_TOPICS__C] [nvarchar](1000) NULL,
	[SLIDES__C] [nvarchar](20) NULL,
	[USER_VOD__C] [nvarchar](18) NULL,
	[INDICATION__C] [nvarchar](1000) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[MEDICAL_EVENT_VOD__C] [nvarchar](18) NULL,
	[OVERRIDE_LOCK_VOD__C] [bit] NULL,
	[ZVOD_PRODUCT_MAP_VOD__C] [nvarchar](1000) NULL,
	[ATTENDEE_TYPE_VOD__C] [nvarchar](1000) NULL,
	[ENTITY_REFERENCE_ID_VOD__C] [nvarchar](100) NULL,
	[ACCOUNT_TACTIC_VOD__C] [nvarchar](18) NULL,
	[DETAIL_GROUP_VOD__C] [nvarchar](18) NULL,
	[ELA_TACTIC_DESCRIPTION__C] [nvarchar](255) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)