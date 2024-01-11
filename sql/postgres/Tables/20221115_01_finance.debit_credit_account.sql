-- DROP TABLE IF EXISTS finance.debit_credit_account;
CREATE TABLE finance.debit_credit_account
(
    credit_anagraph_id integer NOT NULL,
    debit_anagraph_id integer NOT NULL,
    amount money NOT NULL DEFAULT 0,
    sign integer NOT NULL DEFAULT +1,
    datetime timestamp with time zone NOT NULL DEFAULT Now(),
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

ALTER TABLE IF EXISTS finance.debit_credit_account
    OWNER to ergo;