UPDATE `k7dlcniqzg_postmeta` 
   SET `meta_value`= REPLACE(meta_value , ' Genova ', ' Livorno ') 
    	WHERE meta_value LIKE '% Genova %';

UPDATE `k7dlcniqzg_postmeta` 
   SET `meta_value`= REPLACE(meta_value , ' Liguria ', ' Toscana ') 
    	WHERE meta_value LIKE '% Liguria %';

UPDATE `k7dlcniqzg_posts` 
SET post_title = REPLACE(post_title , ' Genova ', ' Livorno ') 
    	WHERE post_title LIKE '% Genova %';
		
UPDATE `k7dlcniqzg_posts` 
SET post_title = REPLACE(post_title , ' Liguria ', ' Toscana ') 
    	WHERE post_title LIKE '% Liguria %'	;	
		
UPDATE `k7dlcniqzg_posts` 
SET post_content = REPLACE(post_content , ' Liguria ', ' Toscana ') 
    	WHERE post_content LIKE '% Liguria %';
		
UPDATE `k7dlcniqzg_posts` 
SET post_content = REPLACE(post_content , ' Genova ', ' Livorno ') 
    	WHERE post_content LIKE '% Genova %';
		
UPDATE `k7dlcniqzg_posts` 
SET post_content = REPLACE(post_content , 'Genova', 'Livorno') 
    	WHERE post_content LIKE '%Genova%';
		
		
UPDATE `k7dlcniqzg_posts` 
SET post_content = REPLACE(post_content , ' Liguria ', ' Toscana ') 
    	WHERE post_content LIKE '% Liguria %';
		
UPDATE `k7dlcniqzg_posts` 
SET post_content = REPLACE(post_content , ' Genova ', ' Livorno ') 
    	WHERE post_content LIKE '% Genova %';
		
UPDATE `k7dlcniqzg_posts` 
SET post_content = REPLACE(post_content , 'Genova', 'Livorno') 
    	WHERE post_content LIKE '%Genova%';

UPDATE `k7dlcniqzg_posts` 
SET post_content = REPLACE(post_content , 'Genova', 'Livorno') 
    	WHERE post_content LIKE '%Genova';
		
		
UPDATE `k7dlcniqzg_posts` 
SET post_name = REPLACE(post_name , 'genova', 'Livorno') 
    	WHERE post_name LIKE '%genova%';

UPDATE `k7dlcniqzg_posts` 
SET post_title = REPLACE(post_title , 'Genova', 'Livorno') 
    	WHERE post_title LIKE '%Genova%';

UPDATE `k7dlcniqzg_posts` 
SET post_title = REPLACE(post_title , 'Liguria', 'Toscana') 
    	WHERE post_title LIKE '%Liguria%';

UPDATE `k7dlcniqzg_options` 
	SET post_content =  REPLACE(post_content , 'badantianzianigenova.it', 'badantelivorno.it') 
    	WHERE post_content LIKE '%badantianzianigenova.it%'