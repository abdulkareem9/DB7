CREATE TABLE [CommCRM].[E_MULTICHANNEL_CONTENT_ASSET]
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
	[MULTICHANNEL_CONTENT_VOD__C] [nvarchar](18) NULL,
	[DESCRIPTION_VOD__C] [nvarchar](255) NULL,
	[DETAIL_GROUP_VOD__C] [nvarchar](18) NULL,
	[DISPLAY_ORDER_VOD__C] [numeric](18, 0) NULL,
	[HTML_FILE_NAME_VOD__C] [nvarchar](255) NULL,
	[HTML_HEIGHT_VOD__C] [numeric](18, 0) NULL,
	[HTML_WIDTH_VOD__C] [numeric](18, 0) NULL,
	[KEY_MESSAGE_VOD__C] [nvarchar](18) NULL,
	[LANGUAGE_VOD__C] [nvarchar](1000) NULL,
	[MEDIA_TYPE_VOD__C] [nvarchar](1000) NULL,
	[PRODUCT_VOD__C] [nvarchar](18) NULL,
	[STATUS_VOD__C] [nvarchar](1000) NULL,
	[VEXTERNAL_ID_VOD__C] [nvarchar](255) NULL,
	[VAULT_DNS_VOD__C] [nvarchar](255) NULL,
	[VAULT_DOC_ID_VOD__C] [nvarchar](100) NULL,
	[VAULT_GUID_VOD__C] [nvarchar](255) NULL,
	[VAULT_LAST_MODIFIED_DATE_TIME_VOD__C] [datetime] NULL,
	[VERSION_VOD__C] [nvarchar](100) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)