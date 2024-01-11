-- Sample function increments the input value by 1
CREATE OR REPLACE FUNCTION 
	sports.cloneseason(new_season_id integer, old_season_id integer) RETURNS INT AS 
$$
BEGIN
	INSERT INTO sports.championships_view(
	            season_id, league_id, db_schema_id, promoted, playoff, relegation, 
	            champions, playout, teams)
	select  new_season_id, league_id, db_schema_id, promoted, playoff, relegation, 
	            champions, playout, teams
	from sports.championships_view f 
	where f.season_id = old_season_id
	and not exists 
	(select 1 from sports.championships g 
	where g.season_id =  new_season_id 
	and f.league_id = g.league_id);
	
	RETURN new_season_id; 
END;
$$ 
LANGUAGE plpgsql;