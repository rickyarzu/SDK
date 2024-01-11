DO
$$
DECLARE 
  r record; 
BEGIN
 FOR r in (select * from carservice.booking_head_view)   LOOP
       RAISE NOTICE 'Pickup % Driver id: % at % - %', r.pickup_date, r.driver1_id, r.pickup_time , r.pickup_slot_id; 
	   RAISE NOTICE 'Delivery % Driver id: % at % - %', r.return_date, r.driver2_id, r.return_time, r.return_slot_id;
	   
     IF EXISTS (SELECT 1 FROM carservice.timetable  WHERE workingday = r.pickup_date and slot_id = r.pickup_slot_id and driver_anagraph_id = r.driver1_id) THEN	  
	 UPDATE  carservice.timetable set 
	 		from_id = r.customer_id, to_id = r.office_id 
		WHERE
		   workingday = r.pickup_date and slot_id = r.pickup_slot_id and driver_anagraph_id = r.driver1_id; 
	 ELSE
	   RAISE NOTICE 'RECORD NOT FOUND % Driver id: % at % - %', r.pickup_date, r.driver1_id, r.pickup_time , r.pickup_slot_id; 
	 END IF; 
		   
     IF EXISTS (SELECT 1 FROM carservice.timetable  WHERE workingday = r.return_date and slot_id = r.return_slot_id and driver_anagraph_id = r.driver2_id) THEN
	 UPDATE  carservice.timetable set 
	 		from_id = r.office_id , to_id = r.customer_id
		WHERE
		   workingday = r.return_date and slot_id = r.return_slot_id and driver_anagraph_id = r.driver2_id;
	 ELSE
	   RAISE NOTICE 'RECORD NOT FOUND % Driver id: % at % - %', r.return_date, r.driver2_id, r.return_time, r.return_slot_id; 
	 END IF; 
	 
 END LOOP;
END
$$