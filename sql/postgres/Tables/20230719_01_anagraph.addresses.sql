-- Column: anagraph.addresses.master_jguid

-- ALTER TABLE IF EXISTS anagraph.addresses DROP COLUMN IF EXISTS master_jguid;

DELETE FROM anagraph.addresses;

ALTER TABLE IF EXISTS anagraph.addresses
    DROP COLUMN IF EXISTS anagraph_id;
	
ALTER TABLE IF EXISTS anagraph.addresses
    ADD COLUMN IF NOT EXISTS master_jguid uuid;
	
ALTER TABLE IF EXISTS anagraph.addresses
    ALTER COLUMN master_jguid SET NOT NULL;