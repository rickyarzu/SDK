CREATE DOMAIN anagraph.state_province AS
  varchar(30);

ALTER DOMAIN anagraph.state_province
  OWNER TO ergo;
  
CREATE DOMAIN anagraph.phone AS
  varchar(30);

ALTER DOMAIN anagraph.phone
  OWNER TO ergo;
  

CREATE DOMAIN anagraph.postal_code AS
  varchar(30);

ALTER DOMAIN anagraph.postal_code
  OWNER TO ergo;
  
ALTER TABLE anagraph.branches
  ADD COLUMN an_branch_phone anagraph.phone;
  
ALTER TABLE anagraph.branches
  ADD COLUMN an_branch_state_province anagraph.state_province;  
  