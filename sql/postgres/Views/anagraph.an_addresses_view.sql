-- View: anagraph.an_addresses_view

-- DROP VIEW anagraph.an_addresses_view;

CREATE OR REPLACE VIEW anagraph.an_addresses_view
 AS
 SELECT an_addresses.db_schema_id,
    an_addresses.id,
    an_addresses.address_name,
    an_addresses.postal_code,
    an_addresses.state_province,
    an_addresses.town_name,
    an_addresses.town_code,
    an_addresses.address,
    an_addresses.address_number,
    an_addresses.phone,
    an_addresses.full_address,
    an_addresses.insert_date,
    an_addresses.update_date,
    an_addresses.upd_id,
    an_addresses.ins_id,
    an_addresses.user_insert,
    an_addresses.user_update,
    an_addresses.local,
    an_addresses.deleted,
    an_addresses.jguid,
    an_addresses.country_code,
    an_addresses.email,
    an_addresses.anagraph_id,
    an_addresses.maps_json,
    an_addresses.longitude,
    an_addresses.latitude,
    an_addresses.pos, 
	an_addresses.master_jguid
   FROM anagraph.an_addresses;

ALTER TABLE anagraph.an_addresses_view
    OWNER TO ergo;


CREATE TRIGGER an_addresses_view_bi_trg
    INSTEAD OF INSERT
    ON anagraph.an_addresses_view
    FOR EACH ROW
    EXECUTE FUNCTION anagraph.an_addresses_view_insert_trg();


CREATE TRIGGER an_addresses_view_bu_trg
    INSTEAD OF UPDATE 
    ON anagraph.an_addresses_view
    FOR EACH ROW
    EXECUTE FUNCTION anagraph.an_addresses_view_update_trg();

