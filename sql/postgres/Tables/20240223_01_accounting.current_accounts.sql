-- 20240223_01_accounting.current_accounts.sql
-- drop TABLE accounting.current_accounts;

CREATE TABLE accounting.current_accounts
(
    jguid uuid NOT NULL,
    id bigint NOT NULL,
    anagraph_id integer,
    description character varying(256),
    accounting_date date,
    value_date date,
    debit money NOT NULL DEFAULT 0,
    credit money NOT NULL,
    CONSTRAINT current_account_pk PRIMARY KEY (id),
    CONSTRAINT current_account_uid_uk UNIQUE (jguid),
    CONSTRAINT current_account_anagraphs_fk FOREIGN KEY (anagraph_id)
        REFERENCES anagraph.anagraphs (anagraph_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS accounting.current_accounts
    OWNER to ergo;