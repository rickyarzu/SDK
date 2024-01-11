inherited dmJanuaPgSportsMatches: TdmJanuaPgSportsMatches
  Height = 545
  Width = 580
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited spSetSchemaID: TUniStoredProc
    CommandStoredProcName = 'system.set_schema_id'
  end
  inherited dsTeamChampionships: TDataSource
    Top = 328
  end
  inherited qryTeamsChampionships: TUniQuery
    Top = 272
  end
  inherited dsChampionships: TDataSource
    Top = 216
  end
  inherited qrySeasons: TUniQuery
    OnNewRecord = nil
  end
  inherited qryLkpSeasons: TUniQuery
    Top = 448
  end
  inherited qryMatchDays: TUniQuery
    Top = 40
  end
  inherited qryMatches: TUniQuery
    DataTypeMap = <
      item
        DBType = 517
        FieldType = ftWideString
        FieldLength = 1024
      end
      item
        FieldName = 'games_sets'
        FieldType = ftWideString
        FieldLength = 1024
      end
      item
        FieldName = 'notes'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Top = 176
  end
  inherited dsMatchDays: TDataSource
    Top = 112
  end
  inherited dsMatches: TDataSource
    Top = 236
  end
  inherited qryMatchEvents: TUniQuery
    Left = 456
    Top = 16
  end
  inherited qryMatchAllPlayers: TUniQuery
    Left = 456
    Top = 144
  end
  inherited dsMatchEvents: TDataSource
    Left = 456
    Top = 80
  end
  inherited lkpTeamsChampionship: TUniQuery
    Top = 384
  end
  inherited qrySelectTeam: TUniQuery
    Top = 296
  end
  inherited qryMatchDayRanking: TUniQuery
    Top = 192
  end
  inherited spGenerateDayRanking: TUniStoredProc
    Top = 128
    CommandStoredProcName = 'sports.generate_day_ranking'
  end
  inherited qryGetLastMatchDay: TUniQuery
    Top = 64
  end
  inherited spAddMatchDay1: TUniStoredProc
    CommandStoredProcName = 'sports.add_match_day'
  end
end
