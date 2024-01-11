ALTER TABLE IF EXISTS anagraph.an_addresses
    ADD CONSTRAINT an_addresses_pk PRIMARY KEY (id);
	
ALTER TABLE IF EXISTS anagraph.an_addresses
    ADD CONSTRAINT an_addresses_uk UNIQUE (jguid);
	
ALTER TABLE IF EXISTS anagraph.an_addresses
    ADD CONSTRAINT an_addresses_anagraph_fk FOREIGN KEY (anagraph_id)
    REFERENCES anagraph.anagraphs (anagraph_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_an_addresses_anagraph_fk
    ON anagraph.an_addresses(anagraph_id);	
	
	