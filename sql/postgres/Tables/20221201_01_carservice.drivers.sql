-- Table: carservice.drivers

-- DROP TABLE IF EXISTS carservice.drivers;

CREATE TABLE IF NOT EXISTS carservice.drivers
(
    anagraph_id integer NOT NULL,
    drive_license_number character varying(40) COLLATE pg_catalog."default" NOT NULL,
    drive_license__expiry date,
    CONSTRAINT drivers_pkey PRIMARY KEY (anagraph_id),
    CONSTRAINT drivers_anagraph_fk FOREIGN KEY (anagraph_id)
        REFERENCES anagraph.anagraphs (anagraph_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
        NOT VALID
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS carservice.drivers
    OWNER to ergo;
-- Index: fki_drivers_anagraph_fk

-- DROP INDEX IF EXISTS carservice.fki_drivers_anagraph_fk;

CREATE INDEX IF NOT EXISTS fki_drivers_anagraph_fk
    ON carservice.drivers USING btree
    (anagraph_id ASC NULLS LAST)
    TABLESPACE pg_default;