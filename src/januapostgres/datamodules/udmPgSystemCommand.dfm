inherited dmPgSystemCommand: TdmPgSystemCommand
  ExplicitWidth = 530
  ExplicitHeight = 581
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgErgoConnection: TPgConnection
    Top = 24
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited tbUserSessionRoles: TPgTable
    MasterSource = dsUserSession
    Top = 192
  end
  inherited dsUserSession: TDataSource
    Top = 136
  end
  inherited qryUserSession: TPgQuery
    Top = 80
  end
  inherited qryUserProfile: TPgQuery
    Top = 248
  end
  inherited qryUser: TPgQuery
    SQL.Strings = (
      'SELECT   u.*'
      '  FROM  system.db_users u'
      '--WHERE '
      '--   u.db_user_id = :db_user_id'
      '')
    ParamData = <>
    object qryUseruser_jguid: TWideStringField
      FieldName = 'user_jguid'
      Required = True
      Size = 40
    end
    object qryUseruser_deleted: TBooleanField
      FieldName = 'user_deleted'
    end
  end
  object spCreatePersonalSchema: TPgStoredProc
    StoredProcName = 'system.createpersonalschema'
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT system.createpersonalschema(:p_session_key)')
    Left = 176
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
    ResolveToDataSet = True
    Options = [poReadOnly, poUseQuoteChar]
    Left = 176
    Top = 216
  end
  object spUserTest: TPgStoredProc
    StoredProcName = 'system.usertest'
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT system.usertest(:p_username, :p_email)')
    Left = 176
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
  object spUserAdd: TPgStoredProc
    StoredProcName = 'system.useradd'
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT system.useradd(:p_email, :p_username, :p_password, :p_cou' +
        'ntry_id, :p_ispublic)')
    Left = 176
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
  object spLogin: TPgStoredProc
    StoredProcName = 'system.userlogin'
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT system.userlogin(:p_username, :p_password, :p_email)')
    Left = 176
    Top = 48
    ParamData = <
      item
        DataType = ftWideString
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_username'
        ParamType = ptInput
        Value = 'facebook-1043677715682422'
      end
      item
        DataType = ftWideString
        Name = 'p_password'
        ParamType = ptInput
        Value = 'facebook-1043677715682422'
      end
      item
        DataType = ftWideString
        Name = 'p_email'
        ParamType = ptInput
        Value = 'facebook-1043677715682422'
      end>
    CommandStoredProcName = 'system.userlogin:0'
  end
  object qrySearchUserProfile: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO system.db_users_profiles'
      
        '  (db_user_id, country_id, region_id, district_id, town_id, firs' +
        't_name, last_name, address_street, address_number, address_posta' +
        'l_code, phone, cellular_phone, work_phone, fax_number, gender_co' +
        'de, birth_date, birth_country_id, birth_region_id, birth_distric' +
        't_id, birth_town_id, public_email, title, search_name, reverse_s' +
        'earch, address_full, latitude, longitude, fiscal_code, smssent, ' +
        'smsconfirmed, smsdate, smschecknumber, address_town)'
      'VALUES'
      
        '  (:db_user_id, :country_id, :region_id, :district_id, :town_id,' +
        ' :first_name, :last_name, :address_street, :address_number, :add' +
        'ress_postal_code, :phone, :cellular_phone, :work_phone, :fax_num' +
        'ber, :gender_code, :birth_date, :birth_country_id, :birth_region' +
        '_id, :birth_district_id, :birth_town_id, :public_email, :title, ' +
        ':search_name, :reverse_search, :address_full, :latitude, :longit' +
        'ude, :fiscal_code, :smssent, :smsconfirmed, :smsdate, :smscheckn' +
        'umber, :address_town)')
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
        'cknumber, address_town = :address_town'
      'WHERE'
      '  db_user_id = :Old_db_user_id')
    SQLRefresh.Strings = (
      
        'SELECT db_user_id, country_id, region_id, district_id, town_id, ' +
        'first_name, last_name, address_street, address_number, address_p' +
        'ostal_code, phone, cellular_phone, work_phone, fax_number, gende' +
        'r_code, birth_date, birth_country_id, birth_region_id, birth_dis' +
        'trict_id, birth_town_id, public_email, title, search_name, rever' +
        'se_search, address_full, latitude, longitude, fiscal_code, smsse' +
        'nt, smsconfirmed, smsdate, smschecknumber, address_town FROM sys' +
        'tem.db_users_profiles'
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
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  s.* '
      '  FROM system.db_users_profiles s, system.db_users u'
      '  where '
      '      (u.verify_token = :db_user_key '
      '      or'
      '      s.db_user_id = :db_user_id)'
      ''
      '  and s.db_user_id = u.db_user_id')
    Left = 304
    Top = 40
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
    object qrySearchUserProfiletitle: TWideStringField
      FieldName = 'title'
      Size = 30
    end
    object qrySearchUserProfilesearch_name: TWideStringField
      FieldName = 'search_name'
      Size = 256
    end
    object qrySearchUserProfilereverse_search: TWideStringField
      FieldName = 'reverse_search'
      Size = 256
    end
    object qrySearchUserProfileaddress_full: TWideStringField
      FieldName = 'address_full'
      Size = 2048
    end
    object qrySearchUserProfilelatitude: TFloatField
      FieldName = 'latitude'
    end
    object qrySearchUserProfilelongitude: TFloatField
      FieldName = 'longitude'
    end
    object qrySearchUserProfilefiscal_code: TWideStringField
      FieldName = 'fiscal_code'
    end
    object qrySearchUserProfilesmssent: TBooleanField
      FieldName = 'smssent'
    end
    object qrySearchUserProfilesmsconfirmed: TBooleanField
      FieldName = 'smsconfirmed'
    end
    object qrySearchUserProfilesmsdate: TSQLTimeStampField
      FieldName = 'smsdate'
    end
    object qrySearchUserProfilesmschecknumber: TWideStringField
      FieldName = 'smschecknumber'
      Size = 4
    end
    object qrySearchUserProfileaddress_town: TWideStringField
      FieldName = 'address_town'
      Size = 256
    end
  end
  object qrySearchUsers: TPgQuery
    DataTypeMap = <
      item
        FieldName = 'full_name'
        FieldType = ftWideString
        FieldLength = 256
        IgnoreErrors = True
      end>
    Connection = PgErgoConnection
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
      '    ('
      
        '   p.search_name like   '#39'%'#39' || upper(replace(:p_search, '#39' '#39', '#39'%'#39 +
        ')) || '#39'%'#39
      '   or'
      
        '   p.reverse_search like  '#39'%'#39' || upper(replace(:p_search, '#39' '#39', '#39 +
        '%'#39')) || '#39'%'#39
      '   or'
      '   :p_search = '#39'%'#39
      '  )'
      '  and (us.db_user_id = :p_user_id or :p_user_id = 0)'
      '  limit 100')
    BeforeOpen = qrySearchUsersBeforeOpen
    Left = 304
    Top = 112
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
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = 0
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
  object qryGetUserByKey: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO system.db_users'
      
        '  (active, email, db_user_id, password, username, isactive, veri' +
        'fy_token, verified, default_schema_id, ispublic, internal_key, d' +
        'efault_role_id, search_name, reverse_search, insert_date, countr' +
        'y_id, main_profile_type_id, main_profile_id, image_id, image_url' +
        ', iso_language_code, iso_culture_code)'
      'VALUES'
      
        '  (:active, :email, :db_user_id, :password, :username, :isactive' +
        ', :verify_token, :verified, :default_schema_id, :ispublic, :inte' +
        'rnal_key, :default_role_id, :search_name, :reverse_search, :inse' +
        'rt_date, :country_id, :main_profile_type_id, :main_profile_id, :' +
        'image_id, :image_url, :iso_language_code, :iso_culture_code)')
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
        '_language_code, iso_culture_code = :iso_culture_code'
      'WHERE'
      '  db_user_id = :Old_db_user_id')
    SQLRefresh.Strings = (
      
        'SELECT active, email, db_user_id, password, username, isactive, ' +
        'verify_token, verified, default_schema_id, ispublic, internal_ke' +
        'y, default_role_id, search_name, reverse_search, insert_date, co' +
        'untry_id, main_profile_type_id, main_profile_id, image_id, image' +
        '_url, iso_language_code, iso_culture_code FROM system.db_users'
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
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  u.*'
      '  FROM  system.db_users u'
      'WHERE '
      '   verify_token = :verify_token')
    Left = 176
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
    object qryGetUserByKeydefault_role_id: TSmallintField
      FieldName = 'default_role_id'
    end
    object qryGetUserByKeysearch_name: TWideStringField
      FieldName = 'search_name'
      Size = 256
    end
    object qryGetUserByKeyreverse_search: TWideStringField
      FieldName = 'reverse_search'
      Size = 256
    end
    object qryGetUserByKeyinsert_date: TSQLTimeStampField
      FieldName = 'insert_date'
    end
    object qryGetUserByKeycountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object qryGetUserByKeymain_profile_type_id: TSmallintField
      FieldName = 'main_profile_type_id'
    end
    object qryGetUserByKeymain_profile_id: TWideStringField
      FieldName = 'main_profile_id'
      Size = 64
    end
    object qryGetUserByKeyimage_id: TLargeintField
      FieldName = 'image_id'
    end
    object qryGetUserByKeyimage_url: TWideStringField
      FieldName = 'image_url'
      Size = 2048
    end
    object qryGetUserByKeyiso_language_code: TWideStringField
      FieldName = 'iso_language_code'
      FixedChar = True
      Size = 2
    end
    object qryGetUserByKeyiso_culture_code: TWideStringField
      FieldName = 'iso_culture_code'
      FixedChar = True
      Size = 5
    end
    object qryGetUserByKeyuser_first_name: TWideStringField
      FieldName = 'user_first_name'
      Size = 256
    end
    object qryGetUserByKeyuser_family_name: TWideStringField
      FieldName = 'user_family_name'
      Size = 256
    end
    object qryGetUserByKeyemailsent: TBooleanField
      FieldName = 'emailsent'
    end
    object qryGetUserByKeyemailconfirmed: TBooleanField
      FieldName = 'emailconfirmed'
    end
    object qryGetUserByKeyemaildate: TSQLTimeStampField
      FieldName = 'emaildate'
    end
  end
  object qrydbUserSchemas: TPgQuery
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
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT u.*'
      '  FROM system.db_users_schemas s, system.db_schemas u'
      '  where '
      '    (s.db_user_id = :db_user_id )'
      '    and'
      '    (u.db_schema_id = s.db_schema_id)')
    MasterFields = 'db_user_id'
    DetailFields = 'db_user_id'
    MasterSource = dsUserSession
    Left = 304
    Top = 224
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
  object prcSetUserDefaultSchema: TPgStoredProc
    StoredProcName = 'system.setuserdefaultschema'
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT system.setuserdefaultschema(:p_session_key, :p_user_id)')
    AutoCommit = False
    Left = 176
    Top = 384
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
    Left = 304
    Top = 168
  end
  object dspUserSchemas: TDataSetProvider
    DataSet = qrydbUserSchemas
    Left = 304
    Top = 288
  end
  object spUserTestSocial: TPgStoredProc
    StoredProcName = 'system.usertestsocial'
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT system.usertestsocial(:p_socialid, :p_social_kind)')
    Left = 424
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_socialid'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_social_kind'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'system.usertestsocial:0'
  end
  object spUserAddSocial: TPgStoredProc
    StoredProcName = 'system.useraddsocial'
    Overload = 2
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT system.useraddsocial(:p_email, :p_socialid, :p_social_kin' +
        'd, :p_country_code, :p_ispublic, :p_firstname, :p_lastname, :p_a' +
        'ddress_town, :p_address_street, :p_address_number, :p_address_po' +
        'stal_code, :p_address_full, :p_public_email, :p_latitude, :p_lon' +
        'gitude, :p_birth_date, :p_fiscal_code, :p_gender_code, :p_cellul' +
        'ar_phone, :p_phone, :p_image_url, :p_facebook_json)')
    Left = 424
    Top = 128
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
        Name = 'p_socialid'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_social_kind'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_country_code'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'p_ispublic'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_firstname'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_lastname'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_address_town'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_address_street'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_address_number'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_address_postal_code'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_address_full'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_public_email'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'p_latitude'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'p_longitude'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'p_birth_date'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_fiscal_code'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_gender_code'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_cellular_phone'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_phone'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_image_url'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_facebook_json'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'system.useraddsocial:2'
  end
  object spLoginSocial: TPgStoredProc
    StoredProcName = 'system.userloginsocial'
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT system.userloginsocial(:p_socialid, :p_social_kind)')
    Left = 424
    Top = 64
    ParamData = <
      item
        DataType = ftWideString
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_socialid'
        ParamType = ptInput
        Value = '1043677715682422'
      end
      item
        DataType = ftWideString
        Name = 'p_social_kind'
        ParamType = ptInput
        Value = 'Facebook'
      end>
    CommandStoredProcName = 'system.userloginsocial:0'
  end
  object spStartSessionByUrl: TPgStoredProc
    StoredProcName = 'system.startsessionbyurl'
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT system.startsessionbyurl(:p_url)')
    Left = 176
    Top = 440
    ParamData = <
      item
        DataType = ftWideString
        Name = 'result'
        ParamType = ptResult
        Value = 'cefcc7729ef7c2cba05c52e8b3fa7bd2c1ce6c69b9983d477e07b9b222e48543'
      end
      item
        DataType = ftWideString
        Name = 'p_url'
        ParamType = ptInput
        Value = 'dilettantissimo.ergomercator.com'
      end>
    CommandStoredProcName = 'system.startsessionbyurl:0'
  end
  object qrySessionByUrl: TPgQuery
    DataTypeMap = <
      item
        FieldName = 'startsessionbyurl'
        FieldType = ftWideString
        FieldLength = 256
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from system.startsessionbyurl(:p_url)')
    Left = 176
    Top = 504
    ParamData = <
      item
        DataType = ftWideString
        Name = 'p_url'
        ParamType = ptInput
        Value = 'dilettantissimo.ergomercator.com'
      end>
    object qrySessionByUrlstartsessionbyurl: TWideStringField
      FieldName = 'startsessionbyurl'
      ReadOnly = True
      Size = 256
    end
  end
  object spUserPayment: TPgStoredProc
    StoredProcName = 'system.user_payment'
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT system.user_payment(:p_user_id, :p_schema_id, :p_amount, ' +
        ':p_interval_type, :p_interval_duration, :p_payment_date)')
    Left = 424
    Top = 256
    ParamData = <
      item
        DataType = ftDate
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
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
        DataType = ftCurrency
        Name = 'p_amount'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_interval_type'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'p_interval_duration'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'p_payment_date'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'system.user_payment:0'
  end
  object qrySession: TPgQuery
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
    SQLRefresh.Strings = (
      
        'SELECT db_user_id, db_schema_id, db_session_key, db_session_id, ' +
        'language_id, start_time, insert_date, ispublic FROM system.db_us' +
        'er_sessions'
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
      'SELECT s.*'
      '  FROM system.db_user_sessions s'
      'WHERE '
      '   db_session_key = :db_session_key'
      '')
    BeforeOpen = qryUserSessionBeforeOpen
    Left = 304
    Top = 352
    ParamData = <
      item
        DataType = ftString
        Name = 'db_session_key'
        ParamType = ptInput
        Value = ''
      end>
    object qrySessiondb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
    object qrySessiondb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qrySessiondb_session_key: TWideStringField
      FieldName = 'db_session_key'
      Required = True
      Size = 256
    end
    object qrySessiondb_session_id: TLargeintField
      FieldName = 'db_session_id'
      Required = True
    end
    object qrySessionlanguage_id: TSmallintField
      FieldName = 'language_id'
      Required = True
    end
    object qrySessionstart_time: TSQLTimeStampField
      FieldName = 'start_time'
    end
    object qrySessioninsert_date: TSQLTimeStampField
      FieldName = 'insert_date'
    end
    object qrySessionispublic: TBooleanField
      FieldName = 'ispublic'
      Required = True
    end
  end
end
