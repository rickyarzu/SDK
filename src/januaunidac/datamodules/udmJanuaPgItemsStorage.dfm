inherited dmJanuaPgItemsStorage: TdmJanuaPgItemsStorage
  Height = 304
  Width = 350
  inherited PgErgoConnection: TJanuaUniConnection
    AutoCommit = False
    Server = 'pg.januaservers.com'
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object qryItems: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM items.definitions'
      'where'
      '(db_schema_id = :db_schema_id or :db_schema_id = 0)'
      'and'
      '(type_id = :type_id or :type_id = 0)')
    Left = 72
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 33
      end
      item
        DataType = ftSmallint
        Name = 'type_id'
        ParamType = ptInput
        Value = 0
      end>
    object qryItemsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryItemsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryItemscode: TWideStringField
      FieldName = 'code'
      Size = 60
    end
    object qryItemsmodel: TWideStringField
      FieldName = 'model'
      Size = 128
    end
    object qryItemsdescription: TWideStringField
      FieldName = 'description'
      Size = 1024
    end
    object qryItemsmain_supplier_id: TLargeintField
      FieldName = 'main_supplier_id'
    end
    object qryItemsconventions: TBooleanField
      FieldName = 'conventions'
    end
    object qryItemssupplier_code: TWideStringField
      FieldName = 'supplier_code'
      Size = 60
    end
    object qryItemsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryItemsupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryItemsins_id: TLargeintField
      FieldName = 'ins_id'
    end
    object qryItemsupd_id: TLargeintField
      FieldName = 'upd_id'
    end
    object qryItemsuser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 30
    end
    object qryItemsuser_update: TWideStringField
      FieldName = 'user_update'
      Size = 30
    end
    object qryItemslocal: TBooleanField
      FieldName = 'local'
    end
    object qryItemswildcard: TBooleanField
      FieldName = 'wildcard'
    end
    object qryItemsref_type_id: TSmallintField
      FieldName = 'ref_type_id'
    end
    object qryItemspkg_units: TSmallintField
      FieldName = 'pkg_units'
    end
    object qryItemsstatus: TSmallintField
      FieldName = 'status'
    end
    object qryItemsreserved: TSmallintField
      FieldName = 'reserved'
    end
    object qryItemsextra_flag: TBooleanField
      FieldName = 'extra_flag'
    end
    object qryItemsbranch_id: TIntegerField
      FieldName = 'branch_id'
    end
    object qryItemsmin_heigth: TSmallintField
      FieldName = 'min_heigth'
    end
    object qryItemsmax_heigth: TSmallintField
      FieldName = 'max_heigth'
    end
    object qryItemsrepeats: TSmallintField
      FieldName = 'repeats'
    end
    object qryItemsperiodic: TSmallintField
      FieldName = 'periodic'
    end
    object qryItemsguarantee: TSmallintField
      FieldName = 'guarantee'
    end
    object qryItemspromo_points: TSmallintField
      FieldName = 'promo_points'
    end
    object qryItemspromo_point_forfait: TSmallintField
      FieldName = 'promo_point_forfait'
    end
    object qryItemspromo_group: TSmallintField
      FieldName = 'promo_group'
    end
    object qryItemspromo: TSmallintField
      FieldName = 'promo'
    end
    object qryItemsbrand_id: TSmallintField
      FieldName = 'brand_id'
    end
    object qryItemstype_id: TSmallintField
      FieldName = 'type_id'
      Required = True
    end
    object qryItemstype_ref_id: TSmallintField
      FieldName = 'type_ref_id'
    end
    object qryItemsmunit_id: TSmallintField
      FieldName = 'munit_id'
      Required = True
    end
    object qryItemsfamily_id: TSmallintField
      FieldName = 'family_id'
      Required = True
    end
    object qryItemsiconfile: TWideStringField
      FieldName = 'iconfile'
      Size = 256
    end
    object qryItemsbannerfile: TWideStringField
      FieldName = 'bannerfile'
      Size = 256
    end
    object qryItemsimagefile: TWideStringField
      FieldName = 'imagefile'
      Size = 256
    end
    object qryItemstitle: TWideStringField
      FieldName = 'title'
      Size = 128
    end
    object qryItemssubtitle: TWideStringField
      FieldName = 'subtitle'
      Size = 128
    end
    object qryItemslefimage: TWideStringField
      FieldName = 'lefimage'
      Size = 256
    end
    object qryItemsrightimage: TWideStringField
      FieldName = 'rightimage'
      Size = 256
    end
    object qryItemsitem_rtftext: TWideMemoField
      FieldName = 'item_rtftext'
      BlobType = ftWideMemo
    end
    object qryItemsitem_text: TWideStringField
      FieldName = 'item_text'
      Size = 4000
    end
    object qryItemsjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryItemsmain_price: TCurrencyField
      FieldName = 'main_price'
    end
  end
  object qryItemsSearch: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT id, jguid, code, model, description, main_price,'#9
      
        'code || '#39' - '#39' || model || '#39' - '#39' ||  main_price as display_index,' +
        ' search_index'
      'FROM items.definitions '
      'where'
      'db_schema_id = :db_schema_id '
      'and'
      '(group_id = :p_group_id or :p_group_id = 0)'
      'and search_index like '#39'%'#39)
    Left = 72
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 33
      end
      item
        DataType = ftSmallint
        Name = 'p_group_id'
        ParamType = ptInput
        Value = 0
      end>
    object qryItemsSearchid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryItemsSearchjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryItemsSearchcode: TWideStringField
      FieldName = 'code'
      Size = 60
    end
    object qryItemsSearchmodel: TWideStringField
      FieldName = 'model'
      Size = 128
    end
    object qryItemsSearchdescription: TWideStringField
      FieldName = 'description'
      Size = 1024
    end
    object qryItemsSearchmain_price: TCurrencyField
      FieldName = 'main_price'
    end
    object qryItemsSearchdisplay_index: TWideMemoField
      FieldName = 'display_index'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryItemsSearchsearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 1024
    end
  end
  object qryGroups: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM items.groups'
      'where'
      'db_schema_id = :db_schema_id')
    Left = 160
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'db_schema_id'
        Value = nil
      end>
    object qryGroupsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryGroupsgroup_id: TSmallintField
      FieldName = 'group_id'
      Required = True
    end
    object qryGroupsgroup_des: TWideStringField
      FieldName = 'group_des'
      Required = True
    end
    object qryGroupscontact_group: TSmallintField
      FieldName = 'contact_group'
    end
    object qryGroupspos: TSmallintField
      FieldName = 'pos'
    end
    object qryGroupsaccounting: TBooleanField
      FieldName = 'accounting'
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
    object qryGroupsdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryGroupsicon_id: TSmallintField
      FieldName = 'icon_id'
    end
    object qryGroupsjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
  end
  object qryTypes: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO items.types'
      
        '  (db_schema_id, type_id, type_des, stock, group_type_id, jguid,' +
        ' deleted, icon_id)'
      'VALUES'
      
        '  (:db_schema_id, :type_id, :type_des, :stock, :group_type_id, :' +
        'jguid, :deleted, :icon_id)')
    SQLDelete.Strings = (
      'DELETE FROM items.types'
      'WHERE'
      '  type_id = :Old_type_id')
    SQLUpdate.Strings = (
      'UPDATE items.types'
      'SET'
      
        '  db_schema_id = :db_schema_id, type_id = :type_id, type_des = :' +
        'type_des, stock = :stock, group_type_id = :group_type_id, jguid ' +
        '= :jguid, deleted = :deleted, icon_id = :icon_id'
      'WHERE'
      '  type_id = :Old_type_id')
    SQLLock.Strings = (
      'SELECT * FROM items.types'
      'WHERE'
      '  type_id = :Old_type_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, type_id, type_des, stock, group_type_id, jg' +
        'uid, deleted, icon_id FROM items.types'
      'WHERE'
      '  type_id = :type_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM items.types'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM items.types'
      'where'
      'db_schema_id = :db_schema_id')
    Left = 160
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'db_schema_id'
        Value = nil
      end>
    object qryTypesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryTypestype_id: TSmallintField
      FieldName = 'type_id'
      Required = True
    end
    object qryTypestype_des: TWideStringField
      FieldName = 'type_des'
      Required = True
      Size = 100
    end
    object qryTypesstock: TBooleanField
      FieldName = 'stock'
      Required = True
    end
    object qryTypesgroup_type_id: TSmallintField
      FieldName = 'group_type_id'
      Required = True
    end
    object qryTypesjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryTypesdeleted: TBooleanField
      FieldName = 'deleted'
      Required = True
    end
    object qryTypesicon_id: TSmallintField
      FieldName = 'icon_id'
    end
  end
  object qryTypesGroups: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO items.type_groups'
      
        '  (db_schema_id, group_type_id, group_type_name, group_type_code' +
        ', isstock, group_level, insert_date, update_date, user_insert, u' +
        'ser_update, icon_id)'
      'VALUES'
      
        '  (:db_schema_id, :group_type_id, :group_type_name, :group_type_' +
        'code, :isstock, :group_level, :insert_date, :update_date, :user_' +
        'insert, :user_update, :icon_id)')
    SQLDelete.Strings = (
      'DELETE FROM items.type_groups'
      'WHERE'
      '  group_type_id = :Old_group_type_id')
    SQLUpdate.Strings = (
      'UPDATE items.type_groups'
      'SET'
      
        '  db_schema_id = :db_schema_id, group_type_id = :group_type_id, ' +
        'group_type_name = :group_type_name, group_type_code = :group_typ' +
        'e_code, isstock = :isstock, group_level = :group_level, insert_d' +
        'ate = :insert_date, update_date = :update_date, user_insert = :u' +
        'ser_insert, user_update = :user_update, icon_id = :icon_id'
      'WHERE'
      '  group_type_id = :Old_group_type_id')
    SQLLock.Strings = (
      'SELECT * FROM items.type_groups'
      'WHERE'
      '  group_type_id = :Old_group_type_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, group_type_id, group_type_name, group_type_' +
        'code, isstock, group_level, insert_date, update_date, user_inser' +
        't, user_update, icon_id FROM items.type_groups'
      'WHERE'
      '  group_type_id = :group_type_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM items.type_groups'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM items.type_groups'
      'where'
      'db_schema_id = :db_schema_id')
    Left = 160
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'db_schema_id'
        Value = nil
      end>
    object qryTypesGroupsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryTypesGroupsgroup_type_id: TSmallintField
      FieldName = 'group_type_id'
      Required = True
    end
    object qryTypesGroupsgroup_type_name: TWideStringField
      FieldName = 'group_type_name'
      Size = 128
    end
    object qryTypesGroupsgroup_type_code: TWideStringField
      FieldName = 'group_type_code'
      Size = 15
    end
    object qryTypesGroupsisstock: TBooleanField
      FieldName = 'isstock'
    end
    object qryTypesGroupsgroup_level: TSmallintField
      FieldName = 'group_level'
    end
    object qryTypesGroupsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryTypesGroupsupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryTypesGroupsuser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 128
    end
    object qryTypesGroupsuser_update: TWideStringField
      FieldName = 'user_update'
      Size = 128
    end
    object qryTypesGroupsicon_id: TSmallintField
      FieldName = 'icon_id'
    end
  end
  object lkpPackages: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT id, code, description, jguid'
      #9'FROM items.package_types'
      #9'order by description')
    Left = 160
    Top = 232
    object lkpPackagesid: TSmallintField
      FieldName = 'id'
      Required = True
    end
    object lkpPackagescode: TWideStringField
      FieldName = 'code'
      Required = True
      Size = 10
    end
    object lkpPackagesdescription: TWideStringField
      FieldName = 'description'
      Required = True
      Size = 128
    end
    object lkpPackagesjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
  end
  object lkpHazmatD: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT code'
      #9'FROM items.hazamat_divisions'
      #9'order by code')
    Left = 248
    Top = 63
    object lkpHazmatDcode: TWideStringField
      FieldName = 'code'
      Required = True
      Size = 10
    end
  end
end
