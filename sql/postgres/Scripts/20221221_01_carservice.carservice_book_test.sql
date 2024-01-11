SELECT * FROM carservice.generate_timetable_driver(365, 253174, NOW()::DATE);
DELETE FROM carservice.timetable WHERE driver_anagraph_id = 0;
SELECT * FROM carservice.booking_head_view ORDER BY id DESC;

SELECT anagraph_id, an_last_name, an_address, an_town, an_postal_code, an_email
FROM anagraph.anagraphs WHERE anagraph_id IN (253223 , 253311, 253338, 253219);

SELECT anagraph_id, an_last_name, an_address, an_town, an_postal_code, an_email, an_cellular
FROM anagraph.anagraphs WHERE anagraph_id IN (253906 , 253907, 251805);

SELECT anagraph_id, an_last_name, an_address, an_town, an_postal_code, an_email
FROM anagraph.anagraphs WHERE an_email IN ('rickyarzu@gmail.com', 'alessandroloffredo@studioloffredo.it', 'c.missana@tiscalinet.it');

SELECT * FROM system.db_users WHERE email IN ( 'rickyarzu@gmail.com', 'alessandroloffredo@studioloffredo.it', 'c.missana@tiscalinet.it' );
SELECT DISTINCT CELLULAR_PHONE FROM system.db_users_profiles WHERE public_email 
	IN ( 'rickyarzu@gmail.com', 'alessandroloffredo@studioloffredo.it', 'c.missana@tiscalinet.it' );
	
"c.missana@tiscalinet.it"	399
"rickyarzu@gmail.com"	256
"alessandroloffredo@studioloffredo.it"	398

253906	"Loffredo"
253907	"Missana"
251805 "Arduino"

select * from  carservice.carservice_book((Now())::date, 6::smallint, 33::bigint);
select * from carservice.timetable where slot_id = 5 and  workingday = Now()::date;
select * from carservice.timetable where booking_id = 34; 
SELECT * FROM carservice.booking_head_view ORDER BY id DESC;
select * from carservice.timetable where workingday = Now()::date ORDER BY slot_id;
select * from system.db_users_profiles where db_user_id in (256, 399, 398);
select * from anagraph.anagraphs where an_last_name like '%rduino%'



