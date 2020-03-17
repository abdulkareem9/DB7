﻿CREATE TABLE [CommCRM].[E_TRANSIT]
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
	[RECORDTYPEID] [nvarchar](18) NULL,
	[CREATEDDATE] [datetime] NULL,
	[CREATEDBYID] [nvarchar](18) NULL,
	[LASTMODIFIEDDATE] [datetime] NULL,
	[LASTMODIFIEDBYID] [nvarchar](18) NULL,
	[SYSTEMMODSTAMP] [datetime] NULL,
	[MAYEDIT] [bit] NULL,
	[ISLOCKED] [bit] NULL,
	[LASTVIEWEDDATE] [datetime] NULL,
	[LASTREFERENCEDDATE] [datetime] NULL,
	[ELA_ACTIVE__C] [bit] NULL,
	[ELA_APPND_TO_FILENAME__C] [nvarchar](1000) NULL,
	[ELA_DESCRIPTION__C] [nvarchar](30) NULL,
	[ELA_DESTINATION__C] [nvarchar](1000) NULL,
	[ELA_END_DATE__C] [date] NULL,
	[ELA_FILE_DELIMITER__C] [nvarchar](1) NULL,
	[ELA_FILE_NAME__C] [nvarchar](100) NULL,
	[ELA_OUTBOUND_EMAIL__C] [nvarchar](80) NULL,
	[ELA_OUTBOUND_FILE_NAME__C] [nvarchar](100) NULL,
	[ELA_OUTBOUND_MQ_ROUTER_ID__C] [nvarchar](20) NULL,
	[ELA_SQL_QUERY__C] [nvarchar](max) NULL,
	[ELA_START_DATE__C] [date] NULL,
	[ELA_STORED_PROCEDURE__C] [nvarchar](80) NULL,
	[ELA_TRANSFER_METHOD__C] [nvarchar](1000) NULL,
	[ELA_INCLUDE_COL_HEADERS__C] [bit] NULL,
	[ELA_EXTERNAL_TABLE__C] [nvarchar](60) NULL,
	[ELA_EXT_TBL_FILE_NAME__C] [nvarchar](100) NULL,
	[ELA_ORDER_RECORD_TYPE__C] [nvarchar](1000) NULL,
	[ELA_TRNSCTN_SRC__C] [nvarchar](30) NULL,
	[ELA_PROCESS__C] [nvarchar](1000) NULL,
	[ELA_CONCAT_SOURCE_FILES__C] [bit] NULL,
	[ELA_ZIP__C] [bit] NULL,
	[ELA_PASSWORD_VAR__C] [nvarchar](30) NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED INDEX
	(
		[ID] ASC
	)
)