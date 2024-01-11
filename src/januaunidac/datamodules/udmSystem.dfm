object dmSystem: TdmSystem
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 349
  Width = 453
  object PgConnection1: TJanuaUniConnection
    Pooling = True
    Username = 'ergo'
    Server = 'localhost'
    LoginPrompt = False
    Database = 'januaproject'
    Options.DisconnectedMode = True
    Options.UseUnicode = True
    Schema = 'system'
    Left = 64
    Top = 24
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object spCreatePersonalSchema: TUniStoredProc
    StoredProcName = 'system.createpersonalschema'
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT system.createpersonalschema(:p_session_key)')
    Left = 152
    Top = 272
    ParamData = <
      item
        DataType = ftWideString
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_session_key'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'system.createpersonalschema:0'
  end
  object dspUserSessions: TDataSetProvider
    DataSet = qryUserSession
    ResolveToDataSet = True
    Options = [poReadOnly, poUseQuoteChar]
    Left = 152
    Top = 216
  end
  object spUserTest: TUniStoredProc
    StoredProcName = 'system.usertest'
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT system.usertest(:p_username, :p_email)')
    Left = 152
    Top = 160
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
    CommandStoredProcName = 'system.usertest:0'
  end
  object spUserAdd: TUniStoredProc
    StoredProcName = 'system.useradd'
    Connection = PgConnection1
    SQL.Strings = (
      
        'SELECT system.useradd(:p_email, :p_username, :p_password, :p_cou' +
        'ntry_id, :p_ispublic)')
    Left = 152
    Top = 104
    ParamData = <
      item
        DataType = ftWideString
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
        DataType = ftInteger
        Name = 'p_country_id'
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
  object spLogin: TUniStoredProc
    StoredProcName = 'system.userlogin'
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT system.userlogin(:p_username, :p_password, :p_email)')
    Left = 152
    Top = 48
    ParamData = <
      item
        DataType = ftWideString
        Name = 'result'
        ParamType = ptResult
        Value = 'bce123218abbebdc46dacbc84d314caa'
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
  object qryUserSession: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM system.db_users'
      'WHERE'
      '  db_user_id = $1')
    SQLUpdate.Strings = (
      'UPDATE system.db_users'
      'SET'
      
        '  active = $1, email = $2, db_user_id = $3, password = $4, usern' +
        'ame = $5, isactive = $6, verify_token = $7, verified = $8, defau' +
        'lt_schema_id = $9, ispublic = $10, internal_key = $11'
      'WHERE'
      '  db_user_id = $12')
    SQLRefresh.Strings = (
      
        'SELECT active, email, db_user_id, password, username, isactive, ' +
        'verify_token, verified, default_schema_id, ispublic, internal_ke' +
        'y FROM system.db_users'
      'WHERE'
      '  db_user_id = $1')
    SQLLock.Strings = (
      'SELECT * FROM system.db_users'
      'WHERE'
      '  db_user_id = $1'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.db_users'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT s.db_session_key, s.db_schema_id, s.db_session_id,  u.*'
      '  FROM system.db_user_sessions s, system.db_users u'
      'WHERE '
      '   db_session_key = :db_session_key'
      '   and '
      '   u.db_user_id = s.db_user_id')
    AfterOpen = qryUserSessionAfterOpen
    Left = 248
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'db_session_key'
        ParamType = ptInput
        Value = nil
      end>
    object qryUserSessiondb_session_key: TWideStringField
      FieldName = 'db_session_key'
      Required = True
      Size = 256
    end
    object qryUserSessiondb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
    object qryUserSessiondb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryUserSessionactive: TBooleanField
      FieldName = 'active'
      ReadOnly = True
      Required = True
    end
    object qryUserSessionemail: TWideStringField
      FieldName = 'email'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object qryUserSessionpassword: TWideStringField
      FieldName = 'password'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object qryUserSessionusername: TWideStringField
      FieldName = 'username'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qryUserSessionisactive: TBooleanField
      FieldName = 'isactive'
      ReadOnly = True
      Required = True
    end
    object qryUserSessionverify_token: TWideStringField
      FieldName = 'verify_token'
      ReadOnly = True
      Required = True
      Size = 256
    end
    object qryUserSessionverified: TBooleanField
      FieldName = 'verified'
      ReadOnly = True
      Required = True
    end
    object qryUserSessiondefault_schema_id: TIntegerField
      FieldName = 'default_schema_id'
      ReadOnly = True
    end
    object qryUserSessionispublic: TBooleanField
      FieldName = 'ispublic'
      ReadOnly = True
    end
    object qryUserSessioninternal_key: TWideStringField
      FieldName = 'internal_key'
      ReadOnly = True
      Size = 30
    end
    object qryUserSessiondb_session_id: TLargeintField
      FieldName = 'db_session_id'
      Required = True
    end
  end
  object dsUserSession: TDataSource
    DataSet = qryUserSession
    Left = 248
    Top = 128
  end
  object tbUserSessionRoles: TUniTable
    TableName = 'system.db_users_schemas_roles'
    MasterFields = 'db_schema_id;db_user_id'
    DetailFields = 'db_schema_id;db_user_id'
    MasterSource = dsUserSession
    Connection = PgConnection1
    Left = 248
    Top = 184
    object tbUserSessionRolesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object tbUserSessionRolesrole_id: TSmallintField
      FieldName = 'role_id'
      Required = True
    end
    object tbUserSessionRolesdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
  end
  object qryUserProfile: TUniQuery
    DataTypeMap = <
      item
        DBType = 509
        FieldType = ftDate
      end>
    SQLInsert.Strings = (
      'INSERT INTO system.db_users_profiles'
      
        '  (db_user_id, country_id, region_id, district_id, town_id, firs' +
        't_name, last_name, address_street, address_number, address_posta' +
        'l_code, phone, cellular_phone, work_phone, fax_number, gender_co' +
        'de)'
      'VALUES'
      
        '  ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, ' +
        '$15)')
    SQLDelete.Strings = (
      'DELETE FROM system.db_users_profiles'
      'WHERE'
      '  db_user_id = $1')
    SQLUpdate.Strings = (
      'UPDATE system.db_users_profiles'
      'SET'
      
        '  db_user_id = $1, country_id = $2, region_id = $3, district_id ' +
        '= $4, town_id = $5, first_name = $6, last_name = $7, address_str' +
        'eet = $8, address_number = $9, address_postal_code = $10, phone ' +
        '= $11, cellular_phone = $12, work_phone = $13, fax_number = $14,' +
        ' gender_code = $15'
      'WHERE'
      '  db_user_id = $16')
    SQLRefresh.Strings = (
      
        'SELECT db_user_id, country_id, region_id, district_id, town_id, ' +
        'first_name, last_name, address_street, address_number, address_p' +
        'ostal_code, phone, cellular_phone, work_phone, fax_number, gende' +
        'r_code FROM system.db_users_profiles'
      'WHERE'
      '  db_user_id = $1')
    SQLLock.Strings = (
      'SELECT * FROM system.db_users_profiles'
      'WHERE'
      '  db_user_id = $1'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.db_users_profiles'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT s.*'
      '  FROM system.db_users_profiles s'
      '  where s.db_user_id = :db_user_id')
    MasterFields = 'db_user_id'
    DetailFields = 'db_user_id'
    MasterSource = dsUserSession
    Left = 336
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_user_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryUserProfiledb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qryUserProfilecountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object qryUserProfileregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object qryUserProfiledistrict_id: TSmallintField
      FieldName = 'district_id'
    end
    object qryUserProfiletown_id: TIntegerField
      FieldName = 'town_id'
    end
    object qryUserProfilefirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qryUserProfilelast_name: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object qryUserProfileaddress_street: TWideStringField
      FieldName = 'address_street'
      Size = 128
    end
    object qryUserProfileaddress_number: TWideStringField
      FieldName = 'address_number'
      Size = 12
    end
    object qryUserProfileaddress_postal_code: TWideStringField
      FieldName = 'address_postal_code'
    end
    object qryUserProfilephone: TWideStringField
      FieldName = 'phone'
    end
    object qryUserProfilecellular_phone: TWideStringField
      FieldName = 'cellular_phone'
    end
    object qryUserProfilework_phone: TWideStringField
      FieldName = 'work_phone'
    end
    object qryUserProfilefax_number: TWideStringField
      FieldName = 'fax_number'
    end
    object qryUserProfilegender_code: TWideStringField
      FieldName = 'gender_code'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryUserProfilebirth_date: TDateField
      FieldName = 'birth_date'
    end
    object qryUserProfilebirth_country_id: TSmallintField
      FieldName = 'birth_country_id'
    end
    object qryUserProfilebirth_region_id: TSmallintField
      FieldName = 'birth_region_id'
    end
    object qryUserProfilebirth_district_id: TSmallintField
      FieldName = 'birth_district_id'
    end
    object qryUserProfilebirth_town_id: TIntegerField
      FieldName = 'birth_town_id'
    end
  end
  object qrySearchUserProfile: TUniQuery
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT u.username, s.* '
      '  FROM system.db_users_profiles s, system.db_users u'
      '  where '
      '  ('
      '      (s.db_user_id = :db_user_id)'
      '      or'
      '      (u.verify_token = :db_user_key)'
      '  )'
      '  and s.db_user_id = u.db_user_id')
    MasterSource = dsUserSession
    Left = 336
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'db_user_key'
        Value = nil
      end>
    object qrySearchUserProfileusername: TWideStringField
      FieldName = 'username'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrySearchUserProfiledb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qrySearchUserProfilecountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object qrySearchUserProfileregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object qrySearchUserProfiledistrict_id: TSmallintField
      FieldName = 'district_id'
    end
    object qrySearchUserProfiletown_id: TIntegerField
      FieldName = 'town_id'
    end
    object qrySearchUserProfilefirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qrySearchUserProfilelast_name: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object qrySearchUserProfileaddress_street: TWideStringField
      FieldName = 'address_street'
      Size = 128
    end
    object qrySearchUserProfileaddress_number: TWideStringField
      FieldName = 'address_number'
      Size = 12
    end
    object qrySearchUserProfileaddress_postal_code: TWideStringField
      FieldName = 'address_postal_code'
    end
    object qrySearchUserProfilephone: TWideStringField
      FieldName = 'phone'
    end
    object qrySearchUserProfilecellular_phone: TWideStringField
      FieldName = 'cellular_phone'
    end
    object qrySearchUserProfilework_phone: TWideStringField
      FieldName = 'work_phone'
    end
    object qrySearchUserProfilefax_number: TWideStringField
      FieldName = 'fax_number'
    end
    object qrySearchUserProfilegender_code: TWideStringField
      FieldName = 'gender_code'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qrySearchUserProfilebirth_date: TDateField
      FieldName = 'birth_date'
    end
    object qrySearchUserProfilebirth_country_id: TSmallintField
      FieldName = 'birth_country_id'
    end
    object qrySearchUserProfilebirth_region_id: TSmallintField
      FieldName = 'birth_region_id'
    end
    object qrySearchUserProfilebirth_district_id: TSmallintField
      FieldName = 'birth_district_id'
    end
    object qrySearchUserProfilebirth_town_id: TIntegerField
      FieldName = 'birth_town_id'
    end
    object qrySearchUserProfilepublic_email: TWideStringField
      FieldName = 'public_email'
      Size = 256
    end
  end
  object qrySearchUsers: TUniQuery
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT  s.* '
      '  FROM system.db_users_profiles s'
      '  where '
      '  ( s.first_name || s.last_name like :p_search )')
    MasterFields = 'db_user_id'
    DetailFields = 'db_user_id'
    MasterSource = dsUserSession
    Left = 336
    Top = 160
    ParamData = <
      item
        DataType = ftWideString
        Name = 'p_search'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'db_user_id'
        ParamType = ptInput
        Value = nil
      end>
    object qrySearchUsersdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qrySearchUserscountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object qrySearchUsersregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object qrySearchUsersdistrict_id: TSmallintField
      FieldName = 'district_id'
    end
    object qrySearchUserstown_id: TIntegerField
      FieldName = 'town_id'
    end
    object qrySearchUsersfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qrySearchUserslast_name: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object qrySearchUsersaddress_street: TWideStringField
      FieldName = 'address_street'
      Size = 128
    end
    object qrySearchUsersaddress_number: TWideStringField
      FieldName = 'address_number'
      Size = 12
    end
    object qrySearchUsersaddress_postal_code: TWideStringField
      FieldName = 'address_postal_code'
    end
    object qrySearchUsersphone: TWideStringField
      FieldName = 'phone'
    end
    object qrySearchUserscellular_phone: TWideStringField
      FieldName = 'cellular_phone'
    end
    object qrySearchUserswork_phone: TWideStringField
      FieldName = 'work_phone'
    end
    object qrySearchUsersfax_number: TWideStringField
      FieldName = 'fax_number'
    end
    object qrySearchUsersgender_code: TWideStringField
      FieldName = 'gender_code'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qrySearchUsersbirth_date: TDateField
      FieldName = 'birth_date'
    end
    object qrySearchUsersbirth_country_id: TSmallintField
      FieldName = 'birth_country_id'
    end
    object qrySearchUsersbirth_region_id: TSmallintField
      FieldName = 'birth_region_id'
    end
    object qrySearchUsersbirth_district_id: TSmallintField
      FieldName = 'birth_district_id'
    end
    object qrySearchUsersbirth_town_id: TIntegerField
      FieldName = 'birth_town_id'
    end
    object qrySearchUserspublic_email: TWideStringField
      FieldName = 'public_email'
      Size = 256
    end
  end
end
