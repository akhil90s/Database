SELECT player_id, device_id
FROM Activity
WHERE (player_id, event_date) IN (
	SELECT player_id, MIN(event_date) AS first_login
	FROM Activity
	GROUP BY player_id);
---
WITH CTE AS 
(SELECT player_id, device_id, event_date ROW_NUMBER() OVER (PARTITION BY player_id ORDER BY event_date) AS r 
FROM Activity);
SELECT player_id, device_id FROM 
CTE WHERE r = 1;
---