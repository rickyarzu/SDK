inherited dmPgFrameworkJormGenerator: TdmPgFrameworkJormGenerator
  Height = 557
  Width = 544
  inherited PgErgoConnection: TJanuaUniConnection
    Server = 'pg.januaservers.com'
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object vtGuidGenerator: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'SchemaTable'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'Abbreviation'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Key'
        DataType = ftString
        Size = 200
      end>
    Left = 72
    Top = 200
    Data = {
      040003000B00536368656D615461626C6501002C01000000000C004162627265
      76696174696F6E010004000000000003004B65790100C8000000000000000000
      0000}
    object vtGuidGeneratorSchemaTable: TStringField
      FieldName = 'SchemaTable'
      Size = 300
    end
    object vtGuidGeneratorAbbreviation: TStringField
      FieldName = 'Abbreviation'
      Size = 4
    end
    object vtGuidGeneratorKey: TStringField
      FieldName = 'Key'
      Size = 200
    end
  end
  object qryColumns: TUniQuery
    DataTypeMap = <
      item
        DBType = 517
        FieldType = ftWideString
        FieldLength = 1024
        IgnoreErrors = True
      end
      item
        FieldName = 'column_name'
        FieldType = ftWideString
        FieldLength = 128
        IgnoreErrors = True
      end
      item
        DBType = 508
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      'FROM information_schema.columns'
      'WHERE'
      'table_schema || '#39'.'#39' ||table_name   = :SchemaTable')
    MasterSource = dsGuidGenerator
    Left = 352
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'SchemaTable'
        ParamType = ptInput
        Value = nil
      end>
    object qryColumnscolumn_name: TWideStringField
      FieldName = 'column_name'
      Size = 128
    end
    object qryColumnstable_catalog: TWideStringField
      FieldName = 'table_catalog'
      Size = 1024
    end
    object qryColumnstable_schema: TWideStringField
      FieldName = 'table_schema'
      Size = 1024
    end
    object qryColumnstable_name: TWideStringField
      FieldName = 'table_name'
      Size = 1024
    end
    object qryColumnsordinal_position: TIntegerField
      FieldName = 'ordinal_position'
    end
    object qryColumnscolumn_default: TWideStringField
      FieldName = 'column_default'
      Size = 1024
    end
    object qryColumnsis_nullable: TWideStringField
      FieldName = 'is_nullable'
      Size = 1024
    end
    object qryColumnsdata_type: TWideStringField
      FieldName = 'data_type'
      Size = 1024
    end
    object qryColumnscharacter_maximum_length: TIntegerField
      FieldName = 'character_maximum_length'
    end
    object qryColumnscharacter_octet_length: TIntegerField
      FieldName = 'character_octet_length'
    end
    object qryColumnsnumeric_precision: TIntegerField
      FieldName = 'numeric_precision'
    end
    object qryColumnsnumeric_precision_radix: TIntegerField
      FieldName = 'numeric_precision_radix'
    end
    object qryColumnsnumeric_scale: TIntegerField
      FieldName = 'numeric_scale'
    end
    object qryColumnsdatetime_precision: TIntegerField
      FieldName = 'datetime_precision'
    end
    object qryColumnsinterval_type: TWideStringField
      FieldName = 'interval_type'
      Size = 1024
    end
    object qryColumnsinterval_precision: TIntegerField
      FieldName = 'interval_precision'
    end
    object qryColumnscharacter_set_catalog: TWideStringField
      FieldName = 'character_set_catalog'
      Size = 1024
    end
    object qryColumnscharacter_set_schema: TWideStringField
      FieldName = 'character_set_schema'
      Size = 1024
    end
    object qryColumnscharacter_set_name: TWideStringField
      FieldName = 'character_set_name'
      Size = 1024
    end
    object qryColumnscollation_catalog: TWideStringField
      FieldName = 'collation_catalog'
      Size = 1024
    end
    object qryColumnscollation_schema: TWideStringField
      FieldName = 'collation_schema'
      Size = 1024
    end
    object qryColumnscollation_name: TWideStringField
      FieldName = 'collation_name'
      Size = 1024
    end
    object qryColumnsdomain_catalog: TWideStringField
      FieldName = 'domain_catalog'
      Size = 1024
    end
    object qryColumnsdomain_schema: TWideStringField
      FieldName = 'domain_schema'
      Size = 1024
    end
    object qryColumnsdomain_name: TWideStringField
      FieldName = 'domain_name'
      Size = 1024
    end
    object qryColumnsudt_catalog: TWideStringField
      FieldName = 'udt_catalog'
      Size = 1024
    end
    object qryColumnsudt_schema: TWideStringField
      FieldName = 'udt_schema'
      Size = 1024
    end
    object qryColumnsudt_name: TWideStringField
      FieldName = 'udt_name'
      Size = 1024
    end
    object qryColumnsscope_catalog: TWideStringField
      FieldName = 'scope_catalog'
      Size = 1024
    end
    object qryColumnsscope_schema: TWideStringField
      FieldName = 'scope_schema'
      Size = 1024
    end
    object qryColumnsscope_name: TWideStringField
      FieldName = 'scope_name'
      Size = 1024
    end
    object qryColumnsmaximum_cardinality: TIntegerField
      FieldName = 'maximum_cardinality'
    end
    object qryColumnsdtd_identifier: TWideStringField
      FieldName = 'dtd_identifier'
      Size = 1024
    end
    object qryColumnsis_self_referencing: TWideStringField
      FieldName = 'is_self_referencing'
      Size = 1024
    end
    object qryColumnsis_identity: TWideStringField
      FieldName = 'is_identity'
      Size = 1024
    end
    object qryColumnsidentity_generation: TWideStringField
      FieldName = 'identity_generation'
      Size = 1024
    end
    object qryColumnsidentity_start: TWideStringField
      FieldName = 'identity_start'
      Size = 1024
    end
    object qryColumnsidentity_increment: TWideStringField
      FieldName = 'identity_increment'
      Size = 1024
    end
    object qryColumnsidentity_maximum: TWideStringField
      FieldName = 'identity_maximum'
      Size = 1024
    end
    object qryColumnsidentity_minimum: TWideStringField
      FieldName = 'identity_minimum'
      Size = 1024
    end
    object qryColumnsidentity_cycle: TWideStringField
      FieldName = 'identity_cycle'
      Size = 1024
    end
    object qryColumnsis_generated: TWideStringField
      FieldName = 'is_generated'
      Size = 1024
    end
    object qryColumnsgeneration_expression: TWideStringField
      FieldName = 'generation_expression'
      Size = 1024
    end
    object qryColumnsis_updatable: TWideStringField
      FieldName = 'is_updatable'
      Size = 1024
    end
  end
  object dsAnalysis: TDataSource
    DataSet = vtAnalysis
    Left = 352
    Top = 392
  end
  object qrySchemas: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT nspname FROM pg_catalog.pg_namespace'
      'order by '
      'nspname ')
    Left = 432
    Top = 328
    object qrySchemasnspname: TWideStringField
      FieldName = 'nspname'
      Required = True
      Size = 63
    end
  end
  object vtAnalysis: TVirtualTable
    FieldDefs = <
      item
        Name = 'title'
        DataType = ftWideString
        Size = 1024
      end
      item
        Name = 'minimum'
        DataType = ftWideString
        Size = 1024
      end
      item
        Name = 'maximum'
        DataType = ftWideString
        Size = 1024
      end
      item
        Name = 'rows'
        DataType = ftLargeint
      end
      item
        Name = 'diff'
        DataType = ftLargeint
      end>
    Left = 352
    Top = 328
    Data = {
      0400050005007469746C65180000040000000007006D696E696D756D18000004
      0000000007006D6178696D756D18000004000000000400726F77731900000000
      0000000400646966661900000000000000000000000000}
    object vtAnalysistitle: TWideStringField
      FieldName = 'title'
      Size = 1024
    end
    object vtAnalysisminimum: TWideStringField
      FieldName = 'minimum'
      Size = 1024
    end
    object vtAnalysismaximum: TWideStringField
      FieldName = 'maximum'
      Size = 1024
    end
    object vtAnalysisrows: TLargeintField
      FieldName = 'rows'
    end
    object vtAnalysisLargeintField: TLargeintField
      FieldName = 'diff'
      ReadOnly = True
    end
  end
  object qryAnalisi: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'title'
        FieldType = ftWideString
        FieldLength = 1024
      end
      item
        FieldName = 'minimum'
        FieldType = ftWideString
        FieldLength = 1024
      end
      item
        FieldName = 'maximum'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      '      select'
      '      '#39'anno'#39'::character varying as title,'
      '      min(anno)::character varying as minimum,'
      '      max(anno)::character varying as maximum,'
      '      count(1) as rows,'
      #9'    diff'
      '      from'
      '      custom_tm_logistic.entrate a,'
      #9'  ('
      #9'   select count(1) diff from'
      
        '       (select distinct anno from custom_tm_logistic.entrate) as' +
        ' foo'
      '      ) as b'
      '      where'
      '      anno is not null'
      #9'  group by b.diff')
    Left = 272
    Top = 328
    object qryAnalisititle: TWideStringField
      FieldName = 'title'
      ReadOnly = True
      Size = 1024
    end
    object qryAnalisiminimum: TWideStringField
      FieldName = 'minimum'
      ReadOnly = True
      Size = 1024
    end
    object qryAnalisimaximum: TWideStringField
      FieldName = 'maximum'
      ReadOnly = True
      Size = 1024
    end
    object qryAnalisirows: TLargeintField
      FieldName = 'rows'
      ReadOnly = True
    end
    object qryAnalisidiff: TLargeintField
      FieldName = 'diff'
      ReadOnly = True
    end
  end
  object dsColumns: TDataSource
    DataSet = qryColumns
    Left = 352
    Top = 264
  end
  object dsSchemas: TDataSource
    DataSet = qrySchemas
    Left = 176
    Top = 280
  end
  object PgScript1: TUniScript
    Connection = PgErgoConnection
    Left = 176
    Top = 160
  end
  object dsTriggers: TDataSource
    DataSet = qryTriggers
    Left = 72
    Top = 368
  end
  object qryIndexFields: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'data_type'
        FieldType = ftWideString
        FieldLength = 256
        IgnoreErrors = True
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT a.attname, format_type(a.atttypid, a.atttypmod) AS data_t' +
        'ype'
      
        'FROM   pg_index i JOIN   pg_attribute a ON a.attrelid = i.indrel' +
        'id  AND a.attnum = ANY(i.indkey)'
      
        'WHERE  i.indrelid = '#39'system.db_users'#39'::regclass AND    i.indispr' +
        'imary'
      'order by a.attname')
    MasterSource = dsGuidGenerator
    DetailFields = 'attname'
    Left = 72
    Top = 424
    object qryIndexFieldsattname: TWideStringField
      FieldName = 'attname'
      ReadOnly = True
      Required = True
      Size = 63
    end
    object qryIndexFieldsdata_type: TWideStringField
      FieldName = 'data_type'
      ReadOnly = True
      Size = 256
    end
  end
  object qrySchemaTables: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'table_name'
        FieldType = ftWideString
        FieldLength = 128
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT table_name FROM information_schema.tables '
      'WHERE table_schema = :schema'
      '/*'
      'UNION ALL'
      'SELECT table_name  FROM information_schema.views'
      'WHERE table_schema = :schema'
      '*/')
    Left = 176
    Top = 336
    ParamData = <
      item
        DataType = ftWideString
        Name = 'schema'
        ParamType = ptInput
        Value = 'logistic'
      end>
    object qrySchemaTablestable_name: TWideStringField
      FieldName = 'table_name'
      Size = 128
    end
  end
  object qryTriggers: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'trigger_name'
        FieldType = ftWideString
        FieldLength = 256
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  trigger_name'
      'FROM  information_schema.triggers'
      'WHERE '
      'trigger_schema || '#39'.'#39' || event_object_table = :SchemaTable'
      'and '
      'event_manipulation = '#39'INSERT'#39
      'ORDER BY event_object_table'
      '     ,event_manipulation'
      '     , trigger_name')
    MasterSource = dsGuidGenerator
    Left = 72
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SchemaTable'
        Value = nil
      end>
    object qryTriggerstrigger_name: TWideStringField
      FieldName = 'trigger_name'
      Size = 256
    end
  end
  object dsIndexFields: TDataSource
    DataSet = qryIndexFields
    Left = 72
    Top = 480
  end
  object PgSQLMonitor1: TUniSQLMonitor
    Options = [moSQLMonitor, moDBMonitor, moCustom, moHandled]
    TraceFlags = [tfQPrepare, tfQExecute, tfQFetch, tfError, tfStmt, tfConnect, tfTransact, tfService, tfMisc, tfParams]
    Left = 76
    Top = 136
  end
  object tbUsers: TUniTable
    TableName = 'system.db_users'
    Connection = PgErgoConnection
    Left = 352
    Top = 136
  end
  object dsGuidGenerator: TDataSource
    DataSet = vtGuidGenerator
    OnDataChange = dsGuidGeneratorDataChange
    Left = 72
    Top = 256
  end
  object qrySchemaViews: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'table_name'
        FieldType = ftWideString
        FieldLength = 128
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM information_schema.views'
      'WHERE table_schema = :schema')
    Left = 176
    Top = 392
    ParamData = <
      item
        DataType = ftWideString
        Name = 'schema'
        ParamType = ptInput
        Value = 'logistic'
      end>
    object WideStringField1: TWideStringField
      FieldName = 'table_name'
      Size = 128
    end
    object qrySchemaViewstable_catalog: TWideStringField
      FieldName = 'table_catalog'
      Size = 63
    end
    object qrySchemaViewstable_schema: TWideStringField
      FieldName = 'table_schema'
      Size = 63
    end
    object qrySchemaViewsview_definition: TWideMemoField
      FieldName = 'view_definition'
      BlobType = ftWideMemo
    end
    object qrySchemaViewscheck_option: TWideMemoField
      FieldName = 'check_option'
      BlobType = ftWideMemo
    end
    object qrySchemaViewsis_updatable: TWideStringField
      FieldName = 'is_updatable'
      Size = 3
    end
    object qrySchemaViewsis_insertable_into: TWideStringField
      FieldName = 'is_insertable_into'
      Size = 3
    end
    object qrySchemaViewsis_trigger_updatable: TWideStringField
      FieldName = 'is_trigger_updatable'
      Size = 3
    end
    object qrySchemaViewsis_trigger_deletable: TWideStringField
      FieldName = 'is_trigger_deletable'
      Size = 3
    end
    object qrySchemaViewsis_trigger_insertable_into: TWideStringField
      FieldName = 'is_trigger_insertable_into'
      Size = 3
    end
  end
  object qryCheckJguid: TUniQuery
    DataTypeMap = <
      item
        DBType = 517
        FieldType = ftWideString
        FieldLength = 1024
        IgnoreErrors = True
      end
      item
        FieldName = 'column_name'
        FieldType = ftWideString
        FieldLength = 128
        IgnoreErrors = True
      end
      item
        DBType = 508
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      'FROM information_schema.columns'
      'WHERE'
      
        'table_schema || '#39'.'#39' ||table_name   = :SchemaTable and column_nam' +
        'e = '#39'jguid'#39)
    MasterSource = dsGuidGenerator
    Left = 176
    Top = 448
    ParamData = <
      item
        DataType = ftString
        Name = 'SchemaTable'
        ParamType = ptInput
        Value = nil
      end>
    object qryCheckJguidtable_catalog: TWideStringField
      FieldName = 'table_catalog'
      Size = 1024
    end
    object qryCheckJguidtable_schema: TWideStringField
      FieldName = 'table_schema'
      Size = 1024
    end
    object qryCheckJguidtable_name: TWideStringField
      FieldName = 'table_name'
      Size = 1024
    end
    object qryCheckJguidcolumn_name: TWideStringField
      FieldName = 'column_name'
      Size = 128
    end
    object qryCheckJguidordinal_position: TIntegerField
      FieldName = 'ordinal_position'
    end
    object qryCheckJguidcolumn_default: TWideStringField
      FieldName = 'column_default'
      Size = 1024
    end
    object qryCheckJguidis_nullable: TWideStringField
      FieldName = 'is_nullable'
      Size = 1024
    end
    object qryCheckJguiddata_type: TWideStringField
      FieldName = 'data_type'
      Size = 1024
    end
    object qryCheckJguidcharacter_maximum_length: TIntegerField
      FieldName = 'character_maximum_length'
    end
    object qryCheckJguidcharacter_octet_length: TIntegerField
      FieldName = 'character_octet_length'
    end
    object qryCheckJguidnumeric_precision: TIntegerField
      FieldName = 'numeric_precision'
    end
    object qryCheckJguidnumeric_precision_radix: TIntegerField
      FieldName = 'numeric_precision_radix'
    end
    object qryCheckJguidnumeric_scale: TIntegerField
      FieldName = 'numeric_scale'
    end
    object qryCheckJguiddatetime_precision: TIntegerField
      FieldName = 'datetime_precision'
    end
    object qryCheckJguidinterval_type: TWideStringField
      FieldName = 'interval_type'
      Size = 1024
    end
    object qryCheckJguidinterval_precision: TIntegerField
      FieldName = 'interval_precision'
    end
    object qryCheckJguidcharacter_set_catalog: TWideStringField
      FieldName = 'character_set_catalog'
      Size = 1024
    end
    object qryCheckJguidcharacter_set_schema: TWideStringField
      FieldName = 'character_set_schema'
      Size = 1024
    end
    object qryCheckJguidcharacter_set_name: TWideStringField
      FieldName = 'character_set_name'
      Size = 1024
    end
    object qryCheckJguidcollation_catalog: TWideStringField
      FieldName = 'collation_catalog'
      Size = 1024
    end
    object qryCheckJguidcollation_schema: TWideStringField
      FieldName = 'collation_schema'
      Size = 1024
    end
    object qryCheckJguidcollation_name: TWideStringField
      FieldName = 'collation_name'
      Size = 1024
    end
    object qryCheckJguiddomain_catalog: TWideStringField
      FieldName = 'domain_catalog'
      Size = 1024
    end
    object qryCheckJguiddomain_schema: TWideStringField
      FieldName = 'domain_schema'
      Size = 1024
    end
    object qryCheckJguiddomain_name: TWideStringField
      FieldName = 'domain_name'
      Size = 1024
    end
    object qryCheckJguidudt_catalog: TWideStringField
      FieldName = 'udt_catalog'
      Size = 1024
    end
    object qryCheckJguidudt_schema: TWideStringField
      FieldName = 'udt_schema'
      Size = 1024
    end
    object qryCheckJguidudt_name: TWideStringField
      FieldName = 'udt_name'
      Size = 1024
    end
    object qryCheckJguidscope_catalog: TWideStringField
      FieldName = 'scope_catalog'
      Size = 1024
    end
    object qryCheckJguidscope_schema: TWideStringField
      FieldName = 'scope_schema'
      Size = 1024
    end
    object qryCheckJguidscope_name: TWideStringField
      FieldName = 'scope_name'
      Size = 1024
    end
    object qryCheckJguidmaximum_cardinality: TIntegerField
      FieldName = 'maximum_cardinality'
    end
    object qryCheckJguiddtd_identifier: TWideStringField
      FieldName = 'dtd_identifier'
      Size = 1024
    end
    object qryCheckJguidis_self_referencing: TWideStringField
      FieldName = 'is_self_referencing'
      Size = 1024
    end
    object qryCheckJguidis_identity: TWideStringField
      FieldName = 'is_identity'
      Size = 1024
    end
    object qryCheckJguididentity_generation: TWideStringField
      FieldName = 'identity_generation'
      Size = 1024
    end
    object qryCheckJguididentity_start: TWideStringField
      FieldName = 'identity_start'
      Size = 1024
    end
    object qryCheckJguididentity_increment: TWideStringField
      FieldName = 'identity_increment'
      Size = 1024
    end
    object qryCheckJguididentity_maximum: TWideStringField
      FieldName = 'identity_maximum'
      Size = 1024
    end
    object qryCheckJguididentity_minimum: TWideStringField
      FieldName = 'identity_minimum'
      Size = 1024
    end
    object qryCheckJguididentity_cycle: TWideStringField
      FieldName = 'identity_cycle'
      Size = 1024
    end
    object qryCheckJguidis_generated: TWideStringField
      FieldName = 'is_generated'
      Size = 1024
    end
    object qryCheckJguidgeneration_expression: TWideStringField
      FieldName = 'generation_expression'
      Size = 1024
    end
    object qryCheckJguidis_updatable: TWideStringField
      FieldName = 'is_updatable'
      Size = 1024
    end
  end
  object tbDDLColumnsTable: TUniTable
    TableName = 'system.db_users'
    Connection = PgErgoConnection
    Left = 176
    Top = 224
  end
end
