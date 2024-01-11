ALTER TABLE IF EXISTS anagraph.addresses
    ADD COLUMN IF NOT EXISTS country_code character(2);
	
ALTER TABLE IF EXISTS anagraph.addresses
    ADD COLUMN IF NOT EXISTS email character varying(128);
	
ALTER TABLE IF EXISTS anagraph.addresses
    ADD COLUMN IF NOT EXISTS phone character varying(20);
	
	
	
	