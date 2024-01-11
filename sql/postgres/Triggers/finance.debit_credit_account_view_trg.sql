CREATE OR REPLACE FUNCTION finance.debit_credit_account_view_trg ()
RETURNS trigger 
AS
$$
BEGIN
  UPDATE finance.debit_credit_account SET
    credit_anagraph_id = New.credit_anagraph_id,
    debit_anagraph_id = New.debit_anagraph_id,
    amount = New.amount,
    sign = New.sign,
    datetime = New.datetime,
    db_schema_id = New.db_schema_id,
    jguid = New.jguid,
    deleted = New.deleted,
    insert_date = New.insert_date,
    update_date = New.update_date,
    user_insert = New.user_insert,
    user_update = New.user_update
  WHERE 
    (jguid = New.jguid) ;

  INSERT INTO finance.debit_credit_account (
    credit_anagraph_id,
    debit_anagraph_id,
    amount,
    sign,
    datetime,
    db_schema_id,
    jguid,
    deleted,
    insert_date,
    update_date,
    user_insert,
    user_update,
    id
  )
  VALUES (
    New.credit_anagraph_id,
    New.debit_anagraph_id,
    New.amount,
    New.sign,
    New.datetime,
    New.db_schema_id,
    New.jguid,
    New.deleted,
    New.insert_date,
    New.update_date,
    New.user_insert,
    New.user_update,
    New.id
  );

  DELETE FROM finance.debit_credit_account
  WHERE 
    (jguid = New.jguid) ;
END;
$$
LANGUAGE 'plpgsql';