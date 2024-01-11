CREATE OR REPLACE FUNCTION logistic.shipments_view_iod_trg()
RETURNS trigger AS
$$
declare
  v_id bigint;   
begin
    
   v_id := logistic.shipments_delete(old.id);
   
   return old; 
end; 
$$
LANGUAGE 'plpgsql';

ALTER FUNCTION logistic.shipments_view_iod_trg()
  OWNER TO ergo;

COMMENT ON FUNCTION logistic.shipments_view_iod_trg()
  IS 'This is the Instead of delete trigger for Shipments View that involves both Works and Shipments table';
  


 