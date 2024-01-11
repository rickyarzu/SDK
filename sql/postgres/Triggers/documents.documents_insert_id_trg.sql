-- FUNCTION: documents.documents_insert_id_trg()

-- DROP FUNCTION IF EXISTS documents.documents_insert_id_trg();

CREATE OR REPLACE FUNCTION documents.documents_insert_id_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
begin
     if New.id is null then
          New.id:=nextval('documents.documents_seq');
      end if; 
	  
  
New.search_index = 
  system.stripstringsearch(New.doc_number, New.doc_year::character varying) 
  || system.stripstringsearch(New.holder_name, New.po_number)
  || system.stripstringsearch(New.location_name, New.registry_code)
  || system.stripstringsearch(New.dest_name, New.work_code);	  
      Return NEW;
end;
$BODY$;

ALTER FUNCTION documents.documents_insert_id_trg()
    OWNER TO ergo;
