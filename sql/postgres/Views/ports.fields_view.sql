-- View: sports.fields_view

-- DROP VIEW sports.fields_view;

CREATE OR REPLACE VIEW sports.fields_view
 AS
 SELECT fields.id,
    fields.db_schema_id,
    fields.field_name,
    fields.address,
    fields.country_id,
    fields.region_id,
    fields.district_id,
    fields.town_id,
    fields.remote_id,
    fields.town_name,
    fields.postal_code,
    fields.telephone,
    fields.fax,
    fields.notes,
    fields.img_url,
    fields.jguid,
    fields.deleted,
    fields.insert_date,
    fields.update_date,
    fields.user_insert,
    fields.user_update
   FROM sports.fields
  WHERE fields.db_schema_id = system.get_schema_id();

ALTER TABLE sports.fields_view
    OWNER TO ergo;


CREATE TRIGGER fields_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.fields_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.fields_view_trg();

