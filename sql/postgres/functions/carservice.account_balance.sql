--  carservice.account_funding

CREATE OR REPLACE FUNCTION carservice.account_balance(IN p_customer_id integer)
    RETURNS money
    LANGUAGE 'plpgsql'
    
AS $BODY$
declare 
  ac_balance money; 
begin
  
   select coalesce(sum(credit)) - coalesce (sum(debit)) into ac_balance 
    from carservice.current_accounts 
	where anagraph_id = p_customer_id;
	
	Return ac_balance; 
end; 
$BODY$;

ALTER FUNCTION carservice.account_funding(integer, money)
    OWNER TO ergo;