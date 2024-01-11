-- FUNCTION: system.stripstringsearch(character varying, character varying)

-- DROP FUNCTION system.stripstringsearch(character varying, character varying);

CREATE OR REPLACE FUNCTION system.stripstringsearch(
	p_firstname character varying,
	p_lastname character varying)
    RETURNS character varying
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE   
   TEMP_NAME                 character varying(2048);
    v_firstname character varying (1024);
    v_lastname character varying (1024);
   -- Declare program variables as shown above
BEGIN 
-- Start of DDL Script for Trigger TTTLINES_PUBLIC.ANAG_NOMERICERCA_TRG
-- Generated 17-dic-2007 7.17.39 from TTTLINES_PUBLIC@JANUA
       if p_firstname is null then v_firstname := ' '; else v_firstname := p_firstname; end if;  
       if p_lastname is null then v_lastname := ' '; else v_lastname := p_lastname; end if; 
       
       TEMP_NAME := TRIM(v_firstname) || TRIM(v_lastname);
       TEMP_NAME := replace (TEMP_NAME, '.', '');
       TEMP_NAME := replace (TEMP_NAME, '-', '');
       TEMP_NAME := replace (TEMP_NAME, ',', '');
       TEMP_NAME := replace (TEMP_NAME, '@', '');
       TEMP_NAME := replace (TEMP_NAME, '_', '');
       TEMP_NAME := replace (TEMP_NAME, '/', '');
       TEMP_NAME := replace (TEMP_NAME, '(', '');
       TEMP_NAME := replace (TEMP_NAME, ')', '');
       TEMP_NAME := replace (TEMP_NAME, '&', '');
       TEMP_NAME := replace (TEMP_NAME, '*', '');
       TEMP_NAME := replace (TEMP_NAME, ' ', '');
       TEMP_NAME := replace (TEMP_NAME, ':', '');
       TEMP_NAME := replace (TEMP_NAME, '?', '');
       TEMP_NAME := replace (TEMP_NAME, '#', '');
       TEMP_NAME := replace (TEMP_NAME, '*', '');
       TEMP_NAME := replace (TEMP_NAME, '?', '');
       TEMP_NAME := replace (TEMP_NAME, ';', '');
	   TEMP_NAME := replace (TEMP_NAME, '"', '');
       return upper(TEMP_NAME); 
 end;
$BODY$;

ALTER FUNCTION system.stripstringsearch(character varying, character varying)
    OWNER TO enterprisedb;
