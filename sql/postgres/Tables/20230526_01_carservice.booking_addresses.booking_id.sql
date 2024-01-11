ALTER TABLE IF EXISTS carservice.booking_addresses
    ADD COLUMN IF NOT EXISTS direction char DEFAULT 'P' NOT NULL;
	
ALTER TABLE IF EXISTS carservice.booking_addresses 
    ADD COLUMN IF NOT EXISTS booking_id bigint NOT NULL;

	
	
	
	