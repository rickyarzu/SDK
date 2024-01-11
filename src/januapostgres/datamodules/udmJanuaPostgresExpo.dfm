inherited dmJanuaPostgresExpo: TdmJanuaPostgresExpo
  inherited PgErgoConnection: TPgConnection
    EncryptedPassword = '99FFCBFF91FF94FF8AFF93FFCFFF'
  end
  object qryTradeFairs: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      '  SELECT '
      '  t.anagraph_id, t.db_schema_id, t.user_id, a.an_name, an_town'
      '  FROM '
      '  expo.tradefairs t, anagraph.anagraphs a'
      '  where '
      '  a.anagraph_id = t.anagraph_id')
    Left = 64
    Top = 336
    object qryTradeFairsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryTradeFairsdb_schema_id: TIntegerField
      DefaultExpression = '0'
      FieldName = 'db_schema_id'
    end
    object qryTradeFairsuser_id: TIntegerField
      FieldName = 'user_id'
    end
    object qryTradeFairsan_name: TWideStringField
      FieldName = 'an_name'
      ReadOnly = True
      Size = 128
    end
    object qryTradeFairsan_town: TWideStringField
      FieldName = 'an_town'
      ReadOnly = True
      Size = 128
    end
  end
end
