-- FUNCTION: anagraph.an_addresses_view_insert_trg()

-- DROP FUNCTION IF EXISTS anagraph.an_addresses_view_insert_trg();

CREATE OR REPLACE FUNCTION anagraph.an_addresses_view_insert_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE 
  v_anagraph_id integer; 
-- Variables
    v_state TEXT;
    v_msg TEXT;
    v_detail TEXT;
    v_hint TEXT;
    v_context TEXT;
	v_message TEXT; 
begin
  v_anagraph_id := new.anagraph_id; 
  
	IF v_anagraph_id = 0 or v_anagraph_id IS NULL THEN
		IF new.master_jguid IS NOT NULL THEN 
			  SELECT anagraph_id INTO v_anagraph_id 
			  FROM anagraph.anagraphs
			  WHERE jguid = new.master_jguid;   
		END IF; 
	END IF; 
	
	IF new.pos IS NULL THEN 
	   new.pos := 1; 	
	END IF; 
  
	INSERT INTO anagraph.an_addresses(
		db_schema_id, id, address_name, postal_code, 
		state_province, town_name, town_code, address, 
		address_number, phone, full_address, insert_date, 
		upd_id, ins_id, user_insert, user_update, 
		local, deleted, jguid, country_code, email, anagraph_id, master_jguid,
	    maps_json, longitude, latitude, pos )
	VALUES 
		(
		  new.db_schema_id, new.id, new.address_name, new.postal_code, 
		  new.state_province, new.town_name, new.town_code, new.address, 
		  new.address_number, new.phone, new.full_address, now(), 
		  new.upd_id, new.ins_id, new.user_insert, new.user_update, 
		  new.local, new.deleted, new.jguid, new.country_code, new.email, 
		  v_anagraph_id, new.master_jguid, 
		  new.maps_json, new.longitude, new.latitude, new.pos 
		);
	RETURN new; 
	
	EXCEPTION WHEN OTHERS THEN
		get stacked diagnostics
			v_state = returned_sqlstate,
			v_msg = message_text,
			v_detail = pg_exception_detail,
			v_context = pg_exception_context;
			
	  	RAISE EXCEPTION 'an_addresses_view_insert_trg aID: % % % ', v_anagraph_id::character varying, v_msg,  v_state;

end; 
$BODY$;

ALTER FUNCTION anagraph.an_addresses_view_insert_trg()
    OWNER TO ergo;
