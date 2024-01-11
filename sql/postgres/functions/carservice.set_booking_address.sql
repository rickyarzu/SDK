CREATE OR REPLACE FUNCTION carservice.set_booking_address
	(IN p_jguid uuid, IN p_type "char", IN p_booking_id bigint, INOUT p_id bigint, INOUT p_booking_jguid uuid)
    LANGUAGE 'plpgsql'   
AS $BODY$
BEGIN
  IF (p_id IS NULL OR p_id = 0) AND p_jguid IS NOT NULL
    AND EXISTS (SELECT 1 FROM anagraph.addresses a WHERE a.jguid = p_jguid)
  THEN
    SELECT id into p_id from anagraph.an_addresses where
	  jguid = p_jguid; 
  END IF; 
  
  IF (p_booking_id IS NULL OR p_booking_id = 0) AND p_booking_jguid IS NOT NULL
    AND EXISTS (SELECT 1 FROM carservice.booking_heads A WHERE A.jguid = p_booking_jguid)
  THEN
    SELECT id into p_booking_id from carservice.booking_heads where
	  jguid = p_booking_jguid; 
  END IF; 
 
  IF (p_id IS NOT NULL AND p_id > 0) THEN 
	  BEGIN
		INSERT INTO carservice.booking_addresses(
			db_schema_id, id, address_name, postal_code, state_province, town_name, town_code, address, address_number, phone, 
			full_address, insert_date, update_date, upd_id, ins_id, user_insert, user_update, local, deleted, 
			jguid, country_code, email, anagraph_id, ad_type, booking_id, booking_jguid, maps_json)
		SELECT  
			db_schema_id, id, address_name, postal_code, state_province, town_name, town_code, address, address_number, phone, 
			full_address, insert_date, update_date, upd_id, ins_id, user_insert, user_update, local, deleted, 
			jguid, country_code, email, anagraph_id, ad_type, p_booking_id, p_booking_jguid, maps_json
		FROM 
		  anagraph.an_addresses a where a.ID = p_id;  
	  EXCEPTION WHEN OTHERS THEN
		RAISE; 
	  END; 
   END IF; 
 
END; 
$BODY$;
