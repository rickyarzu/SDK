-- Column: documents.heads.assigned

-- ALTER TABLE IF EXISTS documents.heads DROP COLUMN IF EXISTS assigned;

ALTER TABLE IF EXISTS documents.heads
    ADD COLUMN IF NOT EXISTS assigned smallint NOT NULL DEFAULT 1;

COMMENT ON COLUMN documents.heads.assigned
    IS 'if workflow is set then assigned is set to 2 else to 1 should be 0 only if the assigned workflow is set to deleted or removed state. ';
	
ALTER TABLE IF EXISTS documents.heads
    ADD COLUMN IF NOT EXISTS inventory boolean NOT NULL DEFAULT false;

COMMENT ON COLUMN documents.heads.inventory
    IS 'This is the inventory flag. When all goods from a warehouse document are shipped it turns to false. By default it is true  according to the  document type. ';	


ALTER TABLE IF EXISTS documents.heads
    ADD COLUMN IF NOT EXISTS location_code character varying(20);

COMMENT ON COLUMN documents.heads.location_code
    IS 'location code can be used (also) to connect different db or to provide IATA or UNI EN ISO codes to location or vessel';