SELECT jguid, workingday, slot_id, booking_id, from_id, to_id, state_id, slot_des, booked, driver_anagraph_id, an_cellular, "?column?", an_email, from_latitude, from_longitude, from_full_address, to_latitude, to_longitude, to_full_address
	FROM carservice.timetable_view
	where booking_id is not null
	order by booking_id desc
	

select jguid, id, office_id, customer_id, branch_id, service_address, pickup_address, return_address, pickup2_address, return2_address
from carservice.booking_head_view order by id desc

select * from carservice.timetable_view where booking_id = 170;
select * from anagraph.an_addresses where id in (480, 478, 478,	481) order by id desc
select a.an_last_name,  id, pos, address_name,  full_address, a.anagraph_id from anagraph.an_addresses d
JOIN anagraph.anagraphs a ON d.anagraph_id  = a.anagraph_id
where a.anagraph_id in (254270,254271) order by id

select * from carservice.booking_heads order by id desc
select * from carservice.timetable where booking_id = 165
select * from system.db_schemas order by db_schema_id desc
select * from system.db_schema_config where db_schema_id = 36 order by key
select * from carservice.messages order by id desc
delete from carservice.messages

select * from system.db_users order by db_user_id desc;-- where email like '%loff%'; 
-- Viale Luigi Majno, 7, 20122 Milano MI -- 45.46880411572695, 9.20543212669884
update system.db_users_profiles SET
address_full = 'Viale Luigi Majno, 7, 20122 Milano MI',
latitude =  45.46880411572695,
longitude =  9.20543212669884,
address_street =  'Viale Luigi Majno', 
address_postal_code = '20122', 
address_number =  '7', 
address_town = 'Milano',
address_state_province = 'MI',
anagraph_id = 253911
WHERE db_user_id in (399, 346, 398, 406);

SELECT * FROM system.db_users_profiles WHERE db_user_id in (399, 346, 398, 406); 

update anagraph.anagraphs SET
an_full_address = 'Viale Luigi Majno, 7, 20122 Milano MI',
latitude =  45.46880411572695,
longitude =  9.20543212669884,
an_address =  'Viale Luigi Majno', 
an_postal_code = '20122', 
an_address_number =  '7', 
an_town = 'Milano',
an_state_province = 'MI', 
an_last_name = 'Carrozzeria Majno',
an_name = ''
WHERE anagraph_id = 253911;


select jguid, an_last_name from anagraph.anagraphs where anagraph_id in (253911) 
select * from anagraph.an_addresses where anagraph_id in (253911) order by id desc

SET SESSION "system.db_schema_id" = 39; 

insert into anagraph.an_addresses 
(address_name, postal_code,   town_name,  address,             address_number, full_address                           
 , anagraph_id, master_jguid )
values
('Carrozzeria Majno', '20122', 'Milano', 'Viale Luigi Majno',  '7'           , 'Viale Luigi Majno, 7, 20122 Milano MI', 
 253911,     '439cf044-dc0b-4147-a540-d79223d409f2');




