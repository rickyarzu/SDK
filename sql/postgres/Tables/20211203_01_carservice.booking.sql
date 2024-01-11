ALTER TABLE IF EXISTS carservice.booking_heads
    ADD COLUMN if not exists office_id integer NOT NULL DEFAULT 0;
	
ALTER TABLE IF EXISTS carservice.booking_heads
    ADD COLUMN IF NOT EXISTS branch_id integer NOT NULL DEFAULT 0;
	
ALTER TABLE IF EXISTS carservice.booking_heads
    ADD COLUMN IF NOT EXISTS document_id bigint;
	

	
	