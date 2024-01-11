ALTER TABLE IF EXISTS carservice.messages
    ADD CONSTRAINT message_pk PRIMARY KEY (id);
	
CREATE INDEX timetable_jguid_ndx
    ON carservice.messages USING btree
    ((timetable_jguid) ASC NULLS LAST)
   -- WITH (deduplicate_items=True)
;

COMMENT ON INDEX carservice.timetable_jguid_ndx
    IS 'Foreign key index to Timetable';
	
	
CREATE INDEX booking_jguid_ndx
    ON carservice.messages USING btree
    ((booking_jguid) ASC NULLS LAST)
    WITH (deduplicate_items=True)	