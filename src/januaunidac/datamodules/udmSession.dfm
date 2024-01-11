object dmPgSession: TdmPgSession
  OldCreateOrder = False
  Height = 192
  Width = 264
  object spLogin: TUniStoredProc
    Connection = PgConnection1
    Left = 144
    Top = 64
  end
  object PgConnection1: TJanuaUniConnection
    Pooling = True
    Username = 'ergo'
    Password = '3rg0m3rc4t0r'
    Server = '151.1.24.135'
    LoginPrompt = False
    Database = 'ergomercator'
    Options.UseUnicode = True
    Options.EnablePgTimeStamps = True
    Schema = 'System'
    Left = 56
    Top = 32
  end
  object qryLogin: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO "System"."db_users"'
      
        '  (active, email, db_user_id, password, username, isactive, veri' +
        'fy_token, verified)'
      'VALUES'
      
        '  (:active, :email, :db_user_id, :password, :username, :isactive' +
        ', :verify_token, :verified)')
    SQLDelete.Strings = (
      'DELETE FROM "System"."db_users"'
      'WHERE'
      '  db_user_id = :Old_db_user_id')
    SQLUpdate.Strings = (
      'UPDATE "System"."db_users"'
      'SET'
      
        '  active = :active, email = :email, db_user_id = :db_user_id, pa' +
        'ssword = :password, username = :username, isactive = :isactive, ' +
        'verify_token = :verify_token, verified = :verified'
      'WHERE'
      '  db_user_id = :Old_db_user_id')
    SQLRefresh.Strings = (
      
        'SELECT active, email, db_user_id, password, username, isactive, ' +
        'verify_token, verified FROM "System"."db_users"'
      'WHERE'
      '  db_user_id = :db_user_id')
    SQLLock.Strings = (
      'SELECT * FROM "System"."db_users"'
      'WHERE'
      '  db_user_id = :Old_db_user_id'
      'FOR UPDATE NOWAIT')
    Connection = PgConnection1
    SQL.Strings = (
      'select * from "System"."db_users" where email = lower(:email)')
    Left = 56
    Top = 96
    ParamData = <
      item
        DataType = ftString
        Name = 'email'
        ParamType = ptInput
        Value = 'rickyarzu@gmail.com'
      end>
    object qryLoginactive: TBooleanField
      FieldName = 'active'
      Required = True
    end
    object qryLoginemail: TWideStringField
      FieldName = 'email'
      Required = True
      Size = 128
    end
    object qryLogindb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qryLoginpassword: TWideStringField
      FieldName = 'password'
      Required = True
      Size = 128
    end
    object qryLoginusername: TWideStringField
      FieldName = 'username'
      Required = True
      Size = 30
    end
    object qryLoginisactive: TBooleanField
      FieldName = 'isactive'
      Required = True
    end
    object qryLoginverify_token: TWideStringField
      FieldName = 'verify_token'
      Required = True
      Size = 256
    end
    object qryLoginverified: TBooleanField
      FieldName = 'verified'
      Required = True
    end
  end
end
