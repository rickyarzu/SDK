inherited dmJanuaPgAnagraphStorage: TdmJanuaPgAnagraphStorage
  Height = 382
  Width = 927
  inherited PgErgoConnection: TJanuaUniConnection
    DataTypeMap = <
      item
        DBType = 521
        FieldType = ftDateTime
      end
      item
        DBType = 520
        FieldType = ftDateTime
      end
      item
        DBType = 523
        FieldType = ftString
        FieldLength = 38
      end>
    Port = 5432
    Server = 'pg.januaservers.com'
    SchemaID = 36
    Top = 8
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited PgUniProv: TPostgreSQLUniProvider
    Top = 72
  end
  object lkpGroups: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO anagraph.groups'
      
        '  (db_schema_id, an_group_id, group_des, contact_group, sub_grou' +
        'p, sub_group_des, settings, position, accounting, cod_account, l' +
        'ocal, group_cod, ledger_cod, subledger_cod, grouping, descriptio' +
        'n, angr_jguid, angr_deleted, icon_id, jguid)'
      'VALUES'
      
        '  (:db_schema_id, :an_group_id, :group_des, :contact_group, :sub' +
        '_group, :sub_group_des, :settings, :position, :accounting, :cod_' +
        'account, :local, :group_cod, :ledger_cod, :subledger_cod, :group' +
        'ing, :description, :angr_jguid, :angr_deleted, :icon_id, :jguid)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.groups'
      'WHERE'
      '  an_group_id = :Old_an_group_id')
    SQLUpdate.Strings = (
      'UPDATE anagraph.groups'
      'SET'
      
        '  db_schema_id = :db_schema_id, an_group_id = :an_group_id, grou' +
        'p_des = :group_des, contact_group = :contact_group, sub_group = ' +
        ':sub_group, sub_group_des = :sub_group_des, settings = :settings' +
        ', position = :position, accounting = :accounting, cod_account = ' +
        ':cod_account, local = :local, group_cod = :group_cod, ledger_cod' +
        ' = :ledger_cod, subledger_cod = :subledger_cod, grouping = :grou' +
        'ping, description = :description, angr_jguid = :angr_jguid, angr' +
        '_deleted = :angr_deleted, icon_id = :icon_id, jguid = :jguid'
      'WHERE'
      '  an_group_id = :Old_an_group_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.groups'
      'WHERE'
      '  an_group_id = :Old_an_group_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, an_group_id, group_des, contact_group, sub_' +
        'group, sub_group_des, settings, position, accounting, cod_accoun' +
        't, local, group_cod, ledger_cod, subledger_cod, grouping, descri' +
        'ption, angr_jguid, angr_deleted, icon_id, jguid FROM anagraph.gr' +
        'oups'
      'WHERE'
      '  an_group_id = :an_group_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.groups'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select '
      '      g.* '
      'from '
      '    anagraph.groups g'
      'where '
      '     (g.db_schema_id = :db_schema_id or g.db_schema_id = 0)'
      'order by group_des')
    Left = 272
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 34
      end>
    object lkpGroupsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object lkpGroupsan_group_id: TSmallintField
      FieldName = 'an_group_id'
      Required = True
    end
    object lkpGroupsgroup_des: TWideStringField
      FieldName = 'group_des'
      Required = True
    end
    object lkpGroupscontact_group: TSmallintField
      FieldName = 'contact_group'
    end
    object lkpGroupssub_group: TSmallintField
      FieldName = 'sub_group'
    end
    object lkpGroupssub_group_des: TWideStringField
      FieldName = 'sub_group_des'
    end
    object lkpGroupssettings: TWideStringField
      FieldName = 'settings'
    end
    object lkpGroupsposition: TSmallintField
      FieldName = 'position'
    end
    object lkpGroupsaccounting: TBooleanField
      FieldName = 'accounting'
      Required = True
    end
    object lkpGroupscod_account: TWideStringField
      FieldName = 'cod_account'
      Size = 10
    end
    object lkpGroupslocal: TBooleanField
      FieldName = 'local'
    end
    object lkpGroupsgroup_cod: TWideStringField
      FieldName = 'group_cod'
      Size = 2
    end
    object lkpGroupsledger_cod: TWideStringField
      FieldName = 'ledger_cod'
      Size = 3
    end
    object lkpGroupssubledger_cod: TWideStringField
      FieldName = 'subledger_cod'
      Size = 10
    end
    object lkpGroupsgrouping: TWideStringField
      FieldName = 'grouping'
      Size = 3
    end
    object lkpGroupsdescription: TWideStringField
      FieldName = 'description'
      Required = True
      Size = 30
    end
    object lkpGroupsangr_jguid: TWideStringField
      FieldName = 'angr_jguid'
      Required = True
      Size = 40
    end
    object lkpGroupsangr_deleted: TBooleanField
      FieldName = 'angr_deleted'
    end
    object lkpGroupsicon_id: TSmallintField
      FieldName = 'icon_id'
    end
    object lkpGroupsjguid: TStringField
      FieldName = 'jguid'
      Size = 40
    end
  end
  object dsAnagraph: TDataSource
    DataSet = qryAnagraphs
    Left = 160
    Top = 296
  end
  object lkpCategories: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT category_id, culture_code, category_name'
      #9'FROM anagraph.categories_translations where culture_code = '#39'it'#39
      'order by category_name')
    Left = 392
    Top = 304
    object lkpCategoriescategory_id: TSmallintField
      FieldName = 'category_id'
      Required = True
    end
    object lkpCategoriesculture_code: TWideStringField
      FieldName = 'culture_code'
      Required = True
      FixedChar = True
      Size = 5
    end
    object lkpCategoriescategory_name: TWideStringField
      FieldName = 'category_name'
      Required = True
      Size = 128
    end
  end
  object qryAnagraphCategoriesMView: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from  anagraph.anagraphs_categories_mview ')
    Left = 272
    Top = 264
    object qryAnagraphCategoriesMViewmaster_category_name: TWideStringField
      DisplayWidth = 25
      FieldName = 'master_category_name'
      Size = 128
    end
    object qryAnagraphCategoriesMViewmaster_image_id: TSmallintField
      DisplayWidth = 13
      FieldName = 'master_image_id'
    end
    object qryAnagraphCategoriesMViewcategory_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'category_id'
    end
    object qryAnagraphCategoriesMViewcategory_name: TWideStringField
      DisplayWidth = 128
      FieldName = 'category_name'
      Size = 128
    end
    object qryAnagraphCategoriesMViewimage_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'image_id'
    end
    object qryAnagraphCategoriesMViewculture_code: TWideStringField
      DisplayWidth = 10
      FieldName = 'culture_code'
      FixedChar = True
      Size = 5
    end
    object qryAnagraphCategoriesMViewtrans_category_name: TWideStringField
      DisplayWidth = 128
      FieldName = 'trans_category_name'
      Size = 128
    end
    object qryAnagraphCategoriesMViewdb_schema_id: TIntegerField
      DisplayWidth = 11
      FieldName = 'db_schema_id'
    end
    object qryAnagraphCategoriesMViewanagraph_id: TIntegerField
      DisplayWidth = 10
      FieldName = 'anagraph_id'
    end
    object qryAnagraphCategoriesMViewan_title: TWideStringField
      DisplayWidth = 32
      FieldName = 'an_title'
      Size = 32
    end
    object qryAnagraphCategoriesMViewan_name: TWideStringField
      DisplayWidth = 128
      FieldName = 'an_name'
      Size = 128
    end
    object qryAnagraphCategoriesMViewan_second_name: TWideStringField
      DisplayWidth = 128
      FieldName = 'an_second_name'
      Size = 128
    end
    object qryAnagraphCategoriesMViewan_last_name: TWideStringField
      DisplayWidth = 128
      FieldName = 'an_last_name'
      Size = 128
    end
    object qryAnagraphCategoriesMViewan_notes: TWideStringField
      DisplayWidth = 512
      FieldName = 'an_notes'
      Size = 512
    end
    object qryAnagraphCategoriesMViewan_address: TWideStringField
      DisplayWidth = 256
      FieldName = 'an_address'
      Size = 256
    end
    object qryAnagraphCategoriesMViewan_town: TWideStringField
      DisplayWidth = 128
      FieldName = 'an_town'
      Size = 128
    end
    object qryAnagraphCategoriesMViewan_postal_code: TWideStringField
      DisplayWidth = 12
      FieldName = 'an_postal_code'
      Size = 8
    end
    object qryAnagraphCategoriesMViewan_iso_country_code: TWideStringField
      DisplayWidth = 17
      FieldName = 'an_iso_country_code'
      Size = 3
    end
    object qryAnagraphCategoriesMViewan_state_province: TWideStringField
      DisplayWidth = 30
      FieldName = 'an_state_province'
      Size = 30
    end
    object qryAnagraphCategoriesMViewan_phone: TWideStringField
      DisplayWidth = 20
      FieldName = 'an_phone'
    end
    object qryAnagraphCategoriesMViewan_phone2: TWideStringField
      DisplayWidth = 20
      FieldName = 'an_phone2'
    end
    object qryAnagraphCategoriesMViewan_fax: TWideStringField
      DisplayWidth = 20
      FieldName = 'an_fax'
    end
    object qryAnagraphCategoriesMViewan_cellular: TWideStringField
      DisplayWidth = 20
      FieldName = 'an_cellular'
    end
    object qryAnagraphCategoriesMViewan_code: TWideStringField
      DisplayWidth = 15
      FieldName = 'an_code'
      Size = 15
    end
    object qryAnagraphCategoriesMViewan_vat_numeric: TWideStringField
      DisplayWidth = 16
      FieldName = 'an_vat_numeric'
      Size = 16
    end
    object qryAnagraphCategoriesMViewan_email: TWideStringField
      DisplayWidth = 256
      FieldName = 'an_email'
      Size = 256
    end
    object qryAnagraphCategoriesMViewan_web: TWideStringField
      DisplayWidth = 128
      FieldName = 'an_web'
      Size = 128
    end
    object qryAnagraphCategoriesMViewan_contact_id: TIntegerField
      DisplayWidth = 11
      FieldName = 'an_contact_id'
    end
    object qryAnagraphCategoriesMViewan_bank_account: TWideStringField
      DisplayWidth = 255
      FieldName = 'an_bank_account'
      Size = 255
    end
    object qryAnagraphCategoriesMViewan_payment_des: TWideStringField
      DisplayWidth = 128
      FieldName = 'an_payment_des'
      Size = 128
    end
    object qryAnagraphCategoriesMViewan_discount: TFloatField
      DisplayWidth = 10
      FieldName = 'an_discount'
    end
    object qryAnagraphCategoriesMViewan_distance: TIntegerField
      DisplayWidth = 10
      FieldName = 'an_distance'
    end
    object qryAnagraphCategoriesMViewan_distance_mesunit: TSmallintField
      DisplayWidth = 16
      FieldName = 'an_distance_mesunit'
    end
    object qryAnagraphCategoriesMViewan_sex: TWideStringField
      DisplayWidth = 5
      FieldName = 'an_sex'
      Size = 1
    end
    object qryAnagraphCategoriesMViewan_cod_comune: TWideStringField
      DisplayWidth = 13
      FieldName = 'an_cod_comune'
      Size = 3
    end
    object qryAnagraphCategoriesMViewan_cod_provincia: TWideStringField
      DisplayWidth = 14
      FieldName = 'an_cod_provincia'
      Size = 3
    end
    object qryAnagraphCategoriesMViewan_credit_line: TFloatField
      DisplayWidth = 11
      FieldName = 'an_credit_line'
    end
    object qryAnagraphCategoriesMViewan_currency_id: TSmallintField
      DisplayWidth = 12
      FieldName = 'an_currency_id'
    end
    object qryAnagraphCategoriesMViewan_cat_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'an_cat_id'
    end
    object qryAnagraphCategoriesMViewan_notes2: TWideStringField
      DisplayWidth = 40
      FieldName = 'an_notes2'
      Size = 40
    end
    object qryAnagraphCategoriesMViewan_notes3: TWideMemoField
      DisplayWidth = 10
      FieldName = 'an_notes3'
      BlobType = ftWideMemo
    end
    object qryAnagraphCategoriesMViewan_edi: TBooleanField
      DisplayWidth = 5
      FieldName = 'an_edi'
    end
    object qryAnagraphCategoriesMViewan_privacy: TBooleanField
      DisplayWidth = 8
      FieldName = 'an_privacy'
    end
    object qryAnagraphCategoriesMViewan_office_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'an_office_id'
    end
    object qryAnagraphCategoriesMViewan_cod_prov_rif: TWideStringField
      DisplayWidth = 13
      FieldName = 'an_cod_prov_rif'
      Size = 3
    end
    object qryAnagraphCategoriesMViewan_data_fido: TDateField
      DisplayWidth = 10
      FieldName = 'an_data_fido'
    end
    object qryAnagraphCategoriesMViewan_user_insert: TWideStringField
      DisplayWidth = 30
      FieldName = 'an_user_insert'
      Size = 30
    end
    object qryAnagraphCategoriesMViewan_user_update: TWideStringField
      DisplayWidth = 30
      FieldName = 'an_user_update'
      Size = 30
    end
    object qryAnagraphCategoriesMViewan_area_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'an_area_id'
    end
    object qryAnagraphCategoriesMViewan_agent_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'an_agent_id'
    end
    object qryAnagraphCategoriesMViewan_area_code: TWideStringField
      DisplayWidth = 11
      FieldName = 'an_area_code'
      Size = 1
    end
    object qryAnagraphCategoriesMViewan_zone_id: TWideStringField
      DisplayWidth = 9
      FieldName = 'an_zone_id'
      Size = 1
    end
    object qryAnagraphCategoriesMViewan_ins_id: TLargeintField
      DisplayWidth = 15
      FieldName = 'an_ins_id'
    end
    object qryAnagraphCategoriesMViewan_upd_id: TLargeintField
      DisplayWidth = 15
      FieldName = 'an_upd_id'
    end
    object qryAnagraphCategoriesMViewan_documents: TSmallintField
      DisplayWidth = 11
      FieldName = 'an_documents'
    end
    object qryAnagraphCategoriesMViewan_last_date: TDateField
      DisplayWidth = 10
      FieldName = 'an_last_date'
    end
    object qryAnagraphCategoriesMViewan_birthdate: TDateField
      DisplayWidth = 10
      FieldName = 'an_birthdate'
    end
    object qryAnagraphCategoriesMViewan_office_type_id: TSmallintField
      DisplayWidth = 14
      FieldName = 'an_office_type_id'
    end
    object qryAnagraphCategoriesMViewan_searchname: TWideStringField
      DisplayWidth = 128
      FieldName = 'an_searchname'
      Size = 128
    end
    object qryAnagraphCategoriesMViewan_extra_ue_flag: TBooleanField
      DisplayWidth = 14
      FieldName = 'an_extra_ue_flag'
    end
    object qryAnagraphCategoriesMViewan_external_code: TWideStringField
      DisplayWidth = 20
      FieldName = 'an_external_code'
    end
    object qryAnagraphCategoriesMViewan_vat_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'an_vat_id'
    end
    object qryAnagraphCategoriesMViewan_personal_fiscal_code: TWideStringField
      DisplayWidth = 19
      FieldName = 'an_personal_fiscal_code'
      Size = 16
    end
    object qryAnagraphCategoriesMViewan_privacy_print: TSmallintField
      DisplayWidth = 13
      FieldName = 'an_privacy_print'
    end
    object qryAnagraphCategoriesMViewan_sms: TBooleanField
      DisplayWidth = 6
      FieldName = 'an_sms'
    end
    object qryAnagraphCategoriesMViewan_encrypted_fiscal_code: TWideStringField
      DisplayWidth = 256
      FieldName = 'an_encrypted_fiscal_code'
      Size = 256
    end
    object qryAnagraphCategoriesMViewan_vat_purcentage: TSmallintField
      DisplayWidth = 15
      FieldName = 'an_vat_purcentage'
    end
    object qryAnagraphCategoriesMViewan_status: TSmallintField
      DisplayWidth = 10
      FieldName = 'an_status'
    end
    object qryAnagraphCategoriesMViewan_ownsite: TBooleanField
      DisplayWidth = 9
      FieldName = 'an_ownsite'
    end
    object qryAnagraphCategoriesMViewan_insurance_id: TLargeintField
      DisplayWidth = 15
      FieldName = 'an_insurance_id'
    end
    object qryAnagraphCategoriesMViewan_anagraphs_anagraph_id: TIntegerField
      DisplayWidth = 22
      FieldName = 'an_anagraphs_anagraph_id'
    end
    object qryAnagraphCategoriesMViewan_main_language_code: TWideStringField
      DisplayWidth = 19
      FieldName = 'an_main_language_code'
      Size = 2
    end
    object qryAnagraphCategoriesMViewan_main_culture_code: TWideStringField
      DisplayWidth = 18
      FieldName = 'an_main_culture_code'
      Size = 6
    end
    object qryAnagraphCategoriesMViewan_fiscal_code: TWideStringField
      DisplayWidth = 16
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qryAnagraphCategoriesMViewan_main_group_id: TIntegerField
      DisplayWidth = 14
      FieldName = 'an_main_group_id'
    end
    object qryAnagraphCategoriesMViewan_image_id: TLargeintField
      DisplayWidth = 15
      FieldName = 'an_image_id'
    end
    object qryAnagraphCategoriesMViewlatitude: TFloatField
      DisplayWidth = 10
      FieldName = 'latitude'
    end
    object qryAnagraphCategoriesMViewlongitude: TFloatField
      DisplayWidth = 10
      FieldName = 'longitude'
    end
    object qryAnagraphCategoriesMViewtest: TFloatField
      DisplayWidth = 10
      FieldName = 'test'
    end
    object qryAnagraphCategoriesMViewsearch_index: TWideStringField
      DisplayWidth = 2048
      FieldName = 'search_index'
      Size = 2048
    end
    object qryAnagraphCategoriesMViewan_birthplace: TWideStringField
      DisplayWidth = 256
      FieldName = 'an_birthplace'
      Size = 256
    end
    object qryAnagraphCategoriesMViewan_birthplace_code: TWideStringField
      DisplayWidth = 20
      FieldName = 'an_birthplace_code'
    end
    object qryAnagraphCategoriesMViewanagraph64: TWideStringField
      DisplayWidth = 64
      FieldName = 'anagraph64'
      Size = 64
    end
    object qryAnagraphCategoriesMViewmain_category_id: TSmallintField
      DisplayWidth = 14
      FieldName = 'main_category_id'
    end
    object qryAnagraphCategoriesMViewosm_id: TLargeintField
      DisplayWidth = 15
      FieldName = 'osm_id'
    end
    object qryAnagraphCategoriesMViewan_description: TWideStringField
      DisplayWidth = 512
      FieldName = 'an_description'
      Size = 512
    end
    object qryAnagraphCategoriesMViewmaster_category_id: TSmallintField
      DisplayWidth = 16
      FieldName = 'master_category_id'
    end
    object qryAnagraphCategoriesMViewdistance: TFloatField
      DisplayWidth = 10
      FieldName = 'distance'
    end
    object qryAnagraphCategoriesMViewan_address_number: TWideStringField
      FieldName = 'an_address_number'
    end
  end
  object qrySubIdentities: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO anagraph.identities'
      
        '  (db_schema_id, anagraph_id, an_group_id, an_agent_id, an_agent' +
        '_group_id, an_credit_limit, an_credit_days, an_credit, an_credit' +
        '_notes, an_credit_used, an_overdue_credit)'
      'VALUES'
      
        '  (:db_schema_id, :anagraph_id, :an_group_id, :an_agent_id, :an_' +
        'agent_group_id, :an_credit_limit, :an_credit_days, :an_credit, :' +
        'an_credit_notes, :an_credit_used, :an_overdue_credit)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.identities'
      'WHERE'
      
        '  anagraph_id = :Old_anagraph_id AND an_group_id = :Old_an_group' +
        '_id')
    SQLUpdate.Strings = (
      'UPDATE anagraph.identities'
      'SET'
      
        '  db_schema_id = :db_schema_id, anagraph_id = :anagraph_id, an_g' +
        'roup_id = :an_group_id, an_agent_id = :an_agent_id, an_agent_gro' +
        'up_id = :an_agent_group_id, an_credit_limit = :an_credit_limit, ' +
        'an_credit_days = :an_credit_days, an_credit = :an_credit, an_cre' +
        'dit_notes = :an_credit_notes, an_credit_used = :an_credit_used, ' +
        'an_overdue_credit = :an_overdue_credit'
      'WHERE'
      
        '  anagraph_id = :Old_anagraph_id AND an_group_id = :Old_an_group' +
        '_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.identities'
      'WHERE'
      
        '  anagraph_id = :Old_anagraph_id AND an_group_id = :Old_an_group' +
        '_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, anagraph_id, an_group_id, an_agent_id, an_a' +
        'gent_group_id, an_credit_limit, an_credit_days, an_credit, an_cr' +
        'edit_notes, an_credit_used, an_overdue_credit FROM anagraph.iden' +
        'tities'
      'WHERE'
      '  anagraph_id = :anagraph_id AND an_group_id = :an_group_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.identities'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from anagraph.identities'
      'where anagraph_id = :anagraph_id and an_group_id = :an_group_id')
    MasterSource = dsSubAngraphs
    MasterFields = 'anagraph_id;an_group_id'
    DetailFields = 'anagraph_id;an_group_id'
    Left = 272
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'an_group_id'
        ParamType = ptInput
        Value = nil
      end>
    object IntegerField1: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object SmallintField1: TSmallintField
      FieldName = 'an_group_id'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'an_agent_id'
      Required = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'an_agent_group_id'
      Required = True
    end
    object FloatField1: TFloatField
      FieldName = 'an_credit_limit'
      Required = True
    end
    object SmallintField2: TSmallintField
      FieldName = 'an_credit_days'
      Required = True
    end
    object BooleanField1: TBooleanField
      FieldName = 'an_credit'
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'an_credit_notes'
      Size = 128
    end
    object FloatField2: TFloatField
      FieldName = 'an_credit_used'
    end
    object FloatField3: TFloatField
      FieldName = 'an_overdue_credit'
    end
  end
  object dsSubAngraphs: TDataSource
    DataSet = qrySubAnagraphs
    Left = 272
    Top = 136
  end
  object qrySubAnagraphs: TUniQuery
    KeyFields = 'anagraph_id'
    SQLInsert.Strings = (
      'INSERT INTO anagraph.anagraphs'
      
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
        'l_code, an_main_group_id, an_image_id)'
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
        'scal_code, :an_main_group_id, :an_image_id)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLUpdate.Strings = (
      'UPDATE anagraph.anagraphs'
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
        '_id = :an_image_id'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id'
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
        'iscal_code, an_main_group_id, an_image_id FROM anagraph.anagraph' +
        's'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select a.*, i.* '
      'from anagraph.anagraphs a, anagraph.identities i '
      'where '
      '(a.db_schema_id = :db_schema_id or :db_schema_id = 0)'
      'and'
      'a.anagraph_id = i.anagraph_id'
      'and'
      'i.an_group_id = :an_group_id'
      'and'
      '(upper(an_last_name) like upper(:last_name) or :last_name = '#39'%'#39')'
      'and'
      '(a.anagraph_id = :anagraph_id or :anagraph_id = 0)'
      'order by an_last_name, an_name')
    MasterSource = dsAnagraph
    MasterFields = 'anagraph_id'
    DetailFields = 'an_contact_id'
    Left = 272
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'an_group_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'last_name'
        ParamType = ptInput
        Value = '%'
      end
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = 0
      end>
    object qrySubAnagraphslkpGroupDes: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpGroupDes'
      LookupDataSet = lkpGroups
      LookupKeyFields = 'an_group_id'
      LookupResultField = 'group_des'
      KeyFields = 'an_group_id'
      Size = 128
      Lookup = True
    end
    object qrySubAnagraphsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qrySubAnagraphsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qrySubAnagraphsan_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qrySubAnagraphsan_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qrySubAnagraphsan_second_name: TWideStringField
      FieldName = 'an_second_name'
      Size = 128
    end
    object qrySubAnagraphsan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
    object qrySubAnagraphsan_notes: TWideStringField
      FieldName = 'an_notes'
      Size = 512
    end
    object qrySubAnagraphsan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qrySubAnagraphsan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qrySubAnagraphsan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
      Size = 8
    end
    object qrySubAnagraphsan_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Required = True
      Size = 3
    end
    object qrySubAnagraphsan_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 30
    end
    object qrySubAnagraphsan_phone: TWideStringField
      FieldName = 'an_phone'
    end
    object qrySubAnagraphsan_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qrySubAnagraphsan_fax: TWideStringField
      FieldName = 'an_fax'
    end
    object qrySubAnagraphsan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qrySubAnagraphsan_code: TWideStringField
      FieldName = 'an_code'
      Size = 15
    end
    object qrySubAnagraphsan_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      Size = 16
    end
    object qrySubAnagraphsan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qrySubAnagraphsan_web: TWideStringField
      FieldName = 'an_web'
      Size = 128
    end
    object qrySubAnagraphsan_contact_id: TIntegerField
      FieldName = 'an_contact_id'
    end
    object qrySubAnagraphsan_bank_account: TWideStringField
      FieldName = 'an_bank_account'
      Size = 255
    end
    object qrySubAnagraphsan_payment_des: TWideStringField
      FieldName = 'an_payment_des'
      Size = 128
    end
    object qrySubAnagraphsan_discount: TFloatField
      FieldName = 'an_discount'
    end
    object qrySubAnagraphsan_distance: TIntegerField
      FieldName = 'an_distance'
    end
    object qrySubAnagraphsan_distance_mesunit: TSmallintField
      FieldName = 'an_distance_mesunit'
    end
    object qrySubAnagraphsan_sex: TWideStringField
      FieldName = 'an_sex'
      Required = True
      Size = 1
    end
    object qrySubAnagraphsan_cod_comune: TWideStringField
      FieldName = 'an_cod_comune'
      Size = 3
    end
    object qrySubAnagraphsan_cod_provincia: TWideStringField
      FieldName = 'an_cod_provincia'
      Size = 3
    end
    object qrySubAnagraphsan_credit_line: TFloatField
      FieldName = 'an_credit_line'
    end
    object qrySubAnagraphsan_currency_id: TSmallintField
      FieldName = 'an_currency_id'
      Required = True
    end
    object qrySubAnagraphsan_notes2: TWideStringField
      FieldName = 'an_notes2'
      Size = 40
    end
    object qrySubAnagraphsan_notes3: TWideMemoField
      FieldName = 'an_notes3'
      BlobType = ftWideMemo
    end
    object qrySubAnagraphsan_edi: TBooleanField
      FieldName = 'an_edi'
    end
    object qrySubAnagraphsan_privacy: TBooleanField
      FieldName = 'an_privacy'
    end
    object qrySubAnagraphsan_office_id: TSmallintField
      FieldName = 'an_office_id'
    end
    object qrySubAnagraphsan_cod_prov_rif: TWideStringField
      FieldName = 'an_cod_prov_rif'
      Size = 3
    end
    object qrySubAnagraphsan_data_fido: TDateField
      FieldName = 'an_data_fido'
    end
    object qrySubAnagraphsan_user_insert: TWideStringField
      FieldName = 'an_user_insert'
      Size = 30
    end
    object qrySubAnagraphsan_user_update: TWideStringField
      FieldName = 'an_user_update'
      Size = 30
    end
    object qrySubAnagraphsan_area_id: TSmallintField
      FieldName = 'an_area_id'
    end
    object qrySubAnagraphsan_agent_id: TSmallintField
      FieldName = 'an_agent_id'
    end
    object qrySubAnagraphsan_area_code: TWideStringField
      FieldName = 'an_area_code'
      Size = 1
    end
    object qrySubAnagraphsan_zone_id: TWideStringField
      FieldName = 'an_zone_id'
      Size = 1
    end
    object qrySubAnagraphsan_ins_id: TLargeintField
      FieldName = 'an_ins_id'
    end
    object qrySubAnagraphsan_upd_id: TLargeintField
      FieldName = 'an_upd_id'
    end
    object qrySubAnagraphsan_documents: TSmallintField
      FieldName = 'an_documents'
    end
    object qrySubAnagraphsan_last_date: TDateField
      FieldName = 'an_last_date'
    end
    object qrySubAnagraphsan_birthdate: TDateField
      FieldName = 'an_birthdate'
    end
    object qrySubAnagraphsan_office_type_id: TSmallintField
      FieldName = 'an_office_type_id'
    end
    object qrySubAnagraphsan_searchname: TWideStringField
      FieldName = 'an_searchname'
      Size = 128
    end
    object qrySubAnagraphsan_extra_ue_flag: TBooleanField
      FieldName = 'an_extra_ue_flag'
    end
    object qrySubAnagraphsan_external_code: TWideStringField
      FieldName = 'an_external_code'
    end
    object qrySubAnagraphsan_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qrySubAnagraphsan_personal_fiscal_code: TWideStringField
      FieldName = 'an_personal_fiscal_code'
      Size = 16
    end
    object qrySubAnagraphsan_privacy_print: TSmallintField
      FieldName = 'an_privacy_print'
    end
    object qrySubAnagraphsan_sms: TBooleanField
      FieldName = 'an_sms'
    end
    object qrySubAnagraphsan_encrypted_fiscal_code: TWideStringField
      FieldName = 'an_encrypted_fiscal_code'
      Size = 256
    end
    object qrySubAnagraphsan_vat_purcentage: TSmallintField
      FieldName = 'an_vat_purcentage'
    end
    object qrySubAnagraphsan_status: TSmallintField
      FieldName = 'an_status'
    end
    object qrySubAnagraphsan_ownsite: TBooleanField
      FieldName = 'an_ownsite'
    end
    object qrySubAnagraphsan_insurance_id: TLargeintField
      FieldName = 'an_insurance_id'
    end
    object qrySubAnagraphsan_anagraphs_anagraph_id: TIntegerField
      FieldName = 'an_anagraphs_anagraph_id'
    end
    object qrySubAnagraphsan_main_language_code: TWideStringField
      FieldName = 'an_main_language_code'
      Required = True
      Size = 2
    end
    object qrySubAnagraphsan_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      Required = True
      Size = 6
    end
    object qrySubAnagraphsan_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qrySubAnagraphsan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
      Required = True
    end
    object qrySubAnagraphsan_image_id: TLargeintField
      FieldName = 'an_image_id'
    end
    object qrySubAnagraphsan_cat_id: TSmallintField
      FieldName = 'an_cat_id'
    end
    object qrySubAnagraphslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qrySubAnagraphslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qrySubAnagraphstest: TFloatField
      FieldName = 'test'
    end
    object qrySubAnagraphssearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qrySubAnagraphsan_birthplace: TWideStringField
      FieldName = 'an_birthplace'
      Size = 256
    end
    object qrySubAnagraphsan_birthplace_code: TWideStringField
      FieldName = 'an_birthplace_code'
    end
    object qrySubAnagraphsanagraph64: TWideStringField
      FieldName = 'anagraph64'
      Size = 64
    end
    object qrySubAnagraphsan_group_id: TSmallintField
      FieldName = 'an_group_id'
      ReadOnly = True
      Required = True
    end
    object qrySubAnagraphsan_agent_group_id: TIntegerField
      FieldName = 'an_agent_group_id'
      ReadOnly = True
    end
    object qrySubAnagraphsan_credit_limit: TFloatField
      FieldName = 'an_credit_limit'
      ReadOnly = True
      Required = True
    end
    object qrySubAnagraphsan_credit_days: TSmallintField
      FieldName = 'an_credit_days'
      ReadOnly = True
      Required = True
    end
    object qrySubAnagraphsan_credit: TBooleanField
      FieldName = 'an_credit'
      ReadOnly = True
      Required = True
    end
    object qrySubAnagraphsan_credit_notes: TWideStringField
      FieldName = 'an_credit_notes'
      ReadOnly = True
      Size = 128
    end
    object qrySubAnagraphsan_credit_used: TFloatField
      FieldName = 'an_credit_used'
      ReadOnly = True
    end
    object qrySubAnagraphsan_overdue_credit: TFloatField
      FieldName = 'an_overdue_credit'
      ReadOnly = True
    end
    object qrySubAnagraphsmain_category_id: TSmallintField
      FieldName = 'main_category_id'
    end
    object qrySubAnagraphsosm_id: TLargeintField
      FieldName = 'osm_id'
    end
    object qrySubAnagraphsan_description: TWideStringField
      FieldName = 'an_description'
      Size = 512
    end
    object qrySubAnagraphsan_address_number: TWideStringField
      FieldName = 'an_address_number'
    end
    object qrySubAnagraphsanag_jguid: TWideStringField
      FieldName = 'anag_jguid'
      Required = True
      Size = 40
    end
    object qrySubAnagraphsanag_deleted: TBooleanField
      FieldName = 'anag_deleted'
    end
    object qrySubAnagraphsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qrySubAnagraphsupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qrySubAnagraphsuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qrySubAnagraphsjguid: TStringField
      FieldName = 'jguid'
      Required = True
      Size = 40
    end
    object qrySubAnagraphscustom_field_1: TWideStringField
      FieldName = 'custom_field_1'
      Size = 128
    end
    object qrySubAnagraphscustom_field_2: TWideStringField
      FieldName = 'custom_field_2'
      Size = 128
    end
    object qrySubAnagraphscustom_field_3: TWideStringField
      FieldName = 'custom_field_3'
      Size = 128
    end
    object qrySubAnagraphscustom_float_1: TFloatField
      FieldName = 'custom_float_1'
    end
    object qrySubAnagraphscustom_float_2: TFloatField
      FieldName = 'custom_float_2'
    end
    object qrySubAnagraphscustom_int_1: TIntegerField
      FieldName = 'custom_int_1'
    end
    object qrySubAnagraphscustom_int_2: TIntegerField
      FieldName = 'custom_int_2'
    end
    object qrySubAnagraphssupplier_id: TIntegerField
      FieldName = 'supplier_id'
    end
    object qrySubAnagraphsvessel_id: TSmallintField
      FieldName = 'vessel_id'
    end
    object qrySubAnagraphsan_country_id: TIntegerField
      FieldName = 'an_country_id'
    end
    object qrySubAnagraphsan_iso_country_code2: TWideStringField
      FieldName = 'an_iso_country_code2'
      FixedChar = True
      Size = 2
    end
    object qrySubAnagraphsadnt_jguid: TWideStringField
      FieldName = 'adnt_jguid'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrySubAnagraphsadnt_deleted: TBooleanField
      FieldName = 'adnt_deleted'
      ReadOnly = True
    end
  end
  object qryIdentities: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO anagraph.identities'
      
        '  (db_schema_id, anagraph_id, an_group_id, an_agent_id, an_agent' +
        '_group_id, an_credit_limit, an_credit_days, an_credit, an_credit' +
        '_notes, an_credit_used, an_overdue_credit)'
      'VALUES'
      
        '  (:db_schema_id, :anagraph_id, :an_group_id, :an_agent_id, :an_' +
        'agent_group_id, :an_credit_limit, :an_credit_days, :an_credit, :' +
        'an_credit_notes, :an_credit_used, :an_overdue_credit)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.identities'
      'WHERE'
      
        '  anagraph_id = :Old_anagraph_id AND an_group_id = :Old_an_group' +
        '_id')
    SQLUpdate.Strings = (
      'UPDATE anagraph.identities'
      'SET'
      
        '  db_schema_id = :db_schema_id, anagraph_id = :anagraph_id, an_g' +
        'roup_id = :an_group_id, an_agent_id = :an_agent_id, an_agent_gro' +
        'up_id = :an_agent_group_id, an_credit_limit = :an_credit_limit, ' +
        'an_credit_days = :an_credit_days, an_credit = :an_credit, an_cre' +
        'dit_notes = :an_credit_notes, an_credit_used = :an_credit_used, ' +
        'an_overdue_credit = :an_overdue_credit'
      'WHERE'
      
        '  anagraph_id = :Old_anagraph_id AND an_group_id = :Old_an_group' +
        '_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.identities'
      'WHERE'
      
        '  anagraph_id = :Old_anagraph_id AND an_group_id = :Old_an_group' +
        '_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, anagraph_id, an_group_id, an_agent_id, an_a' +
        'gent_group_id, an_credit_limit, an_credit_days, an_credit, an_cr' +
        'edit_notes, an_credit_used, an_overdue_credit FROM anagraph.iden' +
        'tities'
      'WHERE'
      '  anagraph_id = :anagraph_id AND an_group_id = :an_group_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.identities'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from anagraph.identities'
      'where anagraph_id = :anagraph_id and an_group_id = :an_group_id')
    MasterFields = 'anagraph_id;an_group_id'
    DetailFields = 'anagraph_id;an_group_id'
    Left = 392
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'an_group_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryIdentitiesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryIdentitiesanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryIdentitiesan_group_id: TSmallintField
      FieldName = 'an_group_id'
      Required = True
    end
    object qryIdentitiesan_agent_id: TIntegerField
      FieldName = 'an_agent_id'
      Required = True
    end
    object qryIdentitiesan_agent_group_id: TIntegerField
      FieldName = 'an_agent_group_id'
      Required = True
    end
    object qryIdentitiesan_credit_limit: TFloatField
      FieldName = 'an_credit_limit'
      Required = True
    end
    object qryIdentitiesan_credit_days: TSmallintField
      FieldName = 'an_credit_days'
      Required = True
    end
    object qryIdentitiesan_credit: TBooleanField
      FieldName = 'an_credit'
      Required = True
    end
    object qryIdentitiesan_credit_notes: TWideStringField
      FieldName = 'an_credit_notes'
      Size = 128
    end
    object qryIdentitiesan_credit_used: TFloatField
      FieldName = 'an_credit_used'
    end
    object qryIdentitiesan_overdue_credit: TFloatField
      FieldName = 'an_overdue_credit'
    end
  end
  object sqlInsertIdentity: TUniSQL
    Connection = PgErgoConnection
    SQL.Strings = (
      'INSERT INTO anagraph.identities('
      
        '            db_schema_id, anagraph_id, an_group_id, an_agent_id,' +
        ' an_agent_group_id, '
      
        '            an_credit_limit, an_credit_days, an_credit, an_credi' +
        't_notes, '
      '            an_credit_used, an_overdue_credit)'
      
        '    VALUES (:db_schema_id, :anagraph_id, :an_group_id, :an_agent' +
        '_id, :an_agent_group_id, '
      
        '            :an_credit_limit, :an_credit_days, :an_credit, :an_c' +
        'redit_notes, '
      '            :an_credit_used, :an_overdue_credit);')
    Left = 392
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'an_group_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'an_agent_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'an_agent_group_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'an_credit_limit'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'an_credit_days'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'an_credit'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'an_credit_notes'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'an_credit_used'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'an_overdue_credit'
        Value = nil
      end>
  end
  object dsGroups: TDataSource
    DataSet = qryGroups
    Left = 160
    Top = 168
  end
  object qryGroups: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO anagraph.groups'
      
        '  (db_schema_id, an_group_id, group_des, contact_group, sub_grou' +
        'p, sub_group_des, settings, position, accounting, cod_account, l' +
        'ocal, group_cod, ledger_cod, subledger_cod, grouping, descriptio' +
        'n, angr_jguid, angr_deleted, icon_id, jguid)'
      'VALUES'
      
        '  (:db_schema_id, :an_group_id, :group_des, :contact_group, :sub' +
        '_group, :sub_group_des, :settings, :position, :accounting, :cod_' +
        'account, :local, :group_cod, :ledger_cod, :subledger_cod, :group' +
        'ing, :description, :angr_jguid, :angr_deleted, :icon_id, :jguid)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.groups'
      'WHERE'
      '  an_group_id = :Old_an_group_id')
    SQLUpdate.Strings = (
      'UPDATE anagraph.groups'
      'SET'
      
        '  db_schema_id = :db_schema_id, an_group_id = :an_group_id, grou' +
        'p_des = :group_des, contact_group = :contact_group, sub_group = ' +
        ':sub_group, sub_group_des = :sub_group_des, settings = :settings' +
        ', position = :position, accounting = :accounting, cod_account = ' +
        ':cod_account, local = :local, group_cod = :group_cod, ledger_cod' +
        ' = :ledger_cod, subledger_cod = :subledger_cod, grouping = :grou' +
        'ping, description = :description, angr_jguid = :angr_jguid, angr' +
        '_deleted = :angr_deleted, icon_id = :icon_id, jguid = :jguid'
      'WHERE'
      '  an_group_id = :Old_an_group_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.groups'
      'WHERE'
      '  an_group_id = :Old_an_group_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, an_group_id, group_des, contact_group, sub_' +
        'group, sub_group_des, settings, position, accounting, cod_accoun' +
        't, local, group_cod, ledger_cod, subledger_cod, grouping, descri' +
        'ption, angr_jguid, angr_deleted, icon_id, jguid FROM anagraph.gr' +
        'oups'
      'WHERE'
      '  an_group_id = :an_group_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.groups'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select '
      '      g.* '
      'from '
      '    anagraph.groups g'
      'where '
      '     (g.db_schema_id = :db_schema_id  or g.db_schema_id = 0)'
      '     and '
      '     (g.an_group_id = :p_group_id or :p_group_id = 0)')
    BeforeOpen = qryGroupsBeforeOpen
    Left = 160
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 34
      end
      item
        DataType = ftInteger
        Name = 'p_group_id'
        ParamType = ptInput
        Value = 0
      end>
    object qryGroupsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryGroupsan_group_id: TSmallintField
      FieldName = 'an_group_id'
      Required = True
    end
    object qryGroupsgroup_des: TWideStringField
      FieldName = 'group_des'
      Required = True
    end
    object qryGroupscontact_group: TSmallintField
      FieldName = 'contact_group'
    end
    object qryGroupssub_group: TSmallintField
      FieldName = 'sub_group'
    end
    object qryGroupssub_group_des: TWideStringField
      FieldName = 'sub_group_des'
    end
    object qryGroupssettings: TWideStringField
      FieldName = 'settings'
    end
    object qryGroupsposition: TSmallintField
      FieldName = 'position'
    end
    object qryGroupsaccounting: TBooleanField
      FieldName = 'accounting'
      Required = True
    end
    object qryGroupscod_account: TWideStringField
      FieldName = 'cod_account'
      Size = 10
    end
    object qryGroupslocal: TBooleanField
      FieldName = 'local'
    end
    object qryGroupsgroup_cod: TWideStringField
      FieldName = 'group_cod'
      Size = 2
    end
    object qryGroupsledger_cod: TWideStringField
      FieldName = 'ledger_cod'
      Size = 3
    end
    object qryGroupssubledger_cod: TWideStringField
      FieldName = 'subledger_cod'
      Size = 10
    end
    object qryGroupsgrouping: TWideStringField
      FieldName = 'grouping'
      Size = 3
    end
    object qryGroupsdescription: TWideStringField
      FieldName = 'description'
      Required = True
      Size = 30
    end
    object qryGroupsangr_jguid: TWideStringField
      FieldName = 'angr_jguid'
      Required = True
      Size = 40
    end
    object qryGroupsangr_deleted: TBooleanField
      FieldName = 'angr_deleted'
    end
    object qryGroupsicon_id: TSmallintField
      FieldName = 'icon_id'
    end
    object qryGroupsjguid: TStringField
      FieldName = 'jguid'
      Size = 38
    end
  end
  object qryAnagraphs: TUniQuery
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
        'illing_address, billing_phone, billing_state_province)'
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
        'billing_phone, :billing_state_province)')
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
        'e_province'
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
        'n, billing_address, billing_phone, billing_state_province FROM a' +
        'nagraph.anagraphs_view'
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
      '(db_schema_id = :db_schema_id or :db_schema_id = 0)'
      'and'
      
        '(a.an_group_id = :p_group_id or :p_group_id = 0 or :p_group_id i' +
        's null)'
      'and'
      
        '(upper(search_index) like upper(:p_search_name) or :p_search_nam' +
        'e = '#39'%'#39' or :p_search_name is null)'
      'and'
      '(a.anagraph_id = :anagraph_id or :anagraph_id = 0)'
      'and'
      'a.jguid = :jguid OR :JGUID IS NULL'
      '-- and not a.deleted -- moved to filter memory params'
      'order by a.an_last_name')
    BeforeOpen = qryAnagraphsBeforeOpen
    Left = 160
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'db_schema_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_group_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftWideString
        Name = 'p_search_name'
        ParamType = ptInput
        Value = '%'
      end
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftGuid
        Name = 'jguid'
        ParamType = ptInput
        Value = nil
      end>
    object qryAnagraphsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryAnagraphsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryAnagraphsan_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qryAnagraphsan_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qryAnagraphsan_second_name: TWideStringField
      FieldName = 'an_second_name'
      Size = 128
    end
    object qryAnagraphsan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Size = 128
    end
    object qryAnagraphsan_notes: TWideStringField
      FieldName = 'an_notes'
      Size = 512
    end
    object qryAnagraphsan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qryAnagraphsan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qryAnagraphsan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
    end
    object qryAnagraphsan_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Size = 3
    end
    object qryAnagraphsan_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 128
    end
    object qryAnagraphsan_phone: TWideStringField
      FieldName = 'an_phone'
      Size = 30
    end
    object qryAnagraphsan_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qryAnagraphsan_fax: TWideStringField
      FieldName = 'an_fax'
      Size = 30
    end
    object qryAnagraphsan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryAnagraphsan_code: TWideStringField
      FieldName = 'an_code'
      Size = 15
    end
    object qryAnagraphsan_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      Size = 128
    end
    object qryAnagraphsan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryAnagraphsan_web: TWideStringField
      FieldName = 'an_web'
      Size = 128
    end
    object qryAnagraphsan_contact_id: TIntegerField
      FieldName = 'an_contact_id'
    end
    object qryAnagraphsan_bank_account: TWideStringField
      FieldName = 'an_bank_account'
      Size = 255
    end
    object qryAnagraphsan_payment_des: TWideStringField
      FieldName = 'an_payment_des'
      Size = 128
    end
    object qryAnagraphsan_discount: TFloatField
      FieldName = 'an_discount'
    end
    object qryAnagraphsan_distance: TIntegerField
      FieldName = 'an_distance'
    end
    object qryAnagraphsan_distance_mesunit: TSmallintField
      FieldName = 'an_distance_mesunit'
    end
    object qryAnagraphsan_sex: TWideStringField
      FieldName = 'an_sex'
      Size = 1
    end
    object qryAnagraphsan_cod_comune: TWideStringField
      FieldName = 'an_cod_comune'
      Size = 3
    end
    object qryAnagraphsan_cod_provincia: TWideStringField
      FieldName = 'an_cod_provincia'
      Size = 3
    end
    object qryAnagraphsan_credit_line: TFloatField
      FieldName = 'an_credit_line'
    end
    object qryAnagraphsan_currency_id: TSmallintField
      FieldName = 'an_currency_id'
    end
    object qryAnagraphsan_cat_id: TSmallintField
      FieldName = 'an_cat_id'
    end
    object qryAnagraphsan_notes2: TWideStringField
      FieldName = 'an_notes2'
      Size = 40
    end
    object qryAnagraphsan_notes3: TWideMemoField
      FieldName = 'an_notes3'
      BlobType = ftWideMemo
    end
    object qryAnagraphsan_edi: TBooleanField
      FieldName = 'an_edi'
    end
    object qryAnagraphsan_privacy: TBooleanField
      FieldName = 'an_privacy'
    end
    object qryAnagraphsan_office_id: TSmallintField
      FieldName = 'an_office_id'
    end
    object qryAnagraphsan_cod_prov_rif: TWideStringField
      FieldName = 'an_cod_prov_rif'
      Size = 3
    end
    object qryAnagraphsan_data_fido: TDateField
      FieldName = 'an_data_fido'
    end
    object qryAnagraphsan_user_insert: TWideStringField
      FieldName = 'an_user_insert'
      Size = 30
    end
    object qryAnagraphsan_user_update: TWideStringField
      FieldName = 'an_user_update'
      Size = 30
    end
    object qryAnagraphsan_area_id: TSmallintField
      FieldName = 'an_area_id'
    end
    object qryAnagraphsan_agent_id: TSmallintField
      FieldName = 'an_agent_id'
    end
    object qryAnagraphsan_area_code: TWideStringField
      FieldName = 'an_area_code'
      Size = 1
    end
    object qryAnagraphsan_zone_id: TWideStringField
      FieldName = 'an_zone_id'
      Size = 1
    end
    object qryAnagraphsan_ins_id: TLargeintField
      FieldName = 'an_ins_id'
    end
    object qryAnagraphsan_upd_id: TLargeintField
      FieldName = 'an_upd_id'
    end
    object qryAnagraphsan_documents: TSmallintField
      FieldName = 'an_documents'
    end
    object qryAnagraphsan_last_date: TDateField
      FieldName = 'an_last_date'
    end
    object qryAnagraphsan_birthdate: TDateField
      FieldName = 'an_birthdate'
    end
    object qryAnagraphsan_office_type_id: TSmallintField
      FieldName = 'an_office_type_id'
    end
    object qryAnagraphsan_searchname: TWideStringField
      FieldName = 'an_searchname'
      Size = 128
    end
    object qryAnagraphsan_extra_ue_flag: TBooleanField
      FieldName = 'an_extra_ue_flag'
    end
    object qryAnagraphsan_external_code: TWideStringField
      FieldName = 'an_external_code'
    end
    object qryAnagraphsan_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qryAnagraphsan_personal_fiscal_code: TWideStringField
      FieldName = 'an_personal_fiscal_code'
      Size = 16
    end
    object qryAnagraphsan_privacy_print: TSmallintField
      FieldName = 'an_privacy_print'
    end
    object qryAnagraphsan_sms: TBooleanField
      FieldName = 'an_sms'
    end
    object qryAnagraphsan_encrypted_fiscal_code: TWideStringField
      FieldName = 'an_encrypted_fiscal_code'
      Size = 256
    end
    object qryAnagraphsan_vat_purcentage: TSmallintField
      FieldName = 'an_vat_purcentage'
    end
    object qryAnagraphsan_status: TSmallintField
      FieldName = 'an_status'
    end
    object qryAnagraphsan_ownsite: TBooleanField
      FieldName = 'an_ownsite'
    end
    object qryAnagraphsan_insurance_id: TLargeintField
      FieldName = 'an_insurance_id'
    end
    object qryAnagraphsan_anagraphs_anagraph_id: TIntegerField
      FieldName = 'an_anagraphs_anagraph_id'
    end
    object qryAnagraphsan_main_language_code: TWideStringField
      FieldName = 'an_main_language_code'
      Size = 2
    end
    object qryAnagraphsan_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      Size = 6
    end
    object qryAnagraphsan_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qryAnagraphsan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
    end
    object qryAnagraphsan_image_id: TLargeintField
      FieldName = 'an_image_id'
    end
    object qryAnagraphslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryAnagraphslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryAnagraphstest: TFloatField
      FieldName = 'test'
    end
    object qryAnagraphssearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qryAnagraphsan_birthplace: TWideStringField
      FieldName = 'an_birthplace'
      Size = 256
    end
    object qryAnagraphsan_birthplace_code: TWideStringField
      FieldName = 'an_birthplace_code'
    end
    object qryAnagraphsanagraph64: TWideStringField
      FieldName = 'anagraph64'
      Size = 64
    end
    object qryAnagraphsmain_category_id: TSmallintField
      FieldName = 'main_category_id'
    end
    object qryAnagraphsosm_id: TLargeintField
      FieldName = 'osm_id'
    end
    object qryAnagraphsan_description: TWideStringField
      FieldName = 'an_description'
      Size = 512
    end
    object qryAnagraphsan_address_number: TWideStringField
      FieldName = 'an_address_number'
    end
    object qryAnagraphsanag_jguid: TWideStringField
      FieldName = 'anag_jguid'
      Size = 40
    end
    object qryAnagraphsanag_deleted: TBooleanField
      FieldName = 'anag_deleted'
    end
    object qryAnagraphsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryAnagraphsupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryAnagraphsuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qryAnagraphscustom_field_1: TWideStringField
      FieldName = 'custom_field_1'
      Size = 128
    end
    object qryAnagraphscustom_field_2: TWideStringField
      FieldName = 'custom_field_2'
      Size = 128
    end
    object qryAnagraphscustom_field_3: TWideStringField
      FieldName = 'custom_field_3'
      Size = 128
    end
    object qryAnagraphscustom_float_1: TFloatField
      FieldName = 'custom_float_1'
    end
    object qryAnagraphscustom_float_2: TFloatField
      FieldName = 'custom_float_2'
    end
    object qryAnagraphscustom_int_1: TIntegerField
      FieldName = 'custom_int_1'
    end
    object qryAnagraphscustom_int_2: TIntegerField
      FieldName = 'custom_int_2'
    end
    object qryAnagraphssupplier_id: TIntegerField
      FieldName = 'supplier_id'
    end
    object qryAnagraphsvessel_id: TSmallintField
      FieldName = 'vessel_id'
    end
    object qryAnagraphsan_country_id: TIntegerField
      FieldName = 'an_country_id'
    end
    object qryAnagraphsan_iso_country_code2: TWideStringField
      FieldName = 'an_iso_country_code2'
      FixedChar = True
      Size = 2
    end
    object qryAnagraphsan_group_id: TSmallintField
      FieldName = 'an_group_id'
    end
    object qryAnagraphsan_credit_limit: TFloatField
      FieldName = 'an_credit_limit'
    end
    object qryAnagraphsan_credit: TBooleanField
      FieldName = 'an_credit'
    end
    object qryAnagraphsshipment_name: TWideStringField
      FieldName = 'shipment_name'
      Size = 128
    end
    object qryAnagraphsshipment_postal_code: TWideStringField
      FieldName = 'shipment_postal_code'
    end
    object qryAnagraphsshipment_town: TWideStringField
      FieldName = 'shipment_town'
      Size = 128
    end
    object qryAnagraphsshipment_address: TWideStringField
      FieldName = 'shipment_address'
      Size = 256
    end
    object qryAnagraphsshipment_phone: TWideStringField
      FieldName = 'shipment_phone'
      Size = 30
    end
    object qryAnagraphsshipment_state_province: TWideStringField
      FieldName = 'shipment_state_province'
      Size = 30
    end
    object qryAnagraphsbilling_name: TWideStringField
      FieldName = 'billing_name'
      Size = 128
    end
    object qryAnagraphsbilling_postal_code: TWideStringField
      FieldName = 'billing_postal_code'
    end
    object qryAnagraphsbilling_town: TWideStringField
      FieldName = 'billing_town'
      Size = 128
    end
    object qryAnagraphsbilling_address: TWideStringField
      FieldName = 'billing_address'
      Size = 256
    end
    object qryAnagraphsbilling_phone: TWideStringField
      FieldName = 'billing_phone'
      Size = 30
    end
    object qryAnagraphsbilling_state_province: TWideStringField
      FieldName = 'billing_state_province'
      Size = 30
    end
    object qryAnagraphsjguid: TStringField
      FieldName = 'jguid'
      Size = 40
    end
    object qryAnagraphsdeleted: TBooleanField
      FieldName = 'deleted'
    end
  end
  object qrySearchAddress: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT s.*'
      '  FROM system.db_users_profiles s'
      
        '  where upper(first_name || '#39' '#39' || last_name) like upper(:p_sear' +
        'ch)')
    Left = 160
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_search'
        Value = nil
      end>
    object qrySearchAddressdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qrySearchAddresscountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object qrySearchAddressregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object qrySearchAddressdistrict_id: TSmallintField
      FieldName = 'district_id'
    end
    object qrySearchAddresstown_id: TIntegerField
      FieldName = 'town_id'
    end
    object qrySearchAddressfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qrySearchAddresslast_name: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object qrySearchAddressaddress_street: TWideStringField
      FieldName = 'address_street'
      Size = 128
    end
    object qrySearchAddressaddress_number: TWideStringField
      FieldName = 'address_number'
      Size = 12
    end
    object qrySearchAddressaddress_postal_code: TWideStringField
      FieldName = 'address_postal_code'
    end
    object qrySearchAddressphone: TWideStringField
      FieldName = 'phone'
    end
    object qrySearchAddresscellular_phone: TWideStringField
      FieldName = 'cellular_phone'
    end
    object qrySearchAddresswork_phone: TWideStringField
      FieldName = 'work_phone'
    end
    object qrySearchAddressfax_number: TWideStringField
      FieldName = 'fax_number'
    end
    object qrySearchAddressgender_code: TWideStringField
      FieldName = 'gender_code'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qrySearchAddressbirth_date: TDateField
      FieldName = 'birth_date'
    end
    object qrySearchAddressbirth_country_id: TSmallintField
      FieldName = 'birth_country_id'
    end
    object qrySearchAddressbirth_region_id: TSmallintField
      FieldName = 'birth_region_id'
    end
    object qrySearchAddressbirth_district_id: TSmallintField
      FieldName = 'birth_district_id'
    end
    object qrySearchAddressbirth_town_id: TIntegerField
      FieldName = 'birth_town_id'
    end
    object qrySearchAddresspublic_email: TWideStringField
      FieldName = 'public_email'
      Size = 256
    end
    object qrySearchAddresstitle: TWideStringField
      FieldName = 'title'
      Size = 30
    end
    object qrySearchAddresssearch_name: TWideStringField
      FieldName = 'search_name'
      Size = 256
    end
    object qrySearchAddressreverse_search: TWideStringField
      FieldName = 'reverse_search'
      Size = 256
    end
    object qrySearchAddressaddress_full: TWideStringField
      FieldName = 'address_full'
      Size = 2048
    end
    object qrySearchAddresslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qrySearchAddresslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qrySearchAddressfiscal_code: TWideStringField
      FieldName = 'fiscal_code'
    end
    object qrySearchAddresssmssent: TBooleanField
      FieldName = 'smssent'
    end
    object qrySearchAddresssmsconfirmed: TBooleanField
      FieldName = 'smsconfirmed'
    end
    object qrySearchAddresssmsdate: TDateTimeField
      FieldName = 'smsdate'
    end
    object qrySearchAddresssmschecknumber: TWideStringField
      FieldName = 'smschecknumber'
      Size = 4
    end
    object qrySearchAddressaddress_town: TWideStringField
      FieldName = 'address_town'
      Size = 256
    end
    object qrySearchAddressp_facebook_json: TWideMemoField
      FieldName = 'p_facebook_json'
      BlobType = ftWideMemo
    end
    object qrySearchAddressfacebook_json: TWideMemoField
      FieldName = 'facebook_json'
      BlobType = ftWideMemo
    end
    object qrySearchAddressaddress_state_province: TWideStringField
      FieldName = 'address_state_province'
    end
    object qrySearchAddressuspr_jguid: TWideStringField
      FieldName = 'uspr_jguid'
      Size = 40
    end
    object qrySearchAddressdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qrySearchAddresssupr_jguid: TWideStringField
      FieldName = 'supr_jguid'
      Required = True
      Size = 40
    end
    object qrySearchAddresssupr_deleted: TBooleanField
      FieldName = 'supr_deleted'
    end
    object qrySearchAddressanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qrySearchAddressjguid: TStringField
      FieldName = 'jguid'
      Size = 38
    end
  end
  object qryLkpAnagraphs: TUniQuery
    KeyFields = 'anagraph_id'
    SQLInsert.Strings = (
      'INSERT INTO anagraph.anagraphs'
      
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
        '_1, custom_float_2, custom_int_1, custom_int_2, supplier_id)'
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
        'ustom_int_2, :supplier_id)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLUpdate.Strings = (
      'UPDATE anagraph.anagraphs'
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
        'nt_2 = :custom_int_2, supplier_id = :supplier_id'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id'
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
        'loat_1, custom_float_2, custom_int_1, custom_int_2, supplier_id ' +
        'FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'display_index'
        FieldType = ftWideString
        FieldLength = 1024
        IgnoreErrors = True
      end
      item
        FieldName = 'lookup_field'
        FieldType = ftWideString
        FieldLength = 32
        IgnoreErrors = True
      end
      item
        FieldName = 'lookup_display'
        FieldType = ftWideString
        FieldLength = 256
        IgnoreErrors = True
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT '
      
        'a.jguid, a.anagraph_id, a.an_title, a.an_name, an_second_name, a' +
        'n_last_name, an_notes, an_address, an_town, '
      'an_postal_code, an_iso_country_code, an_state_province, '
      
        'an_phone, an_phone2, an_fax, an_cellular, an_code, an_vat_numeri' +
        'c, an_email, an_web, '
      'i.an_group_id, '
      'search_index, '
      
        '(an_last_name || '#39' '#39' || nvl(an_name, '#39#39') || '#39', '#39' || nvl(an_town,' +
        ' '#39#39')|| '#39', '#39' || nvl(an_address, '#39#39'))as display_index, '
      '0::integer as pos,'
      'a.anagraph_id::character varying as lookup_field, '
      
        'a.an_last_name || a.an_name || '#39' '#39' || a.an_town as lookup_displa' +
        'y'
      'from anagraph.anagraphs a, anagraph.identities i '
      'where '
      'a.anagraph_id = i.anagraph_id'
      'and'
      '(a.db_schema_id = :db_schema_id or :db_schema_id = 0)'
      'and'
      '(i.an_group_id = :p_group_id or :p_group_id = 0)'
      'order by a.an_last_name')
    Left = 392
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'p_group_id'
        ParamType = ptInput
        Value = 0
      end>
    object qryLkpAnagraphsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryLkpAnagraphsan_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qryLkpAnagraphsan_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qryLkpAnagraphsan_second_name: TWideStringField
      FieldName = 'an_second_name'
      Size = 128
    end
    object qryLkpAnagraphsan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
    object qryLkpAnagraphsan_notes: TWideStringField
      FieldName = 'an_notes'
      Size = 512
    end
    object qryLkpAnagraphsan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qryLkpAnagraphsan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qryLkpAnagraphsan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
    end
    object qryLkpAnagraphsan_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Required = True
      Size = 3
    end
    object qryLkpAnagraphsan_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 128
    end
    object qryLkpAnagraphsan_phone: TWideStringField
      FieldName = 'an_phone'
      Size = 30
    end
    object qryLkpAnagraphsan_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qryLkpAnagraphsan_fax: TWideStringField
      FieldName = 'an_fax'
      Size = 30
    end
    object qryLkpAnagraphsan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryLkpAnagraphsan_code: TWideStringField
      FieldName = 'an_code'
      Size = 15
    end
    object qryLkpAnagraphsan_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      Size = 128
    end
    object qryLkpAnagraphsan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryLkpAnagraphsan_web: TWideStringField
      FieldName = 'an_web'
      Size = 128
    end
    object qryLkpAnagraphsan_group_id: TSmallintField
      FieldName = 'an_group_id'
      ReadOnly = True
      Required = True
    end
    object qryLkpAnagraphssearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qryLkpAnagraphsdisplay_index: TWideStringField
      FieldName = 'display_index'
      ReadOnly = True
      Size = 1024
    end
    object qryLkpAnagraphspos: TIntegerField
      FieldName = 'pos'
      ReadOnly = True
    end
    object qryLkpAnagraphslookup_field: TWideStringField
      FieldName = 'lookup_field'
      ReadOnly = True
      Size = 32
    end
    object qryLkpAnagraphslookup_display: TWideStringField
      FieldName = 'lookup_display'
      ReadOnly = True
      Size = 256
    end
    object qryLkpAnagraphsjguid: TStringField
      FieldName = 'jguid'
      Required = True
      Size = 40
    end
  end
  object qrySingleAnagraphOld: TUniQuery
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
      '(jguid = :jguid) or (anagraph_id = :anagraph_id)')
    AfterOpen = qrySingleAnagraphOldAfterOpen
    BeforePost = qrySingleAnagraphOldBeforePost
    AfterPost = qrySingleAnagraphOldAfterPost
    Left = 632
    Top = 32
    ParamData = <
      item
        DataType = ftGuid
        Name = 'jguid'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = 254018
      end>
    object qrySingleAnagraphOlddb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qrySingleAnagraphOldanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qrySingleAnagraphOldan_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qrySingleAnagraphOldan_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qrySingleAnagraphOldan_second_name: TWideStringField
      FieldName = 'an_second_name'
      Size = 128
    end
    object qrySingleAnagraphOldan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Size = 128
    end
    object qrySingleAnagraphOldan_notes: TWideStringField
      FieldName = 'an_notes'
      Size = 512
    end
    object qrySingleAnagraphOldan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qrySingleAnagraphOldan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qrySingleAnagraphOldan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
    end
    object qrySingleAnagraphOldan_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Size = 3
    end
    object qrySingleAnagraphOldan_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 128
    end
    object qrySingleAnagraphOldan_phone: TWideStringField
      FieldName = 'an_phone'
      Size = 30
    end
    object qrySingleAnagraphOldan_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qrySingleAnagraphOldan_fax: TWideStringField
      FieldName = 'an_fax'
      Size = 30
    end
    object qrySingleAnagraphOldan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qrySingleAnagraphOldan_code: TWideStringField
      FieldName = 'an_code'
      Size = 15
    end
    object qrySingleAnagraphOldan_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      Size = 128
    end
    object qrySingleAnagraphOldan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qrySingleAnagraphOldan_web: TWideStringField
      FieldName = 'an_web'
      Size = 128
    end
    object qrySingleAnagraphOldan_contact_id: TIntegerField
      FieldName = 'an_contact_id'
    end
    object qrySingleAnagraphOldan_bank_account: TWideStringField
      FieldName = 'an_bank_account'
      Size = 255
    end
    object qrySingleAnagraphOldan_payment_des: TWideStringField
      FieldName = 'an_payment_des'
      Size = 128
    end
    object qrySingleAnagraphOldan_discount: TFloatField
      FieldName = 'an_discount'
    end
    object qrySingleAnagraphOldan_distance: TIntegerField
      FieldName = 'an_distance'
    end
    object qrySingleAnagraphOldan_distance_mesunit: TSmallintField
      FieldName = 'an_distance_mesunit'
    end
    object qrySingleAnagraphOldan_sex: TWideStringField
      FieldName = 'an_sex'
      Size = 1
    end
    object qrySingleAnagraphOldan_cod_comune: TWideStringField
      FieldName = 'an_cod_comune'
      Size = 3
    end
    object qrySingleAnagraphOldan_cod_provincia: TWideStringField
      FieldName = 'an_cod_provincia'
      Size = 3
    end
    object qrySingleAnagraphOldan_credit_line: TFloatField
      FieldName = 'an_credit_line'
    end
    object qrySingleAnagraphOldan_currency_id: TSmallintField
      FieldName = 'an_currency_id'
    end
    object qrySingleAnagraphOldan_cat_id: TSmallintField
      FieldName = 'an_cat_id'
    end
    object qrySingleAnagraphOldan_notes2: TWideStringField
      FieldName = 'an_notes2'
      Size = 40
    end
    object qrySingleAnagraphOldan_notes3: TWideMemoField
      FieldName = 'an_notes3'
      BlobType = ftWideMemo
    end
    object qrySingleAnagraphOldan_edi: TBooleanField
      FieldName = 'an_edi'
    end
    object qrySingleAnagraphOldan_privacy: TBooleanField
      FieldName = 'an_privacy'
    end
    object qrySingleAnagraphOldan_office_id: TSmallintField
      FieldName = 'an_office_id'
    end
    object qrySingleAnagraphOldan_cod_prov_rif: TWideStringField
      FieldName = 'an_cod_prov_rif'
      Size = 3
    end
    object qrySingleAnagraphOldan_data_fido: TDateField
      FieldName = 'an_data_fido'
    end
    object qrySingleAnagraphOldan_user_insert: TWideStringField
      FieldName = 'an_user_insert'
      Size = 30
    end
    object qrySingleAnagraphOldan_user_update: TWideStringField
      FieldName = 'an_user_update'
      Size = 30
    end
    object qrySingleAnagraphOldan_area_id: TSmallintField
      FieldName = 'an_area_id'
    end
    object qrySingleAnagraphOldan_agent_id: TSmallintField
      FieldName = 'an_agent_id'
    end
    object qrySingleAnagraphOldan_area_code: TWideStringField
      FieldName = 'an_area_code'
      Size = 1
    end
    object qrySingleAnagraphOldan_zone_id: TWideStringField
      FieldName = 'an_zone_id'
      Size = 1
    end
    object qrySingleAnagraphOldan_ins_id: TLargeintField
      FieldName = 'an_ins_id'
    end
    object qrySingleAnagraphOldan_upd_id: TLargeintField
      FieldName = 'an_upd_id'
    end
    object qrySingleAnagraphOldan_documents: TSmallintField
      FieldName = 'an_documents'
    end
    object qrySingleAnagraphOldan_last_date: TDateField
      FieldName = 'an_last_date'
    end
    object qrySingleAnagraphOldan_birthdate: TDateField
      FieldName = 'an_birthdate'
    end
    object qrySingleAnagraphOldan_office_type_id: TSmallintField
      FieldName = 'an_office_type_id'
    end
    object qrySingleAnagraphOldan_searchname: TWideStringField
      FieldName = 'an_searchname'
      Size = 128
    end
    object qrySingleAnagraphOldan_extra_ue_flag: TBooleanField
      FieldName = 'an_extra_ue_flag'
    end
    object qrySingleAnagraphOldan_external_code: TWideStringField
      FieldName = 'an_external_code'
    end
    object qrySingleAnagraphOldan_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qrySingleAnagraphOldan_personal_fiscal_code: TWideStringField
      FieldName = 'an_personal_fiscal_code'
      Size = 16
    end
    object qrySingleAnagraphOldan_privacy_print: TSmallintField
      FieldName = 'an_privacy_print'
    end
    object qrySingleAnagraphOldan_sms: TBooleanField
      FieldName = 'an_sms'
    end
    object qrySingleAnagraphOldan_encrypted_fiscal_code: TWideStringField
      FieldName = 'an_encrypted_fiscal_code'
      Size = 256
    end
    object qrySingleAnagraphOldan_vat_purcentage: TSmallintField
      FieldName = 'an_vat_purcentage'
    end
    object qrySingleAnagraphOldan_status: TSmallintField
      FieldName = 'an_status'
    end
    object qrySingleAnagraphOldan_ownsite: TBooleanField
      FieldName = 'an_ownsite'
    end
    object qrySingleAnagraphOldan_insurance_id: TLargeintField
      FieldName = 'an_insurance_id'
    end
    object qrySingleAnagraphOldan_anagraphs_anagraph_id: TIntegerField
      FieldName = 'an_anagraphs_anagraph_id'
    end
    object qrySingleAnagraphOldan_main_language_code: TWideStringField
      FieldName = 'an_main_language_code'
      Size = 2
    end
    object qrySingleAnagraphOldan_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      Size = 6
    end
    object qrySingleAnagraphOldan_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qrySingleAnagraphOldan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
    end
    object qrySingleAnagraphOldan_image_id: TLargeintField
      FieldName = 'an_image_id'
    end
    object qrySingleAnagraphOldlatitude: TFloatField
      FieldName = 'latitude'
    end
    object qrySingleAnagraphOldlongitude: TFloatField
      FieldName = 'longitude'
    end
    object qrySingleAnagraphOldtest: TFloatField
      FieldName = 'test'
    end
    object qrySingleAnagraphOldsearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qrySingleAnagraphOldan_birthplace: TWideStringField
      FieldName = 'an_birthplace'
      Size = 256
    end
    object qrySingleAnagraphOldan_birthplace_code: TWideStringField
      FieldName = 'an_birthplace_code'
    end
    object qrySingleAnagraphOldanagraph64: TWideStringField
      FieldName = 'anagraph64'
      Size = 64
    end
    object qrySingleAnagraphOldmain_category_id: TSmallintField
      FieldName = 'main_category_id'
    end
    object qrySingleAnagraphOldosm_id: TLargeintField
      FieldName = 'osm_id'
    end
    object qrySingleAnagraphOldan_description: TWideStringField
      FieldName = 'an_description'
      Size = 512
    end
    object qrySingleAnagraphOldan_address_number: TWideStringField
      FieldName = 'an_address_number'
    end
    object qrySingleAnagraphOldanag_jguid: TWideStringField
      FieldName = 'anag_jguid'
      Size = 40
    end
    object qrySingleAnagraphOldanag_deleted: TBooleanField
      FieldName = 'anag_deleted'
    end
    object qrySingleAnagraphOldinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qrySingleAnagraphOldupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qrySingleAnagraphOlduser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qrySingleAnagraphOldjguid: TStringField
      FieldName = 'jguid'
      Size = 40
    end
    object qrySingleAnagraphOldcustom_field_1: TWideStringField
      FieldName = 'custom_field_1'
      Size = 128
    end
    object qrySingleAnagraphOldcustom_field_2: TWideStringField
      FieldName = 'custom_field_2'
      Size = 128
    end
    object qrySingleAnagraphOldcustom_field_3: TWideStringField
      FieldName = 'custom_field_3'
      Size = 128
    end
    object qrySingleAnagraphOldcustom_float_1: TFloatField
      FieldName = 'custom_float_1'
    end
    object qrySingleAnagraphOldcustom_float_2: TFloatField
      FieldName = 'custom_float_2'
    end
    object qrySingleAnagraphOldcustom_int_1: TIntegerField
      FieldName = 'custom_int_1'
    end
    object qrySingleAnagraphOldcustom_int_2: TIntegerField
      FieldName = 'custom_int_2'
    end
    object qrySingleAnagraphOldsupplier_id: TIntegerField
      FieldName = 'supplier_id'
    end
    object qrySingleAnagraphOldvessel_id: TSmallintField
      FieldName = 'vessel_id'
    end
    object qrySingleAnagraphOldan_country_id: TIntegerField
      FieldName = 'an_country_id'
    end
    object qrySingleAnagraphOldan_iso_country_code2: TWideStringField
      FieldName = 'an_iso_country_code2'
      FixedChar = True
      Size = 2
    end
    object qrySingleAnagraphOlddeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qrySingleAnagraphOldan_group_id: TSmallintField
      FieldName = 'an_group_id'
    end
    object qrySingleAnagraphOldan_credit_limit: TFloatField
      FieldName = 'an_credit_limit'
    end
    object qrySingleAnagraphOldan_credit: TBooleanField
      FieldName = 'an_credit'
    end
    object qrySingleAnagraphOldshipment_name: TWideStringField
      FieldName = 'shipment_name'
      Size = 128
    end
    object qrySingleAnagraphOldshipment_postal_code: TWideStringField
      FieldName = 'shipment_postal_code'
    end
    object qrySingleAnagraphOldshipment_town: TWideStringField
      FieldName = 'shipment_town'
      Size = 128
    end
    object qrySingleAnagraphOldshipment_address: TWideStringField
      FieldName = 'shipment_address'
      Size = 256
    end
    object qrySingleAnagraphOldshipment_phone: TWideStringField
      FieldName = 'shipment_phone'
      Size = 30
    end
    object qrySingleAnagraphOldshipment_state_province: TWideStringField
      FieldName = 'shipment_state_province'
      Size = 30
    end
    object qrySingleAnagraphOldbilling_name: TWideStringField
      FieldName = 'billing_name'
      Size = 128
    end
    object qrySingleAnagraphOldbilling_postal_code: TWideStringField
      FieldName = 'billing_postal_code'
    end
    object qrySingleAnagraphOldbilling_town: TWideStringField
      FieldName = 'billing_town'
      Size = 128
    end
    object qrySingleAnagraphOldbilling_address: TWideStringField
      FieldName = 'billing_address'
      Size = 256
    end
    object qrySingleAnagraphOldbilling_phone: TWideStringField
      FieldName = 'billing_phone'
      Size = 30
    end
    object qrySingleAnagraphOldbilling_state_province: TWideStringField
      FieldName = 'billing_state_province'
      Size = 30
    end
  end
  object dsSingleAnagraph: TDataSource
    DataSet = qrySingleAnagraph
    Left = 720
    Top = 136
  end
  object qrySAMainAdress: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO anagraph.an_addresses_view'
      
        '  (db_schema_id, id, address_name, postal_code, state_province, ' +
        'town_name, town_code, address, address_number, phone, full_addre' +
        'ss, insert_date, update_date, upd_id, ins_id, user_insert, user_' +
        'update, local, deleted, jguid, country_code, email, anagraph_id,' +
        ' maps_json, longitude, latitude, pos, master_jguid)'
      'VALUES'
      
        '  (:db_schema_id, :id, :address_name, :postal_code, :state_provi' +
        'nce, :town_name, :town_code, :address, :address_number, :phone, ' +
        ':full_address, :insert_date, :update_date, :upd_id, :ins_id, :us' +
        'er_insert, :user_update, :local, :deleted, :jguid, :country_code' +
        ', :email, :anagraph_id, :maps_json, :longitude, :latitude, :pos,' +
        ' :master_jguid)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.an_addresses_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE anagraph.an_addresses_view'
      'SET'
      
        '  db_schema_id = :db_schema_id, id = :id, address_name = :addres' +
        's_name, postal_code = :postal_code, '
      
        '  state_province = :state_province, town_name = :town_name, town' +
        '_code = :town_code, address = :address, '
      
        '  address_number = :address_number, phone = :phone, full_address' +
        ' = :full_address, insert_date = :insert_date, '
      
        '  update_date = :update_date, upd_id = :upd_id, ins_id = :ins_id' +
        ', user_insert = :user_insert, '
      
        '  user_update = :user_update, local = :local, deleted = :deleted' +
        ', jguid = :jguid, country_code = :country_code,'
      
        '  email = :email, anagraph_id = :anagraph_id, maps_json = :maps_' +
        'json, longitude = :longitude, '
      '  latitude = :latitude, pos = :pos, master_jguid = :master_jguid'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.an_addresses_view'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, id, address_name, postal_code, state_provin' +
        'ce, town_name, town_code, address, address_number, phone, full_a' +
        'ddress, insert_date, update_date, upd_id, ins_id, user_insert, u' +
        'ser_update, local, deleted, jguid, country_code, email, anagraph' +
        '_id, maps_json, longitude, latitude, pos, master_jguid FROM anag' +
        'raph.an_addresses_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.an_addresses_view'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      'FROM '
      '    anagraph.an_addresses_view'
      'WHERE'
      '    anagraph_id = :anagraph_id'
      'and'
      '    :anagraph_id > 0'
      'and'
      '    pos = 1')
    MasterSource = dsSingleAnagraph
    MasterFields = 'anagraph_id'
    DetailFields = 'anagraph_id'
    BeforePost = qrySAMainAdressBeforePost
    Left = 656
    Top = 203
    ParamData = <
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = 254018
      end>
    object qrySAMainAdressdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qrySAMainAdressid: TLargeintField
      FieldName = 'id'
    end
    object qrySAMainAdressaddress_name: TWideStringField
      FieldName = 'address_name'
      Size = 128
    end
    object qrySAMainAdresspostal_code: TWideStringField
      FieldName = 'postal_code'
      Size = 30
    end
    object qrySAMainAdressstate_province: TWideStringField
      FieldName = 'state_province'
      Size = 30
    end
    object qrySAMainAdresstown_name: TWideStringField
      FieldName = 'town_name'
      Size = 128
    end
    object qrySAMainAdresstown_code: TWideStringField
      FieldName = 'town_code'
    end
    object qrySAMainAdressaddress: TWideStringField
      FieldName = 'address'
      Size = 256
    end
    object qrySAMainAdressaddress_number: TWideStringField
      FieldName = 'address_number'
    end
    object qrySAMainAdressphone: TWideStringField
      FieldName = 'phone'
      Size = 30
    end
    object qrySAMainAdressfull_address: TWideStringField
      FieldName = 'full_address'
      Size = 512
    end
    object qrySAMainAdressinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qrySAMainAdressupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qrySAMainAdressupd_id: TLargeintField
      FieldName = 'upd_id'
    end
    object qrySAMainAdressins_id: TLargeintField
      FieldName = 'ins_id'
    end
    object qrySAMainAdressuser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 128
    end
    object qrySAMainAdressuser_update: TWideStringField
      FieldName = 'user_update'
      Size = 128
    end
    object qrySAMainAdresslocal: TBooleanField
      FieldName = 'local'
    end
    object qrySAMainAdressdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qrySAMainAdressjguid: TStringField
      FieldName = 'jguid'
      Size = 38
    end
    object qrySAMainAdresscountry_code: TWideStringField
      FieldName = 'country_code'
      FixedChar = True
      Size = 2
    end
    object qrySAMainAdressemail: TWideStringField
      FieldName = 'email'
      Size = 128
    end
    object qrySAMainAdressanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qrySAMainAdressmaps_json: TWideMemoField
      FieldName = 'maps_json'
      BlobType = ftWideMemo
    end
    object qrySAMainAdresspos: TSmallintField
      FieldName = 'pos'
    end
    object qrySAMainAdresslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qrySAMainAdresslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qrySAMainAdressmaster_jguid: TStringField
      FieldName = 'master_jguid'
      Size = 38
    end
  end
  object qryBranches: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO anagraph.anagraphs_view'
      
        '  (db_schema_id, anagraph_id, an_name, an_last_name, an_address,' +
        ' an_town, an_postal_code, an_phone, an_cellular, an_email,'
      '   an_main_group_id, an_office_id)'
      'VALUES'
      
        '  (:db_schema_id, :anagraph_id, :an_name, :an_last_name, :an_add' +
        'ress, :an_town, :an_postal_code, :an_phone, :an_cellular, :an_em' +
        'ail,'
      '   :an_main_group_id, :an_office_id)')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs_view'
      ''
      ') t')
    DataTypeMap = <
      item
        DBType = 508
        DBLengthMin = 256
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_name'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_cellular'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_cellular'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_last_name'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_address'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_email'
        FieldType = ftWideString
        FieldLength = 128
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select '
      
        '   jguid, anagraph_id, an_name, an_last_name, an_address, an_cel' +
        'lular, an_email,  '
      '   an_main_group_id, an_office_id'
      'from '
      '  anagraph.anagraphs_view'
      'where '
      '  (an_office_id = :anagraph_id and :office_id > 0)'
      '  and'
      '  an_main_group_id = 26')
    MasterSource = dsSingleAnagraph
    Left = 664
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'anagraph_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'office_id'
        ParamType = ptInput
        Value = 0
      end>
    object qryBranchesjguid: TGuidField
      FieldName = 'jguid'
      ReadOnly = True
      Size = 38
    end
    object qryBranchesanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
    end
    object qryBranchesan_name: TWideStringField
      FieldName = 'an_name'
      ReadOnly = True
      Size = 128
    end
    object qryBranchesan_last_name: TWideStringField
      FieldName = 'an_last_name'
      ReadOnly = True
      Size = 128
    end
    object qryBranchesan_address: TWideStringField
      FieldName = 'an_address'
      ReadOnly = True
      Size = 128
    end
    object qryBranchesan_cellular: TWideStringField
      FieldName = 'an_cellular'
      ReadOnly = True
      Size = 128
    end
    object qryBranchesan_email: TWideStringField
      FieldName = 'an_email'
      ReadOnly = True
      Size = 128
    end
    object qryBranchesan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
      ReadOnly = True
    end
    object qryBranchesan_office_id: TIntegerField
      FieldName = 'an_office_id'
      ReadOnly = True
    end
  end
  object qryNextVal: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select nextval('#39'anagraph.an_anagraph_seq'#39') as id')
    Left = 616
    Top = 104
    object qryNextValid: TLargeintField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object qrySingleAnagraph: TUniQuery
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
    Connection = PgErgoConnection
    SQL.Strings = (
      'select a.*'
      'from anagraph.anagraphs_view a'
      'where '
      '(jguid = :jguid) or (anagraph_id = :anagraph_id)')
    AfterOpen = qrySingleAnagraphAfterOpen
    BeforePost = qrySingleAnagraphBeforePost
    AfterPost = qrySingleAnagraphAfterPost
    Left = 728
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'jguid'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        Value = nil
      end>
    object qrySingleAnagraphdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qrySingleAnagraphanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qrySingleAnagraphan_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qrySingleAnagraphan_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qrySingleAnagraphan_second_name: TWideStringField
      FieldName = 'an_second_name'
      Size = 128
    end
    object qrySingleAnagraphan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Size = 128
    end
    object qrySingleAnagraphan_notes: TWideStringField
      FieldName = 'an_notes'
      Size = 512
    end
    object qrySingleAnagraphan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qrySingleAnagraphan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qrySingleAnagraphan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
    end
    object qrySingleAnagraphan_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Size = 3
    end
    object qrySingleAnagraphan_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 128
    end
    object qrySingleAnagraphan_phone: TWideStringField
      FieldName = 'an_phone'
      Size = 30
    end
    object qrySingleAnagraphan_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qrySingleAnagraphan_fax: TWideStringField
      FieldName = 'an_fax'
      Size = 30
    end
    object qrySingleAnagraphan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qrySingleAnagraphan_code: TWideStringField
      FieldName = 'an_code'
      Size = 15
    end
    object qrySingleAnagraphan_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      Size = 128
    end
    object qrySingleAnagraphan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qrySingleAnagraphan_web: TWideStringField
      FieldName = 'an_web'
      Size = 128
    end
    object qrySingleAnagraphan_contact_id: TIntegerField
      FieldName = 'an_contact_id'
    end
    object qrySingleAnagraphan_bank_account: TWideStringField
      FieldName = 'an_bank_account'
      Size = 255
    end
    object qrySingleAnagraphan_payment_des: TWideStringField
      FieldName = 'an_payment_des'
      Size = 128
    end
    object qrySingleAnagraphan_discount: TFloatField
      FieldName = 'an_discount'
    end
    object qrySingleAnagraphan_distance: TIntegerField
      FieldName = 'an_distance'
    end
    object qrySingleAnagraphan_distance_mesunit: TSmallintField
      FieldName = 'an_distance_mesunit'
    end
    object qrySingleAnagraphan_sex: TWideStringField
      FieldName = 'an_sex'
      Size = 1
    end
    object qrySingleAnagraphan_cod_comune: TWideStringField
      FieldName = 'an_cod_comune'
      Size = 3
    end
    object qrySingleAnagraphan_cod_provincia: TWideStringField
      FieldName = 'an_cod_provincia'
      Size = 3
    end
    object qrySingleAnagraphan_credit_line: TFloatField
      FieldName = 'an_credit_line'
    end
    object qrySingleAnagraphan_currency_id: TSmallintField
      FieldName = 'an_currency_id'
    end
    object qrySingleAnagraphan_cat_id: TSmallintField
      FieldName = 'an_cat_id'
    end
    object qrySingleAnagraphan_notes2: TWideStringField
      FieldName = 'an_notes2'
      Size = 40
    end
    object qrySingleAnagraphan_notes3: TWideMemoField
      FieldName = 'an_notes3'
      BlobType = ftWideMemo
    end
    object qrySingleAnagraphan_edi: TBooleanField
      FieldName = 'an_edi'
    end
    object qrySingleAnagraphan_privacy: TBooleanField
      FieldName = 'an_privacy'
    end
    object qrySingleAnagraphan_office_id: TIntegerField
      FieldName = 'an_office_id'
    end
    object qrySingleAnagraphan_cod_prov_rif: TWideStringField
      FieldName = 'an_cod_prov_rif'
      Size = 3
    end
    object qrySingleAnagraphan_data_fido: TDateField
      FieldName = 'an_data_fido'
    end
    object qrySingleAnagraphan_user_insert: TWideStringField
      FieldName = 'an_user_insert'
      Size = 30
    end
    object qrySingleAnagraphan_user_update: TWideStringField
      FieldName = 'an_user_update'
      Size = 30
    end
    object qrySingleAnagraphan_area_id: TSmallintField
      FieldName = 'an_area_id'
    end
    object qrySingleAnagraphan_agent_id: TSmallintField
      FieldName = 'an_agent_id'
    end
    object qrySingleAnagraphan_area_code: TWideStringField
      FieldName = 'an_area_code'
      Size = 1
    end
    object qrySingleAnagraphan_zone_id: TWideStringField
      FieldName = 'an_zone_id'
      Size = 1
    end
    object qrySingleAnagraphan_ins_id: TLargeintField
      FieldName = 'an_ins_id'
    end
    object qrySingleAnagraphan_upd_id: TLargeintField
      FieldName = 'an_upd_id'
    end
    object qrySingleAnagraphan_documents: TSmallintField
      FieldName = 'an_documents'
    end
    object qrySingleAnagraphan_last_date: TDateField
      FieldName = 'an_last_date'
    end
    object qrySingleAnagraphan_birthdate: TDateField
      FieldName = 'an_birthdate'
    end
    object qrySingleAnagraphan_office_type_id: TSmallintField
      FieldName = 'an_office_type_id'
    end
    object qrySingleAnagraphan_searchname: TWideStringField
      FieldName = 'an_searchname'
      Size = 128
    end
    object qrySingleAnagraphan_extra_ue_flag: TBooleanField
      FieldName = 'an_extra_ue_flag'
    end
    object qrySingleAnagraphan_external_code: TWideStringField
      FieldName = 'an_external_code'
    end
    object qrySingleAnagraphan_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qrySingleAnagraphan_personal_fiscal_code: TWideStringField
      FieldName = 'an_personal_fiscal_code'
      Size = 16
    end
    object qrySingleAnagraphan_privacy_print: TSmallintField
      FieldName = 'an_privacy_print'
    end
    object qrySingleAnagraphan_sms: TBooleanField
      FieldName = 'an_sms'
    end
    object qrySingleAnagraphan_encrypted_fiscal_code: TWideStringField
      FieldName = 'an_encrypted_fiscal_code'
      Size = 256
    end
    object qrySingleAnagraphan_vat_purcentage: TSmallintField
      FieldName = 'an_vat_purcentage'
    end
    object qrySingleAnagraphan_status: TSmallintField
      FieldName = 'an_status'
    end
    object qrySingleAnagraphan_ownsite: TBooleanField
      FieldName = 'an_ownsite'
    end
    object qrySingleAnagraphan_insurance_id: TLargeintField
      FieldName = 'an_insurance_id'
    end
    object qrySingleAnagraphan_anagraphs_anagraph_id: TIntegerField
      FieldName = 'an_anagraphs_anagraph_id'
    end
    object qrySingleAnagraphan_main_language_code: TWideStringField
      FieldName = 'an_main_language_code'
      Size = 2
    end
    object qrySingleAnagraphan_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      Size = 6
    end
    object qrySingleAnagraphan_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qrySingleAnagraphan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
    end
    object qrySingleAnagraphan_image_id: TLargeintField
      FieldName = 'an_image_id'
    end
    object qrySingleAnagraphlatitude: TFloatField
      FieldName = 'latitude'
    end
    object qrySingleAnagraphlongitude: TFloatField
      FieldName = 'longitude'
    end
    object qrySingleAnagraphtest: TFloatField
      FieldName = 'test'
    end
    object qrySingleAnagraphsearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qrySingleAnagraphan_birthplace: TWideStringField
      FieldName = 'an_birthplace'
      Size = 256
    end
    object qrySingleAnagraphan_birthplace_code: TWideStringField
      FieldName = 'an_birthplace_code'
    end
    object qrySingleAnagraphanagraph64: TWideStringField
      FieldName = 'anagraph64'
      Size = 64
    end
    object qrySingleAnagraphmain_category_id: TSmallintField
      FieldName = 'main_category_id'
    end
    object qrySingleAnagraphosm_id: TLargeintField
      FieldName = 'osm_id'
    end
    object qrySingleAnagraphan_description: TWideStringField
      FieldName = 'an_description'
      Size = 512
    end
    object qrySingleAnagraphan_address_number: TWideStringField
      FieldName = 'an_address_number'
    end
    object qrySingleAnagraphanag_jguid: TWideStringField
      FieldName = 'anag_jguid'
      Size = 40
    end
    object qrySingleAnagraphanag_deleted: TBooleanField
      FieldName = 'anag_deleted'
    end
    object qrySingleAnagraphinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qrySingleAnagraphupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qrySingleAnagraphuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qrySingleAnagraphjguid: TStringField
      FieldName = 'jguid'
      Size = 38
    end
    object qrySingleAnagraphcustom_field_1: TWideStringField
      FieldName = 'custom_field_1'
      Size = 128
    end
    object qrySingleAnagraphcustom_field_2: TWideStringField
      FieldName = 'custom_field_2'
      Size = 128
    end
    object qrySingleAnagraphcustom_field_3: TWideStringField
      FieldName = 'custom_field_3'
      Size = 128
    end
    object qrySingleAnagraphcustom_float_1: TFloatField
      FieldName = 'custom_float_1'
    end
    object qrySingleAnagraphcustom_float_2: TFloatField
      FieldName = 'custom_float_2'
    end
    object qrySingleAnagraphcustom_int_1: TIntegerField
      FieldName = 'custom_int_1'
    end
    object qrySingleAnagraphcustom_int_2: TIntegerField
      FieldName = 'custom_int_2'
    end
    object qrySingleAnagraphsupplier_id: TIntegerField
      FieldName = 'supplier_id'
    end
    object qrySingleAnagraphvessel_id: TSmallintField
      FieldName = 'vessel_id'
    end
    object qrySingleAnagraphan_country_id: TIntegerField
      FieldName = 'an_country_id'
    end
    object qrySingleAnagraphan_iso_country_code2: TWideStringField
      FieldName = 'an_iso_country_code2'
      FixedChar = True
      Size = 2
    end
    object qrySingleAnagraphdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qrySingleAnagraphan_group_id: TSmallintField
      FieldName = 'an_group_id'
    end
    object qrySingleAnagraphan_credit_limit: TFloatField
      FieldName = 'an_credit_limit'
    end
    object qrySingleAnagraphan_credit: TBooleanField
      FieldName = 'an_credit'
    end
    object qrySingleAnagraphshipment_name: TWideStringField
      FieldName = 'shipment_name'
      Size = 128
    end
    object qrySingleAnagraphshipment_postal_code: TWideStringField
      FieldName = 'shipment_postal_code'
    end
    object qrySingleAnagraphshipment_town: TWideStringField
      FieldName = 'shipment_town'
      Size = 128
    end
    object qrySingleAnagraphshipment_address: TWideStringField
      FieldName = 'shipment_address'
      Size = 256
    end
    object qrySingleAnagraphshipment_phone: TWideStringField
      FieldName = 'shipment_phone'
      Size = 30
    end
    object qrySingleAnagraphshipment_state_province: TWideStringField
      FieldName = 'shipment_state_province'
      Size = 30
    end
    object qrySingleAnagraphbilling_name: TWideStringField
      FieldName = 'billing_name'
      Size = 128
    end
    object qrySingleAnagraphbilling_postal_code: TWideStringField
      FieldName = 'billing_postal_code'
    end
    object qrySingleAnagraphbilling_town: TWideStringField
      FieldName = 'billing_town'
      Size = 128
    end
    object qrySingleAnagraphbilling_address: TWideStringField
      FieldName = 'billing_address'
      Size = 256
    end
    object qrySingleAnagraphbilling_phone: TWideStringField
      FieldName = 'billing_phone'
      Size = 30
    end
    object qrySingleAnagraphbilling_state_province: TWideStringField
      FieldName = 'billing_state_province'
      Size = 30
    end
    object qrySingleAnagraphan_full_address: TWideStringField
      FieldName = 'an_full_address'
      Size = 256
    end
  end
  object qryAddressNextVal: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select nextval('#39'anagraph.an_addresses_seq'#39') as id')
    Left = 824
    Top = 104
    object qryAddressNextValid: TLargeintField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object qryAddresses: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO anagraph.an_addresses_view'
      
        '  (db_schema_id, id, address_name, postal_code, state_province, ' +
        'town_name, town_code, address, address_number, phone, full_addre' +
        'ss, insert_date, update_date, upd_id, ins_id, user_insert, user_' +
        'update, local, deleted, jguid, country_code, email, anagraph_id,' +
        ' maps_json, longitude, latitude, pos, master_jguid)'
      'VALUES'
      
        '  (:db_schema_id, :id, :address_name, :postal_code, :state_provi' +
        'nce, :town_name, :town_code, :address, :address_number, :phone, ' +
        ':full_address, :insert_date, :update_date, :upd_id, :ins_id, :us' +
        'er_insert, :user_update, :local, :deleted, :jguid, :country_code' +
        ', :email, :anagraph_id, :maps_json, :longitude, :latitude, :pos,' +
        ' :master_jguid)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.an_addresses_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE anagraph.an_addresses_view'
      'SET'
      
        '  db_schema_id = :db_schema_id, id = :id, address_name = :addres' +
        's_name, postal_code = :postal_code, state_province = :state_prov' +
        'ince, town_name = :town_name, town_code = :town_code, address = ' +
        ':address, address_number = :address_number, phone = :phone, full' +
        '_address = :full_address, insert_date = :insert_date, update_dat' +
        'e = :update_date, upd_id = :upd_id, ins_id = :ins_id, user_inser' +
        't = :user_insert, user_update = :user_update, local = :local, de' +
        'leted = :deleted, jguid = :jguid, country_code = :country_code, ' +
        'email = :email, anagraph_id = :anagraph_id, maps_json = :maps_js' +
        'on, longitude = :longitude, latitude = :latitude, pos = :pos, ma' +
        'ster_jguid = :master_jguid'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.an_addresses_view'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, id, address_name, postal_code, state_provin' +
        'ce, town_name, town_code, address, address_number, phone, full_a' +
        'ddress, insert_date, update_date, upd_id, ins_id, user_insert, u' +
        'ser_update, local, deleted, jguid, country_code, email, anagraph' +
        '_id, maps_json, longitude, latitude, pos, master_jguid FROM anag' +
        'raph.an_addresses_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.an_addresses_view'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      'FROM '
      '    anagraph.an_addresses_view'
      'WHERE'
      '    anagraph_id = :anagraph_id'
      'ORDER BY'
      '    pos')
    MasterSource = dsSingleAnagraph
    MasterFields = 'anagraph_id;jguid'
    DetailFields = 'anagraph_id;master_jguid'
    BeforePost = qryAddressesBeforePost
    Left = 744
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'jguid'
        ParamType = ptInput
        Value = nil
      end>
    object qryAddressesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryAddressesid: TLargeintField
      FieldName = 'id'
    end
    object qryAddressesaddress_name: TWideStringField
      FieldName = 'address_name'
      Size = 128
    end
    object qryAddressespostal_code: TWideStringField
      FieldName = 'postal_code'
      Size = 30
    end
    object qryAddressesstate_province: TWideStringField
      FieldName = 'state_province'
      Size = 30
    end
    object qryAddressestown_name: TWideStringField
      FieldName = 'town_name'
      Size = 128
    end
    object qryAddressestown_code: TWideStringField
      FieldName = 'town_code'
    end
    object qryAddressesaddress: TWideStringField
      FieldName = 'address'
      Size = 256
    end
    object qryAddressesaddress_number: TWideStringField
      FieldName = 'address_number'
    end
    object qryAddressesphone: TWideStringField
      FieldName = 'phone'
      Size = 30
    end
    object qryAddressesfull_address: TWideStringField
      FieldName = 'full_address'
      Size = 512
    end
    object qryAddressesinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryAddressesupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryAddressesupd_id: TLargeintField
      FieldName = 'upd_id'
    end
    object qryAddressesins_id: TLargeintField
      FieldName = 'ins_id'
    end
    object qryAddressesuser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 128
    end
    object qryAddressesuser_update: TWideStringField
      FieldName = 'user_update'
      Size = 128
    end
    object qryAddresseslocal: TBooleanField
      FieldName = 'local'
    end
    object qryAddressesdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryAddressesjguid: TStringField
      FieldName = 'jguid'
      Size = 38
    end
    object qryAddressescountry_code: TWideStringField
      FieldName = 'country_code'
      FixedChar = True
      Size = 2
    end
    object qryAddressesemail: TWideStringField
      FieldName = 'email'
      Size = 128
    end
    object qryAddressesanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryAddressesmaps_json: TWideMemoField
      FieldName = 'maps_json'
      BlobType = ftWideMemo
    end
    object qryAddresseslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryAddresseslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryAddressespos: TSmallintField
      FieldName = 'pos'
    end
    object qryAddressesmaster_jguid: TStringField
      FieldName = 'master_jguid'
      Size = 38
    end
  end
end
