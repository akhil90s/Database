SELECT ROUND(COUNT(DISTINCT b.player_id)/ COUNT(DISTINCT a.player_id), 2) AS fraction FROM
	(SELECT player_id, MIN(event_date) AS first_login
	FROM Activity
	GROUP BY player_id) AS a
LEFT JOIN Activity b ON a.player_id = b.player_id AND a.first_login + 1 = b.event_date;