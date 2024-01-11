SELECT *
	FROM system.db_users_profiles p join system.db_users u on p.db_user_id = u.db_user_id
	WHERE u.EMAIL LIKE '%rickyarzu%' or email like '%missana%' or email like '%loffredo%'
	
update system.db_users_profiles set anagraph_id = 

select anagraph_id, an_last_name, an_email 
from anagraph.anagraphs where an_email LIKE '%rickyarzu%' or an_email like '%missana%' or an_email like '%loffredo%'
or anagraph_id = 253911

/*
253174	"Missana"	"c.missana@tiscalinet.it"					399
253906	"Loffredo"	"alessandroloffredo@studioloffredo.it"		398
253758  "Arduino"   "rickyarzu@gmail.com"						346
*/

select anagraph_id, an_name, an_last_name, an_address, an_town, an_email
from anagraph.anagraphs where lower(an_last_name) like '%arduino%'

update system.db_users_profiles set anagraph_id = 253758 where db_user_id = 346; --Arduino
update system.db_users_profiles set anagraph_id = 253174 where db_user_id = 399; --Missana
update system.db_users_profiles set anagraph_id = 253906 where db_user_id = 398; --Loffredo

INSERT INTO carservice.drivers (anagraph_id, drive_license_number, db_schema_id)
VALUES (253758, 'GE12345', 36), (253174, 'MI12345', 36), (253906, 'MI12345', 36);

DELETE FROM carservice.drivers

SELECT * FROM system.db_schemas