--  carservice.booking_amount
--DROP FUNCTION carservice.booking_amount(bigint);

CREATE OR REPLACE FUNCTION carservice.booking_payment(
	  	IN p_booking_id bigint
		)
    RETURNS money
    LANGUAGE 'plpgsql'
   
AS $BODY$
declare
    q integer;
	customer_id integer; 
	net_amount MONEY; 
	tax_amount MONEY;
	full_amount money;
begin
   customer_id := 0; 
   
   IF EXISTS (SELECT 1 FROM carservice.booking_heads h where h.id = p_booking_id ) 
      AND NOT EXISTS (SELECT 1 FROM carservice.current_accounts where booking_id = p_booking_id) THEN 
	   BEGIN
	   		SELECT office_id into customer_id FROM carservice.booking_heads h where h.id = p_booking_id; 
			select  a.q,  
			        a.q*main_price as net_amount, 
					a.q*main_price*0.22 as tax_amount,  
					a.q*main_price*1.22 as full_amount 
				 into q, net_amount, tax_amount, full_amount 
			from 
			(
				select count(1) as q 
				from carservice.timetable t 
				where t.booking_id = p_booking_id
			) a, items.definitions d
			where d.db_schema_id = 36 and d.code = 'PK';
		END;
		
		
	  insert into carservice.current_accounts 
		 (jguid, id, anagraph_id, description, accounting_date, value_date, debit, credit, booking_id)
	  values
	  (
		public.uuid_generate_v1mc(), --jguid
		nextval('carservice.booking_heads_sequence'), --id
		customer_id, -- anagraph_id
		'Pagamento prenotazione ' || p_booking_id || ', Imponibile: ' || net_amount || ', Imposte: ' || tax_amount, --description
		CURRENT_DATE, -- accounting_date
		CURRENT_DATE, -- value_date
		full_amount, -- credit
		0,
		p_booking_id  
	   ); 		
	
	END IF; 

  RETURN carservice.account_balance(customer_id); 	
end; 
$BODY$;

ALTER FUNCTION carservice.account_funding(integer, money)
    OWNER TO ergo;