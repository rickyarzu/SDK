CREATE TRIGGER an_addresses_view_bu_trg
    INSTEAD OF UPDATE 
    ON anagraph.an_addresses_view
    FOR EACH ROW
    EXECUTE PROCEDURE anagraph.an_addresses_view_update_trg();