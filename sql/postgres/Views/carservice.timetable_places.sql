CREATE OR REPLACE VIEW carservice.timetable_places AS
SELECT workingday, slot_id, count(1) AS places, count(booking_id) AS booked,
count(1) - count(booking_id) AS free_places, count(1) > count(booking_id) AS free
FROM carservice.timetable
GROUP BY workingday, slot_id