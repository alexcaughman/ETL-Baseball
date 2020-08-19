SELECT
	s.player_team,
	s.homeandaway,
	s.worl,
	s.dates,
	h.hr_2019,
	h.player_name
FROM schedule as s
	JOIN hr as h
	ON s.player_team = h.player_team
	Order by dates;