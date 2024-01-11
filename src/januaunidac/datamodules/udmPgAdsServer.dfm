inherited dmPgAdsServer: TdmPgAdsServer
  inherited PgErgoConnection: TJanuaUniConnection
    SpecificOptions.Strings = (
      'PostgreSQL.UseUnicode=True')
    Top = 56
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited tbUserSessionRoles: TUniTable
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'db_schema_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'db_user_id'
        Value = nil
      end>
  end
  inherited dsUserSession: TDataSource
    Top = 168
  end
  inherited qryUserSession: TUniQuery
    Top = 112
  end
  inherited qryUserProfile: TUniQuery
    Top = 280
  end
  inherited qryUser: TUniQuery
    Top = 336
  end
  inherited qryTowns: TUniQuery
    Top = 408
  end
  inherited testTable: TUniTable
    Top = 464
  end
  inherited PgUni: TPostgreSQLUniProvider
    Left = 64
    Top = 0
  end
  object spAds: TUniStoredProc
    StoredProcName = 'ads.adsfrombanner'
    SQL.Strings = (
      'SELECT ads.adsfrombanner(:urlbanner)')
    Connection = PgErgoConnection
    Left = 216
    Top = 117
    ParamData = <
      item
        DataType = ftString
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftString
        Name = 'urlbanner'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'ads.adsfrombanner:0'
  end
  object spBanner: TUniStoredProc
    StoredProcName = 'ads.banner'
    SQL.Strings = (
      
        'SELECT ads.banner(:ip, :site_id, :site_key, :page_location_id, :' +
        'headers)')
    Connection = PgErgoConnection
    Left = 214
    Top = 61
    ParamData = <
      item
        DataType = ftString
        Name = 'result'
        ParamType = ptResult
        Value = 
          'http://www.ergomercator.com/wp-content/uploads/2014/11/horus_gro' +
          'up_banner.jpg'
      end
      item
        DataType = ftString
        Name = 'ip'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'site_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'site_key'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'page_location_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'headers'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'ads.banner:0'
  end
  object qryBanners: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT "number", image_url, target_url, visions, clicks'
      '  FROM ads.banners;')
    Left = 216
    Top = 176
    object qryBannersnumber: TSmallintField
      FieldName = 'number'
      Required = True
    end
    object qryBannersimage_url: TWideStringField
      FieldName = 'image_url'
      Size = 2048
    end
    object qryBannerstarget_url: TWideStringField
      FieldName = 'target_url'
      Size = 2040
    end
    object qryBannersvisions: TLargeintField
      FieldName = 'visions'
    end
    object qryBannersclicks: TLargeintField
      FieldName = 'clicks'
    end
  end
end
