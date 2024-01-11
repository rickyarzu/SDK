-- View: carservice.timetable_view

-- DROP VIEW carservice.timetable_view;

CREATE OR REPLACE VIEW carservice.timetable_view
 AS
 SELECT timetable.jguid,
    timetable.workingday,
    timetable.slot_id,
    timetable.booking_id,
    timetable.from_id,
    timetable.to_id,
    timetable.state_id,
    timetable_slots.slot_des,
        CASE
            WHEN timetable.state_id > 0 THEN true
            ELSE false
        END AS booked,
    timetable.driver_anagraph_id,
    anagraphs.an_cellular,
    (anagraphs.an_name::text || ' '::text) || anagraphs.an_last_name::text AS "?column?",
    anagraphs.an_email,
	timetable.from_latitude,
	timetable.from_longitude ,
	timetable.from_full_address ,
	timetable.to_latitude ,
	timetable.to_longitude ,
	timetable.to_full_address
   FROM carservice.timetable
     JOIN carservice.timetable_slots ON timetable.slot_id = timetable_slots.slot_id
     LEFT JOIN anagraph.anagraphs ON timetable.driver_anagraph_id = anagraphs.anagraph_id;

/*
ALTER TABLE carservice.timetable_view
    OWNER TO ergo;


CREATE TRIGGER timetable_view_iou_trg
    INSTEAD OF UPDATE 
    ON carservice.timetable_view
    FOR EACH ROW
    EXECUTE FUNCTION carservice.timetable_view_update_trg();
*/

