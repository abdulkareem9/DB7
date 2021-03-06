﻿CREATE TABLE [CommCRM].[E_CAMPAIGN]
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
	[TYPE] [nvarchar](1000) NULL,
	[STATUS] [nvarchar](1000) NULL,
	[STARTDATE] [date] NULL,
	[ENDDATE] [date] NULL,
	[EXPECTEDREVENUE] [nvarchar](100) NULL,
	[BUDGETEDCOST] [nvarchar](100) NULL,
	[ACTUALCOST] [nvarchar](100) NULL,
	[EXPECTEDRESPONSE] [nvarchar](100) NULL,
	[NUMBERSENT] [numeric](18, 0) NULL,
	[ISACTIVE] [bit] NULL,
	[DESCRIPTION] [nvarchar](max) NULL,
	[NUMBEROFLEADS] [int] NULL,
	[NUMBEROFCONVERTEDLEADS] [int] NULL,
	[NUMBEROFCONTACTS] [int] NULL,
	[NUMBEROFRESPONSES] [int] NULL,
	[NUMBEROFOPPORTUNITIES] [int] NULL,
	[NUMBEROFWONOPPORTUNITIES] [int] NULL,
	[AMOUNTALLOPPORTUNITIES] [nvarchar](100) NULL,
	[AMOUNTWONOPPORTUNITIES] [nvarchar](100) NULL,
	[OWNERID] [nvarchar](18) NULL,
	[CREATEDDATE] [datetime] NULL,
	[CREATEDBYID] [nvarchar](18) NULL,
	[LASTMODIFIEDDATE] [datetime] NULL,
	[LASTMODIFIEDBYID] [nvarchar](18) NULL,
	[SYSTEMMODSTAMP] [datetime] NULL,
	[LASTACTIVITYDATE] [date] NULL,
	[MAYEDIT] [bit] NULL,
	[ISLOCKED] [bit] NULL,
	[LASTVIEWEDDATE] [datetime] NULL,
	[LASTREFERENCEDDATE] [datetime] NULL,
	[CAMPAIGNMEMBERRECORDTYPEID] [nvarchar](18) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)