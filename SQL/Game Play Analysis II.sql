/* Write your T-SQL query statement below */
SELECT a.player_id, a.device_id

FROM Activity AS a

JOIN(SELECT player_id, MIN(event_date) AS Min_date
    FROM Activity
    GROUP BY player_id
    ) AS b

ON a.player_id = b.player_id AND event_date = Min_date
