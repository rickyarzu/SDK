inherited dmPgForms: TdmPgForms
  Height = 569
  Width = 575
  inherited PgErgoConnection: TPgConnection
    EncryptedPassword = '99FFCBFF91FF94FF8AFF93FFCFFF'
  end
  inherited qryTowns: TPgQuery
    Top = 416
  end
  inherited testTable: TPgTable
    Top = 480
  end
  object qryForms: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO system.app_forms'
      '  (form_url, form_name, db_schema_id, form_id)'
      'VALUES'
      '  (:form_url, :form_name, :db_schema_id, :form_id)')
    SQLDelete.Strings = (
      'DELETE FROM system.app_forms'
      'WHERE'
      '  form_id = :Old_form_id')
    SQLUpdate.Strings = (
      'UPDATE system.app_forms'
      'SET'
      
        '  form_url = :form_url, form_name = :form_name, db_schema_id = :' +
        'db_schema_id, form_id = :form_id'
      'WHERE'
      '  form_id = :Old_form_id')
    SQLRefresh.Strings = (
      
        'SELECT form_url, form_name, db_schema_id, form_id FROM system.ap' +
        'p_forms'
      'WHERE'
      '  form_id = :form_id')
    SQLLock.Strings = (
      'SELECT * FROM system.app_forms'
      'WHERE'
      '  form_id = :Old_form_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.app_forms'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from system.app_forms'
      'where'
      '(form_id = :form_id or form_id = 0)'
      'and '
      '(form_name = :form_name or form_name is null)')
    Left = 200
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'form_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'form_name'
        ParamType = ptInput
        Value = nil
      end>
    object qryFormsform_url: TWideStringField
      FieldName = 'form_url'
      Required = True
      Size = 256
    end
    object qryFormsform_name: TWideStringField
      FieldName = 'form_name'
      Required = True
      Size = 256
    end
    object qryFormsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryFormsform_id: TIntegerField
      FieldName = 'form_id'
      Required = True
    end
  end
  object dsForms: TDataSource
    DataSet = qryForms
    Left = 200
    Top = 80
  end
  object qryFormsTranslations: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO system.app_forms_translations'
      
        '  (form_title, main_iso_language, trans_iso_language, db_schema_' +
        'id, laguage_id, form_id)'
      'VALUES'
      
        '  (:form_title, :main_iso_language, :trans_iso_language, :db_sch' +
        'ema_id, :laguage_id, :form_id)')
    SQLDelete.Strings = (
      'DELETE FROM system.app_forms_translations'
      'WHERE'
      '  laguage_id = :Old_laguage_id AND form_id = :Old_form_id')
    SQLUpdate.Strings = (
      'UPDATE system.app_forms_translations'
      'SET'
      
        '  form_title = :form_title, main_iso_language = :main_iso_langua' +
        'ge, trans_iso_language = :trans_iso_language, db_schema_id = :db' +
        '_schema_id, laguage_id = :laguage_id, form_id = :form_id'
      'WHERE'
      '  laguage_id = :Old_laguage_id AND form_id = :Old_form_id')
    SQLRefresh.Strings = (
      
        'SELECT form_title, main_iso_language, trans_iso_language, db_sch' +
        'ema_id, laguage_id, form_id FROM system.app_forms_translations'
      'WHERE'
      '  laguage_id = :laguage_id AND form_id = :form_id')
    SQLLock.Strings = (
      'SELECT * FROM system.app_forms_translations'
      'WHERE'
      '  laguage_id = :Old_laguage_id AND form_id = :Old_form_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.app_forms_translations'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from system.app_forms_translations'
      'where '
      'laguage_id = :language_id and  form_id = :form_id')
    MasterFields = 'form_id'
    DetailFields = 'form_id'
    MasterSource = dsForms
    Left = 304
    Top = 48
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'language_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'form_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryFormsTranslationsform_title: TWideStringField
      FieldName = 'form_title'
      Required = True
      Size = 256
    end
    object qryFormsTranslationsmain_iso_language: TWideStringField
      FieldName = 'main_iso_language'
      Required = True
      Size = 3
    end
    object qryFormsTranslationstrans_iso_language: TWideStringField
      FieldName = 'trans_iso_language'
      Required = True
      Size = 256
    end
    object qryFormsTranslationsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryFormsTranslationslaguage_id: TSmallintField
      FieldName = 'laguage_id'
      Required = True
    end
    object qryFormsTranslationsform_id: TIntegerField
      FieldName = 'form_id'
      Required = True
    end
  end
  object qryObjects: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO system.app_forms_objects'
      '  (form_id, object_id, object_name)'
      'VALUES'
      '  (:form_id, :object_id, :object_name)')
    SQLDelete.Strings = (
      'DELETE FROM system.app_forms_objects'
      'WHERE'
      '  object_id = :Old_object_id')
    SQLUpdate.Strings = (
      'UPDATE system.app_forms_objects'
      'SET'
      
        '  form_id = :form_id, object_id = :object_id, object_name = :obj' +
        'ect_name'
      'WHERE'
      '  object_id = :Old_object_id')
    SQLRefresh.Strings = (
      
        'SELECT form_id, object_id, object_name FROM system.app_forms_obj' +
        'ects'
      'WHERE'
      '  object_id = :object_id')
    SQLLock.Strings = (
      'SELECT * FROM system.app_forms_objects'
      'WHERE'
      '  object_id = :Old_object_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.app_forms_objects'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      '  FROM system.app_forms_objects'
      '  where '
      '  form_id = :form_id')
    MasterFields = 'form_id'
    DetailFields = 'form_id'
    MasterSource = dsForms
    Left = 200
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'form_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryObjectsform_id: TIntegerField
      FieldName = 'form_id'
    end
    object qryObjectsobject_id: TLargeintField
      FieldName = 'object_id'
      Required = True
    end
    object qryObjectsobject_name: TWideStringField
      FieldName = 'object_name'
      Size = 128
    end
  end
  object dsObjects: TDataSource
    DataSet = qryObjects
    Left = 200
    Top = 192
  end
  object qryProperties: TPgQuery
    DataTypeMap = <
      item
        DBType = 517
        FieldType = ftWideString
      end>
    SQLInsert.Strings = (
      'INSERT INTO system.app_forms_objects_properties'
      
        '  (object_id, property_id, property_name, textvalue, intvalue, d' +
        'atevalue, translate, stringvalue)'
      'VALUES'
      
        '  (:object_id, :property_id, :property_name, :textvalue, :intval' +
        'ue, :datevalue, :translate, :stringvalue)')
    SQLDelete.Strings = (
      'DELETE FROM system.app_forms_objects_properties'
      'WHERE'
      '  property_id = :Old_property_id')
    SQLUpdate.Strings = (
      'UPDATE system.app_forms_objects_properties'
      'SET'
      
        '  object_id = :object_id, property_id = :property_id, property_n' +
        'ame = :property_name, textvalue = :textvalue, intvalue = :intval' +
        'ue, datevalue = :datevalue, translate = :translate, stringvalue ' +
        '= :stringvalue'
      'WHERE'
      '  property_id = :Old_property_id')
    SQLRefresh.Strings = (
      
        'SELECT object_id, property_id, property_name, textvalue, intvalu' +
        'e, datevalue, translate, stringvalue FROM system.app_forms_objec' +
        'ts_properties'
      'WHERE'
      '  property_id = :property_id')
    SQLLock.Strings = (
      'SELECT * FROM system.app_forms_objects_properties'
      'WHERE'
      '  property_id = :Old_property_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.app_forms_objects_properties'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT object_id, property_id, property_name, textvalue, intvalu' +
        'e, datevalue, '
      '       translate, stringvalue'
      '  FROM system.app_forms_objects_properties'
      '  where'
      '  object_id = :object_id')
    MasterFields = 'object_id'
    DetailFields = 'object_id'
    MasterSource = dsObjects
    Left = 200
    Top = 248
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'object_id'
        Value = nil
      end>
    object qryPropertiesobject_id: TLargeintField
      FieldName = 'object_id'
    end
    object qryPropertiesproperty_id: TLargeintField
      FieldName = 'property_id'
      Required = True
    end
    object qryPropertiesproperty_name: TWideStringField
      FieldName = 'property_name'
      Size = 64
    end
    object qryPropertiestextvalue: TWideStringField
      FieldName = 'textvalue'
    end
    object qryPropertiesintvalue: TIntegerField
      FieldName = 'intvalue'
    end
    object qryPropertiesdatevalue: TDateField
      FieldName = 'datevalue'
    end
    object qryPropertiestranslate: TBooleanField
      FieldName = 'translate'
    end
    object qryPropertiesstringvalue: TWideStringField
      FieldName = 'stringvalue'
      Size = 256
    end
  end
  object dsProperties: TDataSource
    DataSet = qryProperties
    Left = 200
    Top = 304
  end
  object qryPropertiesTranslations: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO system.app_forms_objects_translations'
      '  (property_id, language_id, stringvalue, textvalue)'
      'VALUES'
      '  (:property_id, :language_id, :stringvalue, :textvalue)')
    SQLDelete.Strings = (
      'DELETE FROM system.app_forms_objects_translations'
      'WHERE'
      
        '  property_id = :Old_property_id AND language_id = :Old_language' +
        '_id')
    SQLUpdate.Strings = (
      'UPDATE system.app_forms_objects_translations'
      'SET'
      
        '  property_id = :property_id, language_id = :language_id, string' +
        'value = :stringvalue, textvalue = :textvalue'
      'WHERE'
      
        '  property_id = :Old_property_id AND language_id = :Old_language' +
        '_id')
    SQLRefresh.Strings = (
      
        'SELECT property_id, language_id, stringvalue, textvalue FROM sys' +
        'tem.app_forms_objects_translations'
      'WHERE'
      '  property_id = :property_id AND language_id = :language_id')
    SQLLock.Strings = (
      'SELECT * FROM system.app_forms_objects_translations'
      'WHERE'
      
        '  property_id = :Old_property_id AND language_id = :Old_language' +
        '_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.app_forms_objects_translations'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      '  FROM system.app_forms_objects_translations'
      '  where '
      '  property_id = :property_id and language_id = :language_id')
    MasterSource = dsProperties
    Left = 304
    Top = 264
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'property_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'language_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryPropertiesTranslationsproperty_id: TLargeintField
      FieldName = 'property_id'
      Required = True
    end
    object qryPropertiesTranslationslanguage_id: TSmallintField
      FieldName = 'language_id'
      Required = True
    end
    object qryPropertiesTranslationsstringvalue: TWideStringField
      FieldName = 'stringvalue'
      Size = 2048
    end
    object qryPropertiesTranslationstextvalue: TWideMemoField
      FieldName = 'textvalue'
      BlobType = ftWideMemo
    end
  end
  object qrySearchForms: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO system.app_forms'
      '  (form_url, form_name, db_schema_id, form_id)'
      'VALUES'
      '  (:form_url, :form_name, :db_schema_id, :form_id)')
    SQLDelete.Strings = (
      'DELETE FROM system.app_forms'
      'WHERE'
      '  form_id = :Old_form_id')
    SQLUpdate.Strings = (
      'UPDATE system.app_forms'
      'SET'
      
        '  form_url = :form_url, form_name = :form_name, db_schema_id = :' +
        'db_schema_id, form_id = :form_id'
      'WHERE'
      '  form_id = :Old_form_id')
    SQLRefresh.Strings = (
      
        'SELECT form_url, form_name, db_schema_id, form_id FROM system.ap' +
        'p_forms'
      'WHERE'
      '  form_id = :form_id')
    SQLLock.Strings = (
      'SELECT * FROM system.app_forms'
      'WHERE'
      '  form_id = :Old_form_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.app_forms'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from system.app_forms'
      'where'
      '(form_name = :form_name)')
    Left = 440
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'form_name'
        Value = nil
      end>
    object qrySearchFormsform_url: TWideStringField
      FieldName = 'form_url'
      Required = True
      Size = 256
    end
    object qrySearchFormsform_name: TWideStringField
      FieldName = 'form_name'
      Required = True
      Size = 256
    end
    object qrySearchFormsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qrySearchFormsform_id: TIntegerField
      FieldName = 'form_id'
      Required = True
    end
  end
  object qryFormsObjectsTranslations: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  o.object_name, p.property_name,  t.*'
      '  FROM '
      '  system.app_forms_objects_translations t, '
      '  system.app_forms_objects_properties p,'
      '  system.app_forms_objects o'
      '  where '
      '  o.form_id = :form_id'
      '  and'
      '  p.object_id = o.object_id'
      '  and '
      '  t.property_id = p.property_id '
      '  and '
      '  language_id = :language_id')
    Left = 440
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'form_id'
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'language_id'
        Value = nil
      end>
    object qryFormsObjectsTranslationsobject_name: TWideStringField
      FieldName = 'object_name'
      ReadOnly = True
      Size = 128
    end
    object qryFormsObjectsTranslationsproperty_name: TWideStringField
      FieldName = 'property_name'
      ReadOnly = True
      Size = 64
    end
    object qryFormsObjectsTranslationsproperty_id: TLargeintField
      FieldName = 'property_id'
      Required = True
    end
    object qryFormsObjectsTranslationslanguage_id: TSmallintField
      FieldName = 'language_id'
      Required = True
    end
    object qryFormsObjectsTranslationsstringvalue: TWideStringField
      FieldName = 'stringvalue'
      Size = 2048
    end
    object qryFormsObjectsTranslationstextvalue: TWideMemoField
      FieldName = 'textvalue'
      BlobType = ftWideMemo
    end
  end
  object qryLanguages: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT iso_language_code, iso_language_code2, language_name, lan' +
        'guage_id'
      '  FROM jpublic.languages;')
    Left = 64
    Top = 360
    object qryLanguagesiso_language_code: TWideStringField
      FieldName = 'iso_language_code'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryLanguagesiso_language_code2: TWideStringField
      FieldName = 'iso_language_code2'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryLanguageslanguage_name: TWideStringField
      FieldName = 'language_name'
      Required = True
      Size = 128
    end
    object qryLanguageslanguage_id: TSmallintField
      FieldName = 'language_id'
      Required = True
    end
  end
  object JanuaIsoLanguageCountry1: TJanuaIsoLanguageCountry
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    OnChangeCulture = JanuaIsoLanguageCountry1ChangeCulture
    Left = 200
    Top = 376
  end
end
