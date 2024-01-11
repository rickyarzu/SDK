UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , 'badantianzianigenova.it', 'badanteagenziapisa.it') 
    	WHERE option_value LIKE '%badantianzianigenova.it%'

UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , ' Genova ', ' Pisa ') 
    	WHERE option_value LIKE '% Genova %'
		
UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , ' Liguria ', ' Toscana ') 
    	WHERE option_value LIKE '% Liguria %'

UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , ' genova ', ' pisa ') 
    	WHERE option_value LIKE '% genova %'
		
UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , 'Liguria', 'Toscana') 
    	WHERE option_value LIKE '%Liguria%'

UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , 'Genova', 'Pisa') 
    	WHERE option_value LIKE '%Genova%'

UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , 'GENOVA', 'PISA') 
    	WHERE option_value LIKE '%GENOVA%'

UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , 'genova', 'pisa') 
    	WHERE option_value LIKE '%genova%'
		
UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , 'liguria', 'toscana') 
    	WHERE option_value LIKE '%toscana%'