-- Table: carservice.timetable

-- DROP TABLE IF EXISTS carservice.timetable;

CREATE TABLE IF NOT EXISTS carservice.timetable
(
    workingday date NOT NULL,
    slot_id smallint NOT NULL,
    driver_anagraph_id integer NOT NULL,
    booking_id bigint,
    from_id integer,
    to_id integer,
    CONSTRAINT timetable_pkey PRIMARY KEY (workingday, slot_id, driver_anagraph_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS carservice.timetable
    OWNER to ergo;