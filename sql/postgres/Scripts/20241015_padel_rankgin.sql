SET SESSION "system.db_schema_id" = 39; 


select sports.generate_day_ranking(1::smallint,  13::smallint, 4::smallint) /*p_season_id*/; 

select * from sports.leagues  where league_code =  'PA24' -- 18
SET SESSION "system.db_schema_id" = 39;
select * from sports.matches_view  where league_id = 18 and id = 779
update sports.matches set score_home = 0, score_visitor = 3 where id = 779

select * from sports.sets where match_id = 779

select sports.generate_day_ranking(5::smallint,  18::smallint, 4::smallint) /*p_season_id*/; 
sports.generate_day_ranking(p_day, p_league_id, p_season_id)
select * from sports.seasons; 