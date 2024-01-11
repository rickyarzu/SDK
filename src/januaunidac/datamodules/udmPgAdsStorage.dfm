inherited dmPgAdsStorage: TdmPgAdsStorage
  OldCreateOrder = True
  Height = 421
  Width = 629
  inherited PgErgoConnection: TJanuaUniConnection
    Database = 'lnd'
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
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
    SQLInsert.Strings = (
      'INSERT INTO ads.banners'
      
        '  (number, image_url, target_url, visions, clicks, customer_id, ' +
        'db_schema_id, abnn_jguid, abnn_deleted, image_id, anagraph_id, t' +
        'itle, width, height, since, until)'
      'VALUES'
      
        '  (:number, :image_url, :target_url, :visions, :clicks, :custome' +
        'r_id, :db_schema_id, :abnn_jguid, :abnn_deleted, :image_id, :ana' +
        'graph_id, :title, :width, :height, :since, :until)')
    SQLDelete.Strings = (
      'DELETE FROM ads.banners'
      'WHERE'
      '  number = :Old_number')
    SQLUpdate.Strings = (
      'UPDATE ads.banners'
      'SET'
      
        '  number = :number, image_url = :image_url, target_url = :target' +
        '_url, visions = :visions, clicks = :clicks, customer_id = :custo' +
        'mer_id, db_schema_id = :db_schema_id, abnn_jguid = :abnn_jguid, ' +
        'abnn_deleted = :abnn_deleted, image_id = :image_id, anagraph_id ' +
        '= :anagraph_id, title = :title, width = :width, height = :height' +
        ', since = :since, until = :until'
      'WHERE'
      '  number = :Old_number')
    SQLLock.Strings = (
      'SELECT * FROM ads.banners'
      'WHERE'
      '  number = :Old_number'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT number, image_url, target_url, visions, clicks, customer_' +
        'id, db_schema_id, abnn_jguid, abnn_deleted, image_id, anagraph_i' +
        'd, title, width, height, since, until FROM ads.banners'
      'WHERE'
      '  number = :number')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM ads.banners'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT b.*'
      '  FROM ads.banners b'
      'where '
      '   b.db_schema_id = :db_schema_id'
      '   and '
      '   (lower(b.title) like '#39'%'#39' || :ricerca || '#39'%'#39' or :ricerca = '#39#39')')
    BeforeOpen = qryBannersBeforeOpen
    BeforePost = qryBannersBeforePost
    Left = 216
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftString
        Name = 'ricerca'
        ParamType = ptInput
        Value = nil
      end>
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
    object qryBannerscustomer_id: TIntegerField
      FieldName = 'customer_id'
    end
    object qryBannersdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryBannersabnn_jguid: TWideStringField
      FieldName = 'abnn_jguid'
      Required = True
      Size = 40
    end
    object qryBannersabnn_deleted: TBooleanField
      FieldName = 'abnn_deleted'
    end
    object qryBannersimage_id: TLargeintField
      FieldName = 'image_id'
    end
    object qryBannersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryBannerstitle: TWideStringField
      FieldName = 'title'
      Size = 128
    end
    object qryBannersnumber: TLargeintField
      FieldName = 'number'
      Required = True
    end
    object qryBannerswidth: TIntegerField
      FieldName = 'width'
    end
    object qryBannersheight: TIntegerField
      FieldName = 'height'
    end
    object qryBannerssince: TDateField
      FieldName = 'since'
    end
    object qryBannersuntil: TDateField
      FieldName = 'until'
    end
  end
end
