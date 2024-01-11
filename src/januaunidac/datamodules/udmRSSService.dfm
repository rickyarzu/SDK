object dmRSSService: TdmRSSService
  OldCreateOrder = False
  Height = 253
  Width = 478
  object PgConnection1: TJanuaUniConnection
    Pooling = True
    Username = 'postgres'
    Server = 'host1.januaservers.com'
    Database = 'ergomercator'
    Options.UseUnicode = True
    Options.EnablePgTimeStamps = True
    Schema = 'cms'
    Left = 72
    Top = 96
    EncryptedPassword = '99FFCBFF91FF94FF8AFF93FFCFFF'
  end
  object prcNewArticle: TUniStoredProc
    StoredProcName = 'cms.articles_ins'
    Connection = PgConnection1
    SQL.Strings = (
      
        'SELECT cms.articles_ins(:in_article_id, :in_title, :in_abstract,' +
        ' :in_author_id, :in_text, :in_datetime, :in_external_link, :in_i' +
        'mage_url, :in_shorttext, :in_main_argument_id, :in_argument_id, ' +
        ':in_sub_argument_id, :in_specification_id, :in_article_key)')
    Left = 72
    Top = 160
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'in_article_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'in_title'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'in_abstract'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'in_author_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideMemo
        Name = 'in_text'
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'in_datetime'
        ParamType = ptInput
        Value = '01/01/2000 0.00.00'
        ExtDataType = 104
      end
      item
        DataType = ftWideString
        Name = 'in_external_link'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'in_image_url'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'in_shorttext'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'in_main_argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'in_argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'in_sub_argument_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'in_specification_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'in_article_key'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'cms.articles_ins:0'
  end
end
