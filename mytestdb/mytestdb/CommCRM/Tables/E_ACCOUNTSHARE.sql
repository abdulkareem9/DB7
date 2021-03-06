﻿CREATE TABLE [CommCRM].[E_ACCOUNTSHARE]
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
	[ACCOUNTID] [nvarchar](18) NULL,
	[USERORGROUPID] [nvarchar](18) NULL,
	[ACCOUNTACCESSLEVEL] [nvarchar](1000) NULL,
	[OPPORTUNITYACCESSLEVEL] [nvarchar](1000) NULL,
	[CASEACCESSLEVEL] [nvarchar](1000) NULL,
	[CONTACTACCESSLEVEL] [nvarchar](1000) NULL,
	[ROWCAUSE] [nvarchar](1000) NULL,
	[LASTMODIFIEDDATE] [datetime] NULL,
	[LASTMODIFIEDBYID] [nvarchar](18) NULL,
	[ISDELETED] [bit] NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)