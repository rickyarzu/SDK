UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , 'badantianzianigenova.it', 'badanteagenzialivorno.it') 
    	WHERE option_value LIKE '%badantianzianigenova.it%';

UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , ' Genova ', ' Agenzia Livorno ') 
    	WHERE option_value LIKE '% Genova %';
		
UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , ' Liguria ', ' Agenzia Toscana ') 
    	WHERE option_value LIKE '% Liguria %';

UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , ' genova ', ' livorno ') 
    	WHERE option_value LIKE '% genova %';
		
UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , 'Liguria', 'Agenzia Toscana') 
    	WHERE option_value LIKE '%Liguria%';

UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , 'Genova', 'Agenzia Livorno') 
    	WHERE option_value LIKE '%Genova%';

UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , 'GENOVA', 'AGENZIA LIVORNO') 
    	WHERE option_value LIKE '%GENOVA%';

UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , 'genova', 'livorno') 
    	WHERE option_value LIKE '%genova%';
		
UPDATE `k7dlcniqzg_options` 
	SET option_value =  REPLACE(option_value , 'liguria', 'toscana') 
    	WHERE option_value LIKE '%toscana%';

UPDATE `k7dlcniqzg_posts` 
	SET post_content =  REPLACE(post_content , 'badantianzianigenova.it', 'badanteagenzialivorno.it') 
    	WHERE post_content LIKE '%badantianzianigenova.it%';

/* 3385877021 -> 3287347803 */


UPDATE `k7dlcniqzg_posts` 
	SET post_content =  REPLACE(post_content , '3385877021', '3287347803') 
    	WHERE post_content LIKE '%3385877021%';