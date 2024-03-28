object dmOracleSchema: TdmOracleSchema
  Height = 632
  Width = 674
  object UniConnection1: TUniConnection
    AutoCommit = False
    ProviderName = 'Oracle'
    SpecificOptions.Strings = (
      'Oracle.UseUnicode=True'
      'Oracle.HomeName=OraHome'
      'Oracle.Direct=True')
    Username = 'GTIT'
    Server = 'glsdbx01-scan.generali.it:1521:sn=GLSRX1_VIS'
    AfterConnect = UniConnection1AfterConnect
    Left = 72
    Top = 120
    EncryptedPassword = '98FF8BFF96FFCEFFCDFFCCFFCBFF'
  end
  object OracleUniProvider1: TOracleUniProvider
    Left = 168
    Top = 80
  end
  object qrySchemas: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select username as schema_name'
      'from sys.all_users'
      'order by username;')
    AfterOpen = qrySchemasAfterOpen
    Left = 208
    Top = 168
    object qrySchemasSCHEMA_NAME: TWideStringField
      FieldName = 'SCHEMA_NAME'
      Required = True
      Size = 128
    end
  end
  object qrySchemaTables: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT owner as schema_name, table_name FROM all_tables WHERE ow' +
        'ner = :schema_name;')
    MasterSource = dsSchemas
    Left = 112
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'schema_name'
        ParamType = ptInput
        Value = 'AADAS'
      end>
    object qrySchemaTablesSCHEMA_NAME: TWideStringField
      FieldName = 'SCHEMA_NAME'
      Required = True
      Size = 128
    end
    object qrySchemaTablesTABLE_NAME: TWideStringField
      FieldName = 'TABLE_NAME'
      Required = True
      Size = 128
    end
  end
  object dsSchemas: TUniDataSource
    DataSet = qrySchemas
    Left = 112
    Top = 208
  end
  object qryTableFields: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select col.column_id, '
      '       col.owner as schema_name,'
      '       col.table_name, '
      '       col.column_name, '
      '       col.data_type, '
      '       col.data_length, '
      '       col.data_precision, '
      '       col.data_scale, '
      '       col.nullable,'
      '       CASE col.column_id WHEN  1 THEN '#39'  '#39' ELSE '#39' ,'#39' END'
      '    || RTRIM (col.column_name)'
      '    || '#39' '#39
      '    || RTRIM (data_type)'
      '    || RTRIM ('
      '         CASE col.data_type'
      '           WHEN '#39'DATE'#39
      '           THEN'
      '             NULL'
      '           WHEN '#39'CHAR'#39
      '           THEN'
      '             '#39'('#39' || col.data_length || '#39')'#39
      '           WHEN '#39'VARCHAR2'#39
      '           THEN'
      '             '#39'('#39' || col.data_length || '#39')'#39
      '           WHEN '#39'NUMBER'#39
      '           THEN'
      '             CASE coalesce( col.data_precision, -1)'
      '               WHEN -1'
      '               THEN'
      '                 NULL'
      '               ELSE'
      '                 '#39'('#39' || TO_CHAR( col.data_precision ) ||  '
      
        '                 DECODE(COALESCE( col.data_scale, 0), 0, '#39#39', '#39' ,' +
        ' '#39' || TO_CHAR( COALESCE( col.data_scale, 0))) '
      '                 || '#39')'#39
      '             END'
      '           WHEN '#39'LONG'#39
      '           THEN'
      '             NULL'
      '           ELSE'
      '             '#39'******ERROR'#39
      '         END )'
      '    || '#39' '#39
      
        '    || RTRIM (CASE col.nullable WHEN '#39'N'#39' THEN '#39'NOT NULL'#39' ELSE NU' +
        'LL END) AS COLUMN_DDL'
      ''
      'FROM sys.all_tab_columns col'
      'INNER JOIN sys.all_tables t on col.owner = t.owner '
      '                              AND col.table_name = t.table_name'
      'WHERE col.owner = :SCHEMA_NAME'
      'AND col.table_name = :TABLE_NAME'
      'ORDER BY col.column_id;')
    MasterSource = dsTables
    DetailFields = 'SCHEMA_NAME;TABLE_NAME'
    Left = 112
    Top = 400
    ParamData = <
      item
        DataType = ftString
        Name = 'SCHEMA_NAME'
        ParamType = ptInput
        Value = 'AADAS'
      end
      item
        DataType = ftString
        Name = 'TABLE_NAME'
        ParamType = ptInput
        Value = 'AC_ANNIMESI'
      end>
    object qryTableFieldsCOLUMN_ID: TFloatField
      FieldName = 'COLUMN_ID'
    end
    object qryTableFieldsSCHEMA_NAME: TWideStringField
      FieldName = 'SCHEMA_NAME'
      Required = True
      Size = 128
    end
    object qryTableFieldsTABLE_NAME: TWideStringField
      FieldName = 'TABLE_NAME'
      Required = True
      Size = 128
    end
    object qryTableFieldsCOLUMN_NAME: TWideStringField
      FieldName = 'COLUMN_NAME'
      Required = True
      Size = 128
    end
    object qryTableFieldsDATA_TYPE: TWideStringField
      FieldName = 'DATA_TYPE'
      Size = 128
    end
    object qryTableFieldsDATA_LENGTH: TFloatField
      FieldName = 'DATA_LENGTH'
      Required = True
    end
    object qryTableFieldsDATA_PRECISION: TFloatField
      FieldName = 'DATA_PRECISION'
    end
    object qryTableFieldsDATA_SCALE: TFloatField
      FieldName = 'DATA_SCALE'
    end
    object qryTableFieldsNULLABLE: TWideStringField
      FieldName = 'NULLABLE'
      Size = 1
    end
    object qryTableFieldsCOLUMN_DDL: TWideStringField
      FieldName = 'COLUMN_DDL'
      ReadOnly = True
      Size = 353
    end
  end
  object dsTables: TUniDataSource
    DataSet = qrySchemaTables
    Left = 112
    Top = 336
  end
  object qrySchemaViews: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT owner, view_name'
      'FROM all_views'
      'WHERE OWNER = :SCHEMA_NAME'
      '')
    MasterSource = dsSchemas
    MasterFields = 'SCHEMA_NAME'
    DetailFields = 'OWNER'
    Left = 208
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'SCHEMA_NAME'
        ParamType = ptInput
        Value = 'AADAS'
      end>
    object qrySchemaViewsOWNER: TWideStringField
      FieldName = 'OWNER'
      Required = True
      Size = 128
    end
    object qrySchemaViewsVIEW_NAME: TWideStringField
      FieldName = 'VIEW_NAME'
      Required = True
      Size = 128
    end
  end
  object dsViews: TUniDataSource
    DataSet = qrySchemaViews
    Left = 208
    Top = 296
  end
  object qryViewFields: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select col.column_id, '
      '       col.owner as schema_name,'
      '       col.table_name, '
      '       col.column_name, '
      '       col.data_type, '
      '       col.data_length, '
      '       col.data_precision, '
      '       col.data_scale, '
      '       col.nullable,'
      '       CASE col.column_id WHEN  1 THEN '#39'  '#39' ELSE '#39' ,'#39' END'
      '    || RTRIM (col.column_name)'
      '    || '#39' '#39
      '    || RTRIM (data_type)'
      '    || RTRIM ('
      '         CASE col.data_type'
      '           WHEN '#39'DATE'#39
      '           THEN'
      '             NULL'
      '           WHEN '#39'CHAR'#39
      '           THEN'
      '             '#39'('#39' || col.data_length || '#39')'#39
      '           WHEN '#39'VARCHAR2'#39
      '           THEN'
      '             '#39'('#39' || col.data_length || '#39')'#39
      '           WHEN '#39'NUMBER'#39
      '           THEN'
      '             CASE coalesce( col.data_precision, -1)'
      '               WHEN -1'
      '               THEN'
      '                 NULL'
      '               ELSE'
      '                 '#39'('#39' || TO_CHAR( col.data_precision ) ||  '
      
        '                 DECODE(COALESCE( col.data_scale, 0), 0, '#39#39', '#39' ,' +
        ' '#39' || TO_CHAR( COALESCE( col.data_scale, 0))) '
      '                 || '#39')'#39
      '             END'
      '           WHEN '#39'LONG'#39
      '           THEN'
      '             NULL'
      '           ELSE'
      '             '#39'******ERROR'#39
      '         END )'
      '    || '#39' '#39
      
        '    || RTRIM (CASE col.nullable WHEN '#39'N'#39' THEN '#39'NOT NULL'#39' ELSE NU' +
        'LL END) AS COLUMN_DDL'
      ''
      'FROM sys.all_tab_columns col'
      'INNER JOIN sys.all_views t on col.owner = t.owner '
      '                              AND col.table_name = t.view_name'
      'WHERE col.owner = :SCHEMA_NAME'
      'AND col.table_name = :VIEW_NAME'
      'ORDER BY col.column_id;')
    MasterSource = dsViews
    Left = 208
    Top = 360
    ParamData = <
      item
        DataType = ftString
        Name = 'SCHEMA_NAME'
        ParamType = ptInput
        Value = 'AADAS'
      end
      item
        DataType = ftString
        Name = 'VIEW_NAME'
        ParamType = ptInput
        Value = 'ANAGRAFICA_ACQUISTI'
      end>
    object qryViewFieldsCOLUMN_ID: TFloatField
      FieldName = 'COLUMN_ID'
    end
    object qryViewFieldsSCHEMA_NAME: TWideStringField
      FieldName = 'SCHEMA_NAME'
      Required = True
      Size = 128
    end
    object qryViewFieldsTABLE_NAME: TWideStringField
      FieldName = 'TABLE_NAME'
      Required = True
      Size = 128
    end
    object qryViewFieldsCOLUMN_NAME: TWideStringField
      FieldName = 'COLUMN_NAME'
      Required = True
      Size = 128
    end
    object qryViewFieldsDATA_TYPE: TWideStringField
      FieldName = 'DATA_TYPE'
      Size = 128
    end
    object qryViewFieldsDATA_LENGTH: TFloatField
      FieldName = 'DATA_LENGTH'
      Required = True
    end
    object qryViewFieldsDATA_PRECISION: TFloatField
      FieldName = 'DATA_PRECISION'
    end
    object qryViewFieldsDATA_SCALE: TFloatField
      FieldName = 'DATA_SCALE'
    end
    object qryViewFieldsNULLABLE: TWideStringField
      FieldName = 'NULLABLE'
      Size = 1
    end
    object qryViewFieldsCOLUMN_DDL: TWideStringField
      FieldName = 'COLUMN_DDL'
      ReadOnly = True
      Size = 353
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=Ora')
    Left = 280
    Top = 56
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 368
    Top = 96
  end
  object qryMaterializedView: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from sys.all_objects '
      'where object_type ='#39'MATERIALIZED VIEW'#39' and OWNER = :SCHEMA_NAME'
      'order by 1')
    MasterSource = dsSchemas
    AfterOpen = qryMaterializedViewAfterOpen
    Left = 360
    Top = 184
    ParamData = <
      item
        DataType = ftWideString
        Name = 'SCHEMA_NAME'
        ParamType = ptInput
        Value = 'ALESSIO_MORZILLO'
      end>
    object qryMaterializedViewOWNER: TWideStringField
      FieldName = 'OWNER'
      Required = True
      Size = 30
    end
    object qryMaterializedViewOBJECT_NAME: TWideStringField
      FieldName = 'OBJECT_NAME'
      Required = True
      Size = 30
    end
    object qryMaterializedViewSUBOBJECT_NAME: TWideStringField
      FieldName = 'SUBOBJECT_NAME'
      Size = 30
    end
    object qryMaterializedViewOBJECT_ID: TFloatField
      FieldName = 'OBJECT_ID'
      Required = True
    end
    object qryMaterializedViewDATA_OBJECT_ID: TFloatField
      FieldName = 'DATA_OBJECT_ID'
    end
    object qryMaterializedViewOBJECT_TYPE: TWideStringField
      FieldName = 'OBJECT_TYPE'
      Size = 19
    end
    object qryMaterializedViewCREATED: TDateTimeField
      FieldName = 'CREATED'
      Required = True
    end
    object qryMaterializedViewLAST_DDL_TIME: TDateTimeField
      FieldName = 'LAST_DDL_TIME'
      Required = True
    end
    object qryMaterializedViewTIMESTAMP: TWideStringField
      FieldName = 'TIMESTAMP'
      Size = 19
    end
    object qryMaterializedViewSTATUS: TWideStringField
      FieldName = 'STATUS'
      Size = 7
    end
    object qryMaterializedViewTEMPORARY: TWideStringField
      FieldName = 'TEMPORARY'
      Size = 1
    end
    object qryMaterializedViewGENERATED: TWideStringField
      FieldName = 'GENERATED'
      Size = 1
    end
    object qryMaterializedViewSECONDARY: TWideStringField
      FieldName = 'SECONDARY'
      Size = 1
    end
    object qryMaterializedViewNAMESPACE: TFloatField
      FieldName = 'NAMESPACE'
      Required = True
    end
    object qryMaterializedViewEDITION_NAME: TWideStringField
      FieldName = 'EDITION_NAME'
      Size = 30
    end
  end
  object qryMviewFields: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select col.column_id, '
      '       col.owner as schema_name,'
      '       col.table_name, '
      '       col.column_name, '
      '       col.data_type, '
      '       col.data_length, '
      '       col.data_precision, '
      '       col.data_scale, '
      '       col.nullable,'
      '       CASE col.column_id WHEN  1 THEN '#39'  '#39' ELSE '#39' ,'#39' END'
      '    || RTRIM (col.column_name)'
      '    || '#39' '#39
      '    || RTRIM (data_type)'
      '    || RTRIM ('
      '         CASE col.data_type'
      '           WHEN '#39'DATE'#39
      '           THEN'
      '             NULL'
      '           WHEN '#39'CHAR'#39
      '           THEN'
      '             '#39'('#39' || col.data_length || '#39')'#39
      '           WHEN '#39'VARCHAR2'#39
      '           THEN'
      '             '#39'('#39' || col.data_length || '#39')'#39
      '           WHEN '#39'NUMBER'#39
      '           THEN'
      '             CASE coalesce( col.data_precision, -1)'
      '               WHEN -1'
      '               THEN'
      '                 NULL'
      '               ELSE'
      '                 '#39'('#39' || TO_CHAR( col.data_precision ) ||  '
      
        '                 DECODE(COALESCE( col.data_scale, 0), 0, '#39#39', '#39' ,' +
        ' '#39' || TO_CHAR( COALESCE( col.data_scale, 0))) '
      '                 || '#39')'#39
      '             END'
      '           WHEN '#39'LONG'#39
      '           THEN'
      '             NULL'
      '           ELSE'
      '             '#39'******ERROR'#39
      '         END )'
      '    || '#39' '#39
      
        '    || RTRIM (CASE col.nullable WHEN '#39'N'#39' THEN '#39'NOT NULL'#39' ELSE NU' +
        'LL END) AS COLUMN_DDL'
      ''
      'FROM sys.all_tab_columns col'
      '--INNER JOIN sys.all_views t on col.owner = t.owner '
      '--                              AND col.table_name = t.view_name'
      'WHERE col.owner = :OWNER'
      'AND col.table_name = :OBJECT_NAME'
      'ORDER BY col.column_id;')
    MasterSource = dsMViews
    Left = 360
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'OWNER'
        ParamType = ptInput
        Value = 'GTIT'
      end
      item
        DataType = ftWideString
        Name = 'OBJECT_NAME'
        ParamType = ptInput
        Value = 'TAB_RETI'
      end>
    object qryMviewFieldsCOLUMN_ID: TFloatField
      FieldName = 'COLUMN_ID'
    end
    object qryMviewFieldsSCHEMA_NAME: TWideStringField
      FieldName = 'SCHEMA_NAME'
      Required = True
      Size = 30
    end
    object qryMviewFieldsTABLE_NAME: TWideStringField
      FieldName = 'TABLE_NAME'
      Required = True
      Size = 30
    end
    object qryMviewFieldsCOLUMN_NAME: TWideStringField
      FieldName = 'COLUMN_NAME'
      Required = True
      Size = 30
    end
    object qryMviewFieldsDATA_TYPE: TWideStringField
      FieldName = 'DATA_TYPE'
      Size = 106
    end
    object qryMviewFieldsDATA_LENGTH: TFloatField
      FieldName = 'DATA_LENGTH'
      Required = True
    end
    object qryMviewFieldsDATA_PRECISION: TFloatField
      FieldName = 'DATA_PRECISION'
    end
    object qryMviewFieldsDATA_SCALE: TFloatField
      FieldName = 'DATA_SCALE'
    end
    object qryMviewFieldsNULLABLE: TWideStringField
      FieldName = 'NULLABLE'
      Size = 1
    end
    object qryMviewFieldsCOLUMN_DDL: TWideStringField
      FieldName = 'COLUMN_DDL'
      ReadOnly = True
      Size = 233
    end
  end
  object dsMViews: TUniDataSource
    DataSet = qryMaterializedView
    Left = 360
    Top = 256
  end
end
