ALTER TABLE IF EXISTS carservice.booking_heads
    ADD COLUMN IF NOT EXISTS pickup_day date;
	
ALTER TABLE IF EXISTS carservice.booking_heads
    ADD COLUMN IF NOT EXISTS pickup_slot_id smallint;
	
ALTER TABLE IF EXISTS carservice.booking_heads
    ADD COLUMN IF NOT EXISTS return_day date;
	
ALTER TABLE IF EXISTS carservice.booking_heads
    ADD COLUMN IF NOT EXISTS return_slot_id smallint;
	
	
	
	
	
	