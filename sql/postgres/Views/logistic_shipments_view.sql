-- View: logistic.shipments_view

DROP VIEW IF EXISTS logistic.shipments_view;

CREATE OR REPLACE VIEW logistic.shipments_view
 AS
 SELECT 
    ships.*,
    works.workdate,
    works.code,
    works.type_id,
    works.level_id,
    agents.an_last_name AS agent_name,
    agents.an_code AS agent_code,
    agents.an_town AS agent_town,
    shippers.an_last_name AS shipper_name,
    shippers.an_code AS shipper_code,
    shippers.an_town AS shipper_town,
    vessels.name AS vessel_name,
    airports.name AS airport_name,
    carriers.an_town AS carrier_town,
    customers.an_last_name AS customer_name,
    customers.an_code AS customer_code,
    customers.an_town AS customer_town,
    customers.an_address AS customer_address,
    customers.an_postal_code AS customer_postal_code,
    customers.an_phone AS customer_phone
   FROM logistic.shipments ships
     JOIN workflow.workflows works ON ships.workflow_id = works.id
     LEFT JOIN anagraph.anagraphs agents ON agents.anagraph_id = ships.agent_id
     LEFT JOIN anagraph.anagraphs shippers ON shippers.anagraph_id = ships.shipper_id
     LEFT JOIN anagraph.anagraphs carriers ON carriers.anagraph_id = ships.carrier_id
     LEFT JOIN anagraph.anagraphs customers ON customers.anagraph_id = ships.shipper_id
     LEFT JOIN shipping.vessels vessels ON vessels.vessel_id = ships.vessel_id
     LEFT JOIN logistic.locations airports ON airports.id = ships.airport_id;

ALTER TABLE logistic.shipments_view
    OWNER TO ergo;


