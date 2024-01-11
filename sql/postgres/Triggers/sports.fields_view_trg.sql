-- FUNCTION: sports.fields_view_trg()

-- DROP FUNCTION IF EXISTS sports.fields_view_trg();

CREATE OR REPLACE FUNCTION sports.fields_view_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
 v_id integer;
BEGIN

  IF TG_OP = 'UPDATE' THEN 
  UPDATE sports.fields SET
    db_schema_id = New.db_schema_id,
    field_name = New.field_name,
    address = New.address,
    country_id = New.country_id,
    region_id = New.region_id,
    district_id = New.district_id,
    town_id = New.town_id,
    remote_id = New.remote_id,
    town_name = New.town_name,
    postal_code = New.postal_code,
    telephone = New.telephone,
    fax = New.fax,
    notes = New.notes,
    img_url = New.img_url
  WHERE 
    (jguid = New.jguid) ;
	
  ELSIF TG_OP = 'UPDATE' THEN 
  INSERT INTO sports.fields (
    id,
    db_schema_id,
    field_name,
    address,
    country_id,
    region_id,
    district_id,
    town_id,
    remote_id,
    town_name,
    postal_code,
    telephone,
    fax,
    notes,
    img_url,
	jguid
  )
  VALUES (
    New.id,
    New.db_schema_id,
    New.field_name,
    New.address,
    New.country_id,
    New.region_id,
    New.district_id,
    New.town_id,
    New.remote_id,
    New.town_name,
    New.postal_code,
    New.telephone,
    New.fax,
    New.notes,
    New.img_url,
	New.jguid
  ) RETURNING id into v_id;
  
  ELSIF TG_OP = 'DELETE' THEN 
  DELETE FROM sports.fields
  WHERE 
    (jguid = New.jguid) ;
  END IF;
  
  RETURN New; 	
  
END;
$BODY$;

ALTER FUNCTION sports.fields_view_trg()
    OWNER TO ergo;
