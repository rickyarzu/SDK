inherited dmPgAnagraphPharmacies: TdmPgAnagraphPharmacies
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = '99FFCBFF91FF94FF8AFF93FFCFFF'
  end
  inherited qryUserProfile: TUniQuery
    Top = 304
  end
  inherited qryUser: TUniQuery
    Top = 248
  end
  object qryPharmaciesWebsites: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO health.an_pharmacies_website'
      
        '  (anagraph_id, web_title, description, meta_description, focus_' +
        'keyword, slug, timetable, districts)'
      'VALUES'
      
        '  (:anagraph_id, :web_title, :description, :meta_description, :f' +
        'ocus_keyword, :slug, :timetable, :districts)')
    SQLDelete.Strings = (
      'DELETE FROM health.an_pharmacies_website'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLUpdate.Strings = (
      'UPDATE health.an_pharmacies_website'
      'SET'
      
        '  anagraph_id = :anagraph_id, web_title = :web_title, descriptio' +
        'n = :description, meta_description = :meta_description, focus_ke' +
        'yword = :focus_keyword, slug = :slug, timetable = :timetable, di' +
        'stricts = :districts'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLLock.Strings = (
      'SELECT * FROM health.an_pharmacies_website'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT anagraph_id, web_title, description, meta_description, fo' +
        'cus_keyword, slug, timetable, districts FROM health.an_pharmacie' +
        's_website'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM health.an_pharmacies_website'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT a.*'
      '  FROM health.an_pharmacies_website a'
      '  where '
      '     a.anagraph_id = :anagraph_id')
    OnNewRecord = qryPharmaciesWebsitesNewRecord
    Left = 176
    Top = 24
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryPharmaciesWebsitesanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryPharmaciesWebsitesweb_title: TWideStringField
      FieldName = 'web_title'
      Size = 128
    end
    object qryPharmaciesWebsitesdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object qryPharmaciesWebsitesmeta_description: TWideStringField
      FieldName = 'meta_description'
      Size = 256
    end
    object qryPharmaciesWebsitesfocus_keyword: TWideStringField
      FieldName = 'focus_keyword'
      Size = 128
    end
    object qryPharmaciesWebsitesslug: TWideStringField
      FieldName = 'slug'
      Size = 128
    end
    object qryPharmaciesWebsitestimetable: TWideStringField
      FieldName = 'timetable'
      Size = 256
    end
    object qryPharmaciesWebsitesdistricts: TWideStringField
      FieldName = 'districts'
      Size = 256
    end
  end
  object qryServices: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO health.pharmacy_services'
      '  (service_id, service_name)'
      'VALUES'
      '  (:service_id, :service_name)')
    SQLDelete.Strings = (
      'DELETE FROM health.pharmacy_services'
      'WHERE'
      '  service_id = :Old_service_id')
    SQLUpdate.Strings = (
      'UPDATE health.pharmacy_services'
      'SET'
      '  service_id = :service_id, service_name = :service_name'
      'WHERE'
      '  service_id = :Old_service_id')
    SQLLock.Strings = (
      'SELECT * FROM health.pharmacy_services'
      'WHERE'
      '  service_id = :Old_service_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT service_id, service_name FROM health.pharmacy_services'
      'WHERE'
      '  service_id = :service_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM health.pharmacy_services'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT s.*'
      '  FROM health.pharmacy_services s'
      '  order by s.service_name desc')
    Left = 176
    Top = 200
    object qryServicesservice_id: TSmallintField
      FieldName = 'service_id'
      Required = True
    end
    object qryServicesservice_name: TWideStringField
      FieldName = 'service_name'
      Size = 512
    end
  end
  object qrySections: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO health.pharmacy_sections'
      '  (section_id, section_name, image_id)'
      'VALUES'
      '  (:section_id, :section_name, :image_id)')
    SQLDelete.Strings = (
      'DELETE FROM health.pharmacy_sections'
      'WHERE'
      '  section_id = :Old_section_id')
    SQLUpdate.Strings = (
      'UPDATE health.pharmacy_sections'
      'SET'
      
        '  section_id = :section_id, section_name = :section_name, image_' +
        'id = :image_id'
      'WHERE'
      '  section_id = :Old_section_id')
    SQLLock.Strings = (
      'SELECT * FROM health.pharmacy_sections'
      'WHERE'
      '  section_id = :Old_section_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT section_id, section_name, image_id FROM health.pharmacy_s' +
        'ections'
      'WHERE'
      '  section_id = :section_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM health.pharmacy_sections'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT s.*'
      '  FROM health.pharmacy_sections s '
      '  order by section_name asc')
    Left = 176
    Top = 256
    object qrySectionssection_id: TSmallintField
      FieldName = 'section_id'
      Required = True
    end
    object qrySectionssection_name: TWideStringField
      FieldName = 'section_name'
      Size = 128
    end
    object qrySectionsimage_id: TLargeintField
      FieldName = 'image_id'
    end
  end
  object qryPharmaciesServices: TUniQuery
    Connection = PgErgoConnection
    Left = 176
    Top = 88
  end
  object qryPharmaciesSections: TUniQuery
    Connection = PgErgoConnection
    Left = 176
    Top = 144
  end
end
