-- anagraph.addresses.maps_json
ALTER TABLE IF EXISTS anagraph.addresses
    ADD COLUMN IF NOT EXISTS maps_json json;