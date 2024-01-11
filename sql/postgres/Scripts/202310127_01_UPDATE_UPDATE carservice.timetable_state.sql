UPDATE carservice.timetable 
SET state_id = 1 WHERE booking_id IS NOT NULL;
--ORDER BY workingday ASC, slot_id ASC, driver_anagraph_id ASC 
UPDATE carservice.timetable 
SET state_id = 0 WHERE booking_id IS  NULL;