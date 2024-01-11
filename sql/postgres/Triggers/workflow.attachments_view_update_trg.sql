-- FUNCTION: carservice.booking_heads_view_update_trg()

-- DROP FUNCTION IF EXISTS carservice.booking_heads_view_update_trg();

CREATE OR REPLACE FUNCTION carservice.booking_heads_view_update_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
  vGUID uuid;                                      
begin

/* NOTE NOTE NOTE: if Customer IS REPLACED by a 'New' one (that is customer_id = 0) we should do a new customer creation */

--- magari in un secondo momento :) -- 

 if new.customer_id = 0 then 
   vGUID := uuid_generate_v4 ();

 new.customer_id := nextval('anagraph.an_anagraph_seq');  
  
  INSERT INTO anagraph.anagraphs 
	(db_schema_id, jguid, anagraph_id, an_name, an_last_name, an_address, an_cellular, an_email,  an_main_group_id, an_office_id, driver_id)
  VALUES
     (new.db_schema_id, vGUID, NEW.customer_id, NEW.cust_first_name, NEW.cust_last_name, NEW.full_address,  NEW.cust_cellular, 
	  NEW.cust_email, 28, new.office_id, NEW.driver_id); 

 else 
	update anagraph.anagraphs set
	 an_name = new.cust_first_name, 
	 an_last_name  = new.cust_last_name, --
	 an_address  = new.full_address, --
	 an_cellular  = new.cust_cellular, --
	 an_email = new.cust_email
	 
	 where
	 anagraph_id = new.customer_id; 
  end if; 

UPDATE carservice.booking_heads
	SET id=new.id, office_id=new.office_id,  branch_id=new.branch_id,   db_schema_id=new.db_schema_id, customer_id=new.customer_id, 
	vehicle_model=new.vehicle_model, vehicle_color=new.vehicle_color, vehicle_numberplate=new.vehicle_numberplate
	WHERE jguid = old.jguid;

	  
	
   return new; 
end; 
$BODY$;

ALTER FUNCTION carservice.booking_heads_view_update_trg()
    OWNER TO ergo;
