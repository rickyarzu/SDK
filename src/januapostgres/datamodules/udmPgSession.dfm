object dmPgSession: TdmPgSession
  OldCreateOrder = False
  Height = 330
  Width = 569
  object spLogin: TPgStoredProc
    StoredProcName = 'system.userlogin'
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT system.userlogin(:p_username, :p_password, :p_email)')
    Left = 136
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'result'
        ParamType = ptResult
        Value = 8
      end
      item
        DataType = ftWideString
        Name = 'p_username'
        ParamType = ptInput
        Value = 'rickyarzu'
      end
      item
        DataType = ftWideString
        Name = 'p_password'
        ParamType = ptInput
        Value = 'J4nu4pr0j3ct.'
      end
      item
        DataType = ftWideString
        Name = 'p_email'
        ParamType = ptInput
        Value = 'rickyarzu@gmail.com'
      end>
    CommandStoredProcName = 'system.userlogin:0'
  end
  object PgConnection1: TPgConnection
    PoolingOptions.Validate = True
    Pooling = True
    Username = 'ergo'
    Password = '3rg0m3rc4t0r'
    Server = 'host1.januaservers.com'
    LoginPrompt = False
    Database = 'ergomercator'
    Options.UseUnicode = True
    Options.EnablePgTimeStamps = True
    Options.EnableGeometrics = False
    Schema = 'system'
    Connected = True
    Left = 56
    Top = 32
  end
  object qryLogin: TPgQuery
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
      'select * '
      '  from system.db_users'
      'where '
      '   email = lower(:email) '
      '   or '
      '   username = lower(:username)')
    Left = 56
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'email'
        ParamType = ptInput
        Value = 'rickyarzu@gmail.com'
      end
      item
        DataType = ftString
        Name = 'username'
        ParamType = ptInput
        Value = nil
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
  object dsLogin: TPgDataSource
    DataSet = qryLogin
    Left = 56
    Top = 144
  end
  object tbUserSchemas: TPgTable
    TableName = 'db_users_schemas'
    OrderFields = 'db_schema_id'
    MasterFields = 'db_user_id'
    DetailFields = 'db_user_id'
    MasterSource = dsLogin
    Connection = PgConnection1
    Left = 56
    Top = 200
    object tbUserSchemasdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object tbUserSchemasdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object tbUserSchemasisadmin: TBooleanField
      FieldName = 'isadmin'
      Required = True
    end
    object tbUserSchemasisdefault: TBooleanField
      FieldName = 'isdefault'
      Required = True
    end
    object tbUserSchemasisowner: TBooleanField
      FieldName = 'isowner'
      Required = True
    end
    object tbUserSchemasreadwrite: TBooleanField
      FieldName = 'readwrite'
      Required = True
    end
  end
  object tbIsoCountries: TPgTable
    TableName = 'iso_countries'
    OrderFields = 'country_name'
    Connection = PgConnection1
    Left = 136
    Top = 112
    object tbIsoCountriesiso_country_code: TWideStringField
      FieldName = 'iso_country_code'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbIsoCountriesiso_country_code2: TWideStringField
      FieldName = 'iso_country_code2'
      Required = True
      FixedChar = True
      Size = 2
    end
    object tbIsoCountriescountry_year: TSmallintField
      FieldName = 'country_year'
      Required = True
    end
    object tbIsoCountriescountry_name: TWideStringField
      FieldName = 'country_name'
      Required = True
      Size = 128
    end
    object tbIsoCountriesiso_currency_id: TSmallintField
      FieldName = 'iso_currency_id'
      Required = True
    end
  end
  object JanuaOS1: TJanuaOS
    Left = 232
    Top = 72
  end
  object pgRegisterUser: TPgStoredProc
    StoredProcName = 'system.useradd'
    Connection = PgConnection1
    SQL.Strings = (
      
        'SELECT system.useradd(:p_email, :p_username, :p_password, :p_cou' +
        'ntry, :p_ispublic)')
    Left = 136
    Top = 224
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_email'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_username'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_password'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_country'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'p_ispublic'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'system.useradd:0'
  end
  object JanuaPgSession1: TJanuaPgSession
    Connected = False
    UserID = 0
    username = 'rickyarzu'
    password = 'J4nu4pr0j3ct.'
    UserEmail = 'rickyarzu@gmail.com'
    ConnectionError = False
    JanuaSystem = JanuaOS1
    IsRemote = True
    isPublic = True
    Logger = JanuaLogger1
    ActiveLog = False
    UserExists = False
    MailExists = False
    PgConnection = PgConnection1
    spLogin = spLogin
    spVerifyUser = spUserTest
    spRegisterUser = pgRegisterUser
    Left = 136
    Top = 168
  end
  object JanuaLogger1: TJanuaLogger
    Component = Owner
    LogType = jltError
    FileName = 'JanuaError.log'
    FileDir = 'c:\januaproject\log'
    AutoFileName = True
    RootDirectory = 'c:\januaproject'
    IsCustomServer = False
    Left = 232
    Top = 136
  end
  object JanuaMailSender1: TJanuaMailSender
    sTo = 'rickyarzu@gmail.com'
    sText = 'Test Email'
    sFromAddr = 'info@januaproject.it'
    sError = 
      '<Januaproject Test Mail>: "@" or "." expected after "Januaprojec' +
      't"'#13#10
    Sent = False
    TraceOn = False
    TestingFileName = 'MailAndFax'
    MailPassword = 'f4nkul0'
    MailUsername = 'riccardo.arduino@januaproject.it'
    MailServer = 'mail.januaproject.it'
    MailEncoding = jmeHTML
    Logger = JanuaLogger1
    VerifiedServer = False
    Left = 232
    Top = 248
  end
  object spUserTest: TPgStoredProc
    StoredProcName = 'usertest'
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT usertest(:p_username, :p_email)')
    Left = 56
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_username'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_email'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'usertest:0'
  end
  object AdvGDrive1: TAdvGDrive
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.Key = 
      '519565690701-jcnvunitsrgnf788bidnc4j9t9pfp3co.apps.googleusercon' +
      'tent.com'
    App.Secret = '6k80rtYHL2tEr6p78mb8qsg6'
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    PersistTokens.Location = plIniFile
    Logging = False
    Scopes.Strings = (
      'https://www.googleapis.com/auth/drive'
      'https://www.googleapis.com/auth/drive.file')
    Left = 232
    Top = 192
  end
end
