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
end
