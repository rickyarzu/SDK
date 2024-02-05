ALTER TABLE IF EXISTS carservice.timetable_slots
    ADD COLUMN IF NOT EXISTS booking_time time without time zone;
	
UPDATE carservice.timetable_slots SET booking_time = slot_time - '03:00'::TIME