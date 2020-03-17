CREATE TABLE [CommCRM].[E_CALL_CLICKSTREAM]
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
	[ANSWER_VOD__C] [nvarchar](max) NULL,
	[CALL_VOD__C] [nvarchar](18) NULL,
	[KEY_MESSAGE_VOD__C] [nvarchar](18) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[POPUP_OPENED_VOD__C] [bit] NULL,
	[POSSIBLE_ANSWERS_VOD__C] [nvarchar](max) NULL,
	[PRESENTATION_ID_VOD__C] [nvarchar](100) NULL,
	[PRODUCT_VOD__C] [nvarchar](18) NULL,
	[RANGE_VALUE_VOD__C] [nvarchar](100) NULL,
	[ROLLOVER_ENTERED_VOD__C] [bit] NULL,
	[SELECTED_ITEMS_VOD__C] [nvarchar](max) NULL,
	[CLM_ID_VOD__C] [nvarchar](100) NULL,
	[QUESTION_VOD__C] [nvarchar](max) NULL,
	[SURVEY_TYPE_VOD__C] [nvarchar](1000) NULL,
	[TEXT_ENTERED_VOD__C] [nvarchar](max) NULL,
	[TOGGLE_BUTTON_ON_VOD__C] [bit] NULL,
	[TRACK_ELEMENT_DESCRIPTION_VOD__C] [nvarchar](max) NULL,
	[TRACK_ELEMENT_ID_VOD__C] [nvarchar](100) NULL,
	[TRACK_ELEMENT_TYPE_VOD__C] [nvarchar](100) NULL,
	[USAGE_DURATION_VOD__C] [numeric](18, 0) NULL,
	[USAGE_START_TIME_VOD__C] [datetime] NULL,
	[AUXILLARYID_VOD__C] [nvarchar](100) NULL,
	[PARENTID_VOD__C] [nvarchar](100) NULL,
	[REVISION_VOD__C] [numeric](18, 0) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)