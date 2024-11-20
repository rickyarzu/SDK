inherited dmPgStorage1: TdmPgStorage1
  Height = 281
  Width = 429
  inherited PgErgoConnection: TJanuaUniConnection
    Port = 5432
    Server = 'pg.januaservers.com'
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object FbPhoenixConnection: TUniConnection
    ProviderName = 'interBase'
    Database = 'C:\PhoenixDB\PHOENIX.FDB'
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
      'SELECT * FROM cloud.twilio_log'
      'ORDER BY id ASC ')
    Left = 72
    Top = 160
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
