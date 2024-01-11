-- Table: carservice.booking_heads

-- DROP TABLE IF EXISTS carservice.booking_heads;

CREATE TABLE IF NOT EXISTS carservice.booking_heads
(
    id bigint NOT NULL,
    anagraph_id integer NOT NULL,
    jguid uuid NOT NULL,
    db_schema_id integer NOT NULL DEFAULT 0,
    user_insert integer,
    insert_date time without time zone,
    customer_id integer,
    CONSTRAINT booking_heads_pkey PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS carservice.booking_heads
    OWNER to ergo;

COMMENT ON COLUMN carservice.booking_heads.id
    IS 'Unique Identifier';

COMMENT ON COLUMN carservice.booking_heads.anagraph_id
    IS 'Car Service identifier (or branch identifier) ';

COMMENT ON COLUMN carservice.booking_heads.customer_id
    IS 'Car Service''s customer anagraph_id ';