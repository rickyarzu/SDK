-- added timetable -> booking foreign key -----------------

ALTER TABLE carservice.timetable 
	ADD CONSTRAINT fk_timetable_booking_heads 
	FOREIGN KEY ( booking_id ) 
	REFERENCES carservice.booking_heads( id ) 
	ON DELETE SET NULL ON UPDATE CASCADE;
   