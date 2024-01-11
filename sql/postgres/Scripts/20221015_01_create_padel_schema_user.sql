CREATE OR REPLACE FUNCTION sports.generate_season_championship(
	s_user_email    character varying = 'info@padelcuneo.it', 
	s_username      character varying = 'padelcuneoadmin',
 	s_password      character varying =  'P4d3lCun30',
	s_schema_name   character varying = 'Padel Cuneo', 
    s_league_name   character varying = 'Mc Padel Cuneo',
    s_league_code   character varying =  'PC')
    RETURNS text
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE 
 user_token character varying; 
 schema_token character varying; 
 session_token  character varying; 
 v_schema_id integer; 
 v_season_id integer; 
 v_league_id integer; 
 v_guid uuid; 
 v_result text; 
BEGIN
---SELECT system.useradd(:p_email, :p_username, :p_password, :p_country_id, :p_ispublic)
	user_token := system.useradd(
		p_email         => s_user_email, 
		p_username      => null, 
		p_password      => s_password, 
		p_country_id    => 1, 
		p_ispublic      => true
	);

	PERFORM system.setlog('aggiunto utente: ' || s_user_email || ', token = ' || user_token );
    
    v_result := v_result || 'aggiunto utente: ' || s_user_email || ', token = ' || user_token;
	
	session_token := system.userlogin(
		p_username  => s_username, 
		p_password  => s_password, 
		p_email     => s_user_email
	);
	
	PERFORM system.setlog('login utente: ' || s_username || ', token = ' || session_token );
    v_result := v_result  || 'login utente: ' || s_username || ', token = ' || session_token ;

	schema_token := system.createpublicschema(
		p_user_key => user_token::character varying, 
		p_session_key => session_token::character varying, 
		p_schema_name => s_schema_name::character varying, 
		p_schema_des => s_schema_name::character varying, 
		p_isportal => true::boolean, 
		p_package_key => NULL,
		p_country_id => 1::smallint,  
		p_default_language_id => 1::smallint
	);
	
	select db_schema_id into v_schema_id from system.db_schemas s 
        where s.db_schema_key = schema_token;
        
    PERFORM system.setlog('creato schema: ' || v_schema_id || ', token = ' || schema_token );
    v_result := v_result  || 'creato schema: ' || s_schema_name || ', token = ' || schema_token;
	
	v_season_id := nextval('sports.seasons_seq');
	
	insert into sports.seasons(id, season_des,season_code,db_schema_id) 
        values (v_season_id, '2022/23', '22/23', v_schema_id);
        
    PERFORM system.setlog('creato seasons: ' || v_league_id || ', id = ' || v_season_id );
    v_result := v_result  || 'creato seasons: ' || s_league_name || ', id = ' || v_league_id ;
        
    v_league_id := nextval('sports.leagues_seq');
        
    INSERT INTO sports.leagues(
        id, league_name, country_id, league_position, league_code, 
        db_schema_id,  all_players)
    VALUES (v_league_id, s_league_name, 1, 1, s_league_code ,
            v_schema_id, false);
            
    PERFORM system.setlog('creato league: ' || v_league_id || ', id = ' || v_league_id );
    v_result := v_result  || 'creato league: ' || s_league_name || ', id = ' || v_league_id;
    
    INSERT INTO sports.championships(
        season_id, league_id, promoted, playoff, relegation, champions, playout, teams, db_schema_id)
        VALUES (v_season_id, v_league_id, 0, 6, 0, 0, 6,   12, v_schema_id);
	
   return v_result; 
END; 
$BODY$;



