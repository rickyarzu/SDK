CREATE TRIGGER an_addresses_view_bi_trg
    INSTEAD OF INSERT
    ON anagraph.an_addresses_view
    FOR EACH ROW
    EXECUTE PROCEDURE anagraph.an_addresses_view_insert_trg();