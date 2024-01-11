SELECT * FROM carservice.booking_heads WHERE RETURN_SLOT_ID IS NOT NULL
ORDER BY ID DESC LIMIT 10

-- 253927 = customer_id = 'Viale Sarca 18, 20127, Milano (MI)'
-- 253926 = office_id = 'Carrozzeria Test Uno' 'Via Tarra, 12. Milano '
-- 143 = booking_id = d458fa9e-be14-4e5d-b83a-4e9e61323e20
-- 

select * from anagraph.anagraphs where anagraph_id in (253927, 253926)
-- Via Giulio Tarra, 12, 20124 Milano MI, Italia

SET SESSION "system.db_schema_id" = 36; 

INSERT INTO anagraph.an_addresses(
		address_name, 	postal_code, 	state_province, town_name, 	town_code, 	address, 			address_number, 
		phone, 	full_address,  									country_code,  anagraph_id, pos)
VALUES ('', 			'20124', 		'MI', 			'Milano', 	'', 		'Via Giulio Tarra', '12', 			
		'', 	'Via Giulio Tarra, 12, 20124 Milano MI, Italia', 'IT', 		     253926, 	1);

select * from anagraph.an_addresses

update anagraph.an_addresses set 
	latitude = 45.4873985, longitude = 9.2011459
where anagraph_id = 253926; 

INSERT INTO anagraph.an_addresses(
		address_name, 	postal_code, 	state_province, town_name, 	town_code, 	address, 			address_number, 
		phone, 	full_address,  									country_code,  anagraph_id, pos, 	latitude, 		longitude)
VALUES ('', 			'20126', 		'MI', 			'Milano', 	'', 		'Via Giulio Tarra', '18', 			
		'', 	'Viale Sarca, 18, 20126 Milano MI, Italia', 'IT', 		     253927, 		1, 		45.5231634, 	9.2207148);
		
select * from anagraph.an_addresses

update anagraph.an_addresses set 
	address = 'Viale Sarca'
where anagraph_id = 253927; 
