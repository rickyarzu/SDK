ALTER TABLE anagraph.anagraphs
    ADD COLUMN deleted boolean;
	
update anagraph.anagraphs a set deleted = false; 

ALTER TABLE anagraph.anagraphs
    ALTER COLUMN deleted SET DEFAULT False;

ALTER TABLE anagraph.anagraphs
    ALTER COLUMN deleted SET NOT NULL;

