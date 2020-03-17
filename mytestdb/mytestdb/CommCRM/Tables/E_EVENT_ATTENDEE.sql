CREATE TABLE [CommCRM].[E_EVENT_ATTENDEE]
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
	[ATTENDEE_VOD__C] [nvarchar](100) NULL,
	[USER_VOD__C] [nvarchar](18) NULL,
	[MEDICAL_EVENT_VOD__C] [nvarchar](18) NULL,
	[STATUS_VOD__C] [nvarchar](1000) NULL,
	[CONTACT_VOD__C] [nvarchar](18) NULL,
	[ACCOUNT_VOD__C] [nvarchar](18) NULL,
	[START_DATE_VOD__C] [date] NULL,
	[SIGNATURE_VOD__C] [nvarchar](max) NULL,
	[SIGNATURE_DATETIME_VOD__C] [datetime] NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[SIGNEE_VOD__C] [nvarchar](120) NULL,
	[MEAL_OPT_IN_VOD__C] [bit] NULL,
	[ADDRESS_LINE_1_VOD__C] [nvarchar](100) NULL,
	[ADDRESS_LINE_2_VOD__C] [nvarchar](100) NULL,
	[CITY_VOD__C] [nvarchar](100) NULL,
	[EMAIL_VOD__C] [nvarchar](80) NULL,
	[FIRST_NAME_VOD__C] [nvarchar](40) NULL,
	[LAST_NAME_VOD__C] [nvarchar](80) NULL,
	[ORGANIZATION_VOD__C] [nvarchar](255) NULL,
	[PHONE_VOD__C] [nvarchar](40) NULL,
	[POSITION_VOD__C] [nvarchar](1000) NULL,
	[TALK_TITLE_VOD__C] [nvarchar](max) NULL,
	[WALK_IN_STATUS_VOD__C] [nvarchar](1000) NULL,
	[ZIP_VOD__C] [nvarchar](20) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)