DO
$$
DECLARE 
  R RECORD; 
BEGIN
 FOR R IN (SELECT * FROM carservice.timetable WHERE from_id is not null) LOOP
 
      IF EXISTS 
        (SELECT 1 FROM carservice.timetable 
         WHERE workingday = r.workingday + INTERVAL '40 day'
              AND driver_anagraph_id = r.driver_anagraph_id
              AND slot_id = R.slot_id
              AND booking_id is not null
        )
       -- AND EXISTS (SELECT 1 FROM carservice.timetable 
       --            WHERE workingday = r.workingday + INTERVAL '40 day')
      THEN         
         
       RAISE NOTICE 'AGGIORNO RECORD: % % %',r.workingday + INTERVAL '40 day',   R.booking_id, R.slot_id; 
         
       UPDATE carservice.timetable set 
              from_id = R.from_id, 
              to_id = R.to_id
       where
         workingday = r.workingday + INTERVAL '40 day' AND driver_anagraph_id = r.driver_anagraph_id AND slot_id = R.slot_id;
       
       ELSE
          RAISE NOTICE 'RECORD NON TROVATO % %', r.workingday + INTERVAL '40 day',  R.booking_id;  
         
       END IF;
END LOOP;
  
END
$$