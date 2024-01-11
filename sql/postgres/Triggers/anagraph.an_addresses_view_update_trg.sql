-- FUNCTION: anagraph.an_addresses_view_update_trg()

-- DROP FUNCTION IF EXISTS anagraph.an_addresses_view_update_trg();

CREATE OR REPLACE FUNCTION anagraph.an_addresses_view_update_trg()
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
	if v_anagraph_id is null THEN v_anagraph_id := old.anagraph_id; end if; 
	
	UPDATE anagraph.an_addresses
		SET db_schema_id= new.db_schema_id, address_name= new.address_name, 
		postal_code= new.postal_code, 
		state_province= new.state_province, town_name= new.town_name, 
		town_code= new.town_code, address= new.address, address_number= new.address_number, 
		phone= new.phone, 
		full_address= new.full_address, 
		update_date= now(), 
		upd_id= new.upd_id, ins_id= new.ins_id, user_insert= new.user_insert, 
		user_update= new.user_update, 
		local= new.local, deleted= new.deleted, country_code= new.country_code, 
		email= new.email, anagraph_id= new.anagraph_id, master_jguid = new.master_jguid
		WHERE 
		jguid = old.jguid; 
	
	RETURN new; 
	
	EXCEPTION WHEN OTHERS THEN
		get stacked diagnostics
			v_state = returned_sqlstate,
			v_msg = message_text,
			v_detail = pg_exception_detail,
			v_context = pg_exception_context;
			
	  	RAISE EXCEPTION 'an_addresses_view_update_trg aID: % % % ', new.anagraph_id::character varying, v_msg,  v_state;
end; 

$BODY$;

ALTER FUNCTION anagraph.an_addresses_view_update_trg()
    OWNER TO ergo;
