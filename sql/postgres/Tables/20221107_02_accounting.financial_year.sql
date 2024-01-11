CREATE TABLE accounting.financial_year
(
    starts date NOT NULL,
    ends date NOT NULL,
    months smallint NOT NULL DEFAULT 12,
    "offset" smallint NOT NULL DEFAULT 0,
    code character varying(12) NOT NULL,
    shortcode character varying(12),
    db_schema_id integer DEFAULT 32,
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
    insert_date timestamp with time zone,
    update_date timestamp with time zone,
    user_insert character varying(128) COLLATE pg_catalog."default",
    user_update character varying(128) COLLATE pg_catalog."default",
    id integer NOT NULL,
    CONSTRAINT debit_credit_account_pk PRIMARY KEY (id),
    CONSTRAINT debit_credit_account_jguid_uk UNIQUE (jguid)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS accounting.financial_year
    OWNER to ergo;
	
CREATE TRIGGER financial_year_default_biu_trg
    BEFORE INSERT OR UPDATE 
    ON accounting.financial_year
    FOR EACH ROW
    EXECUTE PROCEDURE jpublic.defaults_trg();