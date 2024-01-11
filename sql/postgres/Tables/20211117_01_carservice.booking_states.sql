CREATE TABLE IF NOT EXISTS carservice.booking_states
(
    id smallint NOT NULL,
    description character varying NOT NULL,
    jguid uuid NOT NULL,
    CONSTRAINT booking_states_pk PRIMARY KEY (id),
    CONSTRAINT booking_states_jk UNIQUE (jguid)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS carservice.booking_states
    OWNER to ergo;
	
ALTER TABLE IF EXISTS carservice.timetable
    ADD COLUMN IF NOT EXISTS state_id smallint NOT NULL DEFAULT 0;
	
ALTER TABLE IF EXISTS carservice.timetable
    ADD CONSTRAINT timetable_booking_states_fk FOREIGN KEY (state_id)
    REFERENCES carservice.booking_states (id) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS carservice.booking_heads
    ADD COLUMN IF NOT EXISTS state_id smallint NOT NULL DEFAULT 0;
	
ALTER TABLE IF EXISTS carservice.booking_heads
    ADD CONSTRAINT timetable_booking_states_fk FOREIGN KEY (state_id)
    REFERENCES carservice.booking_states (id) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE NO ACTION;