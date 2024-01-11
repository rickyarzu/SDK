CREATE VIEW carservice.drivers_view
 AS
SELECT d.*, a.* 
FROM carservice.drivers d, anagraph.anagraph.anagraphs_view a
WHERE an_main_group_id = 29;

ALTER TABLE carservice.drivers_view
    OWNER TO ergo;