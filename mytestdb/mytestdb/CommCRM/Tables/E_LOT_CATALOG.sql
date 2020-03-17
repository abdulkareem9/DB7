﻿CREATE TABLE [CommCRM].[E_LOT_CATALOG]
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
	[LASTVIEWEDDATE] [datetime] NULL,
	[LASTREFERENCEDDATE] [datetime] NULL,
	[SAMPLE_VOD__C] [nvarchar](1000) NULL,
	[SAMPLE_DESCRIPTION_VOD__C] [nvarchar](255) NULL,
	[ITEM_ID_VOD__C] [nvarchar](100) NULL,
	[U_M_VOD__C] [nvarchar](1000) NULL,
	[ACTIVE_VOD__C] [bit] NULL,
	[EXPIRATION_DATE_VOD__C] [date] NULL,
	[LOT_CATALOG_EXTERNAL_ID_VOD__C] [nvarchar](255) NULL,
	[PRODUCT_VOD__C] [nvarchar](18) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)