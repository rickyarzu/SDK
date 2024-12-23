inherited dmPgTWilioSync: TdmPgTWilioSync
  Height = 305
  Width = 539
  inherited PgErgoConnection: TJanuaUniConnection
    Port = 5432
    Server = 'pg.januaservers.com'
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object FbPhoenixConnection: TUniConnection
    ProviderName = 'interBase'
    Database = 'C:\PhoenixDB\PHOENIX.FDB'
    SpecificOptions.Strings = (
      'interBase.UseUnicode=True')
    Options.DisconnectedMode = True
    Username = 'SYSDBA'
    Server = '192.168.1.200'
    LoginPrompt = False
    Left = 176
    Top = 48
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 168
    Top = 112
  end
  object qryTwilioLog: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cloud.twilio_log'
      
        '  (id, db_schema_id, jguid, deleted, insert_date, update_date, u' +
        'ser_insert, user_update, json_content, body_received, action)'
      'VALUES'
      
        '  (:id, :db_schema_id, :jguid, :deleted, :insert_date, :update_d' +
        'ate, :user_insert, :user_update, :json_content, :body_received, ' +
        ':action)')
    SQLDelete.Strings = (
      'DELETE FROM cloud.twilio_log'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE cloud.twilio_log'
      'SET'
      
        '  id = :id, db_schema_id = :db_schema_id, jguid = :jguid, delete' +
        'd = :deleted, insert_date = :insert_date, update_date = :update_' +
        'date, user_insert = :user_insert, user_update = :user_update, js' +
        'on_content = :json_content, body_received = :body_received, acti' +
        'on = :action'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM cloud.twilio_log'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, db_schema_id, jguid, deleted, insert_date, update_dat' +
        'e, user_insert, user_update, json_content, body_received, action' +
        ' FROM cloud.twilio_log'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cloud.twilio_log'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM cloud.twilio_log where id > :max_id'
      'ORDER BY id ASC ')
    Left = 72
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'max_id'
        ParamType = ptInput
        Value = 44
      end>
    object qryTwilioLogid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryTwilioLogdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryTwilioLogjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryTwilioLogdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryTwilioLoginsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryTwilioLogupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryTwilioLoguser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 128
    end
    object qryTwilioLoguser_update: TWideStringField
      FieldName = 'user_update'
      Size = 128
    end
    object qryTwilioLogjson_content: TWideMemoField
      FieldName = 'json_content'
      BlobType = ftWideMemo
    end
    object qryTwilioLogbody_received: TWideMemoField
      FieldName = 'body_received'
      BlobType = ftWideMemo
    end
    object qryTwilioLogaction: TWideStringField
      FieldName = 'action'
      Size = 128
    end
  end
  object qryPhoenixLogClone: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO TWILIO_LOG'
      
        '  (ID, STATO, JGUID, WANUMBER, MANAGED, INSERT_DATE, UPDATE_DATE' +
        ', JSON_CONTENT, BODY_RECEIVED, ACTION)'
      'VALUES'
      
        '  (:ID, :STATO, :JGUID, :WANUMBER, :MANAGED, :INSERT_DATE, :UPDA' +
        'TE_DATE, :JSON_CONTENT, :BODY_RECEIVED, :ACTION)')
    SQLDelete.Strings = (
      'DELETE FROM TWILIO_LOG'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE TWILIO_LOG'
      'SET'
      
        '  ID = :ID, STATO = :STATO, JGUID = :JGUID, WANUMBER = :WANUMBER' +
        ', MANAGED = :MANAGED, INSERT_DATE = :INSERT_DATE, UPDATE_DATE = ' +
        ':UPDATE_DATE, JSON_CONTENT = :JSON_CONTENT, BODY_RECEIVED = :BOD' +
        'Y_RECEIVED, ACTION = :ACTION'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM TWILIO_LOG'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, STATO, JGUID, WANUMBER, MANAGED, INSERT_DATE, UPDATE_' +
        'DATE, JSON_CONTENT, BODY_RECEIVED, ACTION FROM TWILIO_LOG'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM TWILIO_LOG'
      ''
      ') q')
    DataTypeMap = <
      item
        FieldName = 'JGUID'
        FieldType = ftGuid
      end>
    Connection = FbPhoenixConnection
    SQL.Strings = (
      'SELECT * FROM twilio_log'
      'where id > :max_id'
      'ORDER BY id ASC ')
    OnCalcFields = qryPhoenixLogCloneCalcFields
    Left = 168
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'max_id'
        ParamType = ptInput
        Value = 0
      end>
    object qryPhoenixLogCloneID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryPhoenixLogCloneSTATO: TSmallintField
      FieldName = 'STATO'
    end
    object qryPhoenixLogCloneWANUMBER: TWideStringField
      FieldName = 'WANUMBER'
    end
    object qryPhoenixLogCloneMANAGED: TWideStringField
      FieldName = 'MANAGED'
      FixedChar = True
      Size = 1
    end
    object qryPhoenixLogCloneINSERT_DATE: TDateTimeField
      FieldName = 'INSERT_DATE'
    end
    object qryPhoenixLogCloneUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object qryPhoenixLogCloneJSON_CONTENT: TBlobField
      FieldName = 'JSON_CONTENT'
    end
    object qryPhoenixLogCloneBODY_RECEIVED: TBlobField
      FieldName = 'BODY_RECEIVED'
    end
    object qryPhoenixLogCloneACTION: TWideStringField
      FieldName = 'ACTION'
      Size = 128
    end
    object qryPhoenixLogCloneJGUID: TGuidField
      FieldName = 'JGUID'
      FixedChar = True
      Size = 38
    end
    object qryPhoenixLogClonememTwilioJson: TStringField
      FieldKind = fkCalculated
      FieldName = 'memTwilioJson'
      Size = 2048
      Calculated = True
    end
  end
  object qryMaxTwilioLog: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cloud.twilio_log'
      
        '  (id, db_schema_id, jguid, deleted, insert_date, update_date, u' +
        'ser_insert, user_update, json_content, body_received, action)'
      'VALUES'
      
        '  (:id, :db_schema_id, :jguid, :deleted, :insert_date, :update_d' +
        'ate, :user_insert, :user_update, :json_content, :body_received, ' +
        ':action)')
    SQLDelete.Strings = (
      'DELETE FROM cloud.twilio_log'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE cloud.twilio_log'
      'SET'
      
        '  id = :id, db_schema_id = :db_schema_id, jguid = :jguid, delete' +
        'd = :deleted, insert_date = :insert_date, update_date = :update_' +
        'date, user_insert = :user_insert, user_update = :user_update, js' +
        'on_content = :json_content, body_received = :body_received, acti' +
        'on = :action'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM cloud.twilio_log'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, db_schema_id, jguid, deleted, insert_date, update_dat' +
        'e, user_insert, user_update, json_content, body_received, action' +
        ' FROM cloud.twilio_log'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cloud.twilio_log'
      ''
      ') t')
    Connection = FbPhoenixConnection
    SQL.Strings = (
      'SELECT coalesce ( max(id), 0) as max_id FROM twilio_log'
      '')
    Left = 168
    Top = 240
    object qryMaxTwilioLogMAX_ID: TIntegerField
      FieldName = 'MAX_ID'
      ReadOnly = True
    end
  end
  object qryWebHook: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO TWILIO_LOG'
      
        '  (ID, STATO,  WANUMBER, MANAGED, INSERT_DATE, UPDATE_DATE, JSON' +
        '_CONTENT, BODY_RECEIVED, ACTION)'
      'VALUES'
      
        '  (:ID, :STATO,  :WANUMBER, :MANAGED, :INSERT_DATE, :UPDATE_DATE' +
        ', :JSON_CONTENT, :BODY_RECEIVED, :ACTION)')
    SQLDelete.Strings = (
      'DELETE FROM TWILIO_LOG'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE TWILIO_LOG'
      'SET'
      
        '  ID = :ID, STATO = :STATO, WANUMBER = :WANUMBER, MANAGED = :MAN' +
        'AGED, INSERT_DATE = :INSERT_DATE, UPDATE_DATE = :UPDATE_DATE, JS' +
        'ON_CONTENT = :JSON_CONTENT, BODY_RECEIVED = :BODY_RECEIVED, ACTI' +
        'ON = :ACTION'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM TWILIO_LOG'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, STATO, JGUID, WANUMBER, MANAGED, INSERT_DATE, UPDATE_' +
        'DATE, JSON_CONTENT, BODY_RECEIVED, ACTION FROM TWILIO_LOG'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM TWILIO_LOG'
      ''
      ') q')
    DataTypeMap = <
      item
        FieldName = 'JGUID'
        FieldType = ftGuid
      end>
    Connection = FbPhoenixConnection
    SQL.Strings = (
      'SELECT * FROM twilio_log'
      'where'
      '( managed is null or managed = '#39'F'#39')'
      'AND ACTION = '#39'webhook'#39
      'ORDER BY id ASC ')
    OnCalcFields = qryWebHookCalcFields
    Left = 352
    Top = 56
    object qryWebHookID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryWebHookSTATO: TSmallintField
      FieldName = 'STATO'
    end
    object qryWebHookJGUID: TGuidField
      FieldName = 'JGUID'
      FixedChar = True
      Size = 38
    end
    object qryWebHookWANUMBER: TWideStringField
      FieldName = 'WANUMBER'
    end
    object qryWebHookMANAGED: TWideStringField
      FieldName = 'MANAGED'
      FixedChar = True
      Size = 1
    end
    object qryWebHookINSERT_DATE: TDateTimeField
      FieldName = 'INSERT_DATE'
    end
    object qryWebHookUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object qryWebHookJSON_CONTENT: TBlobField
      FieldName = 'JSON_CONTENT'
    end
    object qryWebHookBODY_RECEIVED: TBlobField
      FieldName = 'BODY_RECEIVED'
    end
    object qryWebHookmemTwilioJson: TStringField
      FieldKind = fkCalculated
      FieldName = 'memTwilioJson'
      Size = 2048
      Calculated = True
    end
    object qryWebHookACTION: TWideStringField
      FieldName = 'ACTION'
      Size = 128
    end
  end
  object qryMessageStatus: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO TWILIO_LOG'
      
        '  (ID, STATO, JGUID, WANUMBER, MANAGED, INSERT_DATE, UPDATE_DATE' +
        ', JSON_CONTENT, BODY_RECEIVED, ACTION)'
      'VALUES'
      
        '  (:ID, :STATO, :JGUID, :WANUMBER, :MANAGED, :INSERT_DATE, :UPDA' +
        'TE_DATE, :JSON_CONTENT, :BODY_RECEIVED, :ACTION)')
    SQLDelete.Strings = (
      'DELETE FROM TWILIO_LOG'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE TWILIO_LOG'
      'SET'
      
        '  ID = :ID, STATO = :STATO, JGUID = :JGUID, WANUMBER = :WANUMBER' +
        ', MANAGED = :MANAGED, INSERT_DATE = :INSERT_DATE, UPDATE_DATE = ' +
        ':UPDATE_DATE, JSON_CONTENT = :JSON_CONTENT, BODY_RECEIVED = :BOD' +
        'Y_RECEIVED, ACTION = :ACTION'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM TWILIO_LOG'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, STATO, JGUID, WANUMBER, MANAGED, INSERT_DATE, UPDATE_' +
        'DATE, JSON_CONTENT, BODY_RECEIVED, ACTION FROM TWILIO_LOG'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM TWILIO_LOG'
      ''
      ') q')
    DataTypeMap = <
      item
        FieldName = 'JGUID'
        FieldType = ftGuid
      end
      item
        FieldName = 'BODY_RECEIVED'
        FieldType = ftWideMemo
      end>
    Connection = FbPhoenixConnection
    SQL.Strings = (
      'SELECT * FROM twilio_log'
      'WHERE ( managed is null or managed = '#39'F'#39')'
      'AND ACTION = '#39'status_callback'#39
      'ORDER BY id ASC ')
    OnCalcFields = qryMessageStatusCalcFields
    Left = 352
    Top = 128
    object qryMessageStatusID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryMessageStatusSTATO: TSmallintField
      FieldName = 'STATO'
    end
    object qryMessageStatusJGUID: TGuidField
      FieldName = 'JGUID'
      FixedChar = True
      Size = 38
    end
    object qryMessageStatusWANUMBER: TWideStringField
      FieldName = 'WANUMBER'
    end
    object qryMessageStatusMANAGED: TWideStringField
      FieldName = 'MANAGED'
      FixedChar = True
      Size = 1
    end
    object qryMessageStatusINSERT_DATE: TDateTimeField
      FieldName = 'INSERT_DATE'
    end
    object qryMessageStatusUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object qryMessageStatusJSON_CONTENT: TBlobField
      FieldName = 'JSON_CONTENT'
    end
    object qryMessageStatusBODY_RECEIVED: TWideMemoField
      FieldName = 'BODY_RECEIVED'
      BlobType = ftWideMemo
    end
    object qryMessageStatusACTION: TWideStringField
      FieldName = 'ACTION'
      Size = 128
    end
    object qryMessageStatusmemTwilioJson: TStringField
      FieldKind = fkCalculated
      FieldName = 'memTwilioJson'
      Size = 2048
      Calculated = True
    end
  end
  object spInsertMessage: TUniStoredProc
    StoredProcName = 'INSERT_WHATSAPP_MESSAGES'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE INSERT_WHATSAPP_MESSAGES(:WANUMBER, :WAMESSAGE' +
        ', :ID, :WAREAD, :IN_OUT, :STATE, :INSERT_DATE, :READ_DATE, :WA_S' +
        'TATE, :WA_ID, :REPORT_ID)')
    Connection = FbPhoenixConnection
    Left = 440
    Top = 88
    ParamData = <
      item
        DataType = ftWideString
        Name = 'WANUMBER'
        ParamType = ptInput
        Size = 20
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'WAMESSAGE'
        ParamType = ptInput
        Size = 512
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFixedWideChar
        Name = 'WAREAD'
        ParamType = ptInput
        Size = 1
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'IN_OUT'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'STATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'INSERT_DATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'READ_DATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'WA_STATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'WA_ID'
        ParamType = ptInput
        Size = 128
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'REPORT_ID'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'INSERT_WHATSAPP_MESSAGES'
  end
  object qryMessageList: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO WHATSAPP_MESSAGES'
      '  (WAREAD, STATE, INSERT_DATE, READ_DATE)'
      'VALUES'
      '  (:WAREAD, :STATE, :INSERT_DATE, :READ_DATE)')
    SQLDelete.Strings = (
      'DELETE FROM WHATSAPP_MESSAGES'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE WHATSAPP_MESSAGES'
      'SET'
      
        '  WAREAD = :WAREAD, STATE = :STATE, INSERT_DATE = :INSERT_DATE, ' +
        'READ_DATE = :READ_DATE'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM WHATSAPP_MESSAGES'
      'WHERE'
      'ID = :Old_ID AND ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT WAREAD, STATE, INSERT_DATE, READ_DATE FROM WHATSAPP_MESSA' +
        'GES'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM WHATSAPP_MESSAGES'
      ''
      ') q')
    Connection = FbPhoenixConnection
    SQL.Strings = (
      'SELECT N.wa_name,  M.*'
      
        'FROM whatsapp_numbers N JOIN whatsapp_messages M ON N.wanumber =' +
        ' M.wanumber'
      'ORDER BY M.insert_date desc')
    OnCalcFields = qryMessageListCalcFields
    Left = 353
    Top = 193
    object qryMessageListWA_NAME: TWideStringField
      FieldName = 'WA_NAME'
      Required = True
      Size = 256
    end
    object qryMessageListWANUMBER: TWideStringField
      FieldName = 'WANUMBER'
      ReadOnly = True
    end
    object qryMessageListWAMESSAGE: TWideStringField
      FieldName = 'WAMESSAGE'
      ReadOnly = True
      Size = 512
    end
    object qryMessageListID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryMessageListWAREAD: TWideStringField
      FieldName = 'WAREAD'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryMessageListIN_OUT: TSmallintField
      FieldName = 'IN_OUT'
      ReadOnly = True
    end
    object qryMessageListSTATE: TSmallintField
      FieldName = 'STATE'
      ReadOnly = True
    end
    object qryMessageListINSERT_DATE: TDateTimeField
      FieldName = 'INSERT_DATE'
      ReadOnly = True
    end
    object qryMessageListREAD_DATE: TDateTimeField
      FieldName = 'READ_DATE'
      ReadOnly = True
    end
    object qryMessageListWA_STATE: TSmallintField
      FieldName = 'WA_STATE'
      ReadOnly = True
    end
    object qryMessageListWA_ID: TWideStringField
      FieldName = 'WA_ID'
      ReadOnly = True
      Size = 128
    end
    object qryMessageListREPORT_ID: TIntegerField
      FieldName = 'REPORT_ID'
      ReadOnly = True
    end
    object qryMessageListcalcLabel: TStringField
      FieldKind = fkCalculated
      FieldName = 'calcLabel'
      Size = 128
      Calculated = True
    end
  end
end
