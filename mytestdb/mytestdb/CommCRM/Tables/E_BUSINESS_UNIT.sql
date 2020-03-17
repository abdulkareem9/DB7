﻿CREATE TABLE [CommCRM].[E_BUSINESS_UNIT]
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
	[ELA_ACCOUNT__C] [nvarchar](18) NULL,
	[ELA_PRIORITY__C] [nvarchar](1000) NULL,
	[ELA_SPECIAL_OWNERSHIP__C] [bit] NULL,
	[ELA_BU_SPECIES_SHARE__C] [nvarchar](100) NULL,
	[ELA_DISTRICT__C] [nvarchar](50) NULL,
	[ELA_TERRITORY__C] [nvarchar](80) NULL,
	[ELA_KEY_ACCOUNT__C] [bit] NULL,
	[ELA_TERRITORY_DEFINITION__C] [nvarchar](18) NULL,
	[ELA_POTENTIAL__C] [nvarchar](1000) NULL,
	[ELA_SECONDARY_OWNER__C] [nvarchar](18) NULL,
	[MOBILE_ID_VOD__C] [nvarchar](100) NULL,
	[ELA_OWNER__C] [nvarchar](18) NULL,
	[ELA_SALES_FORCE__C] [nvarchar](1000) NULL,
	[ELA_MY_ZONE__C] [nvarchar](1000) NULL,
	[ELA_EXTERNAL_ID__C] [nvarchar](255) NULL,
	[ELA_AUTO_ASSIGN_TERRITORY__C] [bit] NULL,
	[ELA_OPPORTUNITY__C] [nvarchar](1000) NULL,
	[ELA_COMMENTS__C] [nvarchar](max) NULL,
	[ELA_DONT_SUBMIT_APPROVAL_REQ__C] [bit] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)