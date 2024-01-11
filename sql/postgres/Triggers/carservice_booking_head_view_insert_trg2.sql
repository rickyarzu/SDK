-- FUNCTION: carservice.booking_heads_view_insert_trg()

-- DROP FUNCTION IF EXISTS carservice.booking_heads_view_insert_trg();

CREATE OR REPLACE FUNCTION carservice.booking_heads_view_insert_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
begin
  -- un nuovo record ha id nullo o 0 quindi 'stacco' una sequence
   if new.id is null or new.id = 0 then    
       new.id := nextval('carservice.booking_heads_sequence');   
   end if; 
   
   -- lo stato inizialmente vale '0' stato di inserimento ma non ancora confermato
   if new.state_id is null  then    
       new.id := 0;   
   end if; 
   
   new.insert_date := now(); 
   
  if new.customer_id is null or new.customer_id = 0 then    
      new.customer_id := nextval('anagraph.an_anagraph_seq');  
  
	  INSERT INTO anagraph.anagraphs 
	     (db_schema_id, jguid, anagraph_id, an_name, an_last_name, an_address, an_cellular, an_email,  an_main_group_id, an_office_id)
	   VALUES
	     (new.db_schema_id, new.jguid, NEW.customer_id, NEW.cust_first_name, NEW.cust_last_name, NEW.full_address,  NEW.cust_cellular, NEW.cust_email, 28, new.office_id); 
		 
  end if; 
  
  /*
  La procedura sembra tornata in dietro nel tempo  
  */

INSERT INTO carservice.booking_heads(
	id, office_id, branch_id , jguid, db_schema_id, user_insert, insert_date, customer_id, state_id, vehicle_numberplate, vehicle_model, vehicle_color)
	VALUES (new.id, new.office_id /*ufficio o sede contabile*/, new.branch_id /*location di riferimento service*/,  new.jguid, new.db_schema_id, new.user_insert, 
			 new.insert_date, new.customer_id /*identificativo dell'utente del servizio */, NEW.state_id, NEW.vehicle_numberplate, new.vehicle_model, new.vehicle_color);

IF new.state_id = -1 then 
   update timetable set booking_id = null where booking_id = new.id;
END IF; 
	
	
	return new; 
	
end;
$BODY$;

ALTER FUNCTION carservice.booking_heads_view_insert_trg()
    OWNER TO ergo;
