ALTER TABLE IF EXISTS anagraph.cars
    ADD COLUMN pos integer DEFAULT 1;

ALTER TABLE IF EXISTS anagraph.cars
    ADD COLUMN country_code character(2) DEFAULT 'IT';