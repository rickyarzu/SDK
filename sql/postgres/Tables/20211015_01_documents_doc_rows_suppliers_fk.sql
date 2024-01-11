ALTER TABLE IF EXISTS documents.rows
    ADD CONSTRAINT doc_rows_suppliers_fk FOREIGN KEY (supplier_id)
    REFERENCES anagraph.anagraphs (anagraph_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_doc_rows_suppliers_fk
    ON documents.rows(supplier_id);