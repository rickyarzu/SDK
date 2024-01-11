-- FUNCTION: carservice.booking_heads_view_insert_trg()

--DROP FUNCTION IF EXISTS carservice.booking_heads_view_insert_trg();

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
   
   PERFORM system.setlog('inserting booking head using id:' || new.id::character varying  );
   

  	if new.customer_id is null or new.customer_id = 0 then  
    BEGIN
      	new.customer_id := nextval('anagraph.an_anagraph_seq'); 
		PERFORM system.setlog('inserting anagraph using id:' || new.customer_id::TEXT );
		if NEW.cust_last_name IS NULL THEN RAISE 'Custoemer last name is NULL cust_last_name'; END IF; 
		if NEW.full_address IS NULL THEN RAISE 'Customer Address is NULL full_address'; END IF; 
		if NEW.cust_email IS NULL THEN RAISE 'Customer last name is NULL cust_email'; END IF; 
		
 	INSERT INTO anagraph.anagraphs 
	     (db_schema_id, 
		  jguid, 
		  anagraph_id, 
		  an_name, 
		  an_last_name, 
		  an_address, 
		  an_cellular, 
		  an_email,  
		  an_main_group_id, 
		  an_office_id)
	VALUES
	     (new.db_schema_id, -- db_schema_id
		  new.jguid, -- jguid
		  NEW.customer_id, -- anagraph_id
		  NEW.cust_first_name, -- an_name
		  NEW.cust_last_name, -- an_last_name
		  NEW.full_address,  -- an_address
		  NEW.cust_cellular, -- an_cellular
		  NEW.cust_email, -- an_email
		  28, -- an_main_group_id
		  new.office_id); 
	 EXCEPTION WHEN OTHERS THEN 
	   RAISE 'Errore inserimento anagrafica cliente: %', SQLERRM;
     END; 
   ELSIF EXISTS (SELECT 1 FROM anagraph.anagraphs WHERE anagraph_id = new.customer_id) THEN
     BEGIN
     PERFORM system.setlog('updating anagraph using id:' || new.customer_id::TEXT );
     UPDATE anagraph.anagraphs SET
     	an_name      	 = COALESCE(NEW.cust_first_name, an_name), 
        an_last_name 	 = COALESCE(NEW.cust_last_name, an_name), 
        an_address		 = COALESCE(NEW.full_address, an_address), 	
        an_cellular		 = COALESCE(NEW.cust_cellular, an_cellular), 
        an_email		 = COALESCE(NEW.cust_email, an_email), 
        an_office_id	 = COALESCE(NEW.office_id, an_office_id)
     WHERE anagraph_id = new.customer_id;  
  	 EXCEPTION WHEN OTHERS THEN 
	   RAISE 'Errore inserimento anagrafica cliente: %', SQLERRM;
     END; 
  end if; 

BEGIN
	INSERT INTO carservice.booking_heads(
			id, office_id, branch_id , 
            jguid, db_schema_id, user_insert, insert_date, 
            customer_id, state_id, 
        	vehicle_numberplate, vehicle_model, vehicle_color)
	VALUES (new.id, new.office_id /*ufficio o sede contabile*/, new.branch_id /*location di riferimento service*/,  
            new.jguid, new.db_schema_id, new.user_insert,  Now() /* data inseriment ora */,
			new.customer_id /*identificativo dell'utente del servizio */, NEW.state_id,
		    new.vehicle_numberplate, new.vehicle_model, new.vehicle_color /* dati del veicolo */);
	IF new.state_id = -1 then 
   		update timetable set booking_id = null where booking_id = new.id;
	END IF; 
EXCEPTION WHEN OTHERS THEN 
	   RAISE 'Errore inserimento carservice.booking_heads: %', SQLERRM;
END; 

return new; 
	
end;
$BODY$;

ALTER FUNCTION carservice.booking_heads_view_insert_trg()
    OWNER TO ergo;
