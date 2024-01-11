ALTER TABLE IF EXISTS documents.heads
  ADD COLUMN IF NOT EXISTS vessel_id integer;
  
ALTER TABLE IF EXISTS documents.heads
  ADD COLUMN IF NOT EXISTS vessel_name varchar(128);
  
ALTER TABLE IF EXISTS documents.heads
  ADD COLUMN IF NOT EXISTS vessel_code varchar(20);
  
  
  
  