DO
$$
DECLARE 
  R RECORD; 
BEGIN
 FOR R IN (SELECT * FROM carservice.timetable WHERE booking_id is not null) LOOP
 
      IF NOT EXISTS 
        (SELECT 1 FROM carservice.timetable 
         WHERE workingday = r.workingday + INTERVAL '40 day'
              AND driver_anagraph_id = r.driver_anagraph_id
              AND slot_id = R.slot_id
              AND booking_id is not null
        )
        AND EXISTS (SELECT 1 FROM carservice.timetable 
                   WHERE workingday = r.workingday + INTERVAL '40 day')
      THEN         
         
       RAISE NOTICE 'AGGIORNO RECORD: % % %',r.workingday + INTERVAL '40 day',   R.booking_id, R.slot_id; 
         
       UPDATE carservice.timetable set 
              booking_id = R.booking_id, 
              state_id = 1
       where
         workingday = r.workingday + INTERVAL '40 day' AND driver_anagraph_id = r.driver_anagraph_id AND slot_id = R.slot_id;
 
       UPDATE carservice.timetable set 
              booking_id = NULL,
              state_id = 0
       where
         workingday = r.workingday AND driver_anagraph_id = r.driver_anagraph_id AND slot_id = R.slot_id;
       
       ELSE
          RAISE NOTICE 'RECORD NON TROVATO % %', r.workingday + INTERVAL '40 day',  R.booking_id;  
         
       END IF;
END LOOP;
  
END
$$