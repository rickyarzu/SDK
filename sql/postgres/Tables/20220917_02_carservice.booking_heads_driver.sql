ALTER TABLE IF EXISTS carservice.booking_heads
    ADD COLUMN IF NOT EXISTS driver_id integer;

COMMENT ON COLUMN carservice.booking_heads.driver_id
    IS 'Foreign Key to Drivers anagraph record';