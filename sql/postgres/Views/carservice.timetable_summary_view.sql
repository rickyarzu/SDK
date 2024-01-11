-- View: carservice.timetable_summary_view

-- DROP VIEW carservice.timetable_summary_view;

CREATE OR REPLACE VIEW carservice.timetable_summary_view
 AS
 SELECT pickup.anagraph_id AS pickup_an_id,
    pa.an_name AS pickup_first_name,
    pickup.address AS pickup_address,
    pickup.postal_code AS pickup_postal_code,
    pickup.town_name AS pickup_town,
    COALESCE(pickup.full_address, ((((pickup.address::text ||
        CASE
            WHEN pickup.address_number IS NULL THEN ''::text
            ELSE ' '::text || pickup.address_number::text
        END) ||
        CASE
            WHEN pickup.postal_code IS NULL THEN ''::text
            ELSE ', '::text || pickup.postal_code::text
        END) ||
        CASE
            WHEN pickup.town_name IS NULL THEN ''::text
            ELSE ', '::text || pickup.town_name::text
        END) ||
        CASE
            WHEN pickup.state_province IS NULL THEN ''::text
            ELSE (' ('::text || pickup.state_province::text) || ')'::text
        END)::character varying, pickup.full_address) AS pickup_full_address,
    pickup.phone AS pickup_phone,
    pickup.email AS pickup_email,
    pickup.longitude AS pickup_longitude,
    pickup.latitude AS pickup_latitude,
    da.an_name AS delivery_first_name,
    delivery.address AS delivery_address,
    delivery.postal_code AS delivery_postal_code,
    delivery.town_name AS delivery_town,
    COALESCE(delivery.full_address, ((((delivery.address::text ||
        CASE
            WHEN delivery.address_number IS NULL THEN ''::text
            ELSE ' '::text || delivery.address_number::text
        END) ||
        CASE
            WHEN delivery.postal_code IS NULL THEN ''::text
            ELSE ', '::text || delivery.postal_code::text
        END) ||
        CASE
            WHEN delivery.town_name IS NULL THEN ''::text
            ELSE ', '::text || delivery.town_name::text
        END) ||
        CASE
            WHEN delivery.state_province IS NULL THEN ''::text
            ELSE (' ('::text || delivery.state_province::text) || ')'::text
        END)::character varying, delivery.full_address) AS delivery_full_address,
    delivery.phone AS delivery_phone,
    delivery.email AS delivery_email,
    delivery.longitude AS delivery_longitude,
    delivery.latitude AS delivery_latitude,
    tv.jguid,
    tv.slot_des AS pickup_time,
    tv.workingday AS pickup_date,
    tv.slot_id,
    tv.driver_anagraph_id AS driver_id,
    tv.booking_id,
    drv.an_email AS driver_email,
    drv.an_cellular AS driver1_cellular,
    drv.jguid AS driver_jguid,
    pa.an_vat_id AS pickup_vat_id,
    pa.an_fiscal_code AS pickup_fiscal_code,
    pa.an_last_name AS pickup_last_name,
    pa.an_cellular AS pickup_cellular,
    da.anagraph_id AS delivery_an_id,
    da.an_vat_id AS delivery_vat_id,
    da.an_fiscal_code AS delivery_fiscal_code,
    da.an_last_name AS delivery_last_name,
    da.an_cellular AS delivery_cellular
   FROM carservice.timetable_view tv
     JOIN anagraph.an_addresses pickup ON tv.from_id = pickup.id
     JOIN anagraph.anagraphs pa ON pickup.anagraph_id = pa.anagraph_id
     JOIN anagraph.an_addresses delivery ON tv.to_id = delivery.id
     JOIN anagraph.anagraphs da ON delivery.anagraph_id = da.anagraph_id
     JOIN anagraph.anagraphs drv ON tv.driver_anagraph_id = drv.anagraph_id;

ALTER TABLE carservice.timetable_summary_view
    OWNER TO ergo;

