-- FUNCTION: system.record_date_biu()

-- DROP FUNCTION IF EXISTS system.record_date_biu();

CREATE OR REPLACE FUNCTION anagraph.record_date_biu()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
begin

     if New.insert_date is null then
          New.insert_date := Now();
     end if; 

     New.update_date := Now();

     Return New; 

end; 
$BODY$;

ALTER FUNCTION anagraph.record_date_biu()
    OWNER TO ergo;
