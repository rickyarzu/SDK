select *
 from system.db_schemas;
 
select * from carservice.booking_head_view
order by id desc;

select bh.pickup_day FROM carservice.booking_heads bh
JOIN anagraph.anagraphs se ON bh.office_id = se.anagraph_id
--JOIN carservice.timetable_view tp ON bh.pickup_day = tp.workingday AND bh.pickup_slot_id = tp.slot_id 

select booking_id, min(workingday), min(slot_id) from carservice.timetable  WHERE BOOKING_ID IS NOT NULL GROUP BY booking_id; 

DO
$$
DECLARE 
  R RECORD; 
BEGIN
 FOR R IN (select booking_id, min(workingday) wd, min(slot_id) sid from carservice.timetable  WHERE BOOKING_ID IS NOT NULL GROUP BY booking_id ) LOOP
 	
	   UPDATE carservice.booking_heads set  pickup_day = r.wd, pickup_slot_id = r.sid where id = r.booking_id; 
       RAISE NOTICE 'Aggiornato:  % % % ', r.booking_id, r.wd, r.sid; -- i will take on the values 1,2,3,4,5,6,7,8,9,10 within the loop
 END LOOP;
END
$$

DO
$$
DECLARE 
  R RECORD; 
BEGIN
 FOR R IN (select booking_id, max(workingday) wd, max(slot_id) sid from carservice.timetable  WHERE BOOKING_ID IS NOT NULL GROUP BY booking_id ) LOOP
 	
	   UPDATE carservice.booking_heads set  return_day = r.wd, return_slot_id = r.sid where id = r.booking_id; 
       RAISE NOTICE 'Aggiornato:  % % % ', r.booking_id, r.wd, r.sid; -- i will take on the values 1,2,3,4,5,6,7,8,9,10 within the loop
 END LOOP;
END
$$


 