inherited dmPgRepositoryStorage: TdmPgRepositoryStorage
  Height = 522
  Width = 854
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object qryDBSchemaTables: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'table_name'
        FieldType = ftWideString
        FieldLength = 128
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *FROM information_schema.tables '
      'WHERE table_schema = :schema')
    Left = 600
    Top = 197
    ParamData = <
      item
        DataType = ftWideString
        Name = 'schema'
        ParamType = ptInput
        Value = 'documents'
      end>
    object qryDBSchemaTablestable_name: TWideStringField
      FieldName = 'table_name'
      Size = 128
    end
    object qryDBSchemaTablestable_catalog: TWideMemoField
      FieldName = 'table_catalog'
      BlobType = ftWideMemo
    end
    object qryDBSchemaTablestable_schema: TWideMemoField
      FieldName = 'table_schema'
      BlobType = ftWideMemo
    end
    object qryDBSchemaTablestable_type: TWideMemoField
      FieldName = 'table_type'
      BlobType = ftWideMemo
    end
    object qryDBSchemaTablesself_referencing_column_name: TWideMemoField
      FieldName = 'self_referencing_column_name'
      BlobType = ftWideMemo
    end
    object qryDBSchemaTablesreference_generation: TWideMemoField
      FieldName = 'reference_generation'
      BlobType = ftWideMemo
    end
    object qryDBSchemaTablesuser_defined_type_catalog: TWideMemoField
      FieldName = 'user_defined_type_catalog'
      BlobType = ftWideMemo
    end
    object qryDBSchemaTablesuser_defined_type_schema: TWideMemoField
      FieldName = 'user_defined_type_schema'
      BlobType = ftWideMemo
    end
    object qryDBSchemaTablesuser_defined_type_name: TWideMemoField
      FieldName = 'user_defined_type_name'
      BlobType = ftWideMemo
    end
    object qryDBSchemaTablesis_insertable_into: TWideStringField
      FieldName = 'is_insertable_into'
      Size = 3
    end
    object qryDBSchemaTablesis_typed: TWideStringField
      FieldName = 'is_typed'
      Size = 3
    end
    object qryDBSchemaTablescommit_action: TWideMemoField
      FieldName = 'commit_action'
      BlobType = ftWideMemo
    end
  end
  object qrySchemas: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from repository.schemas')
    Left = 272
    Top = 80
    object qrySchemasjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qrySchemasname: TWideStringField
      FieldName = 'name'
      Required = True
      Size = 64
    end
    object qrySchemasprefix: TWideStringField
      FieldName = 'prefix'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object qryEntities: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO repository.entities'
      
        '  (jguid, schema, name, singular, plural, title, description, is' +
        'virtual, model_uid, query_text, schema_jguid)'
      'VALUES'
      
        '  (:jguid, :schema, :name, :singular, :plural, :title, :descript' +
        'ion, :isvirtual, :model_uid, :query_text, :schema_jguid)')
    SQLDelete.Strings = (
      'DELETE FROM repository.entities'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE repository.entities'
      'SET'
      
        '  jguid = :jguid, schema = :schema, name = :name, singular = :si' +
        'ngular, plural = :plural, title = :title, description = :descrip' +
        'tion, isvirtual = :isvirtual, model_uid = :model_uid, query_text' +
        ' = :query_text, schema_jguid = :schema_jguid'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM repository.entities'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT jguid, schema, name, singular, plural, title, description' +
        ', isvirtual, model_uid, query_text, schema_jguid FROM repository' +
        '.entities'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM repository.entities'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from repository.entities')
    Left = 144
    Top = 200
    object qryEntitiesjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryEntitiesschema: TWideStringField
      FieldName = 'schema'
      Required = True
      Size = 64
    end
    object qryEntitiesname: TWideStringField
      FieldName = 'name'
      Required = True
      Size = 64
    end
    object qryEntitiessingular: TWideStringField
      FieldName = 'singular'
      Required = True
      Size = 128
    end
    object qryEntitiesplural: TWideStringField
      FieldName = 'plural'
      Required = True
      Size = 128
    end
    object qryEntitiestitle: TWideStringField
      FieldName = 'title'
      Required = True
      Size = 128
    end
    object qryEntitiesdescription: TWideStringField
      FieldName = 'description'
      Size = 1024
    end
    object qryEntitiesisvirtual: TBooleanField
      FieldName = 'isvirtual'
      Required = True
    end
    object qryEntitiesmodel_uid: TGuidField
      FieldName = 'model_uid'
      Size = 38
    end
    object qryEntitiesquery_text: TWideMemoField
      FieldName = 'query_text'
      BlobType = ftWideMemo
    end
    object qryEntitiesschema_jguid: TGuidField
      FieldName = 'schema_jguid'
      Required = True
      Size = 38
    end
  end
  object dsEntities: TUniDataSource
    DataSet = qryEntities
    Left = 144
    Top = 264
  end
  object qryEntitiesFields: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO repository.fields'
      
        '  (jguid, entity_guid, fieldname, fieldtitle, ongrid, pxwidth, d' +
        'b_fieldtype, rs_fieldtype, gridgroup, exportfield, exporttype, m' +
        'ask, gridtitle, fieldlabel, fieldlength, fieldprecisoin, gridpos' +
        ', required)'
      'VALUES'
      
        '  (:jguid, :entity_guid, :fieldname, :fieldtitle, :ongrid, :pxwi' +
        'dth, :db_fieldtype, :rs_fieldtype, :gridgroup, :exportfield, :ex' +
        'porttype, :mask, :gridtitle, :fieldlabel, :fieldlength, :fieldpr' +
        'ecisoin, :gridpos, :required)')
    SQLDelete.Strings = (
      'DELETE FROM repository.fields'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE repository.fields'
      'SET'
      
        '  jguid = :jguid, entity_guid = :entity_guid, fieldname = :field' +
        'name, fieldtitle = :fieldtitle, ongrid = :ongrid, pxwidth = :pxw' +
        'idth, db_fieldtype = :db_fieldtype, rs_fieldtype = :rs_fieldtype' +
        ', gridgroup = :gridgroup, exportfield = :exportfield, exporttype' +
        ' = :exporttype, mask = :mask, gridtitle = :gridtitle, fieldlabel' +
        ' = :fieldlabel, fieldlength = :fieldlength, fieldprecisoin = :fi' +
        'eldprecisoin, gridpos = :gridpos, required = :required'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM repository.fields'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT jguid, entity_guid, fieldname, fieldtitle, ongrid, pxwidt' +
        'h, db_fieldtype, rs_fieldtype, gridgroup, exportfield, exporttyp' +
        'e, mask, gridtitle, fieldlabel, fieldlength, fieldprecisoin, gri' +
        'dpos, required FROM repository.fields'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM repository.fields'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * '
      '    FROM repository.fields'
      #9'where entity_guid = :schema_jguid')
    MasterSource = dsEntities
    MasterFields = 'jguid'
    DetailFields = 'entity_guid'
    Left = 72
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'schema_jguid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'jguid'
        Value = nil
      end>
    object qryEntitiesFieldsjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryEntitiesFieldsentity_guid: TGuidField
      FieldName = 'entity_guid'
      Required = True
      Size = 38
    end
    object qryEntitiesFieldsfieldname: TWideStringField
      FieldName = 'fieldname'
      Required = True
      Size = 64
    end
    object qryEntitiesFieldsfieldtitle: TWideStringField
      FieldName = 'fieldtitle'
      Required = True
      Size = 128
    end
    object qryEntitiesFieldsongrid: TBooleanField
      FieldName = 'ongrid'
      Required = True
    end
    object qryEntitiesFieldspxwidth: TSmallintField
      FieldName = 'pxwidth'
      Required = True
    end
    object qryEntitiesFieldsdb_fieldtype: TSmallintField
      FieldName = 'db_fieldtype'
      Required = True
    end
    object qryEntitiesFieldsrs_fieldtype: TSmallintField
      FieldName = 'rs_fieldtype'
      Required = True
    end
    object qryEntitiesFieldsgridgroup: TWideStringField
      FieldName = 'gridgroup'
      Size = 128
    end
    object qryEntitiesFieldsexportfield: TBooleanField
      FieldName = 'exportfield'
    end
    object qryEntitiesFieldsexporttype: TSmallintField
      FieldName = 'exporttype'
    end
    object qryEntitiesFieldsmask: TWideStringField
      FieldName = 'mask'
      Size = 32
    end
    object qryEntitiesFieldsgridtitle: TWideStringField
      FieldName = 'gridtitle'
      Size = 128
    end
    object qryEntitiesFieldsfieldlabel: TWideStringField
      FieldName = 'fieldlabel'
      Size = 128
    end
    object qryEntitiesFieldsfieldlength: TSmallintField
      FieldName = 'fieldlength'
    end
    object qryEntitiesFieldsfieldprecisoin: TSmallintField
      FieldName = 'fieldprecisoin'
    end
    object qryEntitiesFieldsgridpos: TSmallintField
      FieldName = 'gridpos'
    end
    object qryEntitiesFieldsrequired: TBooleanField
      FieldName = 'required'
      Required = True
    end
    object qryEntitiesFieldscondition: TWideMemoField
      FieldName = 'condition'
      Required = True
      BlobType = ftWideMemo
    end
  end
  object qryEntitiesParams: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO repository.params'
      
        '  (jguid, entity_guid, fieldname, fieldtitle, ongrid, pxwidth, d' +
        'b_fieldtype, rs_fieldtype, gridgroup, exportfield, exporttype, m' +
        'ask, gridtitle, fieldlabel, fieldlength, fieldprecisoin, gridpos' +
        ', required, condition)'
      'VALUES'
      
        '  (:jguid, :entity_guid, :fieldname, :fieldtitle, :ongrid, :pxwi' +
        'dth, :db_fieldtype, :rs_fieldtype, :gridgroup, :exportfield, :ex' +
        'porttype, :mask, :gridtitle, :fieldlabel, :fieldlength, :fieldpr' +
        'ecisoin, :gridpos, :required, :condition)')
    SQLDelete.Strings = (
      'DELETE FROM repository.entities'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE repository.entities'
      'SET'
      
        '  jguid = :jguid, schema = :schema, name = :name, singular = :si' +
        'ngular, plural = :plural, title = :title, description = :descrip' +
        'tion, isvirtual = :isvirtual, model_uid = :model_uid, query_text' +
        ' = :query_text, schema_jguid = :schema_jguid'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM repository.entities'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT jguid, schema, name, singular, plural, title, description' +
        ', isvirtual, model_uid, query_text, schema_jguid FROM repository' +
        '.entities'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM repository.params'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * '
      '    FROM repository.params'
      #9'where entity_guid = :schema_jguid')
    MasterSource = dsEntities
    MasterFields = 'jguid'
    DetailFields = 'entity_guid'
    Left = 208
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'schema_jguid'
        Value = nil
      end
      item
        DataType = ftGuid
        Name = 'jguid'
        Value = nil
      end>
    object GuidField1: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object GuidField2: TGuidField
      FieldName = 'entity_guid'
      Required = True
      Size = 38
    end
    object WideStringField1: TWideStringField
      FieldName = 'fieldname'
      Required = True
      Size = 64
    end
    object WideStringField2: TWideStringField
      FieldName = 'fieldtitle'
      Required = True
      Size = 128
    end
    object BooleanField1: TBooleanField
      FieldName = 'ongrid'
      Required = True
    end
    object SmallintField1: TSmallintField
      FieldName = 'pxwidth'
      Required = True
    end
    object SmallintField2: TSmallintField
      FieldName = 'db_fieldtype'
      Required = True
    end
    object SmallintField3: TSmallintField
      FieldName = 'rs_fieldtype'
      Required = True
    end
    object WideStringField3: TWideStringField
      FieldName = 'gridgroup'
      Size = 128
    end
    object BooleanField2: TBooleanField
      FieldName = 'exportfield'
    end
    object SmallintField4: TSmallintField
      FieldName = 'exporttype'
    end
    object WideStringField4: TWideStringField
      FieldName = 'mask'
      Size = 32
    end
    object WideStringField5: TWideStringField
      FieldName = 'gridtitle'
      Size = 128
    end
    object WideStringField6: TWideStringField
      FieldName = 'fieldlabel'
      Size = 128
    end
    object SmallintField5: TSmallintField
      FieldName = 'fieldlength'
    end
    object SmallintField6: TSmallintField
      FieldName = 'fieldprecisoin'
    end
    object SmallintField7: TSmallintField
      FieldName = 'gridpos'
    end
    object BooleanField3: TBooleanField
      FieldName = 'required'
      Required = True
    end
    object WideMemoField1: TWideMemoField
      FieldName = 'condition'
      Required = True
      BlobType = ftWideMemo
    end
  end
  object qryFieldTypeGroups: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO repository.fieldtypes_groups'
      '  (jguid, name)'
      'VALUES'
      '  (:jguid, :name)')
    SQLDelete.Strings = (
      'DELETE FROM repository.fieldtypes_groups'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE repository.fieldtypes_groups'
      'SET'
      '  jguid = :jguid, name = :name'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM repository.fieldtypes_groups'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT jguid, name FROM repository.fieldtypes_groups'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM repository.fieldtypes_groups'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      #9'FROM repository.fieldtypes_groups;')
    Left = 776
    Top = 24
  end
  object dsFieldTypesGroups: TUniDataSource
    DataSet = qryFieldTypeGroups
    Left = 776
    Top = 80
  end
  object qryFieldTypes: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO repository.fieldtypes'
      '  (jguid, group_id, id, name)'
      'VALUES'
      '  (:jguid, :group_id, :id, :name)')
    SQLDelete.Strings = (
      'DELETE FROM repository.fieldtypes'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE repository.fieldtypes'
      'SET'
      '  jguid = :jguid, group_id = :group_id, id = :id, name = :name'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM repository.fieldtypes'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT jguid, group_id, id, name FROM repository.fieldtypes'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM repository.fieldtypes'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      #9'FROM repository.fieldtypes;')
    MasterSource = dsFieldTypesGroups
    MasterFields = 'jguid'
    DetailFields = 'group_id'
    Left = 776
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'jguid'
        Value = nil
      end>
    object qryFieldTypesjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryFieldTypesgroup_id: TGuidField
      FieldName = 'group_id'
      Required = True
      Size = 38
    end
    object qryFieldTypesid: TSmallintField
      FieldName = 'id'
      Required = True
    end
    object qryFieldTypesname: TWideStringField
      FieldName = 'name'
      Required = True
      Size = 128
    end
  end
  object dsSchemas: TUniDataSource
    DataSet = qryEntities
    Left = 272
    Top = 136
  end
  object qryDBSchemas: TUniQuery
    DataTypeMap = <
      item
        DBType = 517
        FieldType = ftString
        FieldLength = 128
        IgnoreErrors = True
      end
      item
        FieldName = 'catalog_name'
        FieldType = ftWideString
        FieldLength = 64
        IgnoreErrors = True
      end
      item
        FieldName = 'schema_name'
        FieldType = ftWideString
        FieldLength = 64
        IgnoreErrors = True
      end
      item
        FieldName = 'schema_owner'
        FieldType = ftWideString
        FieldLength = 64
      end
      item
        FieldName = 'default_character_set_catalog'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'default_character_set_schema'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'default_character_set_name'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'sql_path'
        FieldType = ftWideString
        FieldLength = 256
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM information_schema.schemata')
    Left = 600
    Top = 80
    object qryDBSchemascatalog_name: TWideStringField
      FieldName = 'catalog_name'
      Size = 64
    end
    object qryDBSchemasschema_name: TWideStringField
      FieldName = 'schema_name'
      Size = 64
    end
    object qryDBSchemasschema_owner: TWideStringField
      FieldName = 'schema_owner'
      Size = 64
    end
    object qryDBSchemasdefault_character_set_catalog: TWideStringField
      FieldName = 'default_character_set_catalog'
      Size = 128
    end
    object qryDBSchemasdefault_character_set_schema: TWideStringField
      FieldName = 'default_character_set_schema'
      Size = 128
    end
    object qryDBSchemasdefault_character_set_name: TWideStringField
      FieldName = 'default_character_set_name'
      Size = 128
    end
    object qryDBSchemassql_path: TWideStringField
      FieldName = 'sql_path'
      Size = 256
    end
  end
end
