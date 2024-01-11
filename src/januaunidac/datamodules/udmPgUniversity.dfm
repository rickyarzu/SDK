inherited dmPgUniversity: TdmPgUniversity
  Height = 535
  Width = 624
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = '99FFCBFF91FF94FF8AFF93FFCFFF'
  end
  object qryUniversities: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      '  FROM uni.universities;')
    Left = 336
    Top = 8
    object qryUniversitiesuni_id: TSmallintField
      FieldName = 'uni_id'
      Required = True
    end
    object qryUniversitiesname: TWideStringField
      FieldName = 'name'
      Size = 512
    end
    object qryUniversitiescountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object qryUniversitiesregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object qryUniversitiestown_id: TIntegerField
      FieldName = 'town_id'
    end
    object qryUniversitieslogo_image_id: TLargeintField
      FieldName = 'logo_image_id'
      Required = True
    end
  end
  object dsUniversities: TDataSource
    DataSet = qryUniversities
    Left = 336
    Top = 64
  end
  object qryFaculties: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      '  FROM uni.faculties'
      '  where uni_id = :uni_id;')
    MasterSource = dsUniversities
    MasterFields = 'uni_id'
    DetailFields = 'uni_id'
    Left = 336
    Top = 120
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'uni_id'
        ParamType = ptInput
        Value = 1
      end>
    object qryFacultiesfaculty_id: TSmallintField
      FieldName = 'faculty_id'
      Required = True
    end
    object qryFacultiesfaculty_name: TWideMemoField
      FieldName = 'faculty_name'
      BlobType = ftWideMemo
    end
    object qryFacultiesuni_id: TSmallintField
      FieldName = 'uni_id'
    end
    object qryFacultiestown_id: TIntegerField
      FieldName = 'town_id'
      Required = True
    end
  end
  object dsFaculties: TDataSource
    DataSet = qryFaculties
    Left = 336
    Top = 176
  end
  object qryModules: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      '  FROM uni.modules;')
    MasterSource = dsFaculties
    MasterFields = 'faculty_id'
    DetailFields = 'faculty_id'
    Left = 336
    Top = 232
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'faculty_id'
        ParamType = ptInput
        Value = 11
      end>
    object qryModulesmodule_id: TSmallintField
      FieldName = 'module_id'
    end
    object qryModulesfaculty_id: TSmallintField
      FieldName = 'faculty_id'
    end
    object qryModulesmodule_name: TWideStringField
      FieldName = 'module_name'
      Size = 512
    end
    object qryModulestown_id: TIntegerField
      FieldName = 'town_id'
      Required = True
    end
  end
  object dsModules: TDataSource
    DataSet = qryModules
    Left = 336
    Top = 288
  end
  object dspUniversities: TDataSetProvider
    DataSet = qryUniversities
    Left = 336
    Top = 344
  end
  object cdsUniversities: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUniversities'
    Left = 216
    Top = 152
    object cdsUniversitiesuni_id: TSmallintField
      FieldName = 'uni_id'
      Required = True
    end
    object cdsUniversitiesname: TWideStringField
      FieldName = 'name'
      Size = 512
    end
    object cdsUniversitiescountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object cdsUniversitiesregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object cdsUniversitiestown_id: TIntegerField
      FieldName = 'town_id'
    end
    object cdsUniversitieslogo_image_id: TLargeintField
      FieldName = 'logo_image_id'
      Required = True
    end
    object cdsUniversitiesqryFaculties: TDataSetField
      FieldName = 'qryFaculties'
    end
  end
  object cdsFaculties: TClientDataSet
    Aggregates = <>
    DataSetField = cdsUniversitiesqryFaculties
    Params = <>
    Left = 216
    Top = 96
    object cdsFacultiesfaculty_id: TSmallintField
      FieldName = 'faculty_id'
      Required = True
    end
    object cdsFacultiesfaculty_name: TWideMemoField
      FieldName = 'faculty_name'
      BlobType = ftWideMemo
    end
    object cdsFacultiesuni_id: TSmallintField
      FieldName = 'uni_id'
    end
    object cdsFacultiestown_id: TIntegerField
      FieldName = 'town_id'
      Required = True
    end
    object cdsFacultiesqryModules: TDataSetField
      FieldName = 'qryModules'
    end
  end
  object cdsModules: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFacultiesqryModules
    Params = <>
    Left = 216
    Top = 40
    object cdsModulesmodule_id: TSmallintField
      FieldName = 'module_id'
    end
    object cdsModulesfaculty_id: TSmallintField
      FieldName = 'faculty_id'
    end
    object cdsModulesmodule_name: TWideStringField
      FieldName = 'module_name'
      Size = 512
    end
    object cdsModulestown_id: TIntegerField
      FieldName = 'town_id'
      Required = True
    end
  end
end
