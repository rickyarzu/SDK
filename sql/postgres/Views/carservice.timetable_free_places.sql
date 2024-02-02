CREATE OR REPLACE VIEW carservice.timetable_free_places as 
SELECT p.workingday, p.slot_id,  s.slot_des, p.places, p.booked
    , CASE
	  WHEN (CURRENT_DATE < p.workingday) THEN P.free_places
	  WHEN (CURRENT_DATE > p.workingday) THEN 0
	  WHEN (CURRENT_DATE = p.workingday) THEN 
	    CASE 
		  WHEN (Now()::time  < S.booking_time) THEN P.free_places
		  WHEN (Now()::time  >= S.booking_time) THEN 0
		END
	  END
	  AS free_places
    , CASE
	  WHEN (CURRENT_DATE < p.workingday) THEN P.free
	  WHEN (CURRENT_DATE > p.workingday) THEN FALSE
	  WHEN (CURRENT_DATE = p.workingday) THEN 
	    CASE 
		  WHEN (Now()::time  < S.booking_time) THEN P.free
		  WHEN (Now()::time  >= S.booking_time) THEN FALSE
		END
	  END
	  AS free
	  
	FROM carservice.timetable_places p 
		JOIN carservice.timetable_slots s on p.slot_id = s.slot_id  
ORDER BY p.workingday, p.slot_id