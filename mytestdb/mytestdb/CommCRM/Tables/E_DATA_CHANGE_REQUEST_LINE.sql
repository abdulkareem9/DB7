CREATE TABLE [CommCRM].[E_DATA_CHANGE_REQUEST_LINE]
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
	[DATA_CHANGE_REQUEST_VOD__C] [nvarchar](18) NULL,
	[EXTERNAL_FIELD_API_NAME_VOD__C] [nvarchar](255) NULL,
	[FIELD_API_NAME_VOD__C] [nvarchar](43) NULL,
	[FIELD_NAME_VOD__C] [nvarchar](40) NULL,
	[FINAL_VALUE_VOD__C] [nvarchar](max) NULL,
	[MOBILE_CREATED_DATETIME_VOD__C] [datetime] NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[MOBILE_LAST_MODIFIED_DATETIME_VOD__C] [datetime] NULL,
	[NEW_VALUE_VOD__C] [nvarchar](max) NULL,
	[OLD_VALUE_VOD__C] [nvarchar](max) NULL,
	[RESOLUTION_NOTE_VOD__C] [nvarchar](max) NULL,
	[RESULT_VOD__C] [nvarchar](1000) NULL,
	[ERROR_VOD__C] [nvarchar](255) NULL,
	[ELA_FIELD_DATA_TYPE__C] [nvarchar](1000) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)