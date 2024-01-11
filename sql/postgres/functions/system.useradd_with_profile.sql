-- FUNCTION: system.useradd(character varying, character varying, character varying, integer, boolean)

--DROP FUNCTION IF EXISTS system.useradd(character varying, character varying, character varying, integer, boolean);

CREATE OR REPLACE FUNCTION system.useradd_with_profile(
	IN	p_email character varying,
	IN	p_username character varying,
	IN	p_firstname character varying,
	IN	p_lastname character varying,
	IN	p_address  character varying,
	IN	p_town  character varying,
	IN	p_postal_code  character varying, 
	IN	p_password character varying,
	IN  p_phone character varying DEFAULT NULL, 
	IN  p_an_group_id integer DEFAULT 27, 
	INOUT	p_anagraph_id integer  DEFAULT 0, 
	INOUT	p_default_schema_id integer DEFAULT 0,
	INOUT	p_country_id integer DEFAULT 1,
	INOUT	p_ispublic boolean DEFAULT false,
    OUT	 	P_GUID UUID,
    OUT     p_user_id integer)
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$

declare
  v_test boolean; 
  s_token character varying;
  r_country record; 
 --- variabili di diagnostica errori .....
  text_var1 text;
  text_var2 text;
  text_var3 text; 
begin
   P_GUID := uuid_generate_v4();

   PERFORM system.setlog('system.usertest(p_username, p_email)'); 
   if p_username is null then p_username := p_email; end if; 
  
   v_test := EXISTS (SELECT 1 FROM system.db_users WHERE email = TRIM(LOWER(p_email)))
		     OR EXISTS (SELECT 1 FROM system.db_users WHERE username = TRIM(LOWER(p_username)));
 
   IF v_test THEN
	 PERFORM system.setlog('USER: ' || p_email || ' ALREADY EXISTS EXITING'); 
   ELSE
	IF COALESCE(p_default_schema_id, 0) = 0 THEN p_default_schema_id := system.get_schema_id(); END IF; 
        
	p_user_id := nextval('system.db_users_seq') ; 
	PERFORM system.setlog('system.useradd system.db_users_seq ' || p_user_id); 
    select system.get_key(p_user_id, 32) into s_token; 

	insert into system.db_users
	(active, email, db_user_id, password, username, isactive, default_schema_id, verified, ispublic, verify_token, jguid)
	values (false, p_email, p_user_id, p_password, p_username, false,  0, false, p_ispublic, s_token, P_GUID);
	
    INSERT INTO system.db_users_schemas(
            db_schema_id, db_user_id, isadmin, isdefault, isowner, readwrite)
       VALUES (p_default_schema_id, p_user_id, false, true, false, false);
	  
	p_anagraph_id := nextval('anagraph.an_anagraph_seq');
	
	INSERT INTO anagraph.anagraphs_view (db_schema_id, anagraph_id, an_name, an_last_name, an_cellular, an_email,
										jguid, an_main_group_id)
			VALUES (p_default_schema_id, p_anagraph_id, p_firstname, p_lastname, p_phone, p_email,
										P_GUID, p_an_group_id );

    

	IF NOT EXISTS (SELECT 1 FROM system.db_users_profiles where db_user_id = p_user_id ) THEN
	  BEGIN
	    PERFORM system.setlog('User profile not exists ' || p_user_id); 
		INSERT INTO system.db_users_profiles
			(db_user_id, country_id, first_name, last_name, address_full, address_postal_code, cellular_phone, gender_code,
		 	 uspr_jguid, supr_jguid, anagraph_id, public_email)
		VALUES (
			p_user_id, 
			p_country_id, 
			p_firstname, 
			p_lastname, 
		    p_address || ', ' || p_postal_code || ', ' || p_town,
		    p_postal_code, 
		    p_phone, --cellular_phone
		    'M',  --gender_code
		    P_GUID, --uspr_jguid
		    P_GUID, ---supr_jguid
		    p_anagraph_id, -- anagraph_id
		    p_email -- public_email		
		);
	  END;
	  ELSE 
	  BEGIN
	    PERFORM system.setlog('Update User Profile: ' || p_user_id); 
	    UPDATE system.db_users_profiles SET
	  		country_id = p_country_id,
			first_name = p_firstname,
			last_name = p_lastname, 
			address_full = p_address || ', ' || p_postal_code || ', ' || p_town,
			address_postal_code = p_postal_code,
			cellular_phone = p_phone,
			gender_code = 'M',--gender_code
			anagraph_id = p_anagraph_id,
			public_email = p_email ;
	  END; 
	END IF; 
   END IF; 

  /*   
  exception when others then 
	PERFORM system.setlog('system.useradd  Errore di sessione'); 
	GET STACKED DIAGNOSTICS text_var1 = MESSAGE_TEXT,
                          text_var2 = PG_EXCEPTION_DETAIL,
                          text_var3 = PG_EXCEPTION_HINT;

	PERFORM system.setlog('system.useradd   MESSAGE_TEXT: ' || text_var1); 
	PERFORM system.setlog('system.useradd   PG_EXCEPTION_DETAIL: ' || text_var2); 
	PERFORM system.setlog('system.useradd   PG_EXCEPTION_HINT: ' || text_var3); 
*/
end; 

$BODY$;

