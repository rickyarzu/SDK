-- 20240223_02_carservice.current_accounts.sql

CREATE TABLE carservice.current_accounts
(
    booking_id bigint,
    CONSTRAINT current_accounts_bookings_fk FOREIGN KEY (booking_id)
        REFERENCES carservice.booking_heads (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
        NOT VALID
)
    INHERITS (accounting.current_accounts)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS carservice.current_accounts
    OWNER to ergo;