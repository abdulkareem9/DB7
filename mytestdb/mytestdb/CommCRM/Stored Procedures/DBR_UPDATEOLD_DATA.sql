CREATE PROC [CommCRM].[DBR_UPDATEOLD_DATA] @in_tablename [varchar](100) AS
declare 

@var_base_tablename varchar(255),
	@var_query nvarchar(max),
	
	@tmp_query nvarchar(max)
	begin

	set @var_base_tablename = 'CommCRM.' + @in_tablename
IF OBJECT_ID(N'tempdb..#temp', N'U') IS NOT NULL
DROP TABLE #temp;
	--set @tmp_query = 'DROP TABLE #Temp'

--	exec(@tmp_query)

	 	print(@tmp_query)
	set @var_query = '
;WITH cte
AS (
       SELECT [ID], [LastModifiedDate], CURRENT_ROW, row_number() OVER (
                     PARTITION BY [ID] ORDER BY [LastModifiedDate] DESC
                     ) rn
       FROM ' + @var_base_tablename + ' ' + 'where CURRENT_ROW is null 
       )
SELECT * INTO #temp FROM cte
WHERE rn > 1;

       UPDATE ' + @var_base_tablename + ' ' + ' 
       SET CURRENT_ROW = 0,
	   expired_date = getutcdate(),
		updated_by = current_user,
		updated_date = getutcdate()
       from  #temp t
       where  ' + @var_base_tablename + '.id=t.id and ' + @var_base_tablename + '.LastModifiedDate =t.LastModifiedDate and ' + @var_base_tablename + '.CURRENT_ROW is null'
	    print(@var_query)

		exec(@var_query)


		end