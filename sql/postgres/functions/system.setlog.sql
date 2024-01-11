-- FUNCTION: system.setlog(text)

-- DROP FUNCTION IF EXISTS system.setlog(text);

CREATE OR REPLACE FUNCTION system.setlog(
	log text)
    RETURNS date
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
begin
   insert into system.syslog (logtime, log) values (now(), log);
   RAISE NOTICE 'log is --%', log;
   return now(); 
EXCEPTION WHEN OTHERS THEN 
  RAISE 'Errore system.setlog: %', SQLERRM;
end; 
$BODY$;

ALTER FUNCTION system.setlog(text)
    OWNER TO postgres;
