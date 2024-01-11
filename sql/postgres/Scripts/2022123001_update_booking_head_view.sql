SELECT id, office_id, jguid, db_schema_id, user_insert, insert_date, customer_id, state_id, branch_id, vehicle_model, vehicle_color, vehicle_numberplate, 
       an_last_name, an_vat_id, an_address, an_postal_code, an_fiscal_code, an_town, an_phone, an_email, an_cellular,  
	   branch_address, branch_postal_code, branch_town, branch_phone, 
	   cust_first_name, cust_last_name, full_address, cust_cellular, cust_email
	FROM carservice.booking_head_view
	order by id desc
	
UPDATE carservice.booking_head_view set vehicle_numberplate = 'AY234FJ'	where vehicle_numberplate IS NULL; 
UPDATE carservice.booking_head_view set vehicle_color = 'Bianco'	where vehicle_color IS NULL; 
UPDATE carservice.booking_head_view set vehicle_model = 'Fiat Duna'	where vehicle_model IS NULL; 

UPDATE anagraph.anagraphs set an_town = 'Milano', an_postal_code = '20122', an_state_province = 'MI', an_address = 'Viale Majno 7' 
where anagraph_id in (253907,253906 )