ALTER TABLE IF EXISTS system.db_users_profiles
    ADD COLUMN IF NOT EXISTS address_town character varying(128);