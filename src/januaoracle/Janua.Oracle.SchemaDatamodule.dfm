object dmOracleSchema: TdmOracleSchema
  Height = 494
  Width = 628
  object UniConnection1: TUniConnection
    ProviderName = 'Oracle'
    SpecificOptions.Strings = (
      'Oracle.UseUnicode=True'
      'Oracle.HomeName=OraHome'
      'Oracle.Direct=True')
    Username = 'SVG_BATCH'
    Server = 'dbCSDS100.generali.it:1626:sn=CSDS1.generali.it'
    AfterConnect = UniConnection1AfterConnect
    Left = 72
    Top = 104
    EncryptedPassword = 'ACFFA9FFB8FFA0FFBDFFBEFFABFFBCFFB7FF'
  end
  object OracleUniProvider1: TOracleUniProvider
    Left = 176
    Top = 80
  end
  object qrySchemas: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select username as schema_name'
      'from sys.dba_users'
      'order by username;')
    AfterOpen = qrySchemasAfterOpen
    Left = 184
    Top = 136
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
    Left = 184
    Top = 280
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
    Left = 184
    Top = 216
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
    Left = 184
    Top = 408
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
    Left = 184
    Top = 344
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
    Left = 280
    Top = 240
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
    Left = 280
    Top = 304
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
    Left = 280
    Top = 368
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
    Left = 472
    Top = 88
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 472
    Top = 152
  end
end
