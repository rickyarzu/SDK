DROP TRIGGER IF EXISTS shipment_view_ioi ON logistic.shipments_view;

CREATE TRIGGER shipment_view_ioi
    INSTEAD OF INSERT
    ON logistic.shipments_view
    FOR EACH ROW
    EXECUTE PROCEDURE logistic.shipments_view_ioi_trg();

COMMENT ON TRIGGER shipment_view_ioi ON logistic.shipments_view
    IS 'Shipment View Instead of Insert Trigger';
	
	
DROP TRIGGER IF EXISTS shipment_view_iod ON logistic.shipments_view;

CREATE TRIGGER shipment_view_iod
    INSTEAD OF UPDATE
    ON logistic.shipments_view
    FOR EACH ROW
    EXECUTE PROCEDURE logistic.shipments_view_iod_trg();

COMMENT ON TRIGGER shipment_view_iod ON logistic.shipments_view
    IS 'Shipment View Instead of Delete Trigger';