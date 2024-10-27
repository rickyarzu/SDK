-- Table: anagraph.schema_groups

-- DROP TABLE IF EXISTS anagraph.schema_groups;

CREATE TABLE IF NOT EXISTS anagraph.schema_groups
(
    an_group_id smallint NOT NULL,
    db_schema_id integer NOT NULL,
    CONSTRAINT schema_groups_pkey PRIMARY KEY (an_group_id, db_schema_id),
    CONSTRAINT groups_schemas_fk FOREIGN KEY (db_schema_id)
        REFERENCES system.db_schemas (db_schema_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION,
    CONSTRAINT groups_schemas_groups_fk FOREIGN KEY (an_group_id)
        REFERENCES anagraph.groups (an_group_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS anagraph.schema_groups
    OWNER to ergo;
-- Index: fki_s

-- DROP INDEX IF EXISTS anagraph.fki_s;

CREATE INDEX IF NOT EXISTS fki_s
    ON anagraph.schema_groups USING btree
    (an_group_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: group_schemas_fki

-- DROP INDEX IF EXISTS anagraph.group_schemas_fki;

CREATE INDEX IF NOT EXISTS group_schemas_fki
    ON anagraph.schema_groups USING btree
    (db_schema_id ASC NULLS LAST)
    TABLESPACE pg_default;