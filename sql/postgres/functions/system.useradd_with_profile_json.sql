-- FUNCTION: system.useradd_with_profile(character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, integer, integer, integer, integer, boolean)

-- DROP FUNCTION IF EXISTS system.useradd_with_profile(character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, integer, integer, integer, integer, boolean);

CREATE OR REPLACE FUNCTION system.useradd_with_profile_json(
	p_email character varying,
	p_username character varying,
	p_firstname character varying,
	p_lastname character varying,
	p_address character varying,
	p_town character varying,
	p_postal_code character varying,
	p_password character varying,
	p_phone character varying DEFAULT NULL::character varying,
	p_an_group_id integer DEFAULT 27,
	p_anagraph_id integer DEFAULT '-1'::integer,
	p_default_schema_id integer DEFAULT 0,
	p_country_id integer DEFAULT 1,
	p_ispublic boolean DEFAULT false)
    RETURNS json
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
  v_json json; 
BEGIN
  SELECT to_json(R) INTO v_json FROM  
  (
	SELECT * FROM 
		system.useradd_with_profile_json(
			p_email,
			p_username ,
			p_firstname ,
			p_lastname,
			p_address ,
			p_town,
			p_postal_code ,
			p_password,
			p_phone ,
			p_an_group_id ,
			p_anagraph_id,
			p_default_schema_id,
			p_country_id,
			p_ispublic)  
  ) AS R; 
  
  RETURN v_json; 
END; 

$BODY$;

ALTER FUNCTION system.useradd_with_profile_json(character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, integer, integer, integer, integer, boolean)
    OWNER TO ergo;
