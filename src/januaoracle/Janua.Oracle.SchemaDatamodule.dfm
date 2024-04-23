object dmOracleSchema: TdmOracleSchema
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 539
  Width = 864
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
    Left = 56
    Top = 32
    EncryptedPassword = '98FF8BFF96FFCEFFCDFFCCFFCBFF'
  end
  object OracleUniProvider1: TOracleUniProvider
    Left = 144
    Top = 64
  end
  object qrySchemas: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select username as schema_name'
      'from sys.all_users'
      'order by username;')
    AfterOpen = qrySchemasAfterOpen
    Left = 232
    Top = 112
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
    Left = 248
    Top = 32
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 336
    Top = 64
  end
  object qryMaterializedView: TUniQuery
    KeyFields = 'OBJECT_NAME'
    Connection = UniConnection1
    SQL.Strings = (
      'select * from sys.all_objects '
      'where object_type ='#39'MATERIALIZED VIEW'#39' and OWNER = :SCHEMA_NAME'
      'order by OBJECT_NAME')
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
  object qryMViewConsFields: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT col.*, cons.*'
      '  FROM all_cons_columns col'
      
        '  JOIN ALL_CONSTRAINTS cons ON col.CONSTRAINT_NAME = cons.CONSTR' +
        'AINT_NAME'
      'WHERE col.owner = :OWNER'
      'AND col.table_name = :OBJECT_NAME'
      'AND cons.owner = :OWNER'
      'AND cons.table_name = :OBJECT_NAME'
      '')
    MasterSource = dsMViews
    Left = 360
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OWNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OBJECT_NAME'
        Value = nil
      end>
    object qryMViewConsFieldsOWNER: TWideStringField
      FieldName = 'OWNER'
      Required = True
      Size = 30
    end
    object qryMViewConsFieldsCONSTRAINT_NAME: TWideStringField
      FieldName = 'CONSTRAINT_NAME'
      Required = True
      Size = 30
    end
    object qryMViewConsFieldsTABLE_NAME: TWideStringField
      FieldName = 'TABLE_NAME'
      Required = True
      Size = 30
    end
    object qryMViewConsFieldsCOLUMN_NAME: TWideStringField
      FieldName = 'COLUMN_NAME'
      Size = 4000
    end
    object qryMViewConsFieldsPOSITION: TFloatField
      FieldName = 'POSITION'
    end
    object qryMViewConsFieldsCONSTRAINT_NAME_1: TWideStringField
      FieldName = 'CONSTRAINT_NAME_1'
      Required = True
      Size = 30
    end
    object qryMViewConsFieldsCONSTRAINT_TYPE: TWideStringField
      FieldName = 'CONSTRAINT_TYPE'
      Size = 1
    end
    object qryMViewConsFieldsSEARCH_CONDITION: TWideMemoField
      FieldName = 'SEARCH_CONDITION'
      BlobType = ftWideMemo
    end
    object qryMViewConsFieldsR_OWNER: TWideStringField
      FieldName = 'R_OWNER'
      Size = 30
    end
    object qryMViewConsFieldsR_CONSTRAINT_NAME: TWideStringField
      FieldName = 'R_CONSTRAINT_NAME'
      Size = 30
    end
    object qryMViewConsFieldsDELETE_RULE: TWideStringField
      FieldName = 'DELETE_RULE'
      Size = 9
    end
    object qryMViewConsFieldsSTATUS: TWideStringField
      FieldName = 'STATUS'
      Size = 8
    end
    object qryMViewConsFieldsDEFERRABLE: TWideStringField
      FieldName = 'DEFERRABLE'
      Size = 14
    end
    object qryMViewConsFieldsDEFERRED: TWideStringField
      FieldName = 'DEFERRED'
      Size = 9
    end
    object qryMViewConsFieldsVALIDATED: TWideStringField
      FieldName = 'VALIDATED'
      Size = 13
    end
    object qryMViewConsFieldsGENERATED: TWideStringField
      FieldName = 'GENERATED'
      Size = 14
    end
    object qryMViewConsFieldsBAD: TWideStringField
      FieldName = 'BAD'
      Size = 3
    end
    object qryMViewConsFieldsRELY: TWideStringField
      FieldName = 'RELY'
      Size = 4
    end
    object qryMViewConsFieldsLAST_CHANGE: TDateTimeField
      FieldName = 'LAST_CHANGE'
    end
    object qryMViewConsFieldsINDEX_OWNER: TWideStringField
      FieldName = 'INDEX_OWNER'
      Size = 30
    end
    object qryMViewConsFieldsINDEX_NAME: TWideStringField
      FieldName = 'INDEX_NAME'
      Size = 30
    end
    object qryMViewConsFieldsINVALID: TWideStringField
      FieldName = 'INVALID'
      Size = 7
    end
    object qryMViewConsFieldsVIEW_RELATED: TWideStringField
      FieldName = 'VIEW_RELATED'
      Size = 14
    end
  end
  object qryMviewConstraints: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT *'
      '  FROM ALL_CONSTRAINTS '
      'WHERE owner = :OWNER'
      'AND table_name = :OBJECT_NAME'
      'AND CONSTRAINT_TYPE != '#39'C'#39
      '')
    MasterSource = dsMViews
    AfterScroll = qryMviewConstraintsAfterScroll
    Left = 360
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OWNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OBJECT_NAME'
        Value = nil
      end>
    object qryMviewConstraintsOWNER: TWideStringField
      FieldName = 'OWNER'
      Size = 30
    end
    object qryMviewConstraintsCONSTRAINT_NAME: TWideStringField
      FieldName = 'CONSTRAINT_NAME'
      Required = True
      Size = 30
    end
    object qryMviewConstraintsCONSTRAINT_TYPE: TWideStringField
      FieldName = 'CONSTRAINT_TYPE'
      Size = 1
    end
    object qryMviewConstraintsTABLE_NAME: TWideStringField
      FieldName = 'TABLE_NAME'
      Required = True
      Size = 30
    end
    object qryMviewConstraintsSEARCH_CONDITION: TWideMemoField
      FieldName = 'SEARCH_CONDITION'
      BlobType = ftWideMemo
    end
    object qryMviewConstraintsR_OWNER: TWideStringField
      FieldName = 'R_OWNER'
      Size = 30
    end
    object qryMviewConstraintsR_CONSTRAINT_NAME: TWideStringField
      FieldName = 'R_CONSTRAINT_NAME'
      Size = 30
    end
    object qryMviewConstraintsDELETE_RULE: TWideStringField
      FieldName = 'DELETE_RULE'
      Size = 9
    end
    object qryMviewConstraintsSTATUS: TWideStringField
      FieldName = 'STATUS'
      Size = 8
    end
    object qryMviewConstraintsDEFERRABLE: TWideStringField
      FieldName = 'DEFERRABLE'
      Size = 14
    end
    object qryMviewConstraintsDEFERRED: TWideStringField
      FieldName = 'DEFERRED'
      Size = 9
    end
    object qryMviewConstraintsVALIDATED: TWideStringField
      FieldName = 'VALIDATED'
      Size = 13
    end
    object qryMviewConstraintsGENERATED: TWideStringField
      FieldName = 'GENERATED'
      Size = 14
    end
    object qryMviewConstraintsBAD: TWideStringField
      FieldName = 'BAD'
      Size = 3
    end
    object qryMviewConstraintsRELY: TWideStringField
      FieldName = 'RELY'
      Size = 4
    end
    object qryMviewConstraintsLAST_CHANGE: TDateTimeField
      FieldName = 'LAST_CHANGE'
    end
    object qryMviewConstraintsINDEX_OWNER: TWideStringField
      FieldName = 'INDEX_OWNER'
      Size = 30
    end
    object qryMviewConstraintsINDEX_NAME: TWideStringField
      FieldName = 'INDEX_NAME'
      Size = 30
    end
    object qryMviewConstraintsINVALID: TWideStringField
      FieldName = 'INVALID'
      Size = 7
    end
    object qryMviewConstraintsVIEW_RELATED: TWideStringField
      FieldName = 'VIEW_RELATED'
      Size = 14
    end
  end
  object qryConstraintDDL: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT DBMS_METADATA.get_ddl '
      '('#39'CONSTRAINT'#39', :CONSTRAINT_NAME, :OWNER) AS METADATA FROM DUAL')
    AfterOpen = qryConstraintDDLAfterOpen
    Left = 488
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'constraint_name'
        ParamType = ptInput
        Value = 'PK_PREVI_MOVIMENTI'
      end
      item
        DataType = ftString
        Name = 'owner'
        ParamType = ptInput
        Value = 'GTIT'
      end>
    object qryConstraintDDLMETADATA: TWideMemoField
      FieldName = 'METADATA'
      ReadOnly = True
      BlobType = ftOraClob
    end
  end
  object qryMviewIndexes: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT '
      
        'dbms_metadata.get_ddl('#39'INDEX'#39','#39'IDX_TITOLI_01'#39','#39'GTIT'#39') AS INDEX_D' +
        'DL, '
      'I.*'
      'FROM all_indexes I '
      'WHERE owner = :OWNER'
      'AND table_name = :OBJECT_NAME'
      'AND I.INDEX_NAME NOT LIKE '#39'%PK%'#39';'
      '')
    MasterSource = dsMViews
    AfterScroll = qryMviewIndexesAfterScroll
    Left = 488
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OWNER'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OBJECT_NAME'
        Value = nil
      end>
    object qryMviewIndexesINDEX_DDL: TWideMemoField
      FieldName = 'INDEX_DDL'
      ReadOnly = True
      BlobType = ftOraClob
    end
    object qryMviewIndexesOWNER: TWideStringField
      FieldName = 'OWNER'
      Required = True
      Size = 30
    end
    object qryMviewIndexesINDEX_NAME: TWideStringField
      FieldName = 'INDEX_NAME'
      Required = True
      Size = 30
    end
    object qryMviewIndexesINDEX_TYPE: TWideStringField
      FieldName = 'INDEX_TYPE'
      Size = 27
    end
    object qryMviewIndexesTABLE_OWNER: TWideStringField
      FieldName = 'TABLE_OWNER'
      Required = True
      Size = 30
    end
    object qryMviewIndexesTABLE_NAME: TWideStringField
      FieldName = 'TABLE_NAME'
      Required = True
      Size = 30
    end
    object qryMviewIndexesTABLE_TYPE: TWideStringField
      FieldName = 'TABLE_TYPE'
      FixedChar = True
      Size = 5
    end
    object qryMviewIndexesUNIQUENESS: TWideStringField
      FieldName = 'UNIQUENESS'
      Size = 9
    end
    object qryMviewIndexesCOMPRESSION: TWideStringField
      FieldName = 'COMPRESSION'
      Size = 8
    end
    object qryMviewIndexesPREFIX_LENGTH: TFloatField
      FieldName = 'PREFIX_LENGTH'
    end
    object qryMviewIndexesTABLESPACE_NAME: TWideStringField
      FieldName = 'TABLESPACE_NAME'
      Size = 30
    end
    object qryMviewIndexesINI_TRANS: TFloatField
      FieldName = 'INI_TRANS'
    end
    object qryMviewIndexesMAX_TRANS: TFloatField
      FieldName = 'MAX_TRANS'
    end
    object qryMviewIndexesINITIAL_EXTENT: TFloatField
      FieldName = 'INITIAL_EXTENT'
    end
    object qryMviewIndexesNEXT_EXTENT: TFloatField
      FieldName = 'NEXT_EXTENT'
    end
    object qryMviewIndexesMIN_EXTENTS: TFloatField
      FieldName = 'MIN_EXTENTS'
    end
    object qryMviewIndexesMAX_EXTENTS: TFloatField
      FieldName = 'MAX_EXTENTS'
    end
    object qryMviewIndexesPCT_INCREASE: TFloatField
      FieldName = 'PCT_INCREASE'
    end
    object qryMviewIndexesPCT_THRESHOLD: TFloatField
      FieldName = 'PCT_THRESHOLD'
    end
    object qryMviewIndexesINCLUDE_COLUMN: TFloatField
      FieldName = 'INCLUDE_COLUMN'
    end
    object qryMviewIndexesFREELISTS: TFloatField
      FieldName = 'FREELISTS'
    end
    object qryMviewIndexesFREELIST_GROUPS: TFloatField
      FieldName = 'FREELIST_GROUPS'
    end
    object qryMviewIndexesPCT_FREE: TFloatField
      FieldName = 'PCT_FREE'
    end
    object qryMviewIndexesLOGGING: TWideStringField
      FieldName = 'LOGGING'
      Size = 3
    end
    object qryMviewIndexesBLEVEL: TFloatField
      FieldName = 'BLEVEL'
    end
    object qryMviewIndexesLEAF_BLOCKS: TFloatField
      FieldName = 'LEAF_BLOCKS'
    end
    object qryMviewIndexesDISTINCT_KEYS: TFloatField
      FieldName = 'DISTINCT_KEYS'
    end
    object qryMviewIndexesAVG_LEAF_BLOCKS_PER_KEY: TFloatField
      FieldName = 'AVG_LEAF_BLOCKS_PER_KEY'
    end
    object qryMviewIndexesAVG_DATA_BLOCKS_PER_KEY: TFloatField
      FieldName = 'AVG_DATA_BLOCKS_PER_KEY'
    end
    object qryMviewIndexesCLUSTERING_FACTOR: TFloatField
      FieldName = 'CLUSTERING_FACTOR'
    end
    object qryMviewIndexesSTATUS: TWideStringField
      FieldName = 'STATUS'
      Size = 8
    end
    object qryMviewIndexesNUM_ROWS: TFloatField
      FieldName = 'NUM_ROWS'
    end
    object qryMviewIndexesSAMPLE_SIZE: TFloatField
      FieldName = 'SAMPLE_SIZE'
    end
    object qryMviewIndexesLAST_ANALYZED: TDateTimeField
      FieldName = 'LAST_ANALYZED'
    end
    object qryMviewIndexesDEGREE: TWideStringField
      FieldName = 'DEGREE'
      Size = 40
    end
    object qryMviewIndexesINSTANCES: TWideStringField
      FieldName = 'INSTANCES'
      Size = 40
    end
    object qryMviewIndexesPARTITIONED: TWideStringField
      FieldName = 'PARTITIONED'
      Size = 3
    end
    object qryMviewIndexesTEMPORARY: TWideStringField
      FieldName = 'TEMPORARY'
      Size = 1
    end
    object qryMviewIndexesGENERATED: TWideStringField
      FieldName = 'GENERATED'
      Size = 1
    end
    object qryMviewIndexesSECONDARY: TWideStringField
      FieldName = 'SECONDARY'
      Size = 1
    end
    object qryMviewIndexesBUFFER_POOL: TWideStringField
      FieldName = 'BUFFER_POOL'
      Size = 7
    end
    object qryMviewIndexesFLASH_CACHE: TWideStringField
      FieldName = 'FLASH_CACHE'
      Size = 7
    end
    object qryMviewIndexesCELL_FLASH_CACHE: TWideStringField
      FieldName = 'CELL_FLASH_CACHE'
      Size = 7
    end
    object qryMviewIndexesUSER_STATS: TWideStringField
      FieldName = 'USER_STATS'
      Size = 3
    end
    object qryMviewIndexesDURATION: TWideStringField
      FieldName = 'DURATION'
      Size = 15
    end
    object qryMviewIndexesPCT_DIRECT_ACCESS: TFloatField
      FieldName = 'PCT_DIRECT_ACCESS'
    end
    object qryMviewIndexesITYP_OWNER: TWideStringField
      FieldName = 'ITYP_OWNER'
      Size = 30
    end
    object qryMviewIndexesITYP_NAME: TWideStringField
      FieldName = 'ITYP_NAME'
      Size = 30
    end
    object qryMviewIndexesPARAMETERS: TWideStringField
      FieldName = 'PARAMETERS'
      Size = 1000
    end
    object qryMviewIndexesGLOBAL_STATS: TWideStringField
      FieldName = 'GLOBAL_STATS'
      Size = 3
    end
    object qryMviewIndexesDOMIDX_STATUS: TWideStringField
      FieldName = 'DOMIDX_STATUS'
      Size = 12
    end
    object qryMviewIndexesDOMIDX_OPSTATUS: TWideStringField
      FieldName = 'DOMIDX_OPSTATUS'
      Size = 6
    end
    object qryMviewIndexesFUNCIDX_STATUS: TWideStringField
      FieldName = 'FUNCIDX_STATUS'
      Size = 8
    end
    object qryMviewIndexesJOIN_INDEX: TWideStringField
      FieldName = 'JOIN_INDEX'
      Size = 3
    end
    object qryMviewIndexesIOT_REDUNDANT_PKEY_ELIM: TWideStringField
      FieldName = 'IOT_REDUNDANT_PKEY_ELIM'
      Size = 3
    end
    object qryMviewIndexesDROPPED: TWideStringField
      FieldName = 'DROPPED'
      Size = 3
    end
    object qryMviewIndexesVISIBILITY: TWideStringField
      FieldName = 'VISIBILITY'
      Size = 9
    end
    object qryMviewIndexesDOMIDX_MANAGEMENT: TWideStringField
      FieldName = 'DOMIDX_MANAGEMENT'
      Size = 14
    end
    object qryMviewIndexesSEGMENT_CREATED: TWideStringField
      FieldName = 'SEGMENT_CREATED'
      Size = 3
    end
  end
  object qryIndexDDL: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT DBMS_METADATA.get_ddl '
      '('#39'INDEX'#39', :INDEX_NAME, :OWNER) AS METADATA FROM DUAL')
    AfterOpen = qryConstraintDDLAfterOpen
    Left = 488
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INDEX_NAME'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'OWNER'
        Value = Null
      end>
    object qryIndexDDLMETADATA: TWideMemoField
      FieldName = 'METADATA'
      ReadOnly = True
      BlobType = ftOraClob
    end
  end
  object qryMviewDDL: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT DBMS_METADATA.get_ddl '
      '('#39'MATERIALIZED_VIEW'#39', :MVIEW_NAME, :OWNER) AS METADATA FROM DUAL')
    AfterOpen = qryConstraintDDLAfterOpen
    Left = 488
    Top = 424
    ParamData = <
      item
        DataType = ftString
        Name = 'MVIEW_NAME'
        ParamType = ptInput
        Value = 'ANAGRAFICA_GELSO'
      end
      item
        DataType = ftString
        Name = 'owner'
        ParamType = ptInput
        Value = 'GTIT'
      end>
    object qryMviewDDLMETADATA: TWideMemoField
      FieldName = 'METADATA'
      ReadOnly = True
      BlobType = ftOraClob
    end
  end
  object qryViewDDL: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT DBMS_METADATA.get_ddl '
      '('#39'MATERIALIZED_VIEW'#39', :MVIEW_NAME, :OWNER) AS METADATA FROM DUAL')
    AfterOpen = qryConstraintDDLAfterOpen
    Left = 208
    Top = 432
    ParamData = <
      item
        DataType = ftString
        Name = 'MVIEW_NAME'
        ParamType = ptInput
        Value = 'ANAGRAFICA_GELSO'
      end
      item
        DataType = ftString
        Name = 'owner'
        ParamType = ptInput
        Value = 'GTIT'
      end>
    object qryViewDDLMETADATA: TWideMemoField
      FieldName = 'METADATA'
      ReadOnly = True
      BlobType = ftOraClob
    end
  end
  object qryTargetTable: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT owner as schema_name, table_name '
      'FROM all_tables '
      'WHERE owner = :schema_name and table_name = :table_name')
    MasterSource = dsSchemas
    Left = 624
    Top = 248
    ParamData = <
      item
        DataType = ftString
        Name = 'schema_name'
        ParamType = ptInput
        Value = 'AADAS'
      end
      item
        DataType = ftUnknown
        Name = 'table_name'
        Value = nil
      end>
    object qryTargetTableSCHEMA_NAME: TWideStringField
      FieldName = 'SCHEMA_NAME'
      Required = True
      Size = 30
    end
    object qryTargetTableTABLE_NAME: TWideStringField
      FieldName = 'TABLE_NAME'
      Required = True
      Size = 30
    end
  end
  object qryTargetTableFields: TUniQuery
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
    MasterSource = dsTargetTable
    DetailFields = 'SCHEMA_NAME;TABLE_NAME'
    Left = 624
    Top = 376
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
    object qryTargetTableFieldsCOLUMN_ID: TFloatField
      FieldName = 'COLUMN_ID'
    end
    object qryTargetTableFieldsSCHEMA_NAME: TWideStringField
      FieldName = 'SCHEMA_NAME'
      Required = True
      Size = 30
    end
    object qryTargetTableFieldsTABLE_NAME: TWideStringField
      FieldName = 'TABLE_NAME'
      Required = True
      Size = 30
    end
    object qryTargetTableFieldsCOLUMN_NAME: TWideStringField
      FieldName = 'COLUMN_NAME'
      Required = True
      Size = 30
    end
    object qryTargetTableFieldsDATA_TYPE: TWideStringField
      FieldName = 'DATA_TYPE'
      Size = 106
    end
    object qryTargetTableFieldsDATA_LENGTH: TFloatField
      FieldName = 'DATA_LENGTH'
      Required = True
    end
    object qryTargetTableFieldsDATA_PRECISION: TFloatField
      FieldName = 'DATA_PRECISION'
    end
    object qryTargetTableFieldsDATA_SCALE: TFloatField
      FieldName = 'DATA_SCALE'
    end
    object qryTargetTableFieldsNULLABLE: TWideStringField
      FieldName = 'NULLABLE'
      Size = 1
    end
    object qryTargetTableFieldsCOLUMN_DDL: TWideStringField
      FieldName = 'COLUMN_DDL'
      ReadOnly = True
      Size = 233
    end
  end
  object dsTargetTable: TUniDataSource
    DataSet = qryTargetTable
    Left = 624
    Top = 312
  end
  object vtSchemas: TVirtualTable
    FieldDefs = <
      item
        Name = 'SCHEMA_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 128
      end>
    Left = 48
    Top = 116
    Data = {040001000B00534348454D415F4E414D451800800000000000000000000000}
  end
  object UniConnection2: TUniConnection
    AutoCommit = False
    ProviderName = 'Oracle'
    SpecificOptions.Strings = (
      'Oracle.UseUnicode=True'
      'Oracle.HomeName=OraHome'
      'Oracle.Direct=True')
    Username = 'SVG_DEV'
    Server = 'dbCSDK100.generali.it:1807:sn=CSDK1.generali.it'
    Connected = True
    LoginPrompt = False
    AfterConnect = UniConnection1AfterConnect
    Left = 712
    Top = 56
    EncryptedPassword = 'ACFFA9FFB8FFA0FFBBFFBAFFA9FF'
  end
  object qryListFiles: TUniQuery
    Connection = UniConnection2
    SQL.Strings = (
      'SELECT * '
      'FROM vis.dev_table'
      'ORDER BY id')
    MasterSource = dsSchemas
    Active = True
    Left = 672
    Top = 136
    object qryListFilesGROUP_NAME: TWideStringField
      DisplayWidth = 13
      FieldName = 'GROUP_NAME'
      Required = True
    end
    object qryListFilesID: TFloatField
      DisplayWidth = 4
      FieldName = 'ID'
      Required = True
    end
    object qryListFilesFILENAME: TWideStringField
      DisplayWidth = 128
      FieldName = 'FILENAME'
      Required = True
      Size = 128
    end
    object qryListFilesOPERATION_TYPE: TWideStringField
      DisplayWidth = 20
      FieldName = 'OPERATION_TYPE'
      Required = True
    end
    object qryListFilesDELTA_TABLE: TWideStringField
      DisplayWidth = 30
      FieldName = 'DELTA_TABLE'
      Size = 30
    end
    object qryListFilesMAIN_TABLE: TWideStringField
      DisplayWidth = 30
      FieldName = 'MAIN_TABLE'
      Size = 30
    end
  end
  object vtListFiles: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'GROUP_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ID'
        DataType = ftFloat
      end
      item
        Name = 'FILENAME'
        DataType = ftWideString
        Size = 128
      end
      item
        Name = 'OPERATION_TYPE'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DELTA_TABLE'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'MAIN_TABLE'
        DataType = ftWideString
        Size = 30
      end>
    Left = 584
    Top = 88
    Data = {
      040006000A0047524F55505F4E414D4518001400000000000200494406000000
      00000000080046494C454E414D4518008000000000000E004F5045524154494F
      4E5F5459504518001400000000000B0044454C54415F5441424C4518001E0000
      0000000A004D41494E5F5441424C4518001E000000000000004F000000120000
      004500580050005F005600430041004C004C0008000000000000000000F03F42
      00000056004500530056005300430055004E004C004F00410044005F0031005F
      004500530054005200410049005F0050004F004C0049005A005A0045002E0073
      0071006C00060000004500580054001A00000050004F004C0049005A005A0045
      005F00440045004C00540041000E00000050004F004C0049005A005A00450014
      0000005600450053005600530043004C004F0041004400080000000000000000
      000040440000005600450053005600530043004C004F00410044005F0032005F
      00430054004C005F0050004F004C0049005A005A0045005F00440045004C0054
      0041002E00630074006C0006000000430054004C00000000001A00000050004F
      004C0049005A005A0045005F00440045004C0054004100120000004500580050
      005F005600430041004C004C000800000000000000000000404C000000560045
      00530056005300430055004E004C004F00410044005F0032005F0049004E0053
      004500520054005F005400490054004F004C0049005F00440045004C00540041
      002E00730071006C000600000049004E005300180000005400490054004F004C
      0049005F00440045004C00540041000C0000005400490054004F004C00490012
      0000004500580050005F005600430041004C004C000800000000000000000008
      403E00000056004500530056005300430055004E004C004F00410044005F0033
      005F005400490054004F004C0049005F00440045004C00540041002E00730071
      006C000600000055004E004C00180000005400490054004F004C0049005F0044
      0045004C00540041000C0000005400490054004F004C00490012000000450058
      0050005F005600430041004C004C000800000000000000000010404E00000056
      004500530056005300430055004E004C004F00410044005F0034005F0049004E
      0053004500520054005F0050004F004C0049005A005A0045005F00440045004C
      00540041002E00730071006C000600000049004E0053001A00000050004F004C
      0049005A005A0045005F00440045004C00540041000E00000050004F004C0049
      005A005A004500140000005600450053005600530043004C004F004100440008
      0000000000000000001440420000005600450053005600530043004C004F0041
      0044005F0035005F00430054004C005F005400490054004F004C0049005F0044
      0045004C00540041002E00630074006C0006000000430054004C000000000018
      0000005400490054004F004C0049005F00440045004C00540041001200000045
      00580050005F005600430041004C004C00080000000000000000001440400000
      0056004500530056005300430055004E004C004F00410044005F0035005F0050
      004F004C0049005A005A0045005F00440045004C00540041002E00730071006C
      000600000055004E004C001A00000050004F004C0049005A005A0045005F0044
      0045004C00540041000E00000050004F004C0049005A005A0045001200000045
      00580050005F005600430041004C004C00080000000000000000001840580000
      0056004500530056005300430055004E004C004F00410044005F0036005F0049
      004E0053004500520054005F0050004F004C005F0047004100520041004E005A
      00490045005F00440045004C00540041002E00730071006C000600000049004E
      0053002400000050004F004C005F0047004100520041004E005A00490045005F
      00440045004C00540041001800000050004F004C005F0047004100520041004E
      005A0049004500120000004500580050005F005600430041004C004C00080000
      000000000000001C404A00000056004500530056005300430055004E004C004F
      00410044005F0037005F0050004F004C005F0047004100520041004E005A0049
      0045005F00440045004C00540041002E00730071006C000600000055004E004C
      002400000050004F004C005F0047004100520041004E005A00490045005F0044
      0045004C00540041001800000050004F004C005F0047004100520041004E005A
      0049004500140000005600450053005600530043004C004F0041004400080000
      0000000000000020404E0000005600450053005600530043004C004F00410044
      005F0038005F00430054004C005F0050004F004C005F0047004100520041004E
      005A00490045005F00440045004C00540041002E00630074006C000600000043
      0054004C00000000002400000050004F004C005F0047004100520041004E005A
      00490045005F00440045004C0054004100120000004500580050005F00560043
      0041004C004C0008000000000000000000204056000000560045005300560053
      00430055004E004C004F00410044005F0038005F0049004E0053004500520054
      005F0050004F004C005F005400520041004E004300480045005F00440045004C
      00540041002E00730071006C000600000049004E0053002200000050004F004C
      005F005400520041004E004300480045005F00440045004C0054004100160000
      0050004F004C005F005400520041004E00430048004500120000004500580050
      005F005600430041004C004C0008000000000000000000224048000000560045
      00530056005300430055004E004C004F00410044005F0039005F0050004F004C
      005F005400520041004E004300480045005F00440045004C00540041002E0073
      0071006C000600000055004E004C002200000050004F004C005F005400520041
      004E004300480045005F00440045004C00540041001600000050004F004C005F
      005400520041004E00430048004500120000004500580050005F005600430041
      004C004C00080000000000000000002440540000005600450053005600530043
      0055004E004C004F00410044005F00310030005F0049004E0053004500520054
      005F0041004E0041005F0049004E004400490052005F00440045004C00540041
      002E00730071006C000600000049004E0053001E00000041004E0041005F0049
      004E004400490052005F00440045004C00540041001200000041004E0041005F
      0049004E00440049005200140000005600450053005600530043004C004F0041
      0044000800000000000000000026404E0000005600450053005600530043004C
      004F00410044005F00310031005F00430054004C005F0050004F004C005F0054
      00520041004E004300480045005F00440045004C00540041002E00630074006C
      0006000000430054004C00000000002200000050004F004C005F005400520041
      004E004300480045005F00440045004C0054004100120000004500580050005F
      005600430041004C004C00080000000000000000002640460000005600450053
      0056005300430055004E004C004F00410044005F00310031005F0041004E0041
      005F0049004E004400490052005F00440045004C00540041002E00730071006C
      000600000055004E004C001E00000041004E0041005F0049004E004400490052
      005F00440045004C00540041001200000041004E0041005F0049004E00440049
      005200120000004500580050005F005600430041004C004C0008000000000000
      00000028406200000056004500530056005300430055004E004C004F00410044
      005F00310032005F0049004E0053004500520054005F0043004F004E00540052
      0041005400540049005F00470054004C004900460045005F00440045004C0054
      0041002E00730071006C000600000049004E0053002C00000043004F004E0054
      00520041005400540049005F00470054004C004900460045005F00440045004C
      00540041002000000043004F004E005400520041005400540049005F00470054
      004C00490046004500120000004500580050005F005600430041004C004C0008
      0000000000000000002A405400000056004500530056005300430055004E004C
      004F00410044005F00310033005F0043004F004E005400520041005400540049
      005F00470054004C004900460045005F00440045004C00540041002E00730071
      006C000600000055004E004C002C00000043004F004E00540052004100540054
      0049005F00470054004C004900460045005F00440045004C0054004100000000
      00120000004500580050005F005600430041004C004C00080000000000000000
      002C407200000056004500530056005300430055004E004C004F00410044005F
      00310034005F0049004E0053004500520054005F0050004F004C005F00420045
      004E00450046004900430049004100520049005F004E004F004D0049004E0041
      004C0049005F00440045004C00540041002E00730071006C000600000049004E
      0053003C00000050004F004C005F00420045004E004500460049004300490041
      00520049005F004E004F004D0049004E0041004C0049005F00440045004C0054
      00410000000000120000004500580050005F005600430041004C004C00080000
      000000000000002E406400000056004500530056005300430055004E004C004F
      00410044005F00310035005F0050004F004C005F00420045004E004500460049
      00430049004100520049005F004E004F004D0049004E0041004C0049005F0044
      0045004C00540041002E00730071006C000600000055004E004C003C00000050
      004F004C005F00420045004E00450046004900430049004100520049005F004E
      004F004D0049004E0041004C0049005F00440045004C00540041003000000050
      004F004C005F00420045004E00450046004900430049004100520049005F004E
      004F004D0049004E0041004C004900120000004500580050005F005600430041
      004C004C00080000000000000000003040520000005600450053005600530043
      0055004E004C004F00410044005F00310036005F0049004E0053004500520054
      005F00500052004F0050004F005300540045005F00440045004C00540041002E
      00730071006C000600000049004E0053001C000000500052004F0050004F0053
      00540045005F00440045004C005400410000000000120000004500580050005F
      005600430041004C004C00080000000000000000003140440000005600450053
      0056005300430055004E004C004F00410044005F00310037005F00500052004F
      0050004F005300540045005F00440045004C00540041002E00730071006C0006
      00000055004E004C001C000000500052004F0050004F005300540045005F0044
      0045004C005400410000000000120000004500580050005F005600430041004C
      004C000800000000000000000032406800000056004500530056005300430055
      004E004C004F00410044005F00310038005F0049004E0053004500520054005F
      005400410042005F0046004F004E00440049005F0043004F004E005400410042
      0049004C0049005F00440045004C00540041002E00730071006C000600000049
      004E005300320000005400410042005F0046004F004E00440049005F0043004F
      004E0054004100420049004C0049005F00440045004C00540041000000000012
      0000004500580050005F005600430041004C004C000800000000000000000033
      405A00000056004500530056005300430055004E004C004F00410044005F0031
      0039005F005400410042005F0046004F004E00440049005F0043004F004E0054
      004100420049004C0049005F00440045004C00540041002E00730071006C0006
      00000055004E004C00320000005400410042005F0046004F004E00440049005F
      0043004F004E0054004100420049004C0049005F00440045004C005400410000
      000000120000004500580050005F005600430041004C004C0008000000000000
      00000034406800000056004500530056005300430055004E004C004F00410044
      005F00320030005F0049004E0053004500520054005F005400410042005F0050
      004F004C005F0054004500530054004F005F00420045004E00450046005F0044
      0045004C00540041002E00730071006C000600000049004E0053003200000054
      00410042005F0050004F004C005F0054004500530054004F005F00420045004E
      00450046005F00440045004C005400410000000000120000004500580050005F
      005600430041004C004C000800000000000000000035405A0000005600450053
      0056005300430055004E004C004F00410044005F00320031005F005400410042
      005F0050004F004C005F0054004500530054004F005F00420045004E00450046
      005F00440045004C00540041002E00730071006C000600000055004E004C0032
      0000005400410042005F0050004F004C005F0054004500530054004F005F0042
      0045004E00450046005F00440045004C00540041000000000012000000450058
      0050005F005600430041004C004C000800000000000000000036406200000056
      004500530056005300430055004E004C004F00410044005F00320032005F0049
      004E0053004500520054005F005400410042005F005000520045004D0049005F
      004E004F004E004400450044005F00440045004C00540041002E00730071006C
      000600000049004E0053002C0000005400410042005F005000520045004D0049
      005F004E004F004E004400450044005F00440045004C00540041000000000012
      0000004500580050005F005600430041004C004C000800000000000000000037
      405400000056004500530056005300430055004E004C004F00410044005F0032
      0033005F005400410042005F005000520045004D0049005F004E004F004E0044
      00450044005F00440045004C00540041002E00730071006C000600000055004E
      004C002C0000005400410042005F005000520045004D0049005F004E004F004E
      004400450044005F00440045004C005400410000000000120000004500580050
      005F005600430041004C004C000800000000000000000038405A000000560045
      00530056005300430055004E004C004F00410044005F00320034005F0049004E
      0053004500520054005F005400490054005F0047004100520041004E005A0049
      0045005F00440045004C00540041002E00730071006C000600000049004E0053
      00240000005400490054005F0047004100520041004E005A00490045005F0044
      0045004C005400410000000000120000004500580050005F005600430041004C
      004C000800000000000000000039404C00000056004500530056005300430055
      004E004C004F00410044005F00320035005F005400490054005F004700410052
      0041004E005A00490045005F00440045004C00540041002E00730071006C0006
      00000055004E004C00240000005400490054005F0047004100520041004E005A
      00490045005F00440045004C005400410000000000120000004500580050005F
      005600430041004C004C00080000000000000000003A404A0000005600450053
      0056005300430055004E004C004F00410044005F00320036005F0049004E0053
      004500520054005F0041004E00410047005200410046004900430041002E0073
      0071006C000600000049004E005300000000001400000041004E004100470052
      0041004600490043004100120000004500580050005F005600430041004C004C
      00080000000000000000003B403C00000056004500530056005300430055004E
      004C004F00410044005F00320037005F0041004E004100470052004100460049
      00430041002E00730071006C000600000055004E004C00000000001400000041
      004E0041004700520041004600490043004100120000004500580050005F0056
      00430041004C004C00080000000000000000003C404A00000056004500530056
      005300430055004E004C004F00410044005F00320038005F0049004E00530045
      00520054005F0043004F004D0055004E0049005F005300410047002E00730071
      006C000600000049004E005300000000001400000043004F004D0055004E0049
      005F00530041004700120000004500580050005F005600430041004C004C0008
      0000000000000000003D403C00000056004500530056005300430055004E004C
      004F00410044005F00320039005F0043004F004D0055004E0049005F00530041
      0047002E00730071006C000600000055004E004C00000000001400000043004F
      004D0055004E0049005F00530041004700120000004500580050005F00560043
      0041004C004C00080000000000000000003E4050000000560045005300560053
      00430055004E004C004F00410044005F00330030005F0049004E005300450052
      0054005F00510055004F00540045005F00500052004500430041004C0043002E
      00730071006C000600000049004E005300000000001A000000510055004F0054
      0045005F00500052004500430041004C004300120000004500580050005F0056
      00430041004C004C00080000000000000000003F404200000056004500530056
      005300430055004E004C004F00410044005F00330031005F00510055004F0054
      0045005F00500052004500430041004C0043002E00730071006C000600000055
      004E004C00000000001A000000510055004F00540045005F0050005200450043
      0041004C004300120000004500580050005F005600430041004C004C00080000
      0000000000000041404C00000056004500530056005300430055004E004C004F
      00410044005F00330034005F0049004E0053004500520054005F005400410042
      005F004100470045004E005A00490045002E00730071006C000600000049004E
      00530000000000160000005400410042005F004100470045004E005A00490045
      00120000004500580050005F005600430041004C004C00080000000000000000
      8041403E00000056004500530056005300430055004E004C004F00410044005F
      00330035005F005400410042005F004100470045004E005A00490045002E0073
      0071006C000600000055004E004C0000000000160000005400410042005F0041
      00470045004E005A0049004500120000004500580050005F005600430041004C
      004C000800000000000000000042405000000056004500530056005300430055
      004E004C004F00410044005F00330036005F0049004E0053004500520054005F
      005400410042005F0041004E0041005F0046004F004E00440049002E00730071
      006C000600000049004E005300000000001A0000005400410042005F0041004E
      0041005F0046004F004E0044004900120000004500580050005F005600430041
      004C004C00080000000000000000804240420000005600450053005600530043
      0055004E004C004F00410044005F00330037005F005400410042005F0041004E
      0041005F0046004F004E00440049002E00730071006C000600000055004E004C
      00000000001A0000005400410042005F0041004E0041005F0046004F004E0044
      004900120000004500580050005F005600430041004C004C0008000000000000
      00000044405600000056004500530056005300430055004E004C004F00410044
      005F00340030005F0049004E0053004500520054005F005400410042005F0041
      004E0041005F00500052004F0044004F005400540049002E00730071006C0006
      00000049004E00530000000000200000005400410042005F0041004E0041005F
      00500052004F0044004F00540054004900120000004500580050005F00560043
      0041004C004C0008000000000000000080444048000000560045005300560053
      00430055004E004C004F00410044005F00340031005F005400410042005F0041
      004E0041005F00500052004F0044004F005400540049002E00730071006C0006
      00000049004E00530000000000200000005400410042005F0041004E0041005F
      00500052004F0044004F00540054004900120000004500580050005F00560043
      0041004C004C000800000000000000000045405A000000560045005300560053
      00430055004E004C004F00410044005F00340032005F0049004E005300450052
      0054005F005400410042005F0041004E0041005F00500052004F0044005F0054
      0041005200490046002E00730071006C000600000049004E0053000000000024
      0000005400410042005F0041004E0041005F00500052004F0044005F00540041
      00520049004600120000004500580050005F005600430041004C004C00080000
      0000000000008045404C00000056004500530056005300430055004E004C004F
      00410044005F00340033005F005400410042005F0041004E0041005F00500052
      004F0044005F00540041005200490046002E00730071006C000600000055004E
      004C0000000000240000005400410042005F0041004E0041005F00500052004F
      0044005F0054004100520049004600120000004500580050005F005600430041
      004C004C00080000000000000000004640540000005600450053005600530043
      0055004E004C004F00410044005F00340034005F0049004E0053004500520054
      005F005400410042005F0041004E0041005F0054004100520049004600460045
      002E00730071006C000600000049004E005300000000001E0000005400410042
      005F0041004E0041005F00540041005200490046004600450012000000450058
      0050005F005600430041004C004C000800000000000000008046404600000056
      004500530056005300430055004E004C004F00410044005F00340035005F0054
      00410042005F0041004E0041005F0054004100520049004600460045002E0073
      0071006C000600000055004E004C00000000001E0000005400410042005F0041
      004E0041005F005400410052004900460046004500120000004500580050005F
      005600430041004C004C00080000000000000000004740660000005600450053
      0056005300430055004E004C004F00410044005F00340036005F0049004E0053
      004500520054005F005400410042005F0043004F004E0054005200410045004E
      00540045005F005400490054004F004C004100520049002E00730071006C006C
      000600000049004E005300000000002E0000005400410042005F0043004F004E
      0054005200410045004E00540045005F005400490054004F004C004100520049
      00120000004500580050005F005600430041004C004C00080000000000000000
      8047405600000056004500530056005300430055004E004C004F00410044005F
      00340037005F005400410042005F0043004F004E0054005200410045004E0054
      0045005F005400490054004F004C004100520049002E00730071006C00060000
      0055004E004C00000000002E0000005400410042005F0043004F004E00540052
      00410045004E00540045005F005400490054004F004C00410052004900120000
      004500580050005F005600430041004C004C000800000000000000000048404C
      00000056004500530056005300430055004E004C004F00410044005F00340038
      005F0049004E0053004500520054005F005400410042005F0045004E00540056
      0049004E0043002E00730071006C000600000049004E00530000000000160000
      005400410042005F0045004E005400560049004E004300120000004500580050
      005F005600430041004C004C000800000000000000008048403E000000560045
      00530056005300430055004E004C004F00410044005F00340039005F00540041
      0042005F0045004E005400560049004E0043002E00730071006C000600000055
      004E004C0000000000160000005400410042005F0045004E005400560049004E
      004300120000004500580050005F005600430041004C004C0008000000000000
      00000049404800000056004500530056005300430055004E004C004F00410044
      005F00350030005F0049004E0053004500520054005F005400410042005F0046
      004F004E00440049002E00730071006C000600000049004E0053000000000012
      0000005400410042005F0046004F004E0044004900120000004500580050005F
      005600430041004C004C000800000000000000008049403A0000005600450053
      0056005300430055004E004C004F00410044005F00350031005F005400410042
      005F0046004F004E00440049002E00730071006C000600000055004E004C0000
      000000120000005400410042005F0046004F004E004400490012000000450058
      0050005F005600430041004C004C00080000000000000000004A404E00000056
      004500530056005300430055004E004C004F00410044005F00350032005F0049
      004E0053004500520054005F005400410042005F00500052004F0044004F0054
      00540049002E00730071006C000600000049004E005300000000001800000054
      00410042005F00500052004F0044004F00540054004900120000004500580050
      005F005600430041004C004C00080000000000000000804A4040000000560045
      00530056005300430055004E004C004F00410044005F00350033005F00540041
      0042005F00500052004F0044004F005400540049002E00730071006C00060000
      0055004E004C0000000000180000005400410042005F00500052004F0044004F
      00540054004900120000004500580050005F005600430041004C004C00080000
      000000000000004B404600000056004500530056005300430055004E004C004F
      00410044005F00350034005F0049004E0053004500520054005F005400410042
      005F0052004500540049002E00730071006C000600000049004E005300000000
      00100000005400410042005F005200450054004900120000004500580050005F
      005600430041004C004C00080000000000000000804B40380000005600450053
      0056005300430055004E004C004F00410044005F00350035005F005400410042
      005F0052004500540049002E00730071006C000600000055004E004C00000000
      00100000005400410042005F005200450054004900120000004500580050005F
      005600430041004C004C00080000000000000000004C404C0000005600450053
      0056005300430055004E004C004F00410044005F00350036005F0049004E0053
      004500520054005F005400410042005F0054004100520049004600460045002E
      00730071006C000600000049004E00530000000000160000005400410042005F
      005400410052004900460046004500120000004500580050005F005600430041
      004C004C00080000000000000000804C403E0000005600450053005600530043
      0055004E004C004F00410044005F00350037005F005400410042005F00540041
      00520049004600460045002E00730071006C000600000055004E004C00000000
      00160000005400410042005F0054004100520049004600460045001200000045
      00580050005F005600430041004C004C00080000000000000000004D405C0000
      0056004500530056005300430055004E004C004F00410044005F00350038005F
      0049004E0053004500520054005F00540052004100530043004F0044005F0054
      00410042005F004100470045004E005A00490045002E00730071006C00060000
      0049004E0053000000000026000000540052004100530043004F0044005F0054
      00410042005F004100470045004E005A0049004500120000004500580050005F
      005600430041004C004C00080000000000000000804D404E0000005600450053
      0056005300430055004E004C004F00410044005F00350039005F005400520041
      00530043004F0044005F005400410042005F004100470045004E005A00490045
      002E00730071006C000600000055004E004C0000000000260000005400520041
      00530043004F0044005F005400410042005F004100470045004E005A00490045
      00120000004500580050005F005600430041004C004C00080000000000000000
      004E406000000056004500530056005300430055004E004C004F00410044005F
      00360030005F0049004E0053004500520054005F00540052004100530043005F
      0050004F004C005F00560049005300550041004C005F00430041004C004C002E
      00730071006C000600000049004E005300000000002A00000054005200410053
      0043005F0050004F004C005F00560049005300550041004C005F00430041004C
      004C00120000004500580050005F005600430041004C004C0008000000000000
      0000804E405200000056004500530056005300430055004E004C004F00410044
      005F00360031005F00540052004100530043005F0050004F004C005F00560049
      005300550041004C005F00430041004C004C002E00730071006C000600000055
      004E004C00000000002A000000540052004100530043005F0050004F004C005F
      00560049005300550041004C005F00430041004C004C00120000004500580050
      005F005600430041004C004C00080000000000000000804F405E000000560045
      0053005600530043004C004F00410044005F00360033005F004D004500520047
      0045005F005400410042005F0043004F004E0054005200410045004E00540045
      005F005400490054004F004C004100520049002E00730071006C00060000004D
      0045005200000000002E0000005400410042005F0043004F004E005400520041
      0045004E00540045005F005400490054004F004C004100520049001200000045
      00580050005F005600430041004C004C00080000000000000000005040400000
      005600450053005600530043004C004F00410044005F00360034005F00540052
      005F005400410042005F0045004E005400560049004E0043002E00730071006C
      00040000005400520000000000160000005400410042005F0045004E00540056
      0049004E004300120000004500580050005F005600430041004C004C00080000
      000000000000805040460000005600450053005600530043004C004F00410044
      005F00360036005F004D0045005200470045005F005400410042005F0045004E
      005400560049004E0043002E00730071006C00060000004D0045005200000000
      00160000005400410042005F0045004E005400560049004E0043001200000045
      00580050005F005600430041004C004C00080000000000000000C050403C0000
      005600450053005600530043004C004F00410044005F00360037005F00540052
      005F005400410042005F0046004F004E00440049002E00730071006C00040000
      005400520000000000120000005400410042005F0046004F004E004400490012
      0000004500580050005F005600430041004C004C000800000000000000004051
      40420000005600450053005600530043004C004F00410044005F00360039005F
      004D0045005200470045005F005400410042005F0046004F004E00440049002E
      00730071006C00060000004D004500520000000000120000005400410042005F
      0046004F004E0044004900120000004500580050005F005600430041004C004C
      00080000000000000000805140420000005600450053005600530043004C004F
      00410044005F00370030005F00540052005F005400410042005F00500052004F
      0044004F005400540049002E00730071006C0004000000540052000000000018
      0000005400410042005F00500052004F0044004F005400540049001200000045
      00580050005F005600430041004C004C00080000000000000000005240480000
      005600450053005600530043004C004F00410044005F00370032005F004D0045
      005200470045005F005400410042005F00500052004F0044004F005400540049
      002E00730071006C00060000004D004500520000000000180000005400410042
      005F00500052004F0044004F00540054004900120000004500580050005F0056
      00430041004C004C000800000000000000004052403A00000056004500530056
      00530043004C004F00410044005F00370033005F00540052005F005400410042
      005F0052004500540049002E00730071006C0004000000540052000000000018
      0000005400410042005F00500052004F0044004F005400540049001200000045
      00580050005F005600430041004C004C00080000000000000000C05240400000
      005600450053005600530043004C004F00410044005F00370035005F004D0045
      005200470045005F005400410042005F0052004500540049002E00730071006C
      00060000004D004500520000000000180000005400410042005F00500052004F
      0044004F00540054004900120000004500580050005F005600430041004C004C
      00080000000000000000005340400000005600450053005600530043004C004F
      00410044005F00370036005F00540052005F005400410042005F005400410052
      0049004600460045002E00730071006C00040000005400520000000000180000
      005400410042005F00500052004F0044004F0054005400490012000000450058
      0050005F005600430041004C004C000800000000000000008053404600000056
      00450053005600530043004C004F00410044005F00370038005F004D00450052
      00470045005F005400410042005F0054004100520049004600460045002E0073
      0071006C00060000004D004500520000000000180000005400410042005F0050
      0052004F0044004F00540054004900120000004500580050005F005600430041
      004C004C00080000000000000000C05340520000005600450053005600530043
      004C004F00410044005F00370039005F00540052005F00540052004100530043
      004F0044005F005400410042005F004100470045004E005A00490045002E0073
      0071006C006C00040000005400520000000000180000005400410042005F0050
      0052004F0044004F00540054004900120000004500580050005F005600430041
      004C004C00080000000000000000805440540000005600450053005600530043
      004C004F00410044005F00380032005F00540052005F00540052004100530043
      005F0050004F004C005F00560049005300550041004C005F00430041004C004C
      002E00730071006C000400000054005200000000002A00000054005200410053
      0043005F0050004F004C005F00560049005300550041004C005F00430041004C
      004C00120000004500580050005F005600430041004C004C0008000000000000
      00000055405A0000005600450053005600530043004C004F00410044005F0038
      0034005F004D0045005200470045005F00540052004100530043005F0050004F
      004C005F00560049005300550041004C005F00430041004C004C002E00730071
      006C00060000004D0045005200000000002A000000540052004100530043005F
      0050004F004C005F00560049005300550041004C005F00430041004C004C0012
      0000004500580050005F005600430041004C004C000800000000000000004055
      40460000005600450053005600530043004C004F00410044005F00380035005F
      00540052005F00540052004100530043005F00500052004F0044004F00540054
      004F002E00730071006C000400000054005200000000001C0000005400520041
      00530043005F00500052004F0044004F00540054004F00120000004500580050
      005F005600430041004C004C00080000000000000000C055404E000000560045
      0053005600530043004C004F00410044005F00380037005F004D004500520047
      0045005F00540052004100530043005F00500052004F0044004F00540054004F
      002E00730071006C006C00060000004D0045005200000000001C000000540052
      004100530043005F00500052004F0044004F00540054004F0012000000450058
      0050005F005600430041004C004C000800000000000000000056403C00000056
      00450053005600530043004C004F00410044005F00380038005F00540052005F
      0056004D00450050004F004C004D00490047002E00730071006C000400000054
      005200000000001200000056004D00450050004F004C004D0049004700120000
      004500580050005F005600430041004C004C0008000000000000000080564042
      0000005600450053005600530043004C004F00410044005F00390030005F004D
      0045005200470045005F0056004D00450050004F004C004D00490047002E0073
      0071006C00060000004D0045005200000000001200000056004D00450050004F
      004C004D0049004700}
  end
  object qryDevCode: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO VIS.DEV_CODE'
      '  (PROJECT, ID, CODE, DESCRIPTION)'
      'VALUES'
      '  (:PROJECT, :ID, :CODE, :DESCRIPTION)')
    SQLDelete.Strings = (
      'DELETE FROM VIS.DEV_CODE'
      'WHERE'
      '  PROJECT = :Old_PROJECT AND ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE VIS.DEV_CODE'
      'SET'
      
        '  PROJECT = :PROJECT, ID = :ID, CODE = :CODE, DESCRIPTION = :DES' +
        'CRIPTION'
      'WHERE'
      '  PROJECT = :Old_PROJECT AND ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT PROJECT, ID, CODE, DESCRIPTION FROM VIS.DEV_CODE'
      'WHERE'
      '  PROJECT = :Old_PROJECT AND ID = :Old_ID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT PROJECT, ID, CODE, DESCRIPTION FROM VIS.DEV_CODE'
      'WHERE'
      '  PROJECT = :PROJECT AND ID = :ID')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM VIS.DEV_CODE'
      ''
      ')')
    Connection = UniConnection2
    SQL.Strings = (
      'SELECT * '
      'FROM vis.dev_code'
      'ORDER BY id')
    MasterSource = dsSchemas
    Left = 768
    Top = 136
    object qryDevCodePROJECT: TWideStringField
      FieldName = 'PROJECT'
      Required = True
      Size = 8
    end
    object qryDevCodeID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object qryDevCodeCODE: TWideMemoField
      FieldName = 'CODE'
      BlobType = ftOraClob
    end
    object qryDevCodeDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Size = 128
    end
  end
  object dsDevCode: TUniDataSource
    DataSet = qryDevCode
    Left = 768
    Top = 208
  end
end
