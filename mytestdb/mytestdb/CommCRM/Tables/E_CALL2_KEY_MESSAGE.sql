CREATE TABLE [CommCRM].[E_CALL2_KEY_MESSAGE]
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
	[ACCOUNT_VOD__C] [nvarchar](18) NULL,
	[CALL2_VOD__C] [nvarchar](18) NULL,
	[REACTION_VOD__C] [nvarchar](1000) NULL,
	[PRODUCT_VOD__C] [nvarchar](18) NULL,
	[KEY_MESSAGE_VOD__C] [nvarchar](18) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[CONTACT_VOD__C] [nvarchar](18) NULL,
	[CALL_DATE_VOD__C] [date] NULL,
	[USER_VOD__C] [nvarchar](18) NULL,
	[CATEGORY_VOD__C] [nvarchar](1000) NULL,
	[VEHICLE_VOD__C] [nvarchar](1000) NULL,
	[OVERRIDE_LOCK_VOD__C] [bit] NULL,
	[CLM_ID_VOD__C] [nvarchar](100) NULL,
	[SLIDE_VERSION_VOD__C] [nvarchar](100) NULL,
	[DURATION_VOD__C] [numeric](18, 0) NULL,
	[PRESENTATION_ID_VOD__C] [nvarchar](100) NULL,
	[START_TIME_VOD__C] [datetime] NULL,
	[ATTENDEE_TYPE_VOD__C] [nvarchar](1000) NULL,
	[ENTITY_REFERENCE_ID_VOD__C] [nvarchar](100) NULL,
	[SEGMENT_VOD__C] [nvarchar](80) NULL,
	[DISPLAY_ORDER_VOD__C] [numeric](18, 0) NULL,
	[DETAIL_GROUP_VOD__C] [nvarchar](18) NULL,
	[CLM_PRESENTATION_VERSION_VOD__C] [nvarchar](100) NULL,
	[CLM_PRESENTATION_VOD__C] [nvarchar](18) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)