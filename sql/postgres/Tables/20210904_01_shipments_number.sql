ALTER TABLE IF EXISTS logistic.shipments
    ADD COLUMN IF NOT EXISTS work_number integer;

COMMENT ON COLUMN logistic.shipments.work_number
    IS 'Number per year o inherited from older applications';