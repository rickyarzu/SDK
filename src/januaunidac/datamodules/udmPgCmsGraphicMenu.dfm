inherited dmPgCmsGraphicMenu: TdmPgCmsGraphicMenu
  Height = 692
  Width = 530
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = '99FFCBFF91FF94FF8AFF93FFCFFF'
  end
  inherited tbUserSessionRoles: TUniTable
    Top = 192
  end
  inherited dsUserSession: TDataSource
    Top = 136
  end
  inherited qryUserProfile: TUniQuery
    Top = 248
  end
  inherited qryTowns: TUniQuery
    Top = 360
  end
  object qryGMenus: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cms.graphic_menu'
      
        '  (id, title, db_schema_id, img_url, img_id, css_template, templ' +
        'ate, row_template, group_template)'
      'VALUES'
      
        '  (:id, :title, :db_schema_id, :img_url, :img_id, :css_template,' +
        ' :template, :row_template, :group_template)')
    SQLDelete.Strings = (
      'DELETE FROM cms.graphic_menu'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE cms.graphic_menu'
      'SET'
      
        '  id = :id, title = :title, db_schema_id = :db_schema_id, img_ur' +
        'l = :img_url, img_id = :img_id, css_template = :css_template, te' +
        'mplate = :template, row_template = :row_template, group_template' +
        ' = :group_template'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM cms.graphic_menu'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, title, db_schema_id, img_url, img_id, css_template, t' +
        'emplate, row_template, group_template FROM cms.graphic_menu'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.graphic_menu'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM cms.graphic_menu where (id=:id or :id=0)')
    Left = 160
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 1
      end>
    object qryGMenusid: TIntegerField
      FieldName = 'id'
    end
    object qryGMenustitle: TWideStringField
      FieldName = 'title'
      Size = 128
    end
    object qryGMenusdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryGMenusimg_url: TWideStringField
      FieldName = 'img_url'
      Size = 1024
    end
    object qryGMenusimg_id: TLargeintField
      FieldName = 'img_id'
    end
    object qryGMenustemplate: TWideMemoField
      FieldName = 'template'
      BlobType = ftWideMemo
    end
    object qryGMenusrow_template: TWideMemoField
      FieldName = 'row_template'
      BlobType = ftWideMemo
    end
    object qryGMenusgroup_template: TWideMemoField
      FieldName = 'group_template'
      BlobType = ftWideMemo
    end
    object qryGMenuscss_template: TWideMemoField
      FieldName = 'css_template'
      BlobType = ftWideMemo
    end
  end
  object dsGMenus: TUniDataSource
    DataSet = qryGMenus
    Left = 160
    Top = 104
  end
  object qryGMenuGroups: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cms.graphic_menu_groups'
      '  (id, title, css_class, css_color, menu_id)'
      'VALUES'
      '  (:id, :title, :css_class, :css_color, :menu_id)')
    SQLDelete.Strings = (
      'DELETE FROM cms.graphic_menu_groups'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE cms.graphic_menu_groups'
      'SET'
      
        '  id = :id, title = :title, css_class = :css_class, css_color = ' +
        ':css_color, menu_id = :menu_id'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM cms.graphic_menu_groups'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, title, css_class, css_color, menu_id FROM cms.graphic' +
        '_menu_groups'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.graphic_menu_groups'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM cms.graphic_menu_groups where menu_id = :id')
    MasterSource = dsGMenus
    MasterFields = 'id'
    DetailFields = 'menu_id'
    Left = 160
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 1
      end>
    object qryGMenuGroupsid: TIntegerField
      FieldName = 'id'
    end
    object qryGMenuGroupstitle: TWideStringField
      FieldName = 'title'
      Size = 128
    end
    object qryGMenuGroupscss_class: TWideStringField
      FieldName = 'css_class'
      Size = 128
    end
    object qryGMenuGroupscss_color: TWideStringField
      FieldName = 'css_color'
    end
    object qryGMenuGroupsmenu_id: TIntegerField
      FieldName = 'menu_id'
    end
  end
  object dsGMenuGroups: TUniDataSource
    DataSet = qryGMenuGroups
    Left = 160
    Top = 216
  end
  object qryGMenuRows: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cms.graphic_menu_rows'
      '  (id, title, group_id, img_url, img_id)'
      'VALUES'
      '  (:id, :title, :group_id, :img_url, :img_id)')
    SQLDelete.Strings = (
      'DELETE FROM cms.graphic_menu_rows'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE cms.graphic_menu_rows'
      'SET'
      
        '  id = :id, title = :title, group_id = :group_id, img_url = :img' +
        '_url, img_id = :img_id'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM cms.graphic_menu_rows'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, title, group_id, img_url, img_id FROM cms.graphic_men' +
        'u_rows'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.graphic_menu_rows'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM cms.graphic_menu_rows where group_id = :id')
    MasterSource = dsGMenuGroups
    MasterFields = 'id'
    DetailFields = 'group_id'
    Left = 160
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 1
      end>
    object qryGMenuRowsid: TLargeintField
      FieldName = 'id'
    end
    object qryGMenuRowstitle: TWideStringField
      FieldName = 'title'
      Size = 256
    end
    object qryGMenuRowsgroup_id: TIntegerField
      FieldName = 'group_id'
    end
    object qryGMenuRowsimg_url: TWideStringField
      FieldName = 'img_url'
      Size = 1024
    end
    object qryGMenuRowsimg_id: TLargeintField
      FieldName = 'img_id'
    end
  end
  object dsGMenuRows: TUniDataSource
    DataSet = qryGMenuRows
    Left = 160
    Top = 328
  end
end
