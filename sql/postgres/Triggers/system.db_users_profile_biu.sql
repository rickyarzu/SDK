-- FUNCTION: system.db_users_profile_biu()

-- DROP FUNCTION IF EXISTS system.db_users_profile_biu();

CREATE OR REPLACE FUNCTION system.db_users_profile_biu()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
begin

     New.search_name := system.stripstringsearch(New.last_name, New.first_name );
     New.reverse_search := system.stripstringsearch(New.first_name, New.last_name );

     New.first_name := trim(initcap(New.first_name)); 
     New.last_name := trim(initcap(New.last_name)); 

     if New.latitude < 0.0000000001 then New.latitude := 0; End If; 
     if New.longitude < 0.0000000001 then New.longitude := 0; End If;   
	 
	 if New.Anagraph_id is null then New.anagraph_id = 0; end if; 
     

     -- New.latitude := round(New.latitude, 7); 
     -- New.latitude := round(New.longitude, 7); 
      
     Return NEW;    
end; 
$BODY$;

ALTER FUNCTION system.db_users_profile_biu()
    OWNER TO postgres;
