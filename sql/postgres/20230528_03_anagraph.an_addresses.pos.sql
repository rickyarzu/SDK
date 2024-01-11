ALTER TABLE IF EXISTS anagraph.an_addresses
    ADD COLUMN IF NOT EXISTS pos smallint;
	
CREATE SEQUENCE anagraph.an_addresses_seq;

ALTER SEQUENCE anagraph.an_addresses_seq
    OWNER TO ergo;
	
ALTER TABLE IF EXISTS anagraph.addresses
    ADD COLUMN IF NOT EXISTS latitude double precision;
	
ALTER TABLE IF EXISTS anagraph.addresses
    ADD COLUMN IF NOT EXISTS latitude double precision;
	
ALTER TABLE IF EXISTS anagraph.addresses
    ADD COLUMN IF NOT EXISTS longitude double precision;
	
ALTER TABLE IF EXISTS anagraph.anagraphs
    ADD COLUMN IF NOT EXISTS an_full_address character varying(256);

COMMENT ON COLUMN anagraph.anagraphs.an_full_address
    IS 'The Route, road, square for the address minus the address number';