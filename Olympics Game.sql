SELECT [ID]
      ,[Name] AS "Competitor Name"
      ,CASE WHEN [Sex] = 'M' then 'Male' else 'Female' end as Gender
      ,[Age]
      --[Height],
      --[Weight],
      ,[NOC] as 'Nation Code'
      ,[Games] as 'Season'
	   ,Left ([Games],4) As [Summer Olympic Year], 
      --,[City]
      [Sport]
      ,[Event]
    ,CASE WHEN [Medal] = 'NA' then 'Not Registered' ELSE Medal end as Medal
    FROM [olympic_games].[dbo].[athletes_event_results]
    Where [Games] like ('%Summer%')
	Order by [Summer Olympic Year] asc
