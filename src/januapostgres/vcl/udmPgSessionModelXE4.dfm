object dmPgSessionModelXE4: TdmPgSessionModelXE4
  OldCreateOrder = False
  Height = 567
  Width = 907
  object tbIsoCountries: TPgTable
    TableName = 'iso_countries'
    OrderFields = 'country_name'
    Connection = PgConnection1
    Left = 216
    Top = 80
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
        Value = 7
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
      '  from "System"."db_users" '
      'where '
      '   email = lower(:email) '
      '   or '
      '   username = lower(:username)')
    Left = 216
    Top = 152
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
    Left = 216
    Top = 216
  end
  object tbUserSchemas: TPgTable
    TableName = 'db_users_schemas'
    OrderFields = 'db_schema_id'
    MasterFields = 'db_user_id'
    DetailFields = 'db_user_id'
    MasterSource = dsLogin
    Connection = PgConnection1
    Left = 136
    Top = 120
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
  object PgConnection1: TPgConnection
    Pooling = True
    Username = 'ergo'
    Password = '3rg0m3rc4t0r'
    Server = 'host1.januaservers.com'
    LoginPrompt = False
    Database = 'ergomercator'
    Options.UseUnicode = True
    Options.EnablePgTimeStamps = True
    Schema = 'System'
    Connected = False
    Left = 56
    Top = 32
  end
  object JanuaUser1: TJanuaUser
    Left = 56
    Top = 152
  end
  object JanuaOS1: TJanuaOS
    Left = 56
    Top = 216
  end
  object JanuaLogger1: TJanuaLogger
    Component = Owner
    LogType = jltError
    FileName = 'JanuaError.log'
    FileDir = 'C:\Users\Administrator\Documents\januaproject\log'
    AutoFileName = False
    RootDirectory = 'C:\Users\Administrator\Documentsjanuaproject'
    JanuaOS = JanuaOS1
    IsCustomServer = False
    Left = 56
    Top = 280
  end
  object tbFileDirList: TPgTable
    TableName = 'cloud.filedirlist'
    Connection = PgConnection1
    Left = 136
    Top = 176
    object tbFileDirListdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object tbFileDirListdb_owner_id: TIntegerField
      FieldName = 'db_owner_id'
    end
    object tbFileDirListid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object tbFileDirListlocal_id: TIntegerField
      FieldName = 'local_id'
    end
    object tbFileDirListparent_id: TLargeintField
      FieldName = 'parent_id'
    end
    object tbFileDirListdir: TBooleanField
      FieldName = 'dir'
    end
    object tbFileDirListtreeorder: TWideStringField
      FieldName = 'treeorder'
      Size = 1024
    end
    object tbFileDirListname: TWideStringField
      FieldName = 'name'
      Size = 512
    end
    object tbFileDirListlocal_location: TWideStringField
      FieldName = 'local_location'
      Size = 2048
    end
    object tbFileDirListdescription: TWideStringField
      FieldName = 'description'
      Size = 2048
    end
    object tbFileDirListfiledatetime: TPgDateField
      FieldName = 'filedatetime'
    end
    object tbFileDirListfileattr: TIntegerField
      FieldName = 'fileattr'
    end
    object tbFileDirListextension: TWideStringField
      FieldName = 'extension'
      Size = 128
    end
    object tbFileDirListnamenoextension: TWideStringField
      FieldName = 'namenoextension'
      Size = 512
    end
  end
  object spInsertFile: TPgStoredProc
    StoredProcName = 'cloud.addfiledir'
    Connection = PgConnection1
    SQL.Strings = (
      
        'SELECT cloud.addfiledir(:p_id, :p_parent_id, :p_dir, :p_treeorde' +
        'r, :p_namenoext, :p_location, :p_description, :p_datetime, :p_at' +
        'tr, :p_extension, :p_name, :p_schema_id, :p_user_id)')
    Left = 136
    Top = 240
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_parent_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'p_dir'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_treeorder'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_namenoext'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_location'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_description'
        ParamType = ptInput
        Value = nil
      end
      item
        Name = 'p_datetime'
        ParamType = ptInput
        Value = '01/01/2000'
        ExtDataType = 101
      end
      item
        DataType = ftInteger
        Name = 'p_attr'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_extension'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_name'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_schema_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'cloud.addfiledir:0'
  end
  object JanuaPgSession1: TJanuaPgSession
    Connected = False
    UserID = 0
    username = 'rickyarzu'
    password = 'J4nu4pr0j3ct.'
    UserEmail = 'rickyarzu@gmail.com'
    ConnectionError = False
    User = JanuaUser1
    IsRemote = False
    isPublic = False
    Logger = JanuaLogger1
    ActiveLog = False
    email = 'rickyarzu@gmail.com'
    PgConnection = PgConnection1
    spLogin = spLogin
    Left = 56
    Top = 96
  end
  object JanuaMailSender1: TJanuaMailSender
    sTo = 'rickyarzu@gmail.com'
    sText = 'Test Email'
    sFromAddr = 'Januaproject Test Mail'
    sError = 'Incorrect authentication data'#13#10
    Sent = False
    TraceOn = True
    TestingFileName = 'MailAndFax'
    MailPassword = 'f4nkul0'
    MailUsername = 'info@januaproject.it'
    MailServer = 'mail.januaproject.it'
    MailEncoding = jmeHTML
    Logger = JanuaLogger1
    VerifiedServer = True
    Left = 216
    Top = 272
  end
end
