inherited dmPgHealth: TdmPgHealth
  Height = 528
  Width = 827
  inherited PgErgoConnection: TPgConnection
    Schema = 'health'
    EncryptedPassword = '99FFCBFF91FF94FF8AFF93FFCFFF'
  end
  object dsBranches: TDataSource
    DataSet = tbBranches
    Left = 160
    Top = 200
  end
  object tbBranches: TPgTable
    TableName = 'health.branches'
    DataTypeMap = <
      item
        DBType = 521
        FieldType = ftTimeStamp
      end
      item
        DBType = 520
        FieldType = ftTimeStamp
      end
      item
        DBType = 519
        FieldType = ftDateTime
      end>
    Connection = PgErgoConnection
    IndexFieldNames = 'branch_name'
    AfterOpen = tbBranchesAfterOpen
    Left = 160
    Top = 144
    object tbBranchesbranch_id: TSmallintField
      FieldName = 'branch_id'
      Required = True
    end
    object tbBranchesbranch_code: TWideStringField
      FieldName = 'branch_code'
      Size = 10
    end
    object tbBranchesbranch_name: TWideStringField
      FieldName = 'branch_name'
      Required = True
      Size = 100
    end
    object tbBranchesinsert_date: TSQLTimeStampField
      FieldName = 'insert_date'
    end
    object tbBranchesupdate_date: TSQLTimeStampField
      FieldName = 'update_date'
    end
  end
  object tbBranchSpecialities: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO branch_specialities'
      
        '  (branch_id, speciality_id, speciality_code, speciality_name, i' +
        'nsert_date, update_date)'
      'VALUES'
      
        '  (:branch_id, :speciality_id, :speciality_code, :speciality_nam' +
        'e, :insert_date, :update_date)')
    SQLDelete.Strings = (
      'DELETE FROM branch_specialities'
      'WHERE'
      '  speciality_id = :Old_speciality_id')
    SQLUpdate.Strings = (
      'UPDATE branch_specialities'
      'SET'
      
        '  branch_id = :branch_id, speciality_id = :speciality_id, specia' +
        'lity_code = :speciality_code, speciality_name = :speciality_name' +
        ', insert_date = :insert_date, update_date = :update_date'
      'WHERE'
      '  speciality_id = :Old_speciality_id')
    SQLRefresh.Strings = (
      
        'SELECT branch_id, speciality_id, speciality_code, speciality_nam' +
        'e, insert_date, update_date FROM branch_specialities'
      'WHERE'
      '  speciality_id = :speciality_id')
    SQLLock.Strings = (
      'SELECT * FROM branch_specialities'
      'WHERE'
      '  speciality_id = :Old_speciality_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM branch_specialities'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from branch_specialities where branch_id = :branch_id')
    MasterFields = 'branch_id'
    DetailFields = 'branch_id'
    MasterSource = dsBranches
    Left = 160
    Top = 256
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'branch_id'
        ParamType = ptInput
        Value = nil
      end>
    object tbBranchSpecialitiesbranch_id: TSmallintField
      FieldName = 'branch_id'
      Required = True
    end
    object tbBranchSpecialitiesspeciality_id: TSmallintField
      FieldName = 'speciality_id'
      Required = True
    end
    object tbBranchSpecialitiesspeciality_code: TWideStringField
      FieldName = 'speciality_code'
      Size = 6
    end
    object tbBranchSpecialitiesspeciality_name: TWideStringField
      FieldName = 'speciality_name'
      Required = True
      Size = 100
    end
    object tbBranchSpecialitiesinsert_date: TSQLTimeStampField
      FieldName = 'insert_date'
    end
    object tbBranchSpecialitiesupdate_date: TSQLTimeStampField
      FieldName = 'update_date'
    end
  end
  object health_districts: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT district_id, region_id, iso_district_code, '
      '       district_name, local_district_code, '
      '       numberplate_code'
      '  FROM jpublic.districts j where j.region_id = :region_id')
    MasterFields = 'region_id'
    DetailFields = 'region_id'
    MasterSource = dsRegions
    Left = 264
    Top = 280
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'region_id'
        ParamType = ptInput
        Value = 6
      end>
    object health_districtsdistrict_id: TSmallintField
      FieldName = 'district_id'
      Required = True
    end
    object health_districtsregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object health_districtsiso_district_code: TWideStringField
      FieldName = 'iso_district_code'
      Size = 6
    end
    object health_districtsdistrict_name: TWideStringField
      FieldName = 'district_name'
      Size = 256
    end
    object health_districtslocal_district_code: TWideStringField
      FieldName = 'local_district_code'
      Size = 10
    end
    object health_districtsnumberplate_code: TWideStringField
      FieldName = 'numberplate_code'
      Size = 4
    end
  end
  object dsHealthDistricts: TDataSource
    DataSet = health_districts
    Left = 160
    Top = 312
  end
  object prcCreateNewDoctor: TPgStoredProc
    StoredProcName = 'health.add_doctor'
    SQL.Strings = (
      
        'SELECT health.add_doctor(:p_firstname, :p_lastname, :p_organisat' +
        'ion_number, :p_organisation_date, :p_organisation_id, :p_distric' +
        't_id, :p_council_id)')
    Left = 160
    Top = 368
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_firstname'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_lastname'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_organisation_number'
        ParamType = ptInput
        Value = nil
      end
      item
        Name = 'p_organisation_date'
        ParamType = ptInput
        Value = '01/01/2000'
        ExtDataType = 101
      end
      item
        DataType = ftSmallint
        Name = 'p_organisation_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'p_district_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'p_council_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'health.add_doctor:0'
  end
  object tbLocalOrganizations: TPgTable
    TableName = 'health.organizations'
    MasterFields = 'region_id'
    DetailFields = 'region_id'
    MasterSource = dsRegions
    Connection = PgErgoConnection
    Left = 264
    Top = 168
    object tbLocalOrganizationsorganization_id: TSmallintField
      FieldName = 'organization_id'
      Required = True
    end
    object tbLocalOrganizationsorganization_code: TWideStringField
      FieldName = 'organization_code'
    end
    object tbLocalOrganizationsmaster_organization_id: TSmallintField
      FieldName = 'master_organization_id'
    end
    object tbLocalOrganizationscountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object tbLocalOrganizationsregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object tbLocalOrganizationsorganization_name: TWideStringField
      FieldName = 'organization_name'
      Size = 128
    end
    object tbLocalOrganizationsdistrict_id: TSmallintField
      FieldName = 'district_id'
    end
    object tbLocalOrganizationstown_id: TIntegerField
      FieldName = 'town_id'
    end
  end
  object tbRegions: TPgTable
    TableName = 'jpublic.regions'
    OrderFields = 'region_name'
    Connection = PgErgoConnection
    FilterSQL = 'country_id = 1'
    Left = 264
    Top = 56
    object tbRegionsregion_id: TSmallintField
      FieldName = 'region_id'
      Required = True
    end
    object tbRegionsregion_name: TWideStringField
      FieldName = 'region_name'
      Required = True
      Size = 128
    end
    object tbRegionsiso_region_code: TWideStringField
      FieldName = 'iso_region_code'
    end
    object tbRegionslocal_region_code: TWideStringField
      FieldName = 'local_region_code'
    end
    object tbRegionscountry_id: TSmallintField
      FieldName = 'country_id'
    end
  end
  object dsRegions: TDataSource
    DataSet = tbRegions
    Left = 264
    Top = 112
  end
  object tbHealthProfile: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO health.health_profile'
      
        '  (db_schema_id, db_user_id, organization_id, council_id, associ' +
        'ation_id, town_id, association_number, association_date, group_i' +
        'd, country_id, speciality_id, sub_speciality_id, region_id, dist' +
        'rict_id, council_number, council_date)'
      'VALUES'
      
        '  (:db_schema_id, :db_user_id, :organization_id, :council_id, :a' +
        'ssociation_id, :town_id, :association_number, :association_date,' +
        ' :group_id, :country_id, :speciality_id, :sub_speciality_id, :re' +
        'gion_id, :district_id, :council_number, :council_date)')
    SQLDelete.Strings = (
      'DELETE FROM health.health_profile'
      'WHERE'
      
        '  db_schema_id = :Old_db_schema_id AND db_user_id = :Old_db_user' +
        '_id')
    SQLUpdate.Strings = (
      'UPDATE health.health_profile'
      'SET'
      
        '  db_schema_id = :db_schema_id, db_user_id = :db_user_id, organi' +
        'zation_id = :organization_id, council_id = :council_id, associat' +
        'ion_id = :association_id, town_id = :town_id, association_number' +
        ' = :association_number, association_date = :association_date, gr' +
        'oup_id = :group_id, country_id = :country_id, speciality_id = :s' +
        'peciality_id, sub_speciality_id = :sub_speciality_id, region_id ' +
        '= :region_id, district_id = :district_id, council_number = :coun' +
        'cil_number, council_date = :council_date'
      'WHERE'
      
        '  db_schema_id = :Old_db_schema_id AND db_user_id = :Old_db_user' +
        '_id')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, db_user_id, organization_id, council_id, as' +
        'sociation_id, town_id, association_number, association_date, gro' +
        'up_id, country_id, speciality_id, sub_speciality_id, region_id, ' +
        'district_id, council_number, council_date FROM health.health_pro' +
        'file'
      'WHERE'
      '  db_schema_id = :db_schema_id AND db_user_id = :db_user_id')
    SQLLock.Strings = (
      'SELECT * FROM health.health_profile'
      'WHERE'
      
        '  db_schema_id = :Old_db_schema_id AND db_user_id = :Old_db_user' +
        '_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM health.health_profile'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT p.* FROM health.health_profile p, system.db_user_sessions' +
        ' s'
      'WHERE '
      '   s.db_session_key = :db_session_key'
      '   and '
      '   p.db_schema_id = s.db_schema_id'
      '   and '
      '   p.db_user_id = :db_user_id')
    BeforeOpen = tbHealthProfileBeforeOpen
    OnNewRecord = tbHealthProfileNewRecord
    Left = 160
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'db_session_key'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'db_user_id'
        ParamType = ptInput
        Value = nil
      end>
    object tbHealthProfiledb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object tbHealthProfiledb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object tbHealthProfileorganization_id: TSmallintField
      FieldName = 'organization_id'
    end
    object tbHealthProfilecouncil_id: TSmallintField
      FieldName = 'council_id'
    end
    object tbHealthProfileassociation_id: TSmallintField
      FieldName = 'association_id'
    end
    object tbHealthProfiletown_id: TIntegerField
      FieldName = 'town_id'
    end
    object tbHealthProfileassociation_number: TWideStringField
      FieldName = 'association_number'
    end
    object tbHealthProfileassociation_date: TDateField
      FieldName = 'association_date'
    end
    object tbHealthProfilegroup_id: TSmallintField
      FieldName = 'group_id'
    end
    object tbHealthProfilecountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object tbHealthProfilespeciality_id: TSmallintField
      FieldName = 'speciality_id'
    end
    object tbHealthProfilesub_speciality_id: TSmallintField
      FieldName = 'sub_speciality_id'
    end
    object tbHealthProfileregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object tbHealthProfiledistrict_id: TIntegerField
      FieldName = 'district_id'
    end
    object tbHealthProfilecouncil_number: TWideStringField
      FieldName = 'council_number'
    end
    object tbHealthProfilecouncil_date: TDateField
      FieldName = 'council_date'
    end
  end
  object qryAssociations: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      '  FROM health.associations'
      'where country_id = :country_id')
    Left = 360
    Top = 368
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'country_id'
        ParamType = ptInput
        Value = 1
      end>
    object qryAssociationsassociation_id: TSmallintField
      FieldName = 'association_id'
      Required = True
    end
    object qryAssociationsassociation_name: TWideStringField
      FieldName = 'association_name'
      Size = 128
    end
    object qryAssociationscountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object qryAssociationstype_id: TSmallintField
      FieldName = 'type_id'
    end
    object qryAssociationsaddress: TWideStringField
      FieldName = 'address'
      Size = 256
    end
    object qryAssociationsurl: TWideStringField
      FieldName = 'url'
      Size = 512
    end
    object qryAssociationsemail: TWideStringField
      FieldName = 'email'
      Size = 512
    end
    object qryAssociationsphone: TWideStringField
      FieldName = 'phone'
    end
    object qryAssociationsfax: TWideStringField
      FieldName = 'fax'
    end
    object qryAssociationstown_id: TIntegerField
      FieldName = 'town_id'
    end
    object qryAssociationsdistrict_id: TSmallintField
      FieldName = 'district_id'
    end
    object qryAssociationsregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object qryAssociationsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryAssociationsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryAssociationspostal_code: TWideStringField
      FieldName = 'postal_code'
    end
    object qryAssociationscode: TWideStringField
      FieldName = 'code'
      Size = 12
    end
  end
  object cdsBranches: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 56
    object cdsBranchesbranch_id: TSmallintField
      FieldName = 'branch_id'
      Required = True
    end
    object cdsBranchesbranch_code: TWideStringField
      FieldName = 'branch_code'
      Size = 10
    end
    object cdsBranchesbranch_name: TWideStringField
      FieldName = 'branch_name'
      Required = True
      Size = 100
    end
    object cdsBranchesinsert_date: TSQLTimeStampField
      FieldName = 'insert_date'
    end
    object cdsBranchesupdate_date: TSQLTimeStampField
      FieldName = 'update_date'
    end
    object cdsBranchestbBranchSpecialities: TDataSetField
      FieldName = 'tbBranchSpecialities'
    end
  end
  object dspBranches: TDataSetProvider
    DataSet = tbBranches
    Left = 360
    Top = 32
  end
  object cdsBranchSpecialities: TClientDataSet
    Aggregates = <>
    DataSetField = cdsBranchestbBranchSpecialities
    Params = <>
    Left = 456
    Top = 112
    object cdsBranchSpecialitiesbranch_id: TSmallintField
      FieldName = 'branch_id'
      Required = True
    end
    object cdsBranchSpecialitiesspeciality_id: TSmallintField
      FieldName = 'speciality_id'
      Required = True
    end
    object cdsBranchSpecialitiesspeciality_code: TWideStringField
      FieldName = 'speciality_code'
      Size = 6
    end
    object cdsBranchSpecialitiesspeciality_name: TWideStringField
      FieldName = 'speciality_name'
      Required = True
      Size = 100
    end
    object cdsBranchSpecialitiesinsert_date: TSQLTimeStampField
      FieldName = 'insert_date'
    end
    object cdsBranchSpecialitiesupdate_date: TSQLTimeStampField
      FieldName = 'update_date'
    end
  end
  object dspAssociations: TDataSetProvider
    DataSet = qryAssociations
    Left = 360
    Top = 312
  end
  object cdsAssociations: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 168
    object cdsAssociationsassociation_id: TSmallintField
      FieldName = 'association_id'
      Required = True
    end
    object cdsAssociationsassociation_name: TWideStringField
      FieldName = 'association_name'
      Size = 128
    end
    object cdsAssociationscountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object cdsAssociationstype_id: TSmallintField
      FieldName = 'type_id'
    end
    object cdsAssociationsaddress: TWideStringField
      FieldName = 'address'
      Size = 256
    end
    object cdsAssociationsurl: TWideStringField
      FieldName = 'url'
      Size = 512
    end
    object cdsAssociationsemail: TWideStringField
      FieldName = 'email'
      Size = 512
    end
    object cdsAssociationsphone: TWideStringField
      FieldName = 'phone'
    end
    object cdsAssociationsfax: TWideStringField
      FieldName = 'fax'
    end
    object cdsAssociationstown_id: TIntegerField
      FieldName = 'town_id'
    end
    object cdsAssociationsdistrict_id: TSmallintField
      FieldName = 'district_id'
    end
    object cdsAssociationsregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object cdsAssociationsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object cdsAssociationsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object cdsAssociationspostal_code: TWideStringField
      FieldName = 'postal_code'
    end
    object cdsAssociationscode: TWideStringField
      FieldName = 'code'
      Size = 12
    end
  end
  object qrySpecialities: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from health.specialities')
    Left = 360
    Top = 88
    object qrySpecialitiesid: TSmallintField
      FieldName = 'id'
      Required = True
    end
    object qrySpecialitiescode: TWideStringField
      FieldName = 'code'
      Size = 12
    end
    object qrySpecialitiesname: TWideStringField
      FieldName = 'name'
      Required = True
      Size = 100
    end
    object qrySpecialitiesmain_discipline_id: TSmallintField
      FieldName = 'main_discipline_id'
    end
  end
  object dsSpecialities: TDataSource
    DataSet = qrySpecialities
    Left = 360
    Top = 144
  end
  object qrySubSpecialities: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from health.sub_specialities '
      'where speciality_id = :speciality_id')
    MasterFields = 'speciality_id'
    DetailFields = 'speciality_id'
    MasterSource = dsSpecialities
    Left = 360
    Top = 200
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'speciality_id'
        ParamType = ptInput
        Value = 66
      end>
    object qrySubSpecialitiesid: TSmallintField
      FieldName = 'id'
      Required = True
    end
    object qrySubSpecialitiesspeciality_id: TSmallintField
      FieldName = 'speciality_id'
      Required = True
    end
    object qrySubSpecialitiesname: TWideStringField
      FieldName = 'name'
      Required = True
      Size = 100
    end
  end
  object cdsSpecialities: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 224
    object cdsSpecialitiesspeciality_id: TSmallintField
      FieldName = 'speciality_id'
      Required = True
    end
    object cdsSpecialitiesspeciality_code: TWideStringField
      FieldName = 'speciality_code'
      Size = 12
    end
    object cdsSpecialitiesspeciality_name: TWideStringField
      FieldName = 'speciality_name'
      Required = True
      Size = 100
    end
    object cdsSpecialitiesqrySubSpecialities: TDataSetField
      FieldName = 'qrySubSpecialities'
    end
  end
  object dspSpecialities: TDataSetProvider
    DataSet = qrySpecialities
    Left = 360
    Top = 256
  end
  object qryCouncils: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      '  FROM health.medical_councils'
      'where country_id = :country_id')
    Left = 264
    Top = 336
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'country_id'
        ParamType = ptInput
        Value = 1
      end>
    object qryCouncilscouncil_id: TSmallintField
      FieldName = 'council_id'
      Required = True
    end
    object qryCouncilscountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object qryCouncilscouncil_name: TWideStringField
      FieldName = 'council_name'
      Size = 128
    end
    object qryCouncilsregion_id: TSmallintField
      FieldName = 'region_id'
      Required = True
    end
  end
  object cdsSubSpecialities: TClientDataSet
    Aggregates = <>
    DataSetField = cdsSpecialitiesqrySubSpecialities
    Params = <>
    Left = 456
    Top = 280
    object cdsSubSpecialitiessubspeciality_id: TSmallintField
      FieldName = 'subspeciality_id'
      Required = True
    end
    object cdsSubSpecialitiesspeciality_id: TSmallintField
      FieldName = 'speciality_id'
      Required = True
    end
    object cdsSubSpecialitiessubspeciality_name: TWideStringField
      FieldName = 'subspeciality_name'
      Required = True
      Size = 100
    end
  end
  object dspHealthRegions: TDataSetProvider
    DataSet = tbRegions
    Left = 264
    Top = 224
  end
  object cdsHealthRegions: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 552
    Top = 88
    object cdsHealthRegionsregion_id: TSmallintField
      FieldName = 'region_id'
      Required = True
    end
    object cdsHealthRegionsregion_name: TWideStringField
      FieldName = 'region_name'
      Required = True
      Size = 128
    end
    object cdsHealthRegionsiso_region_code: TWideStringField
      FieldName = 'iso_region_code'
    end
    object cdsHealthRegionslocal_region_code: TWideStringField
      FieldName = 'local_region_code'
    end
    object cdsHealthRegionscountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object cdsHealthRegionshealth_districts: TDataSetField
      FieldName = 'health_districts'
    end
    object cdsHealthRegionstbLocalOrganizations: TDataSetField
      FieldName = 'tbLocalOrganizations'
    end
  end
  object cdsLocalOrganizations: TClientDataSet
    Aggregates = <>
    DataSetField = cdsHealthRegionstbLocalOrganizations
    Params = <>
    Left = 552
    Top = 144
    object cdsLocalOrganizationsorganization_id: TSmallintField
      FieldName = 'organization_id'
      Required = True
    end
    object cdsLocalOrganizationsorganization_code: TWideStringField
      FieldName = 'organization_code'
    end
    object cdsLocalOrganizationsmaster_organization_id: TSmallintField
      FieldName = 'master_organization_id'
    end
    object cdsLocalOrganizationscountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object cdsLocalOrganizationsregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object cdsLocalOrganizationsorganization_name: TWideStringField
      FieldName = 'organization_name'
      Size = 128
    end
    object cdsLocalOrganizationsdistrict_id: TSmallintField
      FieldName = 'district_id'
    end
    object cdsLocalOrganizationstown_id: TIntegerField
      FieldName = 'town_id'
    end
  end
  object cdsHealthDistricts: TClientDataSet
    Aggregates = <>
    DataSetField = cdsHealthRegionshealth_districts
    Params = <>
    Left = 552
    Top = 200
    object cdsHealthDistrictsdistrict_id: TSmallintField
      FieldName = 'district_id'
      Required = True
    end
    object cdsHealthDistrictsregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object cdsHealthDistrictsiso_district_code: TWideStringField
      FieldName = 'iso_district_code'
      Size = 6
    end
    object cdsHealthDistrictsdistrict_name: TWideStringField
      FieldName = 'district_name'
      Size = 256
    end
    object cdsHealthDistrictslocal_district_code: TWideStringField
      FieldName = 'local_district_code'
      Size = 10
    end
    object cdsHealthDistrictsnumberplate_code: TWideStringField
      FieldName = 'numberplate_code'
      Size = 4
    end
  end
  object cdsCouncils: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 552
    Top = 256
    object cdsCouncilscouncil_id: TSmallintField
      FieldName = 'council_id'
      Required = True
    end
    object cdsCouncilscountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object cdsCouncilscouncil_name: TWideStringField
      FieldName = 'council_name'
      Size = 128
    end
    object cdsCouncilsregion_id: TSmallintField
      FieldName = 'region_id'
      Required = True
    end
  end
  object dspCouncils: TDataSetProvider
    DataSet = qryCouncils
    Left = 264
    Top = 392
  end
  object dsCouncils: TDataSource
    DataSet = cdsCouncils
    Left = 552
    Top = 312
  end
  object dsHealthRegions: TDataSource
    DataSet = cdsHealthRegions
    Left = 648
    Top = 296
  end
  object dsLocalOranizations: TDataSource
    DataSet = cdsLocalOrganizations
    Left = 648
    Top = 352
  end
  object qrySearchDoctor: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO health.health_profile'
      
        '  (db_schema_id, db_user_id, organization_id, council_id, associ' +
        'ation_id, town_id, association_number, association_date, group_i' +
        'd, country_id, speciality_id, sub_speciality_id, region_id, dist' +
        'rict_id)'
      'VALUES'
      
        '  (:db_schema_id, :db_user_id, :organization_id, :council_id, :a' +
        'ssociation_id, :town_id, :association_number, :association_date,' +
        ' :group_id, :country_id, :speciality_id, :sub_speciality_id, :re' +
        'gion_id, :district_id)')
    SQLDelete.Strings = (
      'DELETE FROM health.health_profile'
      'WHERE'
      
        '  db_schema_id = :Old_db_schema_id AND db_user_id = :Old_db_user' +
        '_id')
    SQLUpdate.Strings = (
      'UPDATE health.health_profile'
      'SET'
      
        '  db_schema_id = :db_schema_id, db_user_id = :db_user_id, organi' +
        'zation_id = :organization_id, council_id = :council_id, associat' +
        'ion_id = :association_id, town_id = :town_id, association_number' +
        ' = :association_number, association_date = :association_date, gr' +
        'oup_id = :group_id, country_id = :country_id, speciality_id = :s' +
        'peciality_id, sub_speciality_id = :sub_speciality_id, region_id ' +
        '= :region_id, district_id = :district_id'
      'WHERE'
      
        '  db_schema_id = :Old_db_schema_id AND db_user_id = :Old_db_user' +
        '_id')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, db_user_id, organization_id, council_id, as' +
        'sociation_id, town_id, association_number, association_date, gro' +
        'up_id, country_id, speciality_id, sub_speciality_id, region_id, ' +
        'district_id FROM health.health_profile'
      'WHERE'
      '  db_schema_id = :db_schema_id AND db_user_id = :db_user_id')
    SQLLock.Strings = (
      'SELECT * FROM health.health_profile'
      'WHERE'
      
        '  db_schema_id = :Old_db_schema_id AND db_user_id = :Old_db_user' +
        '_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM health.health_profile'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT p.*, u.title || '#39' '#39' || u.first_name || '#39' '#39' || u.last_name' +
        ' as full_name'
      'FROM '
      '   health.health_profile p, '
      '   system.db_user_sessions s, '
      '   system.db_users_profiles u'
      'WHERE '
      '   s.db_session_key = :db_session_key'
      '  -- and '
      '  -- p.db_schema_id = s.db_schema_id'
      '  -- and '
      ' --  p.db_user_id = :db_user_id'
      '   and'
      '   p.council_number = :p_regnumber'
      '   and'
      '   p.council_id = :p_council_id'
      '   and'
      '   u.db_user_id = p.db_user_id')
    OnNewRecord = tbHealthProfileNewRecord
    Left = 456
    Top = 336
    ParamData = <
      item
        DataType = ftString
        Name = 'db_session_key'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'p_regnumber'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_council_id'
        ParamType = ptInput
        Value = nil
      end>
    object qrySearchDoctordb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qrySearchDoctordb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qrySearchDoctororganization_id: TSmallintField
      FieldName = 'organization_id'
    end
    object qrySearchDoctorcouncil_id: TSmallintField
      FieldName = 'council_id'
    end
    object qrySearchDoctorassociation_id: TSmallintField
      FieldName = 'association_id'
    end
    object qrySearchDoctortown_id: TIntegerField
      FieldName = 'town_id'
    end
    object qrySearchDoctorassociation_number: TWideStringField
      FieldName = 'association_number'
    end
    object qrySearchDoctorassociation_date: TDateField
      FieldName = 'association_date'
    end
    object qrySearchDoctorgroup_id: TSmallintField
      FieldName = 'group_id'
    end
    object qrySearchDoctorcountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object qrySearchDoctorspeciality_id: TSmallintField
      FieldName = 'speciality_id'
    end
    object qrySearchDoctorsub_speciality_id: TSmallintField
      FieldName = 'sub_speciality_id'
    end
    object qrySearchDoctorregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object qrySearchDoctordistrict_id: TIntegerField
      FieldName = 'district_id'
    end
    object qrySearchDoctorcouncil_number: TWideStringField
      FieldName = 'council_number'
    end
    object qrySearchDoctorcouncil_date: TDateField
      FieldName = 'council_date'
    end
    object qrySearchDoctorfull_name: TWideMemoField
      FieldName = 'full_name'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object qrySearchUserProfile: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO system.db_users_profiles'
      
        '  (db_user_id, country_id, region_id, district_id, town_id, firs' +
        't_name, last_name, address_street, address_number, address_posta' +
        'l_code, phone, cellular_phone, work_phone, fax_number, gender_co' +
        'de, birth_date, birth_country_id, birth_region_id, birth_distric' +
        't_id, birth_town_id, public_email, title, search_name, reverse_s' +
        'earch, address_full, latitude, longitude, fiscal_code)'
      'VALUES'
      
        '  (:db_user_id, :country_id, :region_id, :district_id, :town_id,' +
        ' :first_name, :last_name, :address_street, :address_number, :add' +
        'ress_postal_code, :phone, :cellular_phone, :work_phone, :fax_num' +
        'ber, :gender_code, :birth_date, :birth_country_id, :birth_region' +
        '_id, :birth_district_id, :birth_town_id, :public_email, :title, ' +
        ':search_name, :reverse_search, :address_full, :latitude, :longit' +
        'ude, :fiscal_code)')
    SQLDelete.Strings = (
      'DELETE FROM system.db_users_profiles'
      'WHERE'
      '  db_user_id = :Old_db_user_id')
    SQLUpdate.Strings = (
      'UPDATE system.db_users_profiles'
      'SET'
      
        '  db_user_id = :db_user_id, country_id = :country_id, region_id ' +
        '= :region_id, district_id = :district_id, town_id = :town_id, fi' +
        'rst_name = :first_name, last_name = :last_name, address_street =' +
        ' :address_street, address_number = :address_number, address_post' +
        'al_code = :address_postal_code, phone = :phone, cellular_phone =' +
        ' :cellular_phone, work_phone = :work_phone, fax_number = :fax_nu' +
        'mber, gender_code = :gender_code, birth_date = :birth_date, birt' +
        'h_country_id = :birth_country_id, birth_region_id = :birth_regio' +
        'n_id, birth_district_id = :birth_district_id, birth_town_id = :b' +
        'irth_town_id, public_email = :public_email, title = :title, sear' +
        'ch_name = :search_name, reverse_search = :reverse_search, addres' +
        's_full = :address_full, latitude = :latitude, longitude = :longi' +
        'tude, fiscal_code = :fiscal_code'
      'WHERE'
      '  db_user_id = :Old_db_user_id')
    SQLRefresh.Strings = (
      
        'SELECT db_user_id, country_id, region_id, district_id, town_id, ' +
        'first_name, last_name, address_street, address_number, address_p' +
        'ostal_code, phone, cellular_phone, work_phone, fax_number, gende' +
        'r_code, birth_date, birth_country_id, birth_region_id, birth_dis' +
        'trict_id, birth_town_id, public_email, title, search_name, rever' +
        'se_search, address_full, latitude, longitude, fiscal_code FROM s' +
        'ystem.db_users_profiles'
      'WHERE'
      '  db_user_id = :db_user_id')
    SQLLock.Strings = (
      'SELECT * FROM system.db_users_profiles'
      'WHERE'
      '  db_user_id = :Old_db_user_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM system.db_users_profiles'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT p.*'
      '  FROM system.db_users_profiles p, system.db_user_sessions s'
      '  where '
      '    (p.db_user_id = :db_user_id or :db_user_id = 0)')
    DetailFields = 'db_user_id'
    OnNewRecord = qryUserProfileNewRecord
    Left = 160
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_user_id'
        ParamType = ptInput
        Value = nil
      end>
    object qrySearchUserProfiledb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qrySearchUserProfilecountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object qrySearchUserProfileregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object qrySearchUserProfiledistrict_id: TSmallintField
      FieldName = 'district_id'
    end
    object qrySearchUserProfiletown_id: TIntegerField
      FieldName = 'town_id'
    end
    object qrySearchUserProfilefirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qrySearchUserProfilelast_name: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object qrySearchUserProfileaddress_street: TWideStringField
      FieldName = 'address_street'
      Size = 128
    end
    object qrySearchUserProfileaddress_number: TWideStringField
      FieldName = 'address_number'
      Size = 12
    end
    object qrySearchUserProfileaddress_postal_code: TWideStringField
      FieldName = 'address_postal_code'
    end
    object qrySearchUserProfilephone: TWideStringField
      FieldName = 'phone'
    end
    object qrySearchUserProfilecellular_phone: TWideStringField
      FieldName = 'cellular_phone'
    end
    object qrySearchUserProfilework_phone: TWideStringField
      FieldName = 'work_phone'
    end
    object qrySearchUserProfilefax_number: TWideStringField
      FieldName = 'fax_number'
    end
    object qrySearchUserProfilegender_code: TWideStringField
      FieldName = 'gender_code'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qrySearchUserProfilebirth_date: TDateField
      FieldName = 'birth_date'
    end
    object qrySearchUserProfilebirth_country_id: TSmallintField
      FieldName = 'birth_country_id'
    end
    object qrySearchUserProfilebirth_region_id: TSmallintField
      FieldName = 'birth_region_id'
    end
    object qrySearchUserProfilebirth_district_id: TSmallintField
      FieldName = 'birth_district_id'
    end
    object qrySearchUserProfilebirth_town_id: TIntegerField
      FieldName = 'birth_town_id'
    end
    object qrySearchUserProfilepublic_email: TWideStringField
      FieldName = 'public_email'
      Size = 256
    end
    object qrySearchUserProfiletitle: TWideStringField
      FieldName = 'title'
      Size = 30
    end
    object qrySearchUserProfilesearch_name: TWideStringField
      FieldName = 'search_name'
      Size = 256
    end
    object qrySearchUserProfilereverse_search: TWideStringField
      FieldName = 'reverse_search'
      Size = 256
    end
    object qrySearchUserProfileaddress_full: TWideStringField
      FieldName = 'address_full'
      Size = 2048
    end
    object qrySearchUserProfilelatitude: TFloatField
      FieldName = 'latitude'
    end
    object qrySearchUserProfilelongitude: TFloatField
      FieldName = 'longitude'
    end
    object qrySearchUserProfilefiscal_code: TWideStringField
      FieldName = 'fiscal_code'
    end
    object qrySearchUserProfilesmssent: TBooleanField
      FieldName = 'smssent'
    end
    object qrySearchUserProfilesmsconfirmed: TBooleanField
      FieldName = 'smsconfirmed'
    end
    object qrySearchUserProfilesmsdate: TSQLTimeStampField
      FieldName = 'smsdate'
    end
    object qrySearchUserProfilesmschecknumber: TWideStringField
      FieldName = 'smschecknumber'
      Size = 4
    end
    object qrySearchUserProfileaddress_town: TWideStringField
      FieldName = 'address_town'
      Size = 256
    end
  end
  object qryNotifications: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT n.id, n.type_id, n.title, n.message, n.db_schema_id, n.db' +
        '_user_id, n.datetime, '
      
        '       read, booking_id, solved, from_user_id, booking_action, t' +
        '.level, t.type_name'
      '  FROM health.notifications n, health.notifications_types t'
      ' where t.id = n.type_id and n.db_user_id = :db_user_id'
      ' order by read, t.level ')
    Left = 456
    Top = 392
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_user_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryNotificationsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryNotificationstype_id: TSmallintField
      FieldName = 'type_id'
    end
    object qryNotificationstitle: TWideStringField
      FieldName = 'title'
      Size = 128
    end
    object qryNotificationsmessage: TWideMemoField
      FieldName = 'message'
      BlobType = ftWideMemo
    end
    object qryNotificationsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryNotificationsdb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
    object qryNotificationsdatetime: TSQLTimeStampField
      FieldName = 'datetime'
    end
    object qryNotificationsread: TBooleanField
      FieldName = 'read'
    end
    object qryNotificationsbooking_id: TLargeintField
      FieldName = 'booking_id'
    end
    object qryNotificationssolved: TBooleanField
      FieldName = 'solved'
    end
    object qryNotificationsfrom_user_id: TIntegerField
      FieldName = 'from_user_id'
    end
    object qryNotificationsbooking_action: TSmallintField
      FieldName = 'booking_action'
    end
    object qryNotificationslevel: TSmallintField
      FieldName = 'level'
      ReadOnly = True
    end
    object qryNotificationstype_name: TWideStringField
      FieldName = 'type_name'
      ReadOnly = True
      Required = True
      Size = 30
    end
  end
end
