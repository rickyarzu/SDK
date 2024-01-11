ALTER TABLE logistic.shipment_rows
  ADD COLUMN item_id bigint;

COMMENT ON COLUMN logistic.shipment_rows.item_id
  IS 'Foreign key to Items definitions';