CREATE PROC [CommCRM].[WORKING_TABLES] @IN_ACTION [varchar](6),@IN_PROCESS [varchar](255) AS

--This procedure will Create or Drop the working tables for load processes

BEGIN 

   IF @IN_ACTION = 'Drop'
      BEGIN
	     PRINT 'IN Drop';
         IF @IN_PROCESS = 'L_BUSINESS_UNIT'
	        BEGIN
               DROP table CommCRM.L_BUSINESS_UNIT
            END;
       
	     IF @IN_PROCESS = 'L_ACCOUNT_TERRITORY_LOADER'
	        BEGIN
               DROP table CommCRM.L_ACCOUNT_TERRITORY_LOADER
               DROP table CommCRM.ELA_TERR_MGMT_ATL_TEMP
               DROP table CommCRM.ELA_TERR_MGMT_LST_ADD_TEMP
               DROP table CommCRM.ELA_TERR_MGMT_LST_DROP_TEMP
               DROP table CommCRM.ELA_TERR_MGMT_LST_MANUAL_TEMP
               DROP table CommCRM.ELA_TERR_MGMT_NEW_TEMP
		    END;
      END
   
   IF @IN_ACTION = 'Create'
      BEGIN
	     PRINT 'IN CREATE';
		 PRINT @IN_PROCESS;
         IF @IN_PROCESS = 'L_BUSINESS_UNIT'
		    BEGIN
               PRINT 'IN CREATE BUSINESS UNIT';
               Create table CommCRM.L_BUSINESS_UNIT
                  (
                   ELA_DISTRICT__C    VARCHAR(50),
                   ELA_OWNER__C       VARCHAR(500),
                   ELA_TERRITORY__C   VARCHAR(80),
                   ELA_SALES_FORCE__C VARCHAR(255),
                   ID                 VARCHAR(18)
                   )
            END
		 
		 IF @IN_PROCESS = 'L_ACCOUNT_TERRITORY_LOADER'
	        BEGIN
               CREATE TABLE CommCRM.L_ACCOUNT_TERRITORY_LOADER
               (
                 ACCOUNT_VOD__C            VARCHAR(500),
                 EXTERNAL_ID_VOD__C        VARCHAR(50),
                 TERRITORY_TO_ADD_VOD__C   VARCHAR(255),
                 TERRITORY_TO_DROP_VOD__C  VARCHAR(255),
                 ELA_MANUAL_TERRITORY__C   VARCHAR(1500)
               )
               
               CREATE TABLE CommCRM.ELA_TERR_MGMT_ATL_TEMP
               (
                 ACCOUNT_ID  VARCHAR(18),
                 TERR        VARCHAR(80),
                 METHOD      VARCHAR(1)
               )
               
               CREATE TABLE CommCRM.ELA_TERR_MGMT_NEW_TEMP
               (
                 ACCOUNT_ID  VARCHAR(18),
                 TERR        VARCHAR(80)
               )
               
               CREATE TABLE CommCRM.ELA_TERR_MGMT_LST_ADD_TEMP
               (
                 ACCOUNT_ID               VARCHAR(18),
                 TERRITORY_TO_ADD_VOD__C  VARCHAR(1500)
               )
               
               CREATE TABLE CommCRM.ELA_TERR_MGMT_LST_DROP_TEMP
               (
                 ACCOUNT_ID                VARCHAR(18),
                 TERRITORY_TO_DROP_VOD__C  VARCHAR(1500)
               )
               
               CREATE TABLE CommCRM.ELA_TERR_MGMT_LST_MANUAL_TEMP
               (
                 ACCOUNT_ID               VARCHAR(18),
                 ELA_MANUAL_TERRITORY__C  VARCHAR(1500)
               )
            END
      END
END