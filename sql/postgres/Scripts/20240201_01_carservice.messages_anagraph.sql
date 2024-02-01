select * from carservice.messages order by insert_date desc

update carservice.messages set anagraph_id = db_user_id where anagraph_id is null