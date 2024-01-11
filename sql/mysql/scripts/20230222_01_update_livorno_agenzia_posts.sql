	UPDATE `k7dlcniqzg_postmeta` 
	   SET `meta_value`= REPLACE(meta_value , ' Genova ', ' Agenzia Livorno ') 
	    	WHERE meta_value LIKE '% Genova %';
	
	UPDATE `k7dlcniqzg_postmeta` 
	   SET `meta_value`= REPLACE(meta_value , ' Liguria ', ' Agenzia Toscana ') 
	    	WHERE meta_value LIKE '% Liguria %';
	
	UPDATE `k7dlcniqzg_posts` 
	SET post_title = REPLACE(post_title , ' Genova ', ' Agenzia Livorno ') 
	    	WHERE post_title LIKE '% Genova %';
			
	UPDATE `k7dlcniqzg_posts` 
	SET post_title = REPLACE(post_title , ' Liguria ', ' Agenzia Toscana ') 
	    	WHERE post_title LIKE '% Liguria %'	;	
			
	UPDATE `k7dlcniqzg_posts` 
	SET post_content = REPLACE(post_content , ' Liguria ', ' Agenzia Toscana ') 
	    	WHERE post_content LIKE '% Liguria %';
			
	UPDATE `k7dlcniqzg_posts` 
	SET post_content = REPLACE(post_content , ' Genova ', ' Agenzia Livorno ') 
	    	WHERE post_content LIKE '% Genova %';
			
	UPDATE `k7dlcniqzg_posts` 
	SET post_content = REPLACE(post_content , 'Genova', ' Agenzia Livorno') 
	    	WHERE post_content LIKE '%Genova%';
			
			
	UPDATE `k7dlcniqzg_posts` 
	SET post_content = REPLACE(post_content , ' Liguria ', ' Agenzia Toscana ') 
	    	WHERE post_content LIKE '% Liguria %';
			
	UPDATE `k7dlcniqzg_posts` 
	SET post_content = REPLACE(post_content , ' Genova ', ' Agenzia Livorno ') 
	    	WHERE post_content LIKE '% Genova %';
			
	UPDATE `k7dlcniqzg_posts` 
	SET post_content = REPLACE(post_content , 'Genova', 'Agenzia Livorno') 
	    	WHERE post_content LIKE '%Genova%';
	
	UPDATE `k7dlcniqzg_posts` 
	SET post_content = REPLACE(post_content , 'Genova', 'Agenzia Livorno') 
	    	WHERE post_content LIKE '%Genova';
			
			
	UPDATE `k7dlcniqzg_posts` 
	SET post_name = REPLACE(post_name , 'genova', 'Agenzia Livorno') 
	    	WHERE post_name LIKE '%genova%';
	
	UPDATE `k7dlcniqzg_posts` 
	SET post_title = REPLACE(post_title , 'Genova', 'Agenzia Livorno') 
	    	WHERE post_title LIKE '%Genova%';
	
	UPDATE `k7dlcniqzg_posts` 
	SET post_title = REPLACE(post_title , 'Liguria', 'Agenzia Toscana') 
	    	WHERE post_title LIKE '%Liguria%';
	
	UPDATE `k7dlcniqzg_options` 
		SET option_value =  REPLACE(option_value , 'badantianzianigenova.it', 'badanteagenzialivorno.it') 
	    	WHERE option_value LIKE '%badantianzianigenova.it%'