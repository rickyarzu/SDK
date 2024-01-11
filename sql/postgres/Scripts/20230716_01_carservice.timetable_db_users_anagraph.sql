select *
from system.db_users_profiles 
where anagraph_id <> 253911

select user_first_name, user_family_name, db_user_id
  from system.db_users where user_first_name <> 'Ciccio23'

select * from anagraph.anagraphs_view where anagraph_id IN 
(253928,
253931,
253912,
253925,
253926)

select * from system.db_users_profiles where anagraph_id = 253911 and first_name <> 'Ciccio23'

DO $$DECLARE r record;
BEGIN
    FOR r IN select * from system.db_users_profiles where anagraph_id <> 253911
    LOOP
        UPDATE system.db_users_profiles SET  first_name = r.user_first_name, last_name = r.user_family_name
		   where db_user_id = r.db_user_id;
    END LOOP;
END$$;


DO $$DECLARE r record;
BEGIN
    FOR r IN select user_first_name, user_family_name, db_user_id from system.db_users where user_first_name <> 'Ciccio23'
    LOOP
        UPDATE system.db_users_profiles SET  first_name = r.user_first_name, last_name = r.user_family_name
		   where db_user_id = r.db_user_id;
    END LOOP;
END$$;



