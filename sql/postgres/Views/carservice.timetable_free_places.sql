-- View: carservice.timetable_free_places

DROP VIEW carservice.timetable_free_places;

CREATE OR REPLACE VIEW carservice.timetable_free_places
 AS
 SELECT p.workingday,
    p.slot_id,
    s.slot_des,
    p.places,
    p.booked,
	s.delivery_time,
	s.booking_time,
	s.slot_delivery,
	s.slot_time,
        CASE
            WHEN CURRENT_DATE < p.workingday THEN p.free_places
            WHEN CURRENT_DATE > p.workingday THEN 0::bigint
            WHEN CURRENT_DATE = p.workingday THEN
            CASE
                WHEN now()::time without time zone < s.booking_time THEN p.free_places
                WHEN now()::time without time zone >= s.booking_time THEN 0::bigint
                ELSE NULL::bigint
            END
            ELSE NULL::bigint
        END AS free_places,
        CASE
            WHEN CURRENT_DATE < p.workingday THEN p.free
            WHEN CURRENT_DATE > p.workingday THEN false
            WHEN CURRENT_DATE = p.workingday THEN
            CASE
                WHEN now()::time without time zone < s.booking_time THEN p.free
                WHEN now()::time without time zone >= s.booking_time THEN false
                ELSE NULL::boolean
            END
            ELSE NULL::boolean
        END AS free
   FROM carservice.timetable_places p
     JOIN carservice.timetable_slots s ON p.slot_id = s.slot_id
  ORDER BY p.workingday, p.slot_id;

ALTER TABLE carservice.timetable_free_places
    OWNER TO ergo;

