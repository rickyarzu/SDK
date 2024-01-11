-- FUNCTION: anagraph.sp_insert_address_from_anagraph(integer)

-- DROP FUNCTION IF EXISTS anagraph.sp_insert_address_from_anagraph(integer);

CREATE OR REPLACE FUNCTION anagraph.sp_insert_address_from_anagraph(
	p_id integer)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
begin
	INSERT INTO anagraph.an_addresses(
			address_name, 	postal_code, 	state_province, 	town_name, 	address, 			address_number, 
			phone, 	full_address,  									country_code,  anagraph_id, pos, 	latitude, 		longitude)
	SELECT
			an_last_name, 	an_postal_code, an_state_province, 	an_town, 	an_address, 		an_address_number, 			
			an_cellular, 	an_full_address, an_iso_country_code2, 		     anagraph_id, 		1, 		latitude, 	longitude
	FROM anagraph.anagraphs WHERE anagraph_id = p_id;
  
  
  return true; 
end; 
$BODY$;

ALTER FUNCTION anagraph.sp_insert_address_from_anagraph(integer)
    OWNER TO ergo;
