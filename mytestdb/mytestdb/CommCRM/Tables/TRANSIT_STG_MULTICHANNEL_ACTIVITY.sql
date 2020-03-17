CREATE TABLE [CommCRM].[TRANSIT_STG_MULTICHANNEL_ACTIVITY]
(
	[RECORD_TYPE_NAME_VOD__C] [nvarchar](80) NULL,
	[ELA_ACTIVITY_DESCRIPTION__C] [nvarchar](255) NULL,
	[CITY_VOD__C] [nvarchar](20) NULL,
	[CLIENT_NAME_VOD__C] [nvarchar](20) NULL,
	[CLIENT_OS_VOD__C] [nvarchar](20) NULL,
	[CLIENT_TYPE_VOD__C] [nvarchar](20) NULL,
	[COLOR_VOD__C] [nvarchar](255) NULL,
	[COUNTRY_VOD__C] [nvarchar](20) NULL,
	[DEVICE_VOD__C] [nvarchar](20) NULL,
	[ELA_EXTERNAL_SYSTEM__C] [nvarchar](255) NULL,
	[ICON_VOD__C] [nvarchar](255) NULL,
	[IP_ADDRESS_VOD__C] [nvarchar](32) NULL,
	[REFERRING_SITE_VOD__C] [nvarchar](255) NULL,
	[REGION_VOD__C] [nvarchar](20) NULL,
	[SESSION_ID_VOD__C] [nvarchar](50) NULL,
	[START_DATETIME_VOD__C] [date] NULL,
	[TERRITORY_VOD__C] [nvarchar](100) NULL,
	[TOTAL_DURATION_VOD__C] [int] NULL,
	[URL_VOD__C] [nvarchar](255) NULL,
	[USER_AGENT_VOD__C] [nvarchar](255) NULL,
	[ACCOUNT_VOD__C] [nvarchar](18) NULL,
	[ELA_CRM_ID__C] [nvarchar](10) NULL,
	[ACCOUNT_EMAIL] [nvarchar](80) NULL,
	[PRODUCT_VOD__C] [nvarchar](18) NULL,
	[PRODUCT_VEXTERNAL_ID_VOD__C] [nvarchar](255) NULL,
	[PRODUCT_NAME] [nvarchar](255) NULL,
	[DETAIL_GROUP_VOD__C] [nvarchar](18) NULL,
	[DG_VEXTERNAL_ID_VOD__C] [nvarchar](255) NULL,
	[DETAIL_GROUP_NAME] [nvarchar](255) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)