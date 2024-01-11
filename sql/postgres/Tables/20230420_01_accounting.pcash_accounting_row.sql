ALTER TABLE IF EXISTS accounting.pcash_accounting_row
    ADD COLUMN anagraph_id integer;

COMMENT ON COLUMN accounting.pcash_accounting_row.anagraph_id
    IS 'anagraph_id can help us to maintain a current account relationship so foreign keys to anagraph ';
	
ALTER TABLE IF EXISTS accounting.pcash_accounting_row
    ADD CONSTRAINT fk_accounting_row_anagraph FOREIGN KEY (anagraph_id)
    REFERENCES anagraph.anagraphs (anagraph_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_fk_accounting_row_anagraph
    ON accounting.pcash_accounting_row(anagraph_id);