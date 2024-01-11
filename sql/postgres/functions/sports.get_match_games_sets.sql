-- FUNCTION: sports.get_match_games_sets(bigint)

-- DROP FUNCTION IF EXISTS sports.get_match_games_sets(bigint);

CREATE OR REPLACE FUNCTION sports.get_match_games_sets(
	p_match_id bigint DEFAULT 0)
    RETURNS character varying
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
declare
  v_set_desc character varying;
  i integer; 
  x record;
begin
  i := 0; 
  v_set_desc := ''; 
  if exists(select 1 from sports.sets where match_id = p_match_id) then
  	for x in (select * from sports.sets where match_id = p_match_id) loop
       	if i > 0 then v_set_desc := v_set_desc || ' / '; ELSE v_set_desc := ' ';  end if;   	
		v_set_desc := v_set_desc || nvl(X.score_home, 0)::character varying || '-' || nvl(X.score_visitors, 0)::character varying; 
		i := i + 1; 
	end loop; 
  else
     v_set_desc = 'n.d.';
  end if; 
  
  return v_set_desc;
end; 
$BODY$;

ALTER FUNCTION sports.get_match_games_sets(bigint)
    OWNER TO ergo;
