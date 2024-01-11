INSERT INTO anagraph.schema_groups
SELECT an_group_id, db_schema_id 
FROM 
anagraph.groups g WHERE db_schema_id != 0
and not exists
(select 1 from anagraph.schema_groups s where s.an_group_id = g.an_group_id )