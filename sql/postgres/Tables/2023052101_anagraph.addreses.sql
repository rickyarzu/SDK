-- Table: anagraph.branches

-- DROP TABLE IF EXISTS anagraph.branches;

CREATE DOMAIN anagraph.town_name
    AS character varying(128);
ALTER DOMAIN anagraph.town_name OWNER TO ergo;

CREATE DOMAIN anagraph.town_code
    AS character varying(20);

ALTER DOMAIN anagraph.town_code OWNER TO ergo;

CREATE DOMAIN anagraph.address
    AS character varying(256);

ALTER DOMAIN anagraph.address OWNER TO ergo;

CREATE DOMAIN anagraph.address_number 
    AS character varying(20);

ALTER DOMAIN anagraph.address_number OWNER TO ergo;

CREATE DOMAIN anagraph.address_number 
    AS character varying(20);

ALTER DOMAIN anagraph.address_number OWNER TO ergo;

CREATE DOMAIN anagraph.full_address 
    AS character varying(20);

ALTER DOMAIN anagraph.full_address OWNER TO ergo;


CREATE TABLE IF NOT EXISTS anagraph.address
(
    db_schema_id integer NOT NULL,
    id bigint NOT NULL,
    address_name character varying(128) COLLATE pg_catalog."default",
    postal_code anagraph.postal_code COLLATE pg_catalog."default",
    state_province anagraph.state_province COLLATE pg_catalog."default", COLLATE pg_catalog."default",
    town_name anagraph.town_name COLLATE pg_catalog."default",
    town_code anagraph.town_code COLLATE pg_catalog."default",
    address anagraph.address COLLATE pg_catalog."default",
	address_number anagraph.address_number  COLLATE pg_catalog."default",
    phone anagraph.phone COLLATE pg_catalog."default",
    state_province anagraph.state_province COLLATE pg_catalog."default",
	full_address character varying(512) COLLATE pg_catalog."default",
	
    insert_date timestamp(6) without time zone,
    update_date timestamp(6) without time zone,
    upd_id bigint,
    ins_id bigint,
    user_insert character varying(128) COLLATE pg_catalog."default",
    user_update character varying(128) COLLATE pg_catalog."default",
    local boolean,
    deleted boolean DEFAULT false,
    jguid uuid DEFAULT uuid_generate_v1mc(),

    CONSTRAINT addresses_pk PRIMARY KEY (id),
    CONSTRAINT addresses_jguid_uk UNIQUE (jguid),
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS anagraph.branches
    OWNER to postgres;

COMMENT ON COLUMN anagraph.branches.jguid
    IS 'guid unique identifier across DBs';
-- Index: idx_an_branches
