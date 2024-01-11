CREATE TABLE cloud.restdebug_models
(
    title character varying(255) NOT NULL,
    description text,
    icon_id integer DEFAULT -1,
    has_custom_icon boolean NOT NULL DEFAULT false,
    custom_icon bytea,
    user_id integer NOT NULL,
	parent_id integer not null, 
	model text not null,	
    CONSTRAINT restdebug_models_title_uk UNIQUE (db_schema_id, user_id, title, parent_id),
    CONSTRAINT restdebug_models_users_fk FOREIGN KEY (user_id)
        REFERENCES system.db_users (db_user_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
)
    INHERITS (jpublic.table_template)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS cloud.restdebug_models
    OWNER to riccardoarduino;

CREATE OR REPLACE TRIGGER restdebug_models_bi_trg
    BEFORE INSERT OR UPDATE 
    ON cloud.restdebug_models
    FOR EACH ROW
    EXECUTE FUNCTION jpublic.insert_defaults_trg();