SET SESSION "system.db_schema_id" = 39; 

sports.generate_day_ranking(, , p_season_id)
select sports.generate_day_ranking(15::smallint /*p_day*/,  27::smallint /*p_league_id*/, 6::smallint/*p_season_id*/); 
select * from sports.seasons; -- 6 = 2024/25
select * from sports.leagues; --GIRONE BRONZE 
select * from sports.leagues  where league_name =  'GIRONE BRONZE' -- 27
SET SESSION "system.db_schema_id" = 39;
select * from sports.matches_view where league_id = 27 order by id desc; -- SIR PADEL - I CUGINI DI CHAMPAGNE : 1012
delete from sports.matches where id = 1194; 
select * from sports.matches_view  where league_id = 27 and id = 1012;
update sports.matches set score_home = 0, score_visitor = 3, points_home = 0, points_visitors = 3  where id = 1012; 

select * from sports.sets where match_id = 779

select sports.generate_day_ranking(5::smallint,  18::smallint, 4::smallint) /*p_season_id*/; 
sports.generate_day_ranking(p_day, p_league_id, p_season_id);

select * from sports.matches where 
score_home = 0 and score_visitor = 0 and points_home = 0 and points_visitors = 0

update sports.matches set
score_home = null , score_visitor = null ,  points_home =  null ,  points_visitors = null 

where 
score_home = 0 and score_visitor = 0 and points_home = 0 and points_visitors = 0


