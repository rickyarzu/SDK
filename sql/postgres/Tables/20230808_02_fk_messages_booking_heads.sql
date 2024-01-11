CREATE UNIQUE INDEX booking_heads_uid_uk ON carservice.booking_heads ( jguid ) ;
CREATE UNIQUE INDEX timetable_uid_uk ON carservice.timetable ( jguid ) ;

ALTER TABLE carservice.messages ADD CONSTRAINT fk_messages_booking_heads_uid FOREIGN KEY ( booking_jguid ) REFERENCES carservice.booking_heads( jguid )   ;

ALTER TABLE carservice.messages ADD CONSTRAINT fk_messages_timetable_uid FOREIGN KEY ( timetable_jguid ) REFERENCES carservice.timetable( jguid )   ;

ALTER TABLE carservice.drivers ADD CONSTRAINT drivers_anagraph_fk FOREIGN KEY ( anagraph_id ) REFERENCES anagraph.anagraphs( anagraph_id )  ON UPDATE CASCADE ;

ALTER TABLE carservice.owners_vehicles ADD CONSTRAINT fk_owners_vehicles_anagraphs FOREIGN KEY ( owner_id ) REFERENCES anagraph.anagraphs( anagraph_id )   ;

ALTER TABLE carservice.timetable ADD CONSTRAINT fk_timetable_anagraphs FOREIGN KEY ( driver_anagraph_id ) REFERENCES anagraph.anagraphs( anagraph_id )  ON UPDATE CASCADE ;

