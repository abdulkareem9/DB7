﻿CREATE TABLE [CommCRM].[E_USERROLE]
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
	[NAME] [nvarchar](80) NULL,
	[PARENTROLEID] [nvarchar](18) NULL,
	[ROLLUPDESCRIPTION] [nvarchar](80) NULL,
	[OPPORTUNITYACCESSFORACCOUNTOWNER] [nvarchar](1000) NULL,
	[CASEACCESSFORACCOUNTOWNER] [nvarchar](1000) NULL,
	[CONTACTACCESSFORACCOUNTOWNER] [nvarchar](1000) NULL,
	[FORECASTUSERID] [nvarchar](18) NULL,
	[MAYFORECASTMANAGERSHARE] [bit] NULL,
	[LASTMODIFIEDDATE] [datetime] NULL,
	[LASTMODIFIEDBYID] [nvarchar](18) NULL,
	[SYSTEMMODSTAMP] [datetime] NULL,
	[DEVELOPERNAME] [nvarchar](80) NULL,
	[PORTALACCOUNTID] [nvarchar](18) NULL,
	[PORTALTYPE] [nvarchar](1000) NULL,
	[PORTALACCOUNTOWNERID] [nvarchar](18) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)