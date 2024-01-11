UPDATE `k7dlcniqzg_postmeta` 
   SET `meta_value`= REPLACE(meta_value , ' Genova ', ' Pisa ') 
    	WHERE meta_value LIKE '% Genova %';

UPDATE `k7dlcniqzg_postmeta` 
   SET `meta_value`= REPLACE(meta_value , ' Liguria ', ' Toscana ') 
    	WHERE meta_value LIKE '% Liguria %';

UPDATE `k7dlcniqzg_posts` 
SET post_title = REPLACE(post_title , ' Genova ', ' Pisa ') 
    	WHERE post_title LIKE '% Genova %';
		
UPDATE `k7dlcniqzg_posts` 
SET post_title = REPLACE(post_title , ' Liguria ', ' Toscana ') 
    	WHERE post_title LIKE '% Liguria %'	;	
		
UPDATE `k7dlcniqzg_posts` 
SET post_content = REPLACE(post_content , ' Liguria ', ' Toscana ') 
    	WHERE post_content LIKE '% Liguria %';
		
UPDATE `k7dlcniqzg_posts` 
SET post_content = REPLACE(post_content , ' Genova ', ' Pisa ') 
    	WHERE post_content LIKE '% Genova %';
		
UPDATE `k7dlcniqzg_posts` 
SET post_content = REPLACE(post_content , 'Genova', 'Pisa') 
    	WHERE post_content LIKE '%Genova%';
		
		
UPDATE `k7dlcniqzg_posts` 
SET post_content = REPLACE(post_content , ' Liguria ', ' Toscana ') 
    	WHERE post_content LIKE '% Liguria %';
		
UPDATE `k7dlcniqzg_posts` 
SET post_content = REPLACE(post_content , ' Genova ', ' Pisa ') 
    	WHERE post_content LIKE '% Genova %';
		
UPDATE `k7dlcniqzg_posts` 
SET post_content = REPLACE(post_content , 'Genova', 'Pisa') 
    	WHERE post_content LIKE '%Genova%';
		
		
UPDATE `k7dlcniqzg_posts` 
SET post_name = REPLACE(post_name , 'genova', 'pisa') 
    	WHERE post_name LIKE '%genova%';

UPDATE `k7dlcniqzg_posts` 
	SET post_content =  REPLACE(post_content , 'badantianzianigenova.it', 'badanteagenziapisa.it') 
    	WHERE post_content LIKE '%badantianzianigenova.it%';

/* 3385877021 -> 3884612008 */


UPDATE `k7dlcniqzg_posts` 
	SET post_content =  REPLACE(post_content , '3385877021', '3884612008') 
    	WHERE post_content LIKE '%3385877021%';