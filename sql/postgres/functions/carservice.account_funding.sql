-- FUNCTION: carservice.account_funding(integer, money)

-- DROP FUNCTION IF EXISTS carservice.account_funding(integer, money);

CREATE OR REPLACE FUNCTION carservice.account_funding(
	p_customer_id integer,
	p_amount money)
    RETURNS money
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
declare 
  ac_balance money; 
begin
  insert into carservice.current_accounts 
     (jguid, id, anagraph_id, description, accounting_date, value_date, credit)
  values
  (
    public.uuid_generate_v1mc(), --jguid
    nextval('carservice.booking_heads_sequence'), --id
	p_customer_id, -- anagraph_id
	'Versamento sul conto', --description
	CURRENT_DATE, -- accounting_date
	CURRENT_DATE, -- value_date
	p_amount -- credit
   ); 
   
  RETURN carservice.account_balance(office_id); 
end; 
$BODY$;

ALTER FUNCTION carservice.account_funding(integer, money)
    OWNER TO ergo;
