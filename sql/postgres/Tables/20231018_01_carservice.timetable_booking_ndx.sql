CREATE INDEX timetable_booking_ndx
    ON carservice.timetable USING btree
    ((booking_id) ASC NULLS LAST)
    --WITH (deduplicate_items=True)
    TABLESPACE pg_default;
	

CREATE INDEX timetable_workingday_ndx
    ON carservice.timetable USING btree
    ((workingday) DESC NULLS FIRST)
    -- WITH (deduplicate_items=True)
    TABLESPACE pg_default;
	
CREATE INDEX from_id_ndx
    ON carservice.timetable USING btree
    ((from_id) ASC NULLS LAST)
   -- WITH (deduplicate_items=True)
    TABLESPACE pg_default;
	
CREATE INDEX to_id_ndx
    ON carservice.timetable USING btree
    ((to_id) ASC NULLS LAST)
  --  WITH (deduplicate_items=True)
    TABLESPACE pg_default;
	
CREATE INDEX driver_anagraph_ndx
    ON carservice.timetable USING btree
    ((driver_anagraph_id) ASC NULLS LAST)
   -- WITH (deduplicate_items=True)
    TABLESPACE pg_default;
	
	
	
	
	
	