SELECT wps.season, wps.player_name, wps.years_exp, wps.position, wps.team, wps.week,
       wps.fantasy_points_ppr AS 'Week Fantasy Points (PPR)',
       yps.games_played_season,
       CAST(ROUND(
           TRY_CAST(wps.fantasy_points_ppr AS DECIMAL(10,4)) 
           - TRY_CAST(yps.season_average_fantasy_points_ppr AS DECIMAL(10,4)), 2
       ) AS DECIMAL(10,2)) AS 'Week_vs_SeasonDiff',
       yps.season_average_fantasy_points_ppr AS 'Season Avg PPR',
       RANK() OVER (PARTITION BY wps.season 
                    ORDER BY TRY_CAST(yps.season_average_fantasy_points_ppr AS DECIMAL(10,4)) DESC) AS season_rank,
       CONCAT(wps.position, 
              CAST(RANK() OVER (PARTITION BY wps.season, wps.position 
                                ORDER BY TRY_CAST(yps.season_average_fantasy_points_ppr AS DECIMAL(10,4)) DESC) AS VARCHAR(10))
       ) AS season_position_rank,
       CEILING(RANK() OVER (PARTITION BY wps.season, wps.position 
                            ORDER BY TRY_CAST(yps.season_average_fantasy_points_ppr AS DECIMAL(10,4)) DESC) / 12.0
       ) AS position_tier
FROM dbo.weekly_player_stats_offense AS wps
LEFT JOIN dbo.yearly_player_stats_offense AS yps
       ON wps.player_id = yps.player_id 
      AND wps.season = yps.season 
      AND yps.season_type = 'REG'
WHERE wps.season_type = 'REG' 
  AND wps.week = '1' 
  AND yps.games_played_season > 5 
  AND wps.position IN ('WR','RB','TE','QB')
ORDER BY wps.season DESC, season_rank ASC;
