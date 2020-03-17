CREATE TABLE [CommCRM].[E_QUESTION_RESPONSE]
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
	[SURVEY_TARGET_VOD__C] [nvarchar](18) NULL,
	[ANSWER_CHOICE_VOD__C] [nvarchar](max) NULL,
	[DATE_VOD__C] [date] NULL,
	[DATETIME_VOD__C] [datetime] NULL,
	[EXTERNAL_ID_VOD__C] [nvarchar](120) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[NUMBER_VOD__C] [numeric](18, 0) NULL,
	[ORDER_VOD__C] [numeric](18, 0) NULL,
	[QUESTION_TEXT_VOD__C] [nvarchar](max) NULL,
	[REQUIRED_VOD__C] [bit] NULL,
	[RESPONSE_HASH_VOD__C] [nvarchar](255) NULL,
	[RESPONSE_VOD__C] [nvarchar](max) NULL,
	[SCORE_VOD__C] [numeric](18, 0) NULL,
	[SURVEY_QUESTION_VOD__C] [nvarchar](18) NULL,
	[TEXT_VOD__C] [nvarchar](max) NULL,
	[TYPE_VOD__C] [nvarchar](18) NULL,
	[DECIMAL_VOD__C] [numeric](18, 0) NULL,
	[CONDITION_VOD__C] [nvarchar](255) NULL,
	[INACTIVE_CONDITION_VOD__C] [bit] NULL,
	[SOURCE_ID_VOD__C] [nvarchar](255) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)