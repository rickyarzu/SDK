object WebModule1: TWebModule1
  OnCreate = WebModuleCreate
  Actions = <
    item
      Default = True
      MethodType = mtGet
      Name = 'DefaultHandler'
      PathInfo = '/'
      OnAction = WebModule1DefaultHandlerAction
    end
    item
      MethodType = mtPost
      Name = 'WactWebhook'
      PathInfo = '/webhook'
      OnAction = WebModule1WactWebhookAction
    end
    item
      MethodType = mtPost
      Name = 'WactFallback'
      PathInfo = '/fallback'
      OnAction = WebModule1WactFallbackAction
    end
    item
      MethodType = mtPost
      Name = 'WactStatusCallback'
      PathInfo = '/status_callback'
      OnAction = WebModule1WactStatusCallbackAction
    end>
  Height = 337
  Width = 444
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 264
    Top = 80
  end
  object JanuaUniConnection1: TJanuaUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'ergomercator'
    Options.DisconnectedMode = True
    Options.LocalFailover = True
    Pooling = True
    Username = 'ergo'
    Server = 'pg.januaservers.com'
    LoginPrompt = False
    SchemaID = 36
    SchemaParamKey = 'system.db_schema_id'
    SchemaSQL = 'SET SESSION "%s" = %s; '
    SchemaParams = <>
    Left = 104
    Top = 48
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
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
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT * FROM cloud.twilio_log'
      'ORDER BY id ASC ')
    Left = 136
    Top = 144
    object qryTwilioLogid: TIntegerField
      FieldName = 'id'
    end
    object qryTwilioLogdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryTwilioLogjguid: TGuidField
      FieldName = 'jguid'
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
    object qryTwilioLoguser_insert: TStringField
      FieldName = 'user_insert'
      Size = 128
    end
    object qryTwilioLoguser_update: TStringField
      FieldName = 'user_update'
      Size = 128
    end
    object qryTwilioLogjson_content: TMemoField
      FieldName = 'json_content'
      BlobType = ftMemo
    end
    object qryTwilioLogbody_received: TMemoField
      FieldName = 'body_received'
      BlobType = ftMemo
    end
    object qryTwilioLogaction: TStringField
      FieldName = 'action'
      Size = 128
    end
  end
end
