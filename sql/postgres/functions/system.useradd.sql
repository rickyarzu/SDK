-- FUNCTION: system.useradd(character varying, character varying, character varying, integer, boolean)

-- DROP FUNCTION IF EXISTS system.useradd(character varying, character varying, character varying, integer, boolean);

CREATE OR REPLACE FUNCTION system.useradd(
	p_email character varying,
	p_username character varying,
	p_password character varying,
	p_country_id integer,
	p_ispublic boolean)
    RETURNS character varying
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$

declare
  i_user_id integer; 
  n_record integer; 
  s_token character varying;
  r_country record; 

 --- variabili di diagnostica errori .....
  text_var1 text;
  text_var2 text;
  text_var3 text; 
begin

   i_user_id := -1; 

   PERFORM system.setlog('system.usertest(p_username, p_email)'); 

   if p_username is null then p_username := p_email; end if; 

   select system.usertest(p_username, p_email) into n_record; 

   PERFORM system.setlog('Terminato system.usertest(p_username, p_email) trovat = ' || n_record); 

   if n_record = 0 then
   
	select nextval('system.db_users_seq') into i_user_id; 

	PERFORM system.setlog('system.useradd system.db_users_seq ' || i_user_id); 

        select system.get_key(i_user_id, 32) into s_token; 

        --select * into r_country from jpublic.countries where country_id = p_country_id; 

        --PERFORM system.setlog('system.useradd system.r_country ' || r_country; 

	insert into system.db_users
	(active, email, db_user_id, password, username, isactive, default_schema_id, verified, ispublic, verify_token)

	values (false, p_email, i_user_id, p_password, p_username, false,  0, false, p_ispublic, s_token );

       INSERT INTO system.db_users_schemas(
            db_schema_id, db_user_id, isadmin, isdefault, isowner, readwrite)
       VALUES (0, i_user_id, false, true, false, false);

     end if; 

     return s_token; 
     
  exception when others then 
	PERFORM system.setlog('system.useradd  Errore di sessione'); 
	GET STACKED DIAGNOSTICS text_var1 = MESSAGE_TEXT,
                          text_var2 = PG_EXCEPTION_DETAIL,
                          text_var3 = PG_EXCEPTION_HINT;

	PERFORM system.setlog('system.useradd   MESSAGE_TEXT: ' || text_var1); 
	PERFORM system.setlog('system.useradd   PG_EXCEPTION_DETAIL: ' || text_var2); 
	PERFORM system.setlog('system.useradd   PG_EXCEPTION_HINT: ' || text_var3); 
  
	Return 'Errore'; 
end; 

$BODY$;

ALTER FUNCTION system.useradd(character varying, character varying, character varying, integer, boolean)
    OWNER TO ergo;
