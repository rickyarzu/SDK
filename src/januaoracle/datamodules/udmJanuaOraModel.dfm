object dmJanuaOraModel: TdmJanuaOraModel
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 387
  Width = 685
  object PgErgoConnection: TPgConnection
    DataTypeMap = <
      item
        DBType = 521
        FieldType = ftTimeStamp
      end
      item
        DBType = 520
        FieldType = ftTimeStamp
      end>
    Pooling = True
    Username = 'postgres'
    Server = 'host1.januaservers.com'
    LoginPrompt = False
    Database = 'ergomercator'
    Options.UseUnicode = True
    Options.EnablePgTimeStamps = True
    Schema = 'cloud'
    Left = 64
    Top = 24
    EncryptedPassword = '99FFCBFF91FF94FF8AFF93FFCFFF'
  end
  object qryUserProfile: TPgQuery
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
    SQL.Strings = (
      'SELECT s.*'
      '  FROM system.db_users_profiles s'
      '  where '
      '    (s.db_user_id = :db_user_id or :db_user_id = 0)')
    MasterFields = 'db_user_id'
    DetailFields = 'db_user_id'
    MasterSource = dsUserSession
    OnNewRecord = qryUserProfileNewRecord
    Left = 64
    Top = 248
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
    object qryUserProfilebirth_date: TPgDateField
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
  object tbUserSessionRoles: TPgTable
    TableName = 'system.db_users_schemas_roles'
    MasterFields = 'db_schema_id;db_user_id'
    DetailFields = 'db_schema_id;db_user_id'
    MasterSource = dsUserSession
    Left = 64
    Top = 192
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
  object dsUserSession: TDataSource
    DataSet = qryUserSession
    Left = 64
    Top = 136
  end
  object qryUserSession: TPgQuery
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
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT s.db_session_key, s.db_schema_id, s.db_session_id,  u.*'
      '  FROM system.db_user_sessions s, system.db_users u'
      'WHERE '
      '   db_session_key = :db_session_key'
      '   and '
      '   u.db_user_id = s.db_user_id')
    BeforeOpen = qryUserSessionBeforeOpen
    AfterOpen = qryUserSessionAfterOpen
    Left = 64
    Top = 80
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
  object OraErgoSession: TOraSession
    Options.UseUnicode = True
    Options.EnableLargeint = True
    Options.StatementCache = True
    Options.UnicodeEnvironment = True
    Options.Direct = True
    Pooling = True
    Username = 'januaguest'
    Server = 'host1.januaservers.com:1521:ergo'
    LoginPrompt = False
    Schema = 'januasystem'
    Left = 64
    Top = 304
    EncryptedPassword = '9AFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
end
