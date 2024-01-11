CREATE TABLE anagraph.an_addresses
(
    anagraph_id integer NOT NULL
)
    INHERITS (anagraph.addresses)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS anagraph.an_addresses
    OWNER to ergo;