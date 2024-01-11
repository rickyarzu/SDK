object dmJanuaPostgresModel: TdmJanuaPostgresModel
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 563
  Width = 690
  object PgErgoConnection: TJanuaUniConnection
    AutoCommit = False
    DataTypeMap = <
      item
        DBType = 521
        FieldType = ftTimeStamp
      end
      item
        DBType = 520
        FieldType = ftTimeStamp
      end>
    ProviderName = 'PostgreSQL'
    Port = 5444
    Database = 'ergomercator'
    SpecificOptions.Strings = (
      'PostgreSQL.Schema=public'
      'PostgreSQL.UseUnicode=True')
    Options.DisconnectedMode = True
    PoolingOptions.MinPoolSize = 100
    PoolingOptions.MaxPoolSize = 10000
    PoolingOptions.ConnectionLifetime = 300000
    Pooling = True
    Username = 'ergo'
    Server = 'local.januaservers.com'
    LoginPrompt = False
    AfterDisconnect = PgErgoConnectionAfterDisconnect
    SchemaID = 39
    SchemaParamKey = 'system.db_schema_id'
    SchemaSQL = 'SET SESSION "%s" = %s; '
    SchemaParams = <>
    Left = 64
    Top = 16
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object tbUserSessionRoles: TUniTable
    TableName = 'system.db_users_schemas_roles'
    Connection = PgErgoConnection
    MasterFields = 'db_schema_id;db_user_id'
    DetailFields = 'db_schema_id;db_user_id'
    Left = 64
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
  object dsUserSession: TDataSource
    DataSet = qryUserSession
    Left = 64
    Top = 128
  end
  object qryUserSession: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO system.db_user_sessions'
      
        '  (db_user_id, db_schema_id, db_session_key, db_session_id, lang' +
        'uage_id, start_time, insert_date, ispublic)'
      'VALUES'
      
        '  (:db_user_id, :db_schema_id, :db_session_key, :db_session_id, ' +
        ':language_id, :start_time, :insert_date, :ispublic)')
    SQLDelete.Strings = (
      'DELETE FROM system.db_user_sessions'
      'WHERE'
      '  db_session_id = :Old_db_session_id')
    SQLUpdate.Strings = (
      'UPDATE system.db_user_sessions'
      'SET'
      
        '  db_user_id = :db_user_id, db_schema_id = :db_schema_id, db_ses' +
        'sion_key = :db_session_key, db_session_id = :db_session_id, lang' +
        'uage_id = :language_id, start_time = :start_time, insert_date = ' +
        ':insert_date, ispublic = :ispublic'
      'WHERE'
      '  db_session_id = :Old_db_session_id')
    SQLLock.Strings = (
      'SELECT * FROM system.db_user_sessions'
      'WHERE'
      '  db_session_id = :Old_db_session_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_user_id, db_schema_id, db_session_key, db_session_id, ' +
        'language_id, start_time, insert_date, ispublic FROM system.db_us' +
        'er_sessions'
      'WHERE'
      '  db_session_id = :db_session_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.db_user_sessions'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT s.*,  u.*'
      '  FROM system.db_user_sessions s, system.db_users u'
      'WHERE '
      '   db_session_key = :db_session_key'
      '   and '
      '   u.db_user_id = s.db_user_id')
    BeforeOpen = qryUserSessionBeforeOpen
    Left = 64
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'db_session_key'
        ParamType = ptInput
        Value = ''
      end>
    object qryUserSessiondb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
    object qryUserSessiondb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryUserSessiondb_session_key: TWideStringField
      FieldName = 'db_session_key'
      Required = True
      Size = 256
    end
    object qryUserSessiondb_session_id: TLargeintField
      FieldName = 'db_session_id'
      Required = True
    end
    object qryUserSessionlanguage_id: TSmallintField
      FieldName = 'language_id'
      Required = True
    end
    object qryUserSessionstart_time: TDateTimeField
      FieldName = 'start_time'
    end
    object qryUserSessioninsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryUserSessionispublic: TBooleanField
      FieldName = 'ispublic'
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
      Size = 256
    end
    object qryUserSessiondb_user_id_1: TIntegerField
      FieldName = 'db_user_id_1'
      ReadOnly = True
      Required = True
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
      Size = 128
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
    object qryUserSessionispublic_1: TBooleanField
      FieldName = 'ispublic_1'
      ReadOnly = True
    end
    object qryUserSessioninternal_key: TWideStringField
      FieldName = 'internal_key'
      ReadOnly = True
      Size = 30
    end
    object qryUserSessiondefault_role_id: TSmallintField
      FieldName = 'default_role_id'
      ReadOnly = True
    end
    object qryUserSessionsearch_name: TWideStringField
      FieldName = 'search_name'
      ReadOnly = True
      Size = 256
    end
    object qryUserSessionreverse_search: TWideStringField
      FieldName = 'reverse_search'
      ReadOnly = True
      Size = 256
    end
    object qryUserSessioninsert_date_1: TDateTimeField
      FieldName = 'insert_date_1'
      ReadOnly = True
    end
    object qryUserSessioncountry_id: TSmallintField
      FieldName = 'country_id'
      ReadOnly = True
    end
    object qryUserSessionmain_profile_type_id: TSmallintField
      FieldName = 'main_profile_type_id'
      ReadOnly = True
    end
    object qryUserSessionmain_profile_id: TWideStringField
      FieldName = 'main_profile_id'
      ReadOnly = True
      Size = 64
    end
    object qryUserSessionimage_id: TLargeintField
      FieldName = 'image_id'
      ReadOnly = True
    end
    object qryUserSessionimage_url: TWideStringField
      FieldName = 'image_url'
      ReadOnly = True
      Size = 2048
    end
    object qryUserSessioniso_language_code: TWideStringField
      FieldName = 'iso_language_code'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object qryUserSessioniso_culture_code: TWideStringField
      FieldName = 'iso_culture_code'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object qryUserSessionuser_first_name: TWideStringField
      FieldName = 'user_first_name'
      ReadOnly = True
      Size = 256
    end
    object qryUserSessionuser_family_name: TWideStringField
      FieldName = 'user_family_name'
      ReadOnly = True
      Size = 256
    end
    object qryUserSessionemailsent: TBooleanField
      FieldName = 'emailsent'
      ReadOnly = True
    end
    object qryUserSessionemailconfirmed: TBooleanField
      FieldName = 'emailconfirmed'
      ReadOnly = True
    end
    object qryUserSessionemaildate: TDateTimeField
      FieldName = 'emaildate'
      ReadOnly = True
    end
    object qryUserSessionpayment: TBooleanField
      FieldName = 'payment'
      ReadOnly = True
    end
    object qryUserSessionpayment_expiration_date: TDateField
      FieldName = 'payment_expiration_date'
      ReadOnly = True
    end
  end
  object qryUserProfile: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO system.db_users_profiles'
      
        '  (db_user_id, country_id, region_id, district_id, town_id, firs' +
        't_name, last_name, address_street, address_number, address_posta' +
        'l_code, phone, cellular_phone, work_phone, fax_number, gender_co' +
        'de, birth_date, birth_country_id, birth_region_id, birth_distric' +
        't_id, birth_town_id, public_email, title, search_name, reverse_s' +
        'earch, address_full, latitude, longitude, fiscal_code, smssent, ' +
        'smsconfirmed, smsdate, smschecknumber, address_town, facebook_js' +
        'on, address_state_province)'
      'VALUES'
      
        '  (:db_user_id, :country_id, :region_id, :district_id, :town_id,' +
        ' :first_name, :last_name, :address_street, :address_number, :add' +
        'ress_postal_code, :phone, :cellular_phone, :work_phone, :fax_num' +
        'ber, :gender_code, :birth_date, :birth_country_id, :birth_region' +
        '_id, :birth_district_id, :birth_town_id, :public_email, :title, ' +
        ':search_name, :reverse_search, :address_full, :latitude, :longit' +
        'ude, :fiscal_code, :smssent, :smsconfirmed, :smsdate, :smscheckn' +
        'umber, :address_town, :facebook_json, :address_state_province)')
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
        'irth_town_id, public_email = :public_email, title = :title, sear' +
        'ch_name = :search_name, reverse_search = :reverse_search, addres' +
        's_full = :address_full, latitude = :latitude, longitude = :longi' +
        'tude, fiscal_code = :fiscal_code, smssent = :smssent, smsconfirm' +
        'ed = :smsconfirmed, smsdate = :smsdate, smschecknumber = :smsche' +
        'cknumber, address_town = :address_town, facebook_json = :faceboo' +
        'k_json, address_state_province = :address_state_province'
      'WHERE'
      '  db_user_id = :Old_db_user_id')
    SQLLock.Strings = (
      'SELECT * FROM system.db_users_profiles'
      'WHERE'
      '  db_user_id = :Old_db_user_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_user_id, country_id, region_id, district_id, town_id, ' +
        'first_name, last_name, address_street, address_number, address_p' +
        'ostal_code, phone, cellular_phone, work_phone, fax_number, gende' +
        'r_code, birth_date, birth_country_id, birth_region_id, birth_dis' +
        'trict_id, birth_town_id, public_email, title, search_name, rever' +
        'se_search, address_full, latitude, longitude, fiscal_code, smsse' +
        'nt, smsconfirmed, smsdate, smschecknumber, address_town, faceboo' +
        'k_json, address_state_province FROM system.db_users_profiles'
      'WHERE'
      '  db_user_id = :db_user_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.db_users_profiles'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT s.*'
      '  FROM system.db_users_profiles s'
      '  where '
      '    (s.db_user_id = :db_user_id or :db_user_id = 0)')
    MasterFields = 'db_user_id'
    DetailFields = 'db_user_id'
    OnNewRecord = qryUserProfileNewRecord
    Left = 64
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
    object qryUserProfilepublic_email: TWideStringField
      FieldName = 'public_email'
      Size = 256
    end
    object qryUserProfiletitle: TWideStringField
      FieldName = 'title'
      Size = 30
    end
    object qryUserProfilesearch_name: TWideStringField
      FieldName = 'search_name'
      Size = 256
    end
    object qryUserProfilereverse_search: TWideStringField
      FieldName = 'reverse_search'
      Size = 256
    end
    object qryUserProfileaddress_full: TWideStringField
      FieldName = 'address_full'
      Size = 2048
    end
    object qryUserProfilelatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryUserProfilelongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryUserProfilefiscal_code: TWideStringField
      FieldName = 'fiscal_code'
    end
    object qryUserProfilesmssent: TBooleanField
      FieldName = 'smssent'
    end
    object qryUserProfilesmsconfirmed: TBooleanField
      FieldName = 'smsconfirmed'
    end
    object qryUserProfilesmsdate: TDateTimeField
      FieldName = 'smsdate'
    end
    object qryUserProfilesmschecknumber: TWideStringField
      FieldName = 'smschecknumber'
      Size = 4
    end
    object qryUserProfileaddress_town: TWideStringField
      FieldName = 'address_town'
      Size = 256
    end
    object qryUserProfilefacebook_json: TWideMemoField
      FieldName = 'facebook_json'
      BlobType = ftWideMemo
    end
    object qryUserProfileaddress_state_province: TWideStringField
      FieldName = 'address_state_province'
    end
  end
  object qryUser: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO system.db_users'
      
        '  (active, email, db_user_id, password, username, isactive, veri' +
        'fy_token, verified, default_schema_id, ispublic, internal_key, d' +
        'efault_role_id, search_name, reverse_search, insert_date, countr' +
        'y_id, main_profile_type_id, main_profile_id, image_id, image_url' +
        ', iso_language_code, iso_culture_code, user_first_name, user_fam' +
        'ily_name, emailsent, emailconfirmed, emaildate, payment, payment' +
        '_expiration_date)'
      'VALUES'
      
        '  (:active, :email, :db_user_id, :password, :username, :isactive' +
        ', :verify_token, :verified, :default_schema_id, :ispublic, :inte' +
        'rnal_key, :default_role_id, :search_name, :reverse_search, :inse' +
        'rt_date, :country_id, :main_profile_type_id, :main_profile_id, :' +
        'image_id, :image_url, :iso_language_code, :iso_culture_code, :us' +
        'er_first_name, :user_family_name, :emailsent, :emailconfirmed, :' +
        'emaildate, :payment, :payment_expiration_date)')
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
        ' :internal_key, default_role_id = :default_role_id, search_name ' +
        '= :search_name, reverse_search = :reverse_search, insert_date = ' +
        ':insert_date, country_id = :country_id, main_profile_type_id = :' +
        'main_profile_type_id, main_profile_id = :main_profile_id, image_' +
        'id = :image_id, image_url = :image_url, iso_language_code = :iso' +
        '_language_code, iso_culture_code = :iso_culture_code, user_first' +
        '_name = :user_first_name, user_family_name = :user_family_name, ' +
        'emailsent = :emailsent, emailconfirmed = :emailconfirmed, emaild' +
        'ate = :emaildate, payment = :payment, payment_expiration_date = ' +
        ':payment_expiration_date'
      'WHERE'
      '  db_user_id = :Old_db_user_id')
    SQLLock.Strings = (
      'SELECT * FROM system.db_users'
      'WHERE'
      '  db_user_id = :Old_db_user_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT active, email, db_user_id, password, username, isactive, ' +
        'verify_token, verified, default_schema_id, ispublic, internal_ke' +
        'y, default_role_id, search_name, reverse_search, insert_date, co' +
        'untry_id, main_profile_type_id, main_profile_id, image_id, image' +
        '_url, iso_language_code, iso_culture_code, user_first_name, user' +
        '_family_name, emailsent, emailconfirmed, emaildate, payment, pay' +
        'ment_expiration_date FROM system.db_users'
      'WHERE'
      '  db_user_id = :db_user_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.db_users'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT   u.*'
      '  FROM  system.db_users u'
      'WHERE '
      '   u.db_user_id = :db_user_id'
      '')
    BeforeOpen = qryUserSessionBeforeOpen
    Left = 64
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_user_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryUseractive: TBooleanField
      FieldName = 'active'
      Required = True
    end
    object qryUseremail: TWideStringField
      FieldName = 'email'
      Required = True
      Size = 256
    end
    object qryUserdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qryUserpassword: TWideStringField
      FieldName = 'password'
      Required = True
      Size = 128
    end
    object qryUserusername: TWideStringField
      FieldName = 'username'
      Required = True
      Size = 128
    end
    object qryUserisactive: TBooleanField
      FieldName = 'isactive'
      Required = True
    end
    object qryUserverify_token: TWideStringField
      FieldName = 'verify_token'
      Required = True
      Size = 256
    end
    object qryUserverified: TBooleanField
      FieldName = 'verified'
      Required = True
    end
    object qryUserdefault_schema_id: TIntegerField
      FieldName = 'default_schema_id'
    end
    object qryUserispublic: TBooleanField
      FieldName = 'ispublic'
    end
    object qryUserinternal_key: TWideStringField
      FieldName = 'internal_key'
      Size = 30
    end
    object qryUserdefault_role_id: TSmallintField
      FieldName = 'default_role_id'
    end
    object qryUsersearch_name: TWideStringField
      FieldName = 'search_name'
      Size = 256
    end
    object qryUserreverse_search: TWideStringField
      FieldName = 'reverse_search'
      Size = 256
    end
    object qryUserinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryUsercountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object qryUsermain_profile_type_id: TSmallintField
      FieldName = 'main_profile_type_id'
    end
    object qryUsermain_profile_id: TWideStringField
      FieldName = 'main_profile_id'
      Size = 64
    end
    object qryUserimage_id: TLargeintField
      FieldName = 'image_id'
    end
    object qryUserimage_url: TWideStringField
      FieldName = 'image_url'
      Size = 2048
    end
    object qryUseriso_language_code: TWideStringField
      FieldName = 'iso_language_code'
      FixedChar = True
      Size = 2
    end
    object qryUseriso_culture_code: TWideStringField
      FieldName = 'iso_culture_code'
      FixedChar = True
      Size = 5
    end
    object qryUseruser_first_name: TWideStringField
      FieldName = 'user_first_name'
      Size = 256
    end
    object qryUseruser_family_name: TWideStringField
      FieldName = 'user_family_name'
      Size = 256
    end
    object qryUseremailsent: TBooleanField
      FieldName = 'emailsent'
    end
    object qryUseremailconfirmed: TBooleanField
      FieldName = 'emailconfirmed'
    end
    object qryUseremaildate: TDateTimeField
      FieldName = 'emaildate'
    end
    object qryUserpayment: TBooleanField
      FieldName = 'payment'
    end
    object qryUserpayment_expiration_date: TDateField
      FieldName = 'payment_expiration_date'
    end
  end
  object qryTowns: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT town_id, town_name, town_iso_code, town_local_code, town_' +
        'postal_code, district_id'
      #9'FROM jpublic.towns '
      'where '
      '   town_postal_code like :postal_code')
    Left = 64
    Top = 368
    ParamData = <
      item
        DataType = ftString
        Name = 'postal_code'
        ParamType = ptInput
        Value = '201%'
      end>
    object qryTownstown_id: TIntegerField
      FieldName = 'town_id'
      Required = True
    end
    object qryTownstown_name: TWideStringField
      FieldName = 'town_name'
      Size = 256
    end
    object qryTownstown_iso_code: TWideStringField
      FieldName = 'town_iso_code'
      Size = 10
    end
    object qryTownstown_local_code: TWideStringField
      FieldName = 'town_local_code'
      Size = 10
    end
    object qryTownstown_postal_code: TWideStringField
      FieldName = 'town_postal_code'
    end
    object qryTownsdistrict_id: TSmallintField
      FieldName = 'district_id'
    end
  end
  object testTable: TUniTable
    TableName = 'cms.graphic_menu_rows'
    Connection = PgErgoConnection
    Left = 64
    Top = 424
  end
  object PgUni: TPostgreSQLUniProvider
    Top = 32
  end
  object spSetSchemaID: TUniStoredProc
    StoredProcName = 'system.set_schema_id'
    SQL.Strings = (
      'SELECT system.set_schema_id(:p_schema_id)')
    Connection = PgErgoConnection
    Left = 64
    Top = 488
    ParamData = <
      item
        DataType = ftInteger
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_schema_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'system.set_schema_id'
  end
end
