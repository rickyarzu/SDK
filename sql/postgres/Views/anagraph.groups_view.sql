CREATE OR REPLACE VIEW anagraph.groups_view
 AS
SELECT g.* FROM anagraph.groups g
  where
	g.an_group_id in 
		(select an_group_id FROM  anagraph.schema_groups s
			 	where s.db_schema_id = current_setting('system.db_schema_id')::integer);

ALTER TABLE anagraph.groups_view
    OWNER TO ergo;