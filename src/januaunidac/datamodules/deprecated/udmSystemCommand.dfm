object dmSystemCommand: TdmSystemCommand
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 392
  Width = 477
  object PgConnection1: TJanuaUniConnection
    Pooling = True
    Username = 'postgres'
    Server = '151.1.24.135'
    LoginPrompt = False
    BeforeConnect = PgConnection1BeforeConnect
    Database = 'ergomercator'
    Options.EnableBCD = True
    Options.EnableFMTBCD = True
    Options.DisconnectedMode = True
    Options.UseUnicode = True
    Options.EnablePgTimeStamps = True
    Schema = 'system'
    Left = 64
    Top = 24
    EncryptedPassword = '99FFCBFF91FF94FF8AFF93FFCFFF'
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
        Value = '3aab69efb7ca1e3660c5ae3e147b91ab'
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
    SQLInsert.Strings = (
      'INSERT INTO system.db_user_sessions'
      '  (db_schema_id, db_session_key, db_session_id)'
      'VALUES'
      '  (:db_schema_id, :db_session_key, :db_session_id)')
    SQLDelete.Strings = (
      'DELETE FROM system.db_user_sessions'
      'WHERE'
      '  db_session_id = :Old_db_session_id')
    SQLUpdate.Strings = (
      'UPDATE system.db_user_sessions'
      'SET'
      
        '  db_schema_id = :db_schema_id, db_session_key = :db_session_key' +
        ', db_session_id = :db_session_id'
      'WHERE'
      '  db_session_id = :Old_db_session_id')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, db_session_key, db_session_id FROM system.d' +
        'b_user_sessions'
      'WHERE'
      '  db_session_id = :db_session_id')
    SQLLock.Strings = (
      'SELECT * FROM system.db_user_sessions'
      'WHERE'
      '  db_session_id = :Old_db_session_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.db_user_sessions'
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
    object qryUserSessionsearch_name: TWideStringField
      FieldName = 'search_name'
      ReadOnly = True
      Size = 128
    end
    object qryUserSessiondefault_role_id: TSmallintField
      FieldName = 'default_role_id'
      ReadOnly = True
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
    SQLInsert.Strings = (
      'INSERT INTO system.db_users_profiles'
      
        '  (db_user_id, country_id, region_id, district_id, town_id, firs' +
        't_name, last_name, address_street, address_number, address_posta' +
        'l_code, phone, cellular_phone, work_phone, fax_number, gender_co' +
        'de, birth_date, birth_country_id, birth_region_id, birth_distric' +
        't_id, birth_town_id, public_email, title)'
      'VALUES'
      
        '  (:db_user_id, :country_id, :region_id, :district_id, :town_id,' +
        ' :first_name, :last_name, :address_street, :address_number, :add' +
        'ress_postal_code, :phone, :cellular_phone, :work_phone, :fax_num' +
        'ber, :gender_code, :birth_date, :birth_country_id, :birth_region' +
        '_id, :birth_district_id, :birth_town_id, :public_email, :title)')
    SQLDelete.Strings = (
      'DELETE FROM system.db_users_profiles'
      'WHERE'
      '  db_user_id = :Old_db_user_id')
    SQLUpdate.Strings = (
      'UPDATE system.db_users_profiles'
      'SET'
      
        '  db_user_id = :db_user_id, country_id = :country_id, region_id ' +
        '= :region_id, '
      
        '  district_id = :district_id, town_id = :town_id, first_name = :' +
        'first_name, '
      
        '  last_name = :last_name, address_street = :address_street, addr' +
        'ess_number = :address_number, '
      
        '  address_postal_code = :address_postal_code, phone = :phone, ce' +
        'llular_phone = :cellular_phone, '
      
        '  work_phone = :work_phone, fax_number = :fax_number, gender_cod' +
        'e = :gender_code, birth_date = :birth_date, '
      
        '  birth_country_id = :birth_country_id, birth_region_id = :birth' +
        '_region_id, '
      
        '  birth_district_id = :birth_district_id, birth_town_id = :birth' +
        '_town_id, public_email = :public_email, '
      '  title = :title'
      'WHERE'
      '  db_user_id = :Old_db_user_id')
    SQLRefresh.Strings = (
      
        'SELECT db_user_id, country_id, region_id, district_id, town_id, ' +
        'first_name, last_name, address_street, address_number, address_p' +
        'ostal_code, phone, cellular_phone, work_phone, fax_number, gende' +
        'r_code, birth_date, birth_country_id, birth_region_id, birth_dis' +
        'trict_id, birth_town_id, public_email, title FROM system.db_user' +
        's_profiles'
      'WHERE'
      '  db_user_id = :db_user_id')
    SQLLock.Strings = (
      'SELECT * FROM system.db_users_profiles'
      'WHERE'
      '  db_user_id = :Old_db_user_id'
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
      '  where '
      '    (s.db_user_id = :db_user_id or :db_user_id = 0)')
    MasterFields = 'db_user_id'
    DetailFields = 'db_user_id'
    MasterSource = dsUserSession
    OnNewRecord = qryUserProfileNewRecord
    Left = 248
    Top = 240
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
    object qryUserProfiletitle: TWideStringField
      FieldName = 'title'
      Size = 30
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
    object qryUserProfilebirth_date: TUniDateField
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
    object qryUserProfilepublic_email: TWideStringField
      FieldName = 'public_email'
      Size = 256
    end
    object qryUserProfilesearch_name: TWideStringField
      FieldName = 'search_name'
      Size = 128
    end
    object qryUserProfilereverse_search: TWideStringField
      FieldName = 'reverse_search'
      Size = 128
    end
  end
  object qrySearchUserProfile: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO system.db_users_profiles'
      
        '  (db_user_id, country_id, region_id, district_id, town_id, firs' +
        't_name, last_name, address_street, address_number, address_posta' +
        'l_code, phone, cellular_phone, work_phone, fax_number, gender_co' +
        'de, birth_date, birth_country_id, birth_region_id, birth_distric' +
        't_id, birth_town_id, public_email)'
      'VALUES'
      
        '  (:db_user_id, :country_id, :region_id, :district_id, :town_id,' +
        ' :first_name, :last_name, :address_street, :address_number, :add' +
        'ress_postal_code, :phone, :cellular_phone, :work_phone, :fax_num' +
        'ber, :gender_code, :birth_date, :birth_country_id, :birth_region' +
        '_id, :birth_district_id, :birth_town_id, :public_email)')
    SQLDelete.Strings = (
      'DELETE FROM system.db_users_profiles'
      'WHERE'
      '  db_user_id = :Old_db_user_id')
    SQLUpdate.Strings = (
      'UPDATE system.db_users_profiles'
      'SET'
      
        '  db_user_id = :db_user_id, country_id = :country_id, region_id ' +
        '= :region_id, district_id = :district_id, town_id = :town_id, fi' +
        'rst_name = :first_name, last_name = :last_name, address_street =' +
        ' :address_street, address_number = :address_number, address_post' +
        'al_code = :address_postal_code, phone = :phone, cellular_phone =' +
        ' :cellular_phone, work_phone = :work_phone, fax_number = :fax_nu' +
        'mber, gender_code = :gender_code, birth_date = :birth_date, birt' +
        'h_country_id = :birth_country_id, birth_region_id = :birth_regio' +
        'n_id, birth_district_id = :birth_district_id, birth_town_id = :b' +
        'irth_town_id, public_email = :public_email'
      'WHERE'
      '  db_user_id = :Old_db_user_id')
    SQLRefresh.Strings = (
      
        'SELECT db_user_id, country_id, region_id, district_id, town_id, ' +
        'first_name, last_name, address_street, address_number, address_p' +
        'ostal_code, phone, cellular_phone, work_phone, fax_number, gende' +
        'r_code, birth_date, birth_country_id, birth_region_id, birth_dis' +
        'trict_id, birth_town_id, public_email FROM system.db_users_profi' +
        'les'
      'WHERE'
      '  db_user_id = :db_user_id')
    SQLLock.Strings = (
      'SELECT * FROM system.db_users_profiles'
      'WHERE'
      '  db_user_id = :Old_db_user_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.db_users_profiles'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT  s.* '
      '  FROM system.db_users_profiles s, system.db_users u'
      '  where '
      '      (u.verify_token = :db_user_key '
      '      or'
      '      s.db_user_id = :db_user_id)'
      ''
      '  and s.db_user_id = u.db_user_id')
    Left = 336
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'db_user_key'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'db_user_id'
        ParamType = ptInput
        Value = nil
      end>
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
    object qrySearchUserProfilebirth_date: TUniDateField
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
    object qrySearchUserProfilesearch_name: TWideStringField
      FieldName = 'search_name'
      Size = 128
    end
    object qrySearchUserProfilereverse_search: TWideStringField
      FieldName = 'reverse_search'
      Size = 128
    end
    object qrySearchUserProfiletitle: TWideStringField
      FieldName = 'title'
      Size = 30
    end
  end
  object qrySearchUsers: TUniQuery
    DataTypeMap.IgnoreInvalidRules = False
    DataTypeMap = <
      item
        FieldName = 'full_name'
        FieldType = ftWideString
        FieldLength = 256
        IgnoreErrors = True
      end>
    Connection = PgConnection1
    SQL.Strings = (
      
        'SELECT  us.db_user_id, us.email, p.public_email, p.title,  p.fir' +
        'st_name, p.last_name, '
      
        '        public.nvl( p.title, '#39#39')  || '#39' '#39' ||  public.nvl( p.first' +
        '_name , '#39#39') '
      
        '                          || '#39' '#39' ||  public.nvl( p.last_name , '#39 +
        #39') as full_name  '
      '  FROM system.db_users_profiles p'
      '       , system.db_users us'
      '       , system.db_user_sessions u'
      '       , system.db_users_schemas s'
      '  where '
      '  '
      '  p.db_user_id = s.db_user_id'
      '  and'
      '  p.db_user_id = us.db_user_id'
      '  and'
      '  u.db_schema_id = s.db_schema_id'
      '  and'
      '  u.db_session_key = :session_key'
      '  and'
      '  '
      '  ('
      
        '   p.search_name like   '#39'%'#39' || upper(replace(:p_search, '#39' '#39', '#39'%'#39 +
        ')) || '#39'%'#39
      '   or'
      
        '   p.reverse_search like  '#39'%'#39' || upper(replace(:p_search, '#39' '#39', '#39 +
        '%'#39')) || '#39'%'#39
      '  )'
      '  limit 100')
    BeforeOpen = qrySearchUsersBeforeOpen
    Left = 336
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'session_key'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_search'
        ParamType = ptInput
        Value = 'ard ric'
      end>
    object qrySearchUsersdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      ReadOnly = True
      Required = True
    end
    object qrySearchUsersemail: TWideStringField
      FieldName = 'email'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object qrySearchUserspublic_email: TWideStringField
      FieldName = 'public_email'
      Size = 256
    end
    object qrySearchUserstitle: TWideStringField
      FieldName = 'title'
      Size = 30
    end
    object qrySearchUsersfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qrySearchUserslast_name: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object qrySearchUsersfull_name: TWideStringField
      FieldName = 'full_name'
      ReadOnly = True
      Size = 256
    end
  end
  object qryGetUserByKey: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO system.db_users'
      
        '  (active, email, db_user_id, password, username, isactive, veri' +
        'fy_token, verified, default_schema_id, ispublic, internal_key)'
      'VALUES'
      
        '  (:active, :email, :db_user_id, :password, :username, :isactive' +
        ', :verify_token, :verified, :default_schema_id, :ispublic, :inte' +
        'rnal_key)')
    SQLDelete.Strings = (
      'DELETE FROM system.db_users'
      'WHERE'
      '  db_user_id = :Old_db_user_id')
    SQLUpdate.Strings = (
      'UPDATE system.db_users'
      'SET'
      
        '  active = :active, email = :email, db_user_id = :db_user_id, pa' +
        'ssword = :password, username = :username, isactive = :isactive, ' +
        'verify_token = :verify_token, verified = :verified, default_sche' +
        'ma_id = :default_schema_id, ispublic = :ispublic, internal_key =' +
        ' :internal_key'
      'WHERE'
      '  db_user_id = :Old_db_user_id')
    SQLRefresh.Strings = (
      
        'SELECT active, email, db_user_id, password, username, isactive, ' +
        'verify_token, verified, default_schema_id, ispublic, internal_ke' +
        'y FROM system.db_users'
      'WHERE'
      '  db_user_id = :db_user_id')
    SQLLock.Strings = (
      'SELECT * FROM system.db_users'
      'WHERE'
      '  db_user_id = :Old_db_user_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.db_users'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT  u.*'
      '  FROM  system.db_users u'
      'WHERE '
      '   verify_token = :verify_token')
    Left = 144
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'verify_token'
        ParamType = ptInput
        Value = nil
      end>
    object qryGetUserByKeyactive: TBooleanField
      FieldName = 'active'
      Required = True
    end
    object qryGetUserByKeyemail: TWideStringField
      FieldName = 'email'
      Required = True
      Size = 128
    end
    object qryGetUserByKeydb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qryGetUserByKeypassword: TWideStringField
      FieldName = 'password'
      Required = True
      Size = 128
    end
    object qryGetUserByKeyusername: TWideStringField
      FieldName = 'username'
      Required = True
      Size = 30
    end
    object qryGetUserByKeyisactive: TBooleanField
      FieldName = 'isactive'
      Required = True
    end
    object qryGetUserByKeyverify_token: TWideStringField
      FieldName = 'verify_token'
      Required = True
      Size = 256
    end
    object qryGetUserByKeyverified: TBooleanField
      FieldName = 'verified'
      Required = True
    end
    object qryGetUserByKeydefault_schema_id: TIntegerField
      FieldName = 'default_schema_id'
    end
    object qryGetUserByKeyispublic: TBooleanField
      FieldName = 'ispublic'
    end
    object qryGetUserByKeyinternal_key: TWideStringField
      FieldName = 'internal_key'
      Size = 30
    end
  end
  object qrydbUserSchemas: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO system.db_users_profiles'
      
        '  (db_user_id, country_id, region_id, district_id, town_id, firs' +
        't_name, last_name, address_street, address_number, address_posta' +
        'l_code, phone, cellular_phone, work_phone, fax_number, gender_co' +
        'de, birth_date, birth_country_id, birth_region_id, birth_distric' +
        't_id, birth_town_id, public_email)'
      'VALUES'
      
        '  (:db_user_id, :country_id, :region_id, :district_id, :town_id,' +
        ' :first_name, :last_name, :address_street, :address_number, :add' +
        'ress_postal_code, :phone, :cellular_phone, :work_phone, :fax_num' +
        'ber, :gender_code, :birth_date, :birth_country_id, :birth_region' +
        '_id, :birth_district_id, :birth_town_id, :public_email)')
    SQLDelete.Strings = (
      'DELETE FROM system.db_users_profiles'
      'WHERE'
      '  db_user_id = :Old_db_user_id')
    SQLUpdate.Strings = (
      'UPDATE system.db_users_profiles'
      'SET'
      
        '  db_user_id = :db_user_id, country_id = :country_id, region_id ' +
        '= :region_id, district_id = :district_id, town_id = :town_id, fi' +
        'rst_name = :first_name, last_name = :last_name, address_street =' +
        ' :address_street, address_number = :address_number, address_post' +
        'al_code = :address_postal_code, phone = :phone, cellular_phone =' +
        ' :cellular_phone, work_phone = :work_phone, fax_number = :fax_nu' +
        'mber, gender_code = :gender_code, birth_date = :birth_date, birt' +
        'h_country_id = :birth_country_id, birth_region_id = :birth_regio' +
        'n_id, birth_district_id = :birth_district_id, birth_town_id = :b' +
        'irth_town_id, public_email = :public_email'
      'WHERE'
      '  db_user_id = :Old_db_user_id')
    SQLRefresh.Strings = (
      
        'SELECT db_user_id, country_id, region_id, district_id, town_id, ' +
        'first_name, last_name, address_street, address_number, address_p' +
        'ostal_code, phone, cellular_phone, work_phone, fax_number, gende' +
        'r_code, birth_date, birth_country_id, birth_region_id, birth_dis' +
        'trict_id, birth_town_id, public_email FROM system.db_users_profi' +
        'les'
      'WHERE'
      '  db_user_id = :db_user_id')
    SQLLock.Strings = (
      'SELECT * FROM system.db_users_profiles'
      'WHERE'
      '  db_user_id = :Old_db_user_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.db_users_profiles'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT u.*'
      '  FROM system.db_users_schemas s, db_schemas u'
      '  where '
      '    (s.db_user_id = :db_user_id )'
      '    and'
      '    (u.db_schema_id = s.db_schema_id)')
    MasterFields = 'db_user_id'
    DetailFields = 'db_user_id'
    MasterSource = dsUserSession
    OnNewRecord = qryUserProfileNewRecord
    Left = 336
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_user_id'
        ParamType = ptInput
        Value = nil
      end>
    object qrydbUserSchemasdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      ReadOnly = True
      Required = True
    end
    object qrydbUserSchemasdb_schema_name: TWideStringField
      FieldName = 'db_schema_name'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qrydbUserSchemasschema_des: TWideStringField
      FieldName = 'schema_des'
      ReadOnly = True
      Required = True
      Size = 512
    end
    object qrydbUserSchemaspersonal: TBooleanField
      FieldName = 'personal'
      ReadOnly = True
    end
    object qrydbUserSchemasdb_schema_key: TWideStringField
      FieldName = 'db_schema_key'
      ReadOnly = True
      Size = 256
    end
    object qrydbUserSchemascountry_id: TSmallintField
      FieldName = 'country_id'
      ReadOnly = True
    end
    object qrydbUserSchemaslanguage_id: TSmallintField
      FieldName = 'language_id'
      ReadOnly = True
      Required = True
    end
    object qrydbUserSchemasdefault_user_id: TIntegerField
      FieldName = 'default_user_id'
      ReadOnly = True
    end
  end
  object prcSetUserDefaultSchema: TUniStoredProc
    StoredProcName = 'system.setuserdefaultschema'
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT system.setuserdefaultschema(:p_session_key, :p_user_id)')
    AutoCommit = False
    Left = 64
    Top = 80
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_session_key'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'system.setuserdefaultschema:0'
  end
  object dspSearchUsers: TDataSetProvider
    DataSet = qrySearchUsers
    Options = [poReadOnly, poDisableInserts, poDisableEdits, poDisableDeletes, poUseQuoteChar]
    Left = 336
    Top = 200
  end
  object dspUserSchemas: TDataSetProvider
    Left = 336
    Top = 320
  end
end
