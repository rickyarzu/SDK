object dmPgAnagraph: TdmPgAnagraph
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 433
  Width = 793
  object qrySearchAddress: TUniQuery
    SQL.Strings = (
      'SELECT s.*'
      '  FROM system.db_users_profiles s'
      
        '  where upper(first_name || '#39' '#39' || last_name) like upper(:p_sear' +
        'ch)')
    Left = 144
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_search'
        Value = nil
      end>
    object qrySearchAddressdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qrySearchAddresscountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object qrySearchAddressregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object qrySearchAddressdistrict_id: TSmallintField
      FieldName = 'district_id'
    end
    object qrySearchAddresstown_id: TIntegerField
      FieldName = 'town_id'
    end
    object qrySearchAddressfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qrySearchAddresslast_name: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object qrySearchAddressaddress_street: TWideStringField
      FieldName = 'address_street'
      Size = 128
    end
    object qrySearchAddressaddress_number: TWideStringField
      FieldName = 'address_number'
      Size = 12
    end
    object qrySearchAddressaddress_postal_code: TWideStringField
      FieldName = 'address_postal_code'
    end
    object qrySearchAddressphone: TWideStringField
      FieldName = 'phone'
    end
    object qrySearchAddresscellular_phone: TWideStringField
      FieldName = 'cellular_phone'
    end
    object qrySearchAddresswork_phone: TWideStringField
      FieldName = 'work_phone'
    end
    object qrySearchAddressfax_number: TWideStringField
      FieldName = 'fax_number'
    end
    object qrySearchAddressgender_code: TWideStringField
      FieldName = 'gender_code'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qrySearchAddressbirth_date: TUniDateField
      FieldName = 'birth_date'
    end
    object qrySearchAddressbirth_country_id: TSmallintField
      FieldName = 'birth_country_id'
    end
    object qrySearchAddressbirth_region_id: TSmallintField
      FieldName = 'birth_region_id'
    end
    object qrySearchAddressbirth_district_id: TSmallintField
      FieldName = 'birth_district_id'
    end
    object qrySearchAddressbirth_town_id: TIntegerField
      FieldName = 'birth_town_id'
    end
  end
end
