SELECT a.gruppo, a.chiave, a.valore, a.insert_date, a.update_date,
       a.ins_id, a.upd_id, a.usergroup, a.lang, a.adminonly, a.isgroup,
       a.user_insert, a.user_update, a.local
  FROM enasc.impostazione_parametri a
  WHERE USERGROUP = 'ENASC' AND gruppo = 'APPLICATION'; 
  
  UPDATE enasc.impostazione_parametri SET VALORE = 'CAF' WHERE 
        USERGROUP = 'ENASC' AND gruppo = 'APPLICATION' AND CHIAVE = 'TYPE'; 
  
  SELECT DISTINCT USERGROUP FROM enasc.impostazione_parametri a
  
  DELETE FROM enasc.impostazione_parametri WHERE USERGROUP IN ('APETRONE', 'AMAUGERI', 'CVADALA', 'MVITIELLO', 'FJORD') 
  
  
  ALTER USER ENASC IDENTIFIED BY PonteReale;