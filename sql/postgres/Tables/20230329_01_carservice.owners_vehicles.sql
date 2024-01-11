ALTER TABLE IF EXISTS carservice.owners_vehicles
    ALTER COLUMN description SET NOT NULL;

ALTER TABLE IF EXISTS carservice.owners_vehicles
    ADD COLUMN IF NOT EXISTS model character varying(128) NOT NULL;