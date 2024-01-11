ALTER TABLE logistic.shipment_rows
    ADD CONSTRAINT shipment_rows_jk UNIQUE (jguid);
	
ALTER TABLE logistic.shipment_rows
    ADD	CONSTRAINT shipment_rows_pk PRIMARY KEY (year, shipment_id, office_id, pos);
	
