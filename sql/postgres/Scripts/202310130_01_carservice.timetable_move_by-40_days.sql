SELECT * FROM carservice.timetable_summary_view 
where jguid = '{7185a408-a4c1-4da7-bcb6-3acfd66dfd03}'

select * from carservice.timetable where  jguid = '{7185a408-a4c1-4da7-bcb6-3acfd66dfd03}'

SELECT * FROM carservice.timetable where from_id is not null

SELECT * FROM carservice.booking_heads g 
where exists (select 1 from carservice.timetable t where t.booking_id = g.id );-- f78246c7-c44c-4190-8cea-27cec84013c9

SELECT * FROM carservice.booking_heads g WHERE jguid = '{414ed5b3-54f7-40be-9dd0-54212ce0b0a9}'; 

select * from carservice.timetable_view v1
where 
 booking_id = 40;