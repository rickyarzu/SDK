inherited dmPgSystemStorage: TdmPgSystemStorage
  Height = 606
  Width = 757
  PixelsPerInch = 120
  inherited PgErgoConnection: TJanuaUniConnection
    AutoCommit = False
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object tbUserSessionRoles: TUniTable
    Connection = PgErgoConnection
    MasterSource = dsUserSession
    Left = 80
    Top = 336
  end
  object dsUserSession: TDataSource
    DataSet = qryUserSession
    Left = 80
    Top = 208
  end
  object qryUserSession: TUniQuery
    DataTypeMap = <
      item
        DBType = 521
        FieldType = ftDateTime
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT s.*'
      '  FROM system.db_user_sessions s'
      'WHERE '
      '  db_session_key = :db_session_key'
      '')
    BeforeOpen = qryUserSessionBeforeOpen
    AfterOpen = qryUserSessionAfterOpen
    Left = 80
    Top = 152
    ParamData = <
      item
        DataType = ftWideString
        Name = 'db_session_key'
        Value = nil
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
    object qryUserSessionispublic: TBooleanField
      FieldName = 'ispublic'
      Required = True
    end
    object qryUserSessionusse_jguid: TWideStringField
      FieldName = 'usse_jguid'
      Size = 40
    end
    object qryUserSessionsurs_jguid: TWideStringField
      FieldName = 'surs_jguid'
      Required = True
      Size = 40
    end
    object qryUserSessionsurs_deleted: TBooleanField
      FieldName = 'surs_deleted'
    end
    object qryUserSessioninsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryUserSessionstart_time: TDateTimeField
      FieldName = 'start_time'
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
        'smsconfirmed, smsdate, smschecknumber, address_town, p_facebook_' +
        'json, facebook_json, address_state_province, uspr_jguid, db_sche' +
        'ma_id, supr_jguid, supr_deleted, anagraph_id)'
      'VALUES'
      
        '  (:db_user_id, :country_id, :region_id, :district_id, :town_id,' +
        ' :first_name, :last_name, :address_street, :address_number, :add' +
        'ress_postal_code, :phone, :cellular_phone, :work_phone, :fax_num' +
        'ber, :gender_code, :birth_date, :birth_country_id, :birth_region' +
        '_id, :birth_district_id, :birth_town_id, :public_email, :title, ' +
        ':search_name, :reverse_search, :address_full, :latitude, :longit' +
        'ude, :fiscal_code, :smssent, :smsconfirmed, :smsdate, :smscheckn' +
        'umber, :address_town, :p_facebook_json, :facebook_json, :address' +
        '_state_province, :uspr_jguid, :db_schema_id, :supr_jguid, :supr_' +
        'deleted, :anagraph_id)')
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
        'cknumber, address_town = :address_town, p_facebook_json = :p_fac' +
        'ebook_json, facebook_json = :facebook_json, address_state_provin' +
        'ce = :address_state_province, uspr_jguid = :uspr_jguid, db_schem' +
        'a_id = :db_schema_id, supr_jguid = :supr_jguid, supr_deleted = :' +
        'supr_deleted, anagraph_id = :anagraph_id'
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
        'nt, smsconfirmed, smsdate, smschecknumber, address_town, p_faceb' +
        'ook_json, facebook_json, address_state_province, uspr_jguid, db_' +
        'schema_id, supr_jguid, supr_deleted, anagraph_id FROM system.db_' +
        'users_profiles'
      'WHERE'
      '  db_user_id = :db_user_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.db_users_profiles'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  s.* '
      '  FROM system.db_users_profiles s'
      '  where '
      '      s.db_user_id = :db_user_id')
    MasterSource = dsUserSession
    MasterFields = 'db_user_id'
    DetailFields = 'db_user_id'
    AfterOpen = qryUserProfileAfterOpen
    Left = 80
    Top = 392
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_user_id'
        ParamType = ptInput
        Value = 256
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
    object qryUserProfilep_facebook_json: TWideMemoField
      FieldName = 'p_facebook_json'
      BlobType = ftWideMemo
    end
    object qryUserProfilefacebook_json: TWideMemoField
      FieldName = 'facebook_json'
      BlobType = ftWideMemo
    end
    object qryUserProfileaddress_state_province: TWideStringField
      FieldName = 'address_state_province'
    end
    object qryUserProfileuspr_jguid: TWideStringField
      FieldName = 'uspr_jguid'
      Size = 40
    end
    object qryUserProfiledb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryUserProfilesupr_jguid: TWideStringField
      FieldName = 'supr_jguid'
      Required = True
      Size = 40
    end
    object qryUserProfilesupr_deleted: TBooleanField
      FieldName = 'supr_deleted'
    end
    object qryUserProfileanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryUserProfilejguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
  end
  object qryUser: TUniQuery
    DataTypeMap = <
      item
        DBType = 521
        FieldType = ftDateTime
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT   u.*'
      '  FROM  system.db_users u'
      'WHERE '
      '   u.db_user_id = :db_user_id'
      '--order by db_user_id'
      '')
    Left = 80
    Top = 272
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
    object qryUseruser_deleted: TBooleanField
      FieldName = 'user_deleted'
    end
    object qryUserdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryUsersuse_jguid: TWideStringField
      FieldName = 'suse_jguid'
      Required = True
      Size = 40
    end
    object qryUsersuse_deleted: TBooleanField
      FieldName = 'suse_deleted'
    end
    object qryUsersocial_id: TWideStringField
      FieldName = 'social_id'
      Size = 256
    end
    object qryUsersocial_type: TWideStringField
      FieldName = 'social_type'
      Size = 128
    end
    object qryUserjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
  end
  object spCreatePersonalSchema: TUniStoredProc
    StoredProcName = 'system.createpersonalschema'
    SQL.Strings = (
      'SELECT system.createpersonalschema(:p_session_key)')
    Connection = PgErgoConnection
    Left = 424
    Top = 280
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
  object spUserTest: TUniStoredProc
    StoredProcName = 'system.usertest'
    SQL.Strings = (
      'SELECT system.usertest(:p_username, :p_email)')
    Connection = PgErgoConnection
    Left = 424
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
    SQL.Strings = (
      
        'SELECT system.useradd(:p_email, :p_username, :p_password, :p_cou' +
        'ntry_id, :p_ispublic)')
    Connection = PgErgoConnection
    Left = 424
    Top = 88
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
    SQL.Strings = (
      'SELECT system.userlogin(:p_username, :p_password, :p_email)')
    Connection = PgErgoConnection
    Left = 424
    Top = 24
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
  object qrySearchUserProfile: TUniQuery
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
        'nt, smsconfirmed, smsdate, smschecknumber, address_town FROM sys' +
        'tem.db_users_profiles'
      'WHERE'
      '  db_user_id = :db_user_id')
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
      '      and s.db_user_id = u.db_user_id')
    BeforePost = qrySearchUserProfileBeforePost
    Left = 544
    Top = 56
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
    object qrySearchUserProfilesmsdate: TDateTimeField
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
    object qrySearchUserProfilep_facebook_json: TWideMemoField
      FieldName = 'p_facebook_json'
      BlobType = ftWideMemo
    end
    object qrySearchUserProfilefacebook_json: TWideMemoField
      FieldName = 'facebook_json'
      BlobType = ftWideMemo
    end
    object qrySearchUserProfileaddress_state_province: TWideStringField
      FieldName = 'address_state_province'
    end
    object qrySearchUserProfileuspr_jguid: TWideStringField
      FieldName = 'uspr_jguid'
      Size = 40
    end
    object qrySearchUserProfiledb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qrySearchUserProfilesupr_jguid: TWideStringField
      FieldName = 'supr_jguid'
      Required = True
      Size = 40
    end
    object qrySearchUserProfilesupr_deleted: TBooleanField
      FieldName = 'supr_deleted'
    end
    object qrySearchUserProfileanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qrySearchUserProfilejguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
  end
  object qrySearchUsers: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'full_name'
        FieldType = ftWideString
        FieldLength = 256
        IgnoreErrors = True
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  us.*'
      '  FROM  system.db_users us '
      
        '  -- INNER JOIN  system.db_users_profiles p ON  p.db_user_id = u' +
        's.db_user_id'
      '  WHERE'
      '    ('
      '   us.email = lower(:p_search)'
      '   or'
      '   :p_search = '#39'%'#39
      '  )'
      '  and (us.db_user_id = :p_user_id or :p_user_id = 0)'
      '  limit 100')
    Left = 544
    Top = 120
    ParamData = <
      item
        DataType = ftWideString
        Name = 'p_search'
        ParamType = ptInput
        Value = 'new@user.com'
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = 0
      end>
    object qrySearchUsersactive: TBooleanField
      FieldName = 'active'
      Required = True
    end
    object qrySearchUsersemail: TWideStringField
      FieldName = 'email'
      Required = True
      Size = 256
    end
    object qrySearchUsersdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qrySearchUserspassword: TWideStringField
      FieldName = 'password'
      Required = True
      Size = 128
    end
    object qrySearchUsersusername: TWideStringField
      FieldName = 'username'
      Required = True
      Size = 128
    end
    object qrySearchUsersisactive: TBooleanField
      FieldName = 'isactive'
      Required = True
    end
    object qrySearchUsersverify_token: TWideStringField
      FieldName = 'verify_token'
      Required = True
      Size = 256
    end
    object qrySearchUsersverified: TBooleanField
      FieldName = 'verified'
      Required = True
    end
    object qrySearchUsersdefault_schema_id: TIntegerField
      FieldName = 'default_schema_id'
    end
    object qrySearchUsersispublic: TBooleanField
      FieldName = 'ispublic'
    end
    object qrySearchUsersinternal_key: TWideStringField
      FieldName = 'internal_key'
      Size = 30
    end
    object qrySearchUsersdefault_role_id: TSmallintField
      FieldName = 'default_role_id'
    end
    object qrySearchUserssearch_name: TWideStringField
      FieldName = 'search_name'
      Size = 256
    end
    object qrySearchUsersreverse_search: TWideStringField
      FieldName = 'reverse_search'
      Size = 256
    end
    object qrySearchUsersinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qrySearchUserscountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object qrySearchUsersmain_profile_type_id: TSmallintField
      FieldName = 'main_profile_type_id'
    end
    object qrySearchUsersmain_profile_id: TWideStringField
      FieldName = 'main_profile_id'
      Size = 64
    end
    object qrySearchUsersimage_id: TLargeintField
      FieldName = 'image_id'
    end
    object qrySearchUsersimage_url: TWideStringField
      FieldName = 'image_url'
      Size = 2048
    end
    object qrySearchUsersiso_language_code: TWideStringField
      FieldName = 'iso_language_code'
      FixedChar = True
      Size = 2
    end
    object qrySearchUsersiso_culture_code: TWideStringField
      FieldName = 'iso_culture_code'
      FixedChar = True
      Size = 5
    end
    object qrySearchUsersuser_first_name: TWideStringField
      FieldName = 'user_first_name'
      Size = 256
    end
    object qrySearchUsersuser_family_name: TWideStringField
      FieldName = 'user_family_name'
      Size = 256
    end
    object qrySearchUsersemailsent: TBooleanField
      FieldName = 'emailsent'
    end
    object qrySearchUsersemailconfirmed: TBooleanField
      FieldName = 'emailconfirmed'
    end
    object qrySearchUsersemaildate: TDateTimeField
      FieldName = 'emaildate'
    end
    object qrySearchUserspayment: TBooleanField
      FieldName = 'payment'
    end
    object qrySearchUserspayment_expiration_date: TDateField
      FieldName = 'payment_expiration_date'
    end
    object qrySearchUsersuser_deleted: TBooleanField
      FieldName = 'user_deleted'
    end
    object qrySearchUsersdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qrySearchUserssuse_jguid: TWideStringField
      FieldName = 'suse_jguid'
      Required = True
      Size = 40
    end
    object qrySearchUserssuse_deleted: TBooleanField
      FieldName = 'suse_deleted'
    end
    object qrySearchUserssocial_id: TWideStringField
      FieldName = 'social_id'
      Size = 256
    end
    object qrySearchUserssocial_type: TWideStringField
      FieldName = 'social_type'
      Size = 128
    end
    object qrySearchUsersjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
  end
  object qryGetUserByKey: TUniQuery
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
        '_url, iso_language_code, iso_culture_code FROM system.db_users'
      'WHERE'
      '  db_user_id = :db_user_id')
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
    Left = 424
    Top = 344
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
    object qryGetUserByKeyinsert_date: TDateTimeField
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
    object qryGetUserByKeyemaildate: TDateTimeField
      FieldName = 'emaildate'
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
        'trict_id, birth_town_id, public_email FROM system.db_users_profi' +
        'les'
      'WHERE'
      '  db_user_id = :db_user_id')
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
    MasterSource = dsUserSession
    MasterFields = 'db_user_id'
    DetailFields = 'db_user_id'
    Left = 544
    Top = 240
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
  object spSetUserDefaultSchema: TUniStoredProc
    StoredProcName = 'system.setuserdefaultschema'
    SQL.Strings = (
      'SELECT system.setuserdefaultschema(:p_session_key, :p_user_id)')
    Connection = PgErgoConnection
    Left = 424
    Top = 408
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
  object spUserTestSocial: TUniStoredProc
    StoredProcName = 'system.usertestsocial'
    SQL.Strings = (
      'SELECT system.usertestsocial(:p_socialid, :p_social_kind)')
    Connection = PgErgoConnection
    Left = 656
    Top = 208
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
  object spUserAddSocial: TUniStoredProc
    StoredProcName = 'system.useraddsocial'
    SQL.Strings = (
      
        'SELECT system.useraddsocial(:p_email, :p_socialid, :p_social_kin' +
        'd, :p_country_code, :p_ispublic, :p_firstname, :p_lastname, :p_a' +
        'ddress_town, :p_address_street, :p_address_number, :p_address_po' +
        'stal_code, :p_address_full, :p_public_email, :p_latitude, :p_lon' +
        'gitude, :p_birth_date, :p_fiscal_code, :p_gender_code, :p_cellul' +
        'ar_phone, :p_phone, :p_image_url, :p_facebook_json)')
    Connection = PgErgoConnection
    Left = 656
    Top = 144
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
  object spLoginSocial: TUniStoredProc
    StoredProcName = 'system.userloginsocial'
    SQL.Strings = (
      'SELECT system.userloginsocial(:p_socialid, :p_social_kind)')
    Connection = PgErgoConnection
    Left = 656
    Top = 80
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
  object spStartSessionByUrl: TUniStoredProc
    StoredProcName = 'system.startsessionbyurl'
    SQL.Strings = (
      'SELECT system.startsessionbyurl(:p_url)')
    Connection = PgErgoConnection
    Left = 424
    Top = 464
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
  object qrySessionByUrl: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'startsessionbyurl'
        FieldType = ftWideString
        FieldLength = 256
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from system.startsessionbyurl(:p_url)')
    Left = 424
    Top = 520
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
  object spUserPayment: TUniStoredProc
    StoredProcName = 'system.user_payment'
    SQL.Strings = (
      
        'SELECT system.user_payment(:p_user_id, :p_schema_id, :p_amount, ' +
        ':p_interval_type, :p_interval_duration, :p_payment_date)')
    Connection = PgErgoConnection
    Left = 656
    Top = 280
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
  object qrySession: TUniQuery
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
      'SELECT s.*'
      '  FROM system.db_user_sessions s'
      'WHERE '
      '  db_session_key = :db_session_key'
      '-- db_user_id = 119'
      '')
    Left = 536
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'db_session_key'
        Value = nil
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
    object qrySessionstart_time: TDateTimeField
      FieldName = 'start_time'
    end
    object qrySessioninsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qrySessionispublic: TBooleanField
      FieldName = 'ispublic'
      Required = True
    end
    object qrySessionusse_jguid: TWideStringField
      FieldName = 'usse_jguid'
      Size = 40
    end
    object qrySessionsurs_jguid: TWideStringField
      FieldName = 'surs_jguid'
      Required = True
      Size = 40
    end
    object qrySessionsurs_deleted: TBooleanField
      FieldName = 'surs_deleted'
    end
  end
  object qrySearchDBUsersProfiles: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'full_name'
        FieldType = ftWideString
        FieldLength = 256
        IgnoreErrors = True
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT  us.*, p.public_email, p.title,  p.first_name, p.last_nam' +
        'e, '
      
        '        public.nvl( p.title, '#39#39')  || '#39' '#39' ||  public.nvl( p.first' +
        '_name , '#39#39') '
      
        '                          || '#39' '#39' ||  public.nvl( p.last_name , '#39 +
        #39') as full_name, '
      
        '  p.country_id, region_id, district_id, town_id,  address_street' +
        ', address_number, address_postal_code, phone, cellular_phone, wo' +
        'rk_phone, '
      
        '  fax_number, gender_code, birth_date, birth_country_id, birth_r' +
        'egion_id, birth_district_id, birth_town_id, public_email, title,' +
        ' '
      
        '   address_full, latitude, longitude, fiscal_code, smssent, smsc' +
        'onfirmed, smsdate, smschecknumber, '
      '  address_town  '
      '  FROM system.db_users_profiles p'
      '       , system.db_users us'
      '       , system.db_users_schemas s'
      '  where '
      '  p.db_user_id = s.db_user_id'
      '  and'
      '  p.db_user_id = us.db_user_id'
      ''
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
      ''
      '  and'
      '    ('
      
        '   us.email like   '#39'%'#39' || lower(replace(:p_email, '#39' '#39', '#39'%'#39')) || ' +
        #39'%'#39
      '   or'
      
        '   us.email like  '#39'%'#39' || lower(replace(:p_email, '#39' '#39', '#39'%'#39')) || '#39 +
        '%'#39
      '   or'
      '   :p_email = '#39'%'#39
      '  )')
    AfterOpen = qrySearchDBUsersProfilesAfterOpen
    AfterScroll = qrySearchDBUsersProfilesAfterScroll
    Left = 80
    Top = 448
    ParamData = <
      item
        DataType = ftWideString
        Name = 'p_search'
        ParamType = ptInput
        Value = 'ard ric'
      end
      item
        DataType = ftWideString
        Name = 'p_email'
        ParamType = ptInput
        Value = 'rickyarzu'
      end>
    object qrySearchDBUsersProfilesactive: TBooleanField
      FieldName = 'active'
      ReadOnly = True
      Required = True
    end
    object qrySearchDBUsersProfilesemail: TWideStringField
      FieldName = 'email'
      ReadOnly = True
      Required = True
      Size = 256
    end
    object qrySearchDBUsersProfilesdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      ReadOnly = True
      Required = True
    end
    object qrySearchDBUsersProfilespassword: TWideStringField
      FieldName = 'password'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object qrySearchDBUsersProfilesusername: TWideStringField
      FieldName = 'username'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object qrySearchDBUsersProfilesisactive: TBooleanField
      FieldName = 'isactive'
      ReadOnly = True
      Required = True
    end
    object qrySearchDBUsersProfilesverify_token: TWideStringField
      FieldName = 'verify_token'
      ReadOnly = True
      Required = True
      Size = 256
    end
    object qrySearchDBUsersProfilesverified: TBooleanField
      FieldName = 'verified'
      ReadOnly = True
      Required = True
    end
    object qrySearchDBUsersProfilesdefault_schema_id: TIntegerField
      FieldName = 'default_schema_id'
      ReadOnly = True
    end
    object qrySearchDBUsersProfilesispublic: TBooleanField
      FieldName = 'ispublic'
      ReadOnly = True
    end
    object qrySearchDBUsersProfilesinternal_key: TWideStringField
      FieldName = 'internal_key'
      ReadOnly = True
      Size = 30
    end
    object qrySearchDBUsersProfilesdefault_role_id: TSmallintField
      FieldName = 'default_role_id'
      ReadOnly = True
    end
    object qrySearchDBUsersProfilessearch_name: TWideStringField
      FieldName = 'search_name'
      ReadOnly = True
      Size = 256
    end
    object qrySearchDBUsersProfilesreverse_search: TWideStringField
      FieldName = 'reverse_search'
      ReadOnly = True
      Size = 256
    end
    object qrySearchDBUsersProfilesinsert_date: TDateTimeField
      FieldName = 'insert_date'
      ReadOnly = True
    end
    object qrySearchDBUsersProfilescountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object qrySearchDBUsersProfilesmain_profile_type_id: TSmallintField
      FieldName = 'main_profile_type_id'
      ReadOnly = True
    end
    object qrySearchDBUsersProfilesmain_profile_id: TWideStringField
      FieldName = 'main_profile_id'
      ReadOnly = True
      Size = 64
    end
    object qrySearchDBUsersProfilesimage_id: TLargeintField
      FieldName = 'image_id'
      ReadOnly = True
    end
    object qrySearchDBUsersProfilesimage_url: TWideStringField
      FieldName = 'image_url'
      ReadOnly = True
      Size = 2048
    end
    object qrySearchDBUsersProfilesiso_language_code: TWideStringField
      FieldName = 'iso_language_code'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object qrySearchDBUsersProfilesiso_culture_code: TWideStringField
      FieldName = 'iso_culture_code'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object qrySearchDBUsersProfilesuser_first_name: TWideStringField
      FieldName = 'user_first_name'
      ReadOnly = True
      Size = 256
    end
    object qrySearchDBUsersProfilesuser_family_name: TWideStringField
      FieldName = 'user_family_name'
      ReadOnly = True
      Size = 256
    end
    object qrySearchDBUsersProfilesemailsent: TBooleanField
      FieldName = 'emailsent'
      ReadOnly = True
    end
    object qrySearchDBUsersProfilesemailconfirmed: TBooleanField
      FieldName = 'emailconfirmed'
      ReadOnly = True
    end
    object qrySearchDBUsersProfilesemaildate: TDateTimeField
      FieldName = 'emaildate'
      ReadOnly = True
    end
    object qrySearchDBUsersProfilespayment: TBooleanField
      FieldName = 'payment'
      ReadOnly = True
    end
    object qrySearchDBUsersProfilespayment_expiration_date: TDateField
      FieldName = 'payment_expiration_date'
      ReadOnly = True
    end
    object qrySearchDBUsersProfilesuser_deleted: TBooleanField
      FieldName = 'user_deleted'
      ReadOnly = True
    end
    object qrySearchDBUsersProfilesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      ReadOnly = True
    end
    object qrySearchDBUsersProfilessuse_jguid: TWideStringField
      FieldName = 'suse_jguid'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrySearchDBUsersProfilessuse_deleted: TBooleanField
      FieldName = 'suse_deleted'
      ReadOnly = True
    end
    object qrySearchDBUsersProfilessocial_id: TWideStringField
      FieldName = 'social_id'
      ReadOnly = True
      Size = 256
    end
    object qrySearchDBUsersProfilessocial_type: TWideStringField
      FieldName = 'social_type'
      ReadOnly = True
      Size = 128
    end
    object qrySearchDBUsersProfilesjguid: TGuidField
      FieldName = 'jguid'
      ReadOnly = True
      Size = 38
    end
    object qrySearchDBUsersProfilespublic_email: TWideStringField
      FieldName = 'public_email'
      Size = 256
    end
    object qrySearchDBUsersProfilestitle: TWideStringField
      FieldName = 'title'
      Size = 30
    end
    object qrySearchDBUsersProfilesfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qrySearchDBUsersProfileslast_name: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object qrySearchDBUsersProfilesfull_name: TWideStringField
      FieldName = 'full_name'
      ReadOnly = True
      Size = 256
    end
    object qrySearchDBUsersProfilescountry_id_1: TSmallintField
      FieldName = 'country_id_1'
    end
    object qrySearchDBUsersProfilesregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object qrySearchDBUsersProfilesdistrict_id: TSmallintField
      FieldName = 'district_id'
    end
    object qrySearchDBUsersProfilestown_id: TIntegerField
      FieldName = 'town_id'
    end
    object qrySearchDBUsersProfilesaddress_street: TWideStringField
      FieldName = 'address_street'
      Size = 128
    end
    object qrySearchDBUsersProfilesaddress_number: TWideStringField
      FieldName = 'address_number'
      Size = 12
    end
    object qrySearchDBUsersProfilesaddress_postal_code: TWideStringField
      FieldName = 'address_postal_code'
    end
    object qrySearchDBUsersProfilesphone: TWideStringField
      FieldName = 'phone'
    end
    object qrySearchDBUsersProfilescellular_phone: TWideStringField
      FieldName = 'cellular_phone'
    end
    object qrySearchDBUsersProfileswork_phone: TWideStringField
      FieldName = 'work_phone'
    end
    object qrySearchDBUsersProfilesfax_number: TWideStringField
      FieldName = 'fax_number'
    end
    object qrySearchDBUsersProfilesgender_code: TWideStringField
      FieldName = 'gender_code'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qrySearchDBUsersProfilesbirth_date: TDateField
      FieldName = 'birth_date'
    end
    object qrySearchDBUsersProfilesbirth_country_id: TSmallintField
      FieldName = 'birth_country_id'
    end
    object qrySearchDBUsersProfilesbirth_region_id: TSmallintField
      FieldName = 'birth_region_id'
    end
    object qrySearchDBUsersProfilesbirth_district_id: TSmallintField
      FieldName = 'birth_district_id'
    end
    object qrySearchDBUsersProfilesbirth_town_id: TIntegerField
      FieldName = 'birth_town_id'
    end
    object qrySearchDBUsersProfilespublic_email_1: TWideStringField
      FieldName = 'public_email_1'
      Size = 256
    end
    object qrySearchDBUsersProfilestitle_1: TWideStringField
      FieldName = 'title_1'
      Size = 30
    end
    object qrySearchDBUsersProfilesaddress_full: TWideStringField
      FieldName = 'address_full'
      Size = 2048
    end
    object qrySearchDBUsersProfileslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qrySearchDBUsersProfileslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qrySearchDBUsersProfilesfiscal_code: TWideStringField
      FieldName = 'fiscal_code'
    end
    object qrySearchDBUsersProfilessmssent: TBooleanField
      FieldName = 'smssent'
    end
    object qrySearchDBUsersProfilessmsconfirmed: TBooleanField
      FieldName = 'smsconfirmed'
    end
    object qrySearchDBUsersProfilessmsdate: TDateTimeField
      FieldName = 'smsdate'
    end
    object qrySearchDBUsersProfilessmschecknumber: TWideStringField
      FieldName = 'smschecknumber'
      Size = 4
    end
    object qrySearchDBUsersProfilesaddress_town: TWideStringField
      FieldName = 'address_town'
      Size = 256
    end
  end
  object spRevokePayment: TUniStoredProc
    StoredProcName = 'system.user_payment'
    SQL.Strings = (
      
        'SELECT system.user_payment(:p_user_id, :p_schema_id, :p_amount, ' +
        ':p_interval_type, :p_interval_duration, :p_payment_date)')
    Connection = PgErgoConnection
    Left = 656
    Top = 336
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
  object spUserPaymentEmail: TUniStoredProc
    StoredProcName = 'system.user_payment_email'
    SQL.Strings = (
      'SELECT system.user_payment_email(:p_email)')
    Connection = PgErgoConnection
    Left = 656
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_email'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'system.user_payment_email:0'
  end
  object spUserDel: TUniStoredProc
    StoredProcName = 'system.userdel'
    SQL.Strings = (
      'SELECT system.userdel(:p_user_id)')
    Connection = PgErgoConnection
    Left = 656
    Top = 464
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'system.userdel:0'
  end
  object qrySearchDBUserSessions: TUniQuery
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
    Left = 80
    Top = 512
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
    object IntegerField1: TIntegerField
      FieldName = 'db_user_id'
      ReadOnly = True
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'email'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object WideStringField2: TWideStringField
      FieldName = 'public_email'
      Size = 256
    end
    object WideStringField3: TWideStringField
      FieldName = 'title'
      Size = 30
    end
    object WideStringField4: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object WideStringField5: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object WideStringField6: TWideStringField
      FieldName = 'full_name'
      ReadOnly = True
      Size = 256
    end
  end
  object qryLogin: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'result'
        FieldType = ftWideString
        FieldLength = 128
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT system.userlogin(:p_username, :p_password, :p_email) as R' +
        'esult')
    Left = 248
    ParamData = <
      item
        DataType = ftWideString
        Name = 'p_username'
        Value = 'rickyarzu@gmail.com'
      end
      item
        DataType = ftWideString
        Name = 'p_password'
        Value = 'f4nkul0'
      end
      item
        DataType = ftWideString
        Name = 'p_email'
        Value = 'rickyarzu@gmail.com'
      end>
    object qryLoginresult: TWideStringField
      FieldName = 'result'
      ReadOnly = True
      Size = 128
    end
  end
  object qryUserAdd: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT system.useradd(:p_email, :p_username, :p_password, :p_cou' +
        'ntry_id, :p_ispublic)')
    Left = 248
    Top = 56
    ParamData = <
      item
        DataType = ftWideString
        Name = 'p_email'
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_username'
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_password'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_country_id'
        Value = 1
      end
      item
        DataType = ftBoolean
        Name = 'p_ispublic'
        Value = False
      end>
    object qryUserAdduseradd: TWideMemoField
      FieldName = 'useradd'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object qryUserTest: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT system.usertest(:p_username, :p_email) as Result')
    Left = 248
    Top = 112
    ParamData = <
      item
        DataType = ftWideString
        Name = 'p_username'
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_email'
        Value = nil
      end>
    object qryUserTestresult: TIntegerField
      FieldName = 'result'
      ReadOnly = True
    end
  end
  object qryCreatePersonalSchema: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT system.createpersonalschema(:p_session_key) as Result')
    Left = 248
    Top = 232
    ParamData = <
      item
        DataType = ftWideString
        Name = 'p_session_key'
        ParamType = ptInput
        Value = nil
      end>
    object qryCreatePersonalSchemaresult: TWideMemoField
      FieldName = 'result'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object spAssignAnagraphIDToUser: TUniStoredProc
    StoredProcName = 'system.assign_anagraphid_to_user'
    SQL.Strings = (
      
        'SELECT system.assign_anagraphid_to_user(:p_anagraph_id, :p_db_us' +
        'er_id)')
    Connection = PgErgoConnection
    Left = 248
    Top = 296
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_anagraph_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'p_db_user_id'
        ParamType = ptInput
        Value = 0
      end>
    CommandStoredProcName = 'system.assign_anagraphid_to_user'
  end
  object qryAnagraphProfile: TUniQuery
    KeyFields = 'anagraph_id'
    SQLInsert.Strings = (
      'INSERT INTO anagraph.anagraphs_view'
      
        '  (db_schema_id, anagraph_id, an_title, an_name, an_second_name,' +
        ' an_last_name, an_notes, an_address, an_town, an_postal_code, an' +
        '_iso_country_code, an_state_province, an_phone, an_phone2, an_fa' +
        'x, an_cellular, an_code, an_vat_numeric, an_email, an_web, an_co' +
        'ntact_id, an_bank_account, an_payment_des, an_discount, an_dista' +
        'nce, an_distance_mesunit, an_sex, an_cod_comune, an_cod_provinci' +
        'a, an_credit_line, an_currency_id, an_cat_id, an_notes2, an_note' +
        's3, an_edi, an_privacy, an_office_id, an_cod_prov_rif, an_data_f' +
        'ido, an_user_insert, an_user_update, an_area_id, an_agent_id, an' +
        '_area_code, an_zone_id, an_ins_id, an_upd_id, an_documents, an_l' +
        'ast_date, an_birthdate, an_office_type_id, an_searchname, an_ext' +
        'ra_ue_flag, an_external_code, an_vat_id, an_personal_fiscal_code' +
        ', an_privacy_print, an_sms, an_encrypted_fiscal_code, an_vat_pur' +
        'centage, an_status, an_ownsite, an_insurance_id, an_anagraphs_an' +
        'agraph_id, an_main_language_code, an_main_culture_code, an_fisca' +
        'l_code, an_main_group_id, an_image_id, latitude, longitude, test' +
        ', search_index, an_birthplace, an_birthplace_code, anagraph64, m' +
        'ain_category_id, osm_id, an_description, an_address_number, anag' +
        '_jguid, anag_deleted, insert_date, update_date, user_insert, jgu' +
        'id, custom_field_1, custom_field_2, custom_field_3, custom_float' +
        '_1, custom_float_2, custom_int_1, custom_int_2, supplier_id, ves' +
        'sel_id, an_country_id, an_iso_country_code2, deleted, an_group_i' +
        'd, an_credit_limit, an_credit, shipment_name, shipment_postal_co' +
        'de, shipment_town, shipment_address, shipment_phone, shipment_st' +
        'ate_province, billing_name, billing_postal_code, billing_town, b' +
        'illing_address, billing_phone, billing_state_province, an_full_a' +
        'ddress)'
      'VALUES'
      
        '  (:db_schema_id, :anagraph_id, :an_title, :an_name, :an_second_' +
        'name, :an_last_name, :an_notes, :an_address, :an_town, :an_posta' +
        'l_code, :an_iso_country_code, :an_state_province, :an_phone, :an' +
        '_phone2, :an_fax, :an_cellular, :an_code, :an_vat_numeric, :an_e' +
        'mail, :an_web, :an_contact_id, :an_bank_account, :an_payment_des' +
        ', :an_discount, :an_distance, :an_distance_mesunit, :an_sex, :an' +
        '_cod_comune, :an_cod_provincia, :an_credit_line, :an_currency_id' +
        ', :an_cat_id, :an_notes2, :an_notes3, :an_edi, :an_privacy, :an_' +
        'office_id, :an_cod_prov_rif, :an_data_fido, :an_user_insert, :an' +
        '_user_update, :an_area_id, :an_agent_id, :an_area_code, :an_zone' +
        '_id, :an_ins_id, :an_upd_id, :an_documents, :an_last_date, :an_b' +
        'irthdate, :an_office_type_id, :an_searchname, :an_extra_ue_flag,' +
        ' :an_external_code, :an_vat_id, :an_personal_fiscal_code, :an_pr' +
        'ivacy_print, :an_sms, :an_encrypted_fiscal_code, :an_vat_purcent' +
        'age, :an_status, :an_ownsite, :an_insurance_id, :an_anagraphs_an' +
        'agraph_id, :an_main_language_code, :an_main_culture_code, :an_fi' +
        'scal_code, :an_main_group_id, :an_image_id, :latitude, :longitud' +
        'e, :test, :search_index, :an_birthplace, :an_birthplace_code, :a' +
        'nagraph64, :main_category_id, :osm_id, :an_description, :an_addr' +
        'ess_number, :anag_jguid, :anag_deleted, :insert_date, :update_da' +
        'te, :user_insert, :jguid, :custom_field_1, :custom_field_2, :cus' +
        'tom_field_3, :custom_float_1, :custom_float_2, :custom_int_1, :c' +
        'ustom_int_2, :supplier_id, :vessel_id, :an_country_id, :an_iso_c' +
        'ountry_code2, :deleted, :an_group_id, :an_credit_limit, :an_cred' +
        'it, :shipment_name, :shipment_postal_code, :shipment_town, :ship' +
        'ment_address, :shipment_phone, :shipment_state_province, :billin' +
        'g_name, :billing_postal_code, :billing_town, :billing_address, :' +
        'billing_phone, :billing_state_province, :an_full_address)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.anagraphs_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE anagraph.anagraphs_view'
      'SET'
      
        '  db_schema_id = :db_schema_id, anagraph_id = :anagraph_id, an_t' +
        'itle = :an_title, an_name = :an_name, an_second_name = :an_secon' +
        'd_name, an_last_name = :an_last_name, an_notes = :an_notes, an_a' +
        'ddress = :an_address, an_town = :an_town, an_postal_code = :an_p' +
        'ostal_code, an_iso_country_code = :an_iso_country_code, an_state' +
        '_province = :an_state_province, an_phone = :an_phone, an_phone2 ' +
        '= :an_phone2, an_fax = :an_fax, an_cellular = :an_cellular, an_c' +
        'ode = :an_code, an_vat_numeric = :an_vat_numeric, an_email = :an' +
        '_email, an_web = :an_web, an_contact_id = :an_contact_id, an_ban' +
        'k_account = :an_bank_account, an_payment_des = :an_payment_des, ' +
        'an_discount = :an_discount, an_distance = :an_distance, an_dista' +
        'nce_mesunit = :an_distance_mesunit, an_sex = :an_sex, an_cod_com' +
        'une = :an_cod_comune, an_cod_provincia = :an_cod_provincia, an_c' +
        'redit_line = :an_credit_line, an_currency_id = :an_currency_id, ' +
        'an_cat_id = :an_cat_id, an_notes2 = :an_notes2, an_notes3 = :an_' +
        'notes3, an_edi = :an_edi, an_privacy = :an_privacy, an_office_id' +
        ' = :an_office_id, an_cod_prov_rif = :an_cod_prov_rif, an_data_fi' +
        'do = :an_data_fido, an_user_insert = :an_user_insert, an_user_up' +
        'date = :an_user_update, an_area_id = :an_area_id, an_agent_id = ' +
        ':an_agent_id, an_area_code = :an_area_code, an_zone_id = :an_zon' +
        'e_id, an_ins_id = :an_ins_id, an_upd_id = :an_upd_id, an_documen' +
        'ts = :an_documents, an_last_date = :an_last_date, an_birthdate =' +
        ' :an_birthdate, an_office_type_id = :an_office_type_id, an_searc' +
        'hname = :an_searchname, an_extra_ue_flag = :an_extra_ue_flag, an' +
        '_external_code = :an_external_code, an_vat_id = :an_vat_id, an_p' +
        'ersonal_fiscal_code = :an_personal_fiscal_code, an_privacy_print' +
        ' = :an_privacy_print, an_sms = :an_sms, an_encrypted_fiscal_code' +
        ' = :an_encrypted_fiscal_code, an_vat_purcentage = :an_vat_purcen' +
        'tage, an_status = :an_status, an_ownsite = :an_ownsite, an_insur' +
        'ance_id = :an_insurance_id, an_anagraphs_anagraph_id = :an_anagr' +
        'aphs_anagraph_id, an_main_language_code = :an_main_language_code' +
        ', an_main_culture_code = :an_main_culture_code, an_fiscal_code =' +
        ' :an_fiscal_code, an_main_group_id = :an_main_group_id, an_image' +
        '_id = :an_image_id, latitude = :latitude, longitude = :longitude' +
        ', test = :test, search_index = :search_index, an_birthplace = :a' +
        'n_birthplace, an_birthplace_code = :an_birthplace_code, anagraph' +
        '64 = :anagraph64, main_category_id = :main_category_id, osm_id =' +
        ' :osm_id, an_description = :an_description, an_address_number = ' +
        ':an_address_number, anag_jguid = :anag_jguid, anag_deleted = :an' +
        'ag_deleted, insert_date = :insert_date, update_date = :update_da' +
        'te, user_insert = :user_insert, jguid = :jguid, custom_field_1 =' +
        ' :custom_field_1, custom_field_2 = :custom_field_2, custom_field' +
        '_3 = :custom_field_3, custom_float_1 = :custom_float_1, custom_f' +
        'loat_2 = :custom_float_2, custom_int_1 = :custom_int_1, custom_i' +
        'nt_2 = :custom_int_2, supplier_id = :supplier_id, vessel_id = :v' +
        'essel_id, an_country_id = :an_country_id, an_iso_country_code2 =' +
        ' :an_iso_country_code2, deleted = :deleted, an_group_id = :an_gr' +
        'oup_id, an_credit_limit = :an_credit_limit, an_credit = :an_cred' +
        'it, shipment_name = :shipment_name, shipment_postal_code = :ship' +
        'ment_postal_code, shipment_town = :shipment_town, shipment_addre' +
        'ss = :shipment_address, shipment_phone = :shipment_phone, shipme' +
        'nt_state_province = :shipment_state_province, billing_name = :bi' +
        'lling_name, billing_postal_code = :billing_postal_code, billing_' +
        'town = :billing_town, billing_address = :billing_address, billin' +
        'g_phone = :billing_phone, billing_state_province = :billing_stat' +
        'e_province, an_full_address = :an_full_address'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.anagraphs_view'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, anagraph_id, an_title, an_name, an_second_n' +
        'ame, an_last_name, an_notes, an_address, an_town, an_postal_code' +
        ', an_iso_country_code, an_state_province, an_phone, an_phone2, a' +
        'n_fax, an_cellular, an_code, an_vat_numeric, an_email, an_web, a' +
        'n_contact_id, an_bank_account, an_payment_des, an_discount, an_d' +
        'istance, an_distance_mesunit, an_sex, an_cod_comune, an_cod_prov' +
        'incia, an_credit_line, an_currency_id, an_cat_id, an_notes2, an_' +
        'notes3, an_edi, an_privacy, an_office_id, an_cod_prov_rif, an_da' +
        'ta_fido, an_user_insert, an_user_update, an_area_id, an_agent_id' +
        ', an_area_code, an_zone_id, an_ins_id, an_upd_id, an_documents, ' +
        'an_last_date, an_birthdate, an_office_type_id, an_searchname, an' +
        '_extra_ue_flag, an_external_code, an_vat_id, an_personal_fiscal_' +
        'code, an_privacy_print, an_sms, an_encrypted_fiscal_code, an_vat' +
        '_purcentage, an_status, an_ownsite, an_insurance_id, an_anagraph' +
        's_anagraph_id, an_main_language_code, an_main_culture_code, an_f' +
        'iscal_code, an_main_group_id, an_image_id, latitude, longitude, ' +
        'test, search_index, an_birthplace, an_birthplace_code, anagraph6' +
        '4, main_category_id, osm_id, an_description, an_address_number, ' +
        'anag_jguid, anag_deleted, insert_date, update_date, user_insert,' +
        ' jguid, custom_field_1, custom_field_2, custom_field_3, custom_f' +
        'loat_1, custom_float_2, custom_int_1, custom_int_2, supplier_id,' +
        ' vessel_id, an_country_id, an_iso_country_code2, deleted, an_gro' +
        'up_id, an_credit_limit, an_credit, shipment_name, shipment_posta' +
        'l_code, shipment_town, shipment_address, shipment_phone, shipmen' +
        't_state_province, billing_name, billing_postal_code, billing_tow' +
        'n, billing_address, billing_phone, billing_state_province, an_fu' +
        'll_address FROM anagraph.anagraphs_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs_view'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'jguid'
        FieldType = ftString
        FieldLength = 40
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select a.*'
      'from anagraph.anagraphs_view a'
      'where '
      'anagraph_id = :anagraph_id'
      'and'
      ':anagraph_id > 0')
    Left = 247
    Top = 174
    ParamData = <
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = 0
      end>
    object qryAnagraphProfiledb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryAnagraphProfileanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryAnagraphProfilean_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qryAnagraphProfilean_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qryAnagraphProfilean_second_name: TWideStringField
      FieldName = 'an_second_name'
      Size = 128
    end
    object qryAnagraphProfilean_last_name: TWideStringField
      FieldName = 'an_last_name'
      Size = 128
    end
    object qryAnagraphProfilean_notes: TWideStringField
      FieldName = 'an_notes'
      Size = 512
    end
    object qryAnagraphProfilean_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qryAnagraphProfilean_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qryAnagraphProfilean_postal_code: TWideStringField
      FieldName = 'an_postal_code'
    end
    object qryAnagraphProfilean_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Size = 3
    end
    object qryAnagraphProfilean_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 128
    end
    object qryAnagraphProfilean_phone: TWideStringField
      FieldName = 'an_phone'
      Size = 30
    end
    object qryAnagraphProfilean_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qryAnagraphProfilean_fax: TWideStringField
      FieldName = 'an_fax'
      Size = 30
    end
    object qryAnagraphProfilean_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryAnagraphProfilean_code: TWideStringField
      FieldName = 'an_code'
      Size = 15
    end
    object qryAnagraphProfilean_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      Size = 128
    end
    object qryAnagraphProfilean_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryAnagraphProfilean_web: TWideStringField
      FieldName = 'an_web'
      Size = 128
    end
    object qryAnagraphProfilean_contact_id: TIntegerField
      FieldName = 'an_contact_id'
    end
    object qryAnagraphProfilean_bank_account: TWideStringField
      FieldName = 'an_bank_account'
      Size = 255
    end
    object qryAnagraphProfilean_payment_des: TWideStringField
      FieldName = 'an_payment_des'
      Size = 128
    end
    object qryAnagraphProfilean_discount: TFloatField
      FieldName = 'an_discount'
    end
    object qryAnagraphProfilean_distance: TIntegerField
      FieldName = 'an_distance'
    end
    object qryAnagraphProfilean_distance_mesunit: TSmallintField
      FieldName = 'an_distance_mesunit'
    end
    object qryAnagraphProfilean_sex: TWideStringField
      FieldName = 'an_sex'
      Size = 1
    end
    object qryAnagraphProfilean_cod_comune: TWideStringField
      FieldName = 'an_cod_comune'
      Size = 3
    end
    object qryAnagraphProfilean_cod_provincia: TWideStringField
      FieldName = 'an_cod_provincia'
      Size = 3
    end
    object qryAnagraphProfilean_credit_line: TFloatField
      FieldName = 'an_credit_line'
    end
    object qryAnagraphProfilean_currency_id: TSmallintField
      FieldName = 'an_currency_id'
    end
    object qryAnagraphProfilean_cat_id: TSmallintField
      FieldName = 'an_cat_id'
    end
    object qryAnagraphProfilean_notes2: TWideStringField
      FieldName = 'an_notes2'
      Size = 40
    end
    object qryAnagraphProfilean_notes3: TWideMemoField
      FieldName = 'an_notes3'
      BlobType = ftWideMemo
    end
    object qryAnagraphProfilean_edi: TBooleanField
      FieldName = 'an_edi'
    end
    object qryAnagraphProfilean_privacy: TBooleanField
      FieldName = 'an_privacy'
    end
    object qryAnagraphProfilean_office_id: TIntegerField
      FieldName = 'an_office_id'
    end
    object qryAnagraphProfilean_cod_prov_rif: TWideStringField
      FieldName = 'an_cod_prov_rif'
      Size = 3
    end
    object qryAnagraphProfilean_data_fido: TDateField
      FieldName = 'an_data_fido'
    end
    object qryAnagraphProfilean_user_insert: TWideStringField
      FieldName = 'an_user_insert'
      Size = 30
    end
    object qryAnagraphProfilean_user_update: TWideStringField
      FieldName = 'an_user_update'
      Size = 30
    end
    object qryAnagraphProfilean_area_id: TSmallintField
      FieldName = 'an_area_id'
    end
    object qryAnagraphProfilean_agent_id: TSmallintField
      FieldName = 'an_agent_id'
    end
    object qryAnagraphProfilean_area_code: TWideStringField
      FieldName = 'an_area_code'
      Size = 1
    end
    object qryAnagraphProfilean_zone_id: TWideStringField
      FieldName = 'an_zone_id'
      Size = 1
    end
    object qryAnagraphProfilean_ins_id: TLargeintField
      FieldName = 'an_ins_id'
    end
    object qryAnagraphProfilean_upd_id: TLargeintField
      FieldName = 'an_upd_id'
    end
    object qryAnagraphProfilean_documents: TSmallintField
      FieldName = 'an_documents'
    end
    object qryAnagraphProfilean_last_date: TDateField
      FieldName = 'an_last_date'
    end
    object qryAnagraphProfilean_birthdate: TDateField
      FieldName = 'an_birthdate'
    end
    object qryAnagraphProfilean_office_type_id: TSmallintField
      FieldName = 'an_office_type_id'
    end
    object qryAnagraphProfilean_searchname: TWideStringField
      FieldName = 'an_searchname'
      Size = 128
    end
    object qryAnagraphProfilean_extra_ue_flag: TBooleanField
      FieldName = 'an_extra_ue_flag'
    end
    object qryAnagraphProfilean_external_code: TWideStringField
      FieldName = 'an_external_code'
    end
    object qryAnagraphProfilean_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qryAnagraphProfilean_personal_fiscal_code: TWideStringField
      FieldName = 'an_personal_fiscal_code'
      Size = 16
    end
    object qryAnagraphProfilean_privacy_print: TSmallintField
      FieldName = 'an_privacy_print'
    end
    object qryAnagraphProfilean_sms: TBooleanField
      FieldName = 'an_sms'
    end
    object qryAnagraphProfilean_encrypted_fiscal_code: TWideStringField
      FieldName = 'an_encrypted_fiscal_code'
      Size = 256
    end
    object qryAnagraphProfilean_vat_purcentage: TSmallintField
      FieldName = 'an_vat_purcentage'
    end
    object qryAnagraphProfilean_status: TSmallintField
      FieldName = 'an_status'
    end
    object qryAnagraphProfilean_ownsite: TBooleanField
      FieldName = 'an_ownsite'
    end
    object qryAnagraphProfilean_insurance_id: TLargeintField
      FieldName = 'an_insurance_id'
    end
    object qryAnagraphProfilean_anagraphs_anagraph_id: TIntegerField
      FieldName = 'an_anagraphs_anagraph_id'
    end
    object qryAnagraphProfilean_main_language_code: TWideStringField
      FieldName = 'an_main_language_code'
      Size = 2
    end
    object qryAnagraphProfilean_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      Size = 6
    end
    object qryAnagraphProfilean_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qryAnagraphProfilean_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
    end
    object qryAnagraphProfilean_image_id: TLargeintField
      FieldName = 'an_image_id'
    end
    object qryAnagraphProfilelatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryAnagraphProfilelongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryAnagraphProfiletest: TFloatField
      FieldName = 'test'
    end
    object qryAnagraphProfilesearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qryAnagraphProfilean_birthplace: TWideStringField
      FieldName = 'an_birthplace'
      Size = 256
    end
    object qryAnagraphProfilean_birthplace_code: TWideStringField
      FieldName = 'an_birthplace_code'
    end
    object qryAnagraphProfileanagraph64: TWideStringField
      FieldName = 'anagraph64'
      Size = 64
    end
    object qryAnagraphProfilemain_category_id: TSmallintField
      FieldName = 'main_category_id'
    end
    object qryAnagraphProfileosm_id: TLargeintField
      FieldName = 'osm_id'
    end
    object qryAnagraphProfilean_description: TWideStringField
      FieldName = 'an_description'
      Size = 512
    end
    object qryAnagraphProfilean_address_number: TWideStringField
      FieldName = 'an_address_number'
    end
    object qryAnagraphProfileanag_jguid: TWideStringField
      FieldName = 'anag_jguid'
      Size = 40
    end
    object qryAnagraphProfileanag_deleted: TBooleanField
      FieldName = 'anag_deleted'
    end
    object qryAnagraphProfileinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryAnagraphProfileupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryAnagraphProfileuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qryAnagraphProfilejguid: TStringField
      FieldName = 'jguid'
      Size = 40
    end
    object qryAnagraphProfilecustom_field_1: TWideStringField
      FieldName = 'custom_field_1'
      Size = 128
    end
    object qryAnagraphProfilecustom_field_2: TWideStringField
      FieldName = 'custom_field_2'
      Size = 128
    end
    object qryAnagraphProfilecustom_field_3: TWideStringField
      FieldName = 'custom_field_3'
      Size = 128
    end
    object qryAnagraphProfilecustom_float_1: TFloatField
      FieldName = 'custom_float_1'
    end
    object qryAnagraphProfilecustom_float_2: TFloatField
      FieldName = 'custom_float_2'
    end
    object qryAnagraphProfilecustom_int_1: TIntegerField
      FieldName = 'custom_int_1'
    end
    object qryAnagraphProfilecustom_int_2: TIntegerField
      FieldName = 'custom_int_2'
    end
    object qryAnagraphProfilesupplier_id: TIntegerField
      FieldName = 'supplier_id'
    end
    object qryAnagraphProfilevessel_id: TSmallintField
      FieldName = 'vessel_id'
    end
    object qryAnagraphProfilean_country_id: TIntegerField
      FieldName = 'an_country_id'
    end
    object qryAnagraphProfilean_iso_country_code2: TWideStringField
      FieldName = 'an_iso_country_code2'
      FixedChar = True
      Size = 2
    end
    object qryAnagraphProfiledeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryAnagraphProfilean_group_id: TSmallintField
      FieldName = 'an_group_id'
    end
    object qryAnagraphProfilean_credit_limit: TFloatField
      FieldName = 'an_credit_limit'
    end
    object qryAnagraphProfilean_credit: TBooleanField
      FieldName = 'an_credit'
    end
    object qryAnagraphProfileshipment_name: TWideStringField
      FieldName = 'shipment_name'
      Size = 128
    end
    object qryAnagraphProfileshipment_postal_code: TWideStringField
      FieldName = 'shipment_postal_code'
    end
    object qryAnagraphProfileshipment_town: TWideStringField
      FieldName = 'shipment_town'
      Size = 128
    end
    object qryAnagraphProfileshipment_address: TWideStringField
      FieldName = 'shipment_address'
      Size = 256
    end
    object qryAnagraphProfileshipment_phone: TWideStringField
      FieldName = 'shipment_phone'
      Size = 30
    end
    object qryAnagraphProfileshipment_state_province: TWideStringField
      FieldName = 'shipment_state_province'
      Size = 30
    end
    object qryAnagraphProfilebilling_name: TWideStringField
      FieldName = 'billing_name'
      Size = 128
    end
    object qryAnagraphProfilebilling_postal_code: TWideStringField
      FieldName = 'billing_postal_code'
    end
    object qryAnagraphProfilebilling_town: TWideStringField
      FieldName = 'billing_town'
      Size = 128
    end
    object qryAnagraphProfilebilling_address: TWideStringField
      FieldName = 'billing_address'
      Size = 256
    end
    object qryAnagraphProfilebilling_phone: TWideStringField
      FieldName = 'billing_phone'
      Size = 30
    end
    object qryAnagraphProfilebilling_state_province: TWideStringField
      FieldName = 'billing_state_province'
      Size = 30
    end
    object qryAnagraphProfilean_full_address: TWideStringField
      FieldName = 'an_full_address'
      Size = 256
    end
  end
  object qrySchemaAppsConf: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'full_name'
        FieldType = ftWideString
        FieldLength = 256
        IgnoreErrors = True
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  cf.* from system.db_schema_config cf'
      'where db_schema_id = :db_schema_id')
    BeforeOpen = qrySchemaAppsConfBeforeOpen
    BeforePost = qrySchemaAppsConfBeforePost
    Left = 544
    Top = 480
    ParamData = <
      item
        DataType = ftWord
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = nil
      end>
    object qrySchemaAppsConfdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qrySchemaAppsConfconf: TWideMemoField
      FieldName = 'conf'
      Required = True
      BlobType = ftWideMemo
    end
    object qrySchemaAppsConfjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qrySchemaAppsConfdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qrySchemaAppsConfkey: TWideStringField
      FieldName = 'key'
      Required = True
      Size = 128
    end
  end
  object spUserAddWithProfile: TUniStoredProc
    StoredProcName = 'system.useradd_with_profile_json'
    SQL.Strings = (
      
        'SELECT system.useradd_with_profile_json(:p_email, :p_username, :' +
        'p_firstname, :p_lastname, :p_address, :p_town, :p_postal_code, :' +
        'p_password, :p_phone, :p_an_group_id, :p_anagraph_id, :p_default' +
        '_schema_id, :p_country_id, :p_ispublic)')
    Connection = PgErgoConnection
    Left = 424
    Top = 216
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
        Name = 'p_address'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_town'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_postal_code'
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
        Name = 'p_phone'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_an_group_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_anagraph_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_default_schema_id'
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
    CommandStoredProcName = 'system.useradd_with_profile_json'
  end
  object qryListSchemas: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'result'
        FieldType = ftWideString
        FieldLength = 128
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT system.userlogin(:p_username, :p_password, :p_email) as R' +
        'esult')
    Left = 544
    Top = 184
    ParamData = <
      item
        DataType = ftWideString
        Name = 'p_username'
        Value = 'rickyarzu@gmail.com'
      end
      item
        DataType = ftWideString
        Name = 'p_password'
        Value = 'f4nkul0'
      end
      item
        DataType = ftWideString
        Name = 'p_email'
        Value = 'rickyarzu@gmail.com'
      end>
    object WideStringField66: TWideStringField
      FieldName = 'result'
      ReadOnly = True
      Size = 128
    end
  end
end
