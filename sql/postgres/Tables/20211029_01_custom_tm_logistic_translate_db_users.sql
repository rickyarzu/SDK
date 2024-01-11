CREATE TABLE custom_tm_logistic.translate_db_users
(
    db_user_id integer NOT NULL,
    old_user character varying(30) NOT NULL,
    PRIMARY KEY (db_user_id, old_user)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS custom_tm_logistic.translate_db_users
    OWNER to ergo;

COMMENT ON TABLE custom_tm_logistic.translate_db_users
    IS 'This table Translates users from TMLogistic old application and New Application';