inherited dmPgWebSite: TdmPgWebSite
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = '99FFCBFF91FF94FF8AFF93FFCFFF'
  end
  object qryTemplates: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cms.templates'
      
        '  (db_schema_id, theme_id, template_id, template_name, template_' +
        'type, website_id, head, header, js, scripts, footer)'
      'VALUES'
      
        '  (:db_schema_id, :theme_id, :template_id, :template_name, :temp' +
        'late_type, :website_id, :head, :header, :js, :scripts, :footer)')
    SQLDelete.Strings = (
      'DELETE FROM cms.templates'
      'WHERE'
      '  template_id = :Old_template_id')
    SQLUpdate.Strings = (
      'UPDATE cms.templates'
      'SET'
      
        '  db_schema_id = :db_schema_id, theme_id = :theme_id, template_i' +
        'd = :template_id, template_name = :template_name, template_type ' +
        '= :template_type, website_id = :website_id, head = :head, header' +
        ' = :header, js = :js, scripts = :scripts, footer = :footer'
      'WHERE'
      '  template_id = :Old_template_id')
    SQLLock.Strings = (
      'SELECT * FROM cms.templates'
      'WHERE'
      '  template_id = :Old_template_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, theme_id, template_id, template_name, templ' +
        'ate_type, website_id, head, header, js, scripts, footer FROM cms' +
        '.templates'
      'WHERE'
      '  template_id = :template_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.templates'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT db_schema_id, theme_id, template_id, template_name, templ' +
        'ate_type, '
      '       website_id, head, header, js, scripts, footer'
      '  FROM cms.templates where website_id = :website_id')
    Left = 176
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'website_id'
        Value = nil
      end>
    object qryTemplatesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryTemplatestheme_id: TSmallintField
      FieldName = 'theme_id'
    end
    object qryTemplatestemplate_id: TSmallintField
      FieldName = 'template_id'
      Required = True
    end
    object qryTemplatestemplate_name: TWideStringField
      FieldName = 'template_name'
      Size = 128
    end
    object qryTemplatestemplate_type: TSmallintField
      FieldName = 'template_type'
    end
    object qryTemplateswebsite_id: TIntegerField
      FieldName = 'website_id'
    end
    object qryTemplateshead: TWideMemoField
      FieldName = 'head'
      BlobType = ftWideMemo
    end
    object qryTemplatesheader: TWideMemoField
      FieldName = 'header'
      BlobType = ftWideMemo
    end
    object qryTemplatesjs: TWideMemoField
      FieldName = 'js'
      BlobType = ftWideMemo
    end
    object qryTemplatesscripts: TWideMemoField
      FieldName = 'scripts'
      BlobType = ftWideMemo
    end
    object qryTemplatesfooter: TWideMemoField
      FieldName = 'footer'
      BlobType = ftWideMemo
    end
  end
  object qryWebSites: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cms.web_sites'
      '  (website_id, website_url, website_key, db_schema_id)'
      'VALUES'
      '  (:website_id, :website_url, :website_key, :db_schema_id)')
    SQLDelete.Strings = (
      'DELETE FROM cms.web_sites'
      'WHERE'
      '  website_id = :Old_website_id')
    SQLUpdate.Strings = (
      'UPDATE cms.web_sites'
      'SET'
      
        '  website_id = :website_id, website_url = :website_url, website_' +
        'key = :website_key, db_schema_id = :db_schema_id'
      'WHERE'
      '  website_id = :Old_website_id')
    SQLLock.Strings = (
      'SELECT * FROM cms.web_sites'
      'WHERE'
      '  website_id = :Old_website_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT website_id, website_url, website_key, db_schema_id FROM c' +
        'ms.web_sites'
      'WHERE'
      '  website_id = :website_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.web_sites'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from cms.web_sites'
      'where db_schema_id = :db_schema_id')
    Left = 176
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 31
      end>
    object qryWebSiteswebsite_id: TIntegerField
      FieldName = 'website_id'
      Required = True
    end
    object qryWebSiteswebsite_url: TWideStringField
      FieldName = 'website_url'
      Size = 1024
    end
    object qryWebSiteswebsite_key: TWideStringField
      FieldName = 'website_key'
      FixedChar = True
      Size = 64
    end
    object qryWebSitesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
  end
  object dsWebSites: TDataSource
    DataSet = qryWebSites
    Left = 176
    Top = 128
  end
  object dsTemplates: TDataSource
    DataSet = qryTemplates
    Enabled = False
    Left = 176
    Top = 248
  end
  object qryTemplatePages: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cms.templates_pages'
      
        '  (id, db_schema_id, page_name, body, html, js, template_id, css' +
        ', head)'
      'VALUES'
      
        '  (:id, :db_schema_id, :page_name, :body, :html, :js, :template_' +
        'id, :css, :head)')
    SQLDelete.Strings = (
      'DELETE FROM cms.templates_pages'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE cms.templates_pages'
      'SET'
      
        '  id = :id, db_schema_id = :db_schema_id, page_name = :page_name' +
        ', body = :body, html = :html, js = :js, template_id = :template_' +
        'id, css = :css, head = :head'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM cms.templates_pages'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, db_schema_id, page_name, body, html, js, template_id,' +
        ' css, head FROM cms.templates_pages'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cms.templates_pages'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT id, db_schema_id, page_name, body, html, js, template_id,' +
        ' css, '
      '       head'
      '  FROM cms.templates_pages p'
      '  WHERE p.template_id = :template_id')
    MasterSource = dsTemplates
    Left = 176
    Top = 304
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'template_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryTemplatePagesid: TSmallintField
      FieldName = 'id'
      Required = True
    end
    object qryTemplatePagesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryTemplatePagespage_name: TWideStringField
      FieldName = 'page_name'
      Size = 128
    end
    object qryTemplatePagesbody: TWideMemoField
      FieldName = 'body'
      BlobType = ftWideMemo
    end
    object qryTemplatePageshtml: TWideMemoField
      FieldName = 'html'
      BlobType = ftWideMemo
    end
    object qryTemplatePagesjs: TWideMemoField
      FieldName = 'js'
      BlobType = ftWideMemo
    end
    object qryTemplatePagestemplate_id: TSmallintField
      FieldName = 'template_id'
    end
    object qryTemplatePagescss: TWideMemoField
      FieldName = 'css'
      BlobType = ftWideMemo
    end
    object qryTemplatePageshead: TWideMemoField
      FieldName = 'head'
      BlobType = ftWideMemo
    end
  end
  object qryPing: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select 1 as ping')
    Left = 64
    Top = 392
  end
  object dsTemplatePages: TDataSource
    DataSet = qryTemplatePages
    Left = 176
    Top = 368
  end
end
