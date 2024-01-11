inherited dmPgStorage1: TdmPgStorage1
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object qrySchemas: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO repository.schemas'
      '  (jguid, name, prefix)'
      'VALUES'
      '  (:jguid, :name, :prefix)')
    SQLDelete.Strings = (
      'DELETE FROM repository.schemas'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE repository.schemas'
      'SET'
      '  jguid = :jguid, name = :name, prefix = :prefix'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM repository.schemas'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT jguid, name, prefix FROM repository.schemas'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM repository.schemas'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from repository.schemas')
    Left = 184
    Top = 32
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
    Left = 184
    Top = 88
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
end
