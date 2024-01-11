-- Table: carservice.booking_addresses

-- DROP TABLE IF EXISTS carservice.booking_addresses;

CREATE TABLE IF NOT EXISTS carservice.booking_addresses
(
    -- Inherited from table anagraph.addresses: db_schema_id integer NOT NULL,
    -- Inherited from table anagraph.addresses: id bigint NOT NULL,
    -- Inherited from table anagraph.addresses: address_name character varying(128) COLLATE pg_catalog."default",
    -- Inherited from table anagraph.addresses: postal_code anagraph.postal_code COLLATE pg_catalog."default",
    -- Inherited from table anagraph.addresses: state_province anagraph.state_province COLLATE pg_catalog."default",
    -- Inherited from table anagraph.addresses: town_name anagraph.town_name COLLATE pg_catalog."default",
    -- Inherited from table anagraph.addresses: town_code anagraph.town_code COLLATE pg_catalog."default",
    -- Inherited from table anagraph.addresses: address anagraph.address COLLATE pg_catalog."default",
    -- Inherited from table anagraph.addresses: address_number anagraph.address_number COLLATE pg_catalog."default",
    -- Inherited from table anagraph.addresses: phone anagraph.phone COLLATE pg_catalog."default",
    -- Inherited from table anagraph.addresses: full_address character varying(512) COLLATE pg_catalog."default",
    -- Inherited from table anagraph.addresses: insert_date timestamp(6) without time zone,
    -- Inherited from table anagraph.addresses: update_date timestamp(6) without time zone,
    -- Inherited from table anagraph.addresses: upd_id bigint,
    -- Inherited from table anagraph.addresses: ins_id bigint,
    -- Inherited from table anagraph.addresses: user_insert character varying(128) COLLATE pg_catalog."default",
    -- Inherited from table anagraph.addresses: user_update character varying(128) COLLATE pg_catalog."default",
    -- Inherited from table anagraph.addresses: local boolean,
    -- Inherited from table anagraph.addresses: deleted boolean DEFAULT false,
    -- Inherited from table anagraph.addresses: jguid uuid DEFAULT uuid_generate_v1mc(),
    ad_type "char" DEFAULT 'P'::"char",
    booking_id bigint,
    CONSTRAINT booking_addresses_booking_heads_fk FOREIGN KEY (booking_id)
        REFERENCES carservice.booking_heads (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)
    INHERITS (anagraph.addresses)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS carservice.booking_addresses
    OWNER to ergo;

COMMENT ON COLUMN carservice.booking_addresses.booking_id
    IS 'Foreign key to Booking ';
-- Index: fki_booking_addresses_booking_heads_fk

-- DROP INDEX IF EXISTS carservice.fki_booking_addresses_booking_heads_fk;

CREATE INDEX IF NOT EXISTS fki_booking_addresses_booking_heads_fk
    ON carservice.booking_addresses USING btree
    (booking_id ASC NULLS LAST)
    TABLESPACE pg_default;