select * from system.db_users where email like '%missana%' or email like '%loffredo%' or email like '%arzu%'
order by db_user_id desc

select * from 

select * from system.db_users_profiles
where db_user_id in (411, 410, 256)

select * from anagraph.anagraphs where anagraph_id in 
(
253952, -- Loffredo
253953, -- Missana
253911 -- arduino
)

Select * from carservice.drivers

update carservice.drivers set anagraph_id = 253911 where anagraph_id = 253758; -- Arduino
update carservice.drivers set anagraph_id = 253952 where anagraph_id = 253906; -- Loffredo
update carservice.drivers set anagraph_id = 253953 where anagraph_id = 253174; -- Missana

select * from carservice.timetable_booking_driver

update carservice.timetable set driver_anagraph_id = 253911 where driver_anagraph_id = 253758; -- Arduino
update carservice.timetable set driver_anagraph_id = 253952 where driver_anagraph_id = 253906; -- Loffredo
update carservice.timetable set driver_anagraph_id = 253953 where driver_anagraph_id = 253174; -- Missana 


