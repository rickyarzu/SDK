CREATE OR REPLACE FUNCTION anagraph.groups_view_trg ()
RETURNS TRIGGER
AS
$$
BEGIN
  IF TG_OP = 'UPDATE' THEN 
	BEGIN
	  UPDATE anagraph.groups SET
		group_des = New.group_des,
		contact_group = New.contact_group,
		sub_group = New.sub_group,
		sub_group_des = New.sub_group_des,
		settings = New.settings,
		position = New.position,
		accounting = New.accounting,
		cod_account = New.cod_account,
		local = New.local,
		group_cod = New.group_cod,
		ledger_cod = New.ledger_cod,
		subledger_cod = New.subledger_cod,
		grouping = New.grouping,
		description = New.description,
		angr_jguid = New.angr_jguid,
		angr_deleted = New.angr_deleted,
		icon_id = New.icon_id
	WHERE 
		(an_group_id = New.an_group_id) ;
	END;
  ELSIF TG_OP = 'INSERT' THEN 
	BEGIN
	  INSERT INTO anagraph.groups (
		db_schema_id,
		an_group_id,
		group_des,
		contact_group,
		sub_group,
		sub_group_des,
		settings,
		position,
		accounting,
		cod_account,
		local,
		group_cod,
		ledger_cod,
		subledger_cod,
		grouping,
		description,
		angr_jguid,
		angr_deleted,
		icon_id,
		jguid
	  )
	  VALUES (
		current_setting('system.db_schema_id')::integer,
		New.an_group_id,
		New.group_des,
		New.contact_group,
		New.sub_group,
		New.sub_group_des,
		New.settings,
		New.position,
		New.accounting,
		New.cod_account,
		New.local,
		New.group_cod,
		New.ledger_cod,
		New.subledger_cod,
		New.grouping,
		New.description,
		New.angr_jguid,
		New.angr_deleted,
		New.icon_id,
		New.jguid
	  );
	END;
  ELSIF TG_OP = 'DELETE' THEN 
	BEGIN
	  DELETE FROM anagraph.groups
	  WHERE 
		(an_group_id = New.an_group_id) ;
	END;
  END IF; 
  
  RETURN NEW; 
END; 
$$
LANGUAGE 'plpgsql';