-- View: carservice.timetable_booking_view

-- DROP VIEW carservice.timetable_booking_view;
-- View: carservice.timetable_booking_view

DROP VIEW carservice.timetable_booking_view;

CREATE OR REPLACE VIEW carservice.timetable_booking_view
 AS
 SELECT t.pickup_an_id,
    t.pickup_first_name,
    t.pickup_vat_id,
    t.pickup_address,
    t.pickup_postal_code,
    t.pickup_fiscal_code,
    t.pickup_town,
    t.pickup_last_name,
    t.pickup_full_address,
    t.pickup_phone,
    t.pickup_email,
    t.pickup_cellular,
    t.delivery_an_id,
    t.delivery_first_name,
    t.delivery_vat_id,
    t.delivery_address,
    t.delivery_postal_code,
    t.delivery_fiscal_code,
    t.delivery_town,
    t.delivery_last_name,
    t.delivery_full_address,
    t.delivery_phone,
    t.delivery_email,
    t.delivery_cellular,
    t.jguid,
    t.pickup_time,
    t.pickup_date,
    t.driver_id,
    t.booking_id,
    t.driver_email,
    t.driver1_cellular,
    t.driver_jguid,
    t.slot_id,
    h.vehicle_numberplate,
    h.vehicle_model,
    h.vehicle_color,
    h.pickup_day,
    h.pickup_slot_id,
    h.return_day
   FROM carservice.timetable_summary_view t
     JOIN carservice.booking_heads h ON h.id = t.booking_id;

ALTER TABLE carservice.timetable_booking_view
    OWNER TO ergo;