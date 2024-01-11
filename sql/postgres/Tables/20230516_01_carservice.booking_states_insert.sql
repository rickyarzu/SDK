COMMENT ON TABLE carservice.booking_states
  IS 'This table manages all Current States of a Booking table. A Table is used instead of an array to manage ''translations'' but an array should be more efficent';
  
INSERT INTO carservice.booking_states(
	id, description, jguid)
	VALUES (4, 'customer confirmed', uuid_generate_v4());
	
INSERT INTO carservice.booking_states(
	id, description, jguid)
	VALUES (7, 'started', uuid_generate_v4());