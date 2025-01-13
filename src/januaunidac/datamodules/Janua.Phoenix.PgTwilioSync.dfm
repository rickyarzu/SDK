inherited dmPgTWilioSync: TdmPgTWilioSync
  Height = 342
  Width = 645
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
        DataType = ftLargeint
        Name = 'max_id'
        ParamType = ptInput
        Value = 44
      end>
    object qryTwilioLogid: TLargeintField
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
    object qryPhoenixLogCloneID: TLargeintField
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
    object qryMaxTwilioLogMAX_ID: TLargeintField
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
    object qryWebHookID: TLargeintField
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
      '  (MANAGED)'
      'VALUES'
      '  (:MANAGED)')
    SQLDelete.Strings = (
      'DELETE FROM TWILIO_LOG'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE TWILIO_LOG'
      'SET'
      '  MANAGED = :MANAGED'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM TWILIO_LOG'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      'SELECT MANAGED FROM TWILIO_LOG'
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
    object qryMessageStatusID: TLargeintField
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
    object qryMessageListID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryMessageListUPD_ID: TLargeintField
      FieldName = 'UPD_ID'
      ReadOnly = True
    end
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
  object spUdateMessage: TUniStoredProc
    StoredProcName = 'UPDATE_WHATSAPP_MESSAGES'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE UPDATE_WHATSAPP_MESSAGES(:UPD_ID, :WAREAD, :ST' +
        'ATE, :READ_DATE, :WA_STATE, :WA_ID)')
    Connection = FbPhoenixConnection
    Left = 440
    Top = 160
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'UPD_ID'
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
        Name = 'STATE'
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
      end>
    CommandStoredProcName = 'UPDATE_WHATSAPP_MESSAGES'
  end
  object tbWhatsAppStates: TUniTable
    TableName = 'WHATSAPP_STATES'
    Connection = FbPhoenixConnection
    Left = 352
    Top = 256
    object tbWhatsAppStatesID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object tbWhatsAppStatesDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
    end
    object tbWhatsAppStatesIMAGE: TBlobField
      FieldName = 'IMAGE'
    end
  end
  object qryStatini: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO STATINI'
      
        '  (STATO, JGUID, GCAL, WANUMBER, WA, STATO_IMMAGINE, WA_ID, WA_I' +
        'MAGE, WA_STATE)'
      'VALUES'
      
        '  (:STATO, :JGUID, :GCAL, :WANUMBER, :WA, :STATO_IMMAGINE, :WA_I' +
        'D, :WA_IMAGE, :WA_STATE)')
    SQLDelete.Strings = (
      'DELETE FROM STATINI'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLUpdate.Strings = (
      'UPDATE STATINI'
      'SET'
      
        '  STATO = :STATO, JGUID = :JGUID, GCAL = :GCAL, WANUMBER = :WANU' +
        'MBER, WA = :WA, STATO_IMMAGINE = :STATO_IMMAGINE, WA_ID = :WA_ID' +
        ', WA_IMAGE = :WA_IMAGE, WA_STATE = :WA_STATE'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLLock.Strings = (
      'SELECT NULL FROM STATINI'
      'WHERE'
      'CHIAVE = :Old_CHIAVE'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT STATO, JGUID, GCAL, WANUMBER, WA, STATO_IMMAGINE, WA_ID, ' +
        'WA_IMAGE, WA_STATE FROM STATINI'
      'WHERE'
      '  CHIAVE = :CHIAVE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM STATINI'
      ''
      ') q')
    Connection = FbPhoenixConnection
    SQL.Strings = (
      'SELECT * from statini s where s.wa_id is not null '
      'AND '
      '((wa_state is null) OR  WA_STATE NOT IN (-1, 2))'
      'AND'
      'STATO < 9')
    AfterOpen = qryStatiniAfterOpen
    OnCalcFields = qryMessageListCalcFields
    Left = 553
    Top = 97
    object qryStatiniCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryStatiniCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object qryStatiniFILIALE: TIntegerField
      FieldName = 'FILIALE'
    end
    object qryStatiniTITOLO: TWideStringField
      FieldName = 'TITOLO'
      Size = 10
    end
    object qryStatiniRAGIONE_SOCIALE: TWideStringField
      FieldName = 'RAGIONE_SOCIALE'
      Size = 255
    end
    object qryStatiniINDIRIZZO: TWideStringField
      FieldName = 'INDIRIZZO'
      Size = 255
    end
    object qryStatiniCOMUNE: TWideStringField
      FieldName = 'COMUNE'
      Size = 255
    end
    object qryStatiniPROVINCIA: TWideStringField
      FieldName = 'PROVINCIA'
      FixedChar = True
      Size = 2
    end
    object qryStatiniCAP: TWideStringField
      FieldName = 'CAP'
      Size = 10
    end
    object qryStatiniTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 255
    end
    object qryStatiniCELLULARE: TWideStringField
      FieldName = 'CELLULARE'
      Size = 255
    end
    object qryStatiniNOTE: TBlobField
      FieldName = 'NOTE'
    end
    object qryStatiniORARIO_APERTURA_DAL1: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL1'
    end
    object qryStatiniORARIO_APERTURA_DAL2: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL2'
    end
    object qryStatiniORARIO_APERTURA_AL1: TTimeField
      FieldName = 'ORARIO_APERTURA_AL1'
    end
    object qryStatiniORARIO_APERTURA_AL2: TTimeField
      FieldName = 'ORARIO_APERTURA_AL2'
    end
    object qryStatiniCHIUSURA: TWideStringField
      FieldName = 'CHIUSURA'
      Size = 255
    end
    object qryStatiniFATTURA: TIntegerField
      FieldName = 'FATTURA'
    end
    object qryStatiniDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
    end
    object qryStatiniGENERAZIONE_AUTOMATICA: TIntegerField
      FieldName = 'GENERAZIONE_AUTOMATICA'
    end
    object qryStatiniTECNICO_INTERVENTO: TIntegerField
      FieldName = 'TECNICO_INTERVENTO'
    end
    object qryStatiniSCANSIONE: TBlobField
      FieldName = 'SCANSIONE'
    end
    object qryStatiniREGISTRO: TBlobField
      FieldName = 'REGISTRO'
    end
    object qryStatiniNOTE_PER_IL_TECNICO: TBlobField
      FieldName = 'NOTE_PER_IL_TECNICO'
    end
    object qryStatiniSOSPESO: TWideStringField
      FieldName = 'SOSPESO'
      FixedChar = True
      Size = 1
    end
    object qryStatiniDA_ESPORTARE_SUL_WEB: TWideStringField
      FieldName = 'DA_ESPORTARE_SUL_WEB'
      FixedChar = True
      Size = 1
    end
    object qryStatiniRESPONSABILE: TIntegerField
      FieldName = 'RESPONSABILE'
    end
    object qryStatiniESPORTATO_SU_MOBILE: TWideStringField
      FieldName = 'ESPORTATO_SU_MOBILE'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNOTE_DAL_TECNICO: TBlobField
      FieldName = 'NOTE_DAL_TECNICO'
    end
    object qryStatiniJSON_DA_MOBILE: TBlobField
      FieldName = 'JSON_DA_MOBILE'
    end
    object qryStatiniPDF_STATINO: TBlobField
      FieldName = 'PDF_STATINO'
    end
    object qryStatiniREGISTRO_IS_PDF: TWideStringField
      FieldName = 'REGISTRO_IS_PDF'
      FixedChar = True
      Size = 1
    end
    object qryStatiniVERBALE_PROVA_DINAMICA: TBlobField
      FieldName = 'VERBALE_PROVA_DINAMICA'
    end
    object qryStatiniVERBALE_MANICHETTE: TBlobField
      FieldName = 'VERBALE_MANICHETTE'
    end
    object qryStatiniPREVENTIVO: TIntegerField
      FieldName = 'PREVENTIVO'
    end
    object qryStatiniIGNORA_EVIDENZIAZIONE: TWideStringField
      FieldName = 'IGNORA_EVIDENZIAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryStatiniANNULLATO_DA_TABLET: TWideStringField
      FieldName = 'ANNULLATO_DA_TABLET'
      FixedChar = True
      Size = 1
    end
    object qryStatiniMOBILEWARN_NUOVA_ATTREZZATURA: TWideStringField
      FieldName = 'MOBILEWARN_NUOVA_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniMOBILEWARN_ORDINARIA_RITIRATA: TWideStringField
      FieldName = 'MOBILEWARN_ORDINARIA_RITIRATA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniMOBILEWARN_N_ORDIN_CONTROLLATA: TWideStringField
      FieldName = 'MOBILEWARN_N_ORDIN_CONTROLLATA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniMOBILEWARN_SMALTIMENTO: TWideStringField
      FieldName = 'MOBILEWARN_SMALTIMENTO'
      FixedChar = True
      Size = 1
    end
    object qryStatiniSTATO_LAVORAZIONE: TWideStringField
      FieldName = 'STATO_LAVORAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryStatiniDATA_CHIUSURA_DA_SERVER: TDateField
      FieldName = 'DATA_CHIUSURA_DA_SERVER'
    end
    object qryStatiniCHIUSURA_EXT: TWideStringField
      FieldName = 'CHIUSURA_EXT'
      Size = 50
    end
    object qryStatiniCHIUSURA_STATINO: TBlobField
      FieldName = 'CHIUSURA_STATINO'
    end
    object qryStatiniMOBILEWARN_NON_ESEGUITI: TWideStringField
      FieldName = 'MOBILEWARN_NON_ESEGUITI'
      FixedChar = True
      Size = 1
    end
    object qryStatiniPRESA_IN_CARICO: TWideStringField
      FieldName = 'PRESA_IN_CARICO'
      FixedChar = True
      Size = 1
    end
    object qryStatiniFORNITURA: TWideStringField
      FieldName = 'FORNITURA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniAPPUNTAMENTO_DATA: TDateField
      FieldName = 'APPUNTAMENTO_DATA'
    end
    object qryStatiniAPPUNTAMENTO_ORA: TTimeField
      FieldName = 'APPUNTAMENTO_ORA'
    end
    object qryStatiniSTATO: TSmallintField
      FieldName = 'STATO'
    end
    object qryStatiniJGUID: TBytesField
      FieldName = 'JGUID'
    end
    object qryStatiniGCAL: TWideStringField
      FieldName = 'GCAL'
      FixedChar = True
      Size = 1
    end
    object qryStatiniWANUMBER: TWideStringField
      FieldName = 'WANUMBER'
    end
    object qryStatiniWA: TWideStringField
      FieldName = 'WA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniSTATO_IMMAGINE: TBlobField
      FieldName = 'STATO_IMMAGINE'
    end
    object qryStatiniWA_ID: TWideStringField
      FieldName = 'WA_ID'
      Size = 128
    end
    object qryStatiniWA_IMAGE: TBlobField
      FieldName = 'WA_IMAGE'
    end
    object qryStatiniWA_STATE: TSmallintField
      FieldName = 'WA_STATE'
    end
  end
  object qryLkpMessageStatus: TUniQuery
    Connection = FbPhoenixConnection
    SQL.Strings = (
      'select wa_id, s.*, wa_state'
      
        'from whatsapp_messages w join WHATSAPP_STATES s on s.id = w.wa_s' +
        'tate  '
      'where wa_id = :wa_id and wa_id is not null'
      'order by wa_id')
    MasterSource = dsStatini
    MasterFields = 'WA_ID'
    DetailFields = 'WA_ID'
    Left = 552
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'wa_id'
        Value = nil
      end>
    object qryLkpMessageStatusWA_ID: TWideStringField
      FieldName = 'WA_ID'
      Size = 128
    end
    object qryLkpMessageStatusID: TSmallintField
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object qryLkpMessageStatusDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      ReadOnly = True
    end
    object qryLkpMessageStatusIMAGE: TBlobField
      FieldName = 'IMAGE'
      ReadOnly = True
    end
    object qryLkpMessageStatusWA_STATE: TSmallintField
      FieldName = 'WA_STATE'
    end
  end
  object dsStatini: TUniDataSource
    DataSet = qryStatini
    Left = 552
    Top = 168
  end
end
