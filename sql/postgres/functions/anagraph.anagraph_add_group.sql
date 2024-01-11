-- FUNCTION: anagraph.anagraph_add_group(integer, integer)

-- DROP FUNCTION IF EXISTS anagraph.anagraph_add_group(integer, integer);

CREATE OR REPLACE FUNCTION anagraph.anagraph_add_group(
	p_anagaph_id integer,
	p_group_id integer)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN
	IF NOT EXISTS (SELECT 1 FROM anagraph.identities WHERE
				   an_group_id = p_group_id AND anagraph_id = p_anagaph_id)
	THEN
	   INSERT INTO anagraph.identities 
	     (db_schema_id, anagraph_id, an_group_id, jguid )
	   VALUES
	     (system.get_schema_id(), 
		  p_anagaph_id,
		  p_group_id, 
		  uuid_generate_v4() 
		 );
	END IF; 

END; 
$BODY$;

ALTER FUNCTION anagraph.anagraph_add_group(integer, integer)
    OWNER TO ergo;
