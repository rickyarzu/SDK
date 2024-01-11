inherited dmFootballPostgres: TdmFootballPostgres
  OldCreateOrder = False
  OnDestroy = DSServerModuleDestroy
  Height = 790
  Width = 971
  inherited dsUserSession: TDataSource
    Left = 56
    Top = 184
  end
  object dspSeasons: TDataSetProvider
    Left = 176
    Top = 368
  end
  object dsSeasons: TDataSource
    Enabled = False
    Left = 176
    Top = 96
  end
  object dsChampionships: TDataSource
    Left = 176
    Top = 200
  end
  object dsClubs: TDataSource
    Left = 504
    Top = 80
  end
  object dsTeamChampionships: TDataSource
    Left = 176
    Top = 312
  end
  object dsMatchDays: TDataSource
    Left = 288
    Top = 184
  end
  object dsMatches: TDataSource
    Left = 288
    Top = 284
  end
  object lkpTeams: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsLkpTeams'
    Left = 736
    Top = 304
    object lkpTeamsteam_id: TIntegerField
      FieldName = 'team_id'
      Origin = 'team_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object lkpTeamsclub_id: TSmallintField
      FieldName = 'club_id'
      Origin = 'club_id'
    end
    object lkpTeamsteam_name: TWideStringField
      FieldName = 'team_name'
      Origin = 'team_name'
      Size = 128
    end
    object lkpTeamsclub_name: TWideStringField
      FieldName = 'club_name'
      ReadOnly = True
      Size = 128
    end
  end
  object cdsLkpTeams: TDataSetProvider
    Left = 736
    Top = 256
  end
  object dspEventTypes: TDataSetProvider
    Left = 624
    Top = 64
  end
  object cdsEventTypes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEventTypes'
    Left = 624
    Top = 112
    object cdsEventTypesevent_id: TSmallintField
      FieldName = 'event_id'
      Origin = 'event_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEventTypesevent_des: TWideStringField
      FieldName = 'event_des'
      Origin = 'event_des'
    end
    object cdsEventTypesGoal: TBooleanField
      FieldName = 'Goal'
      Origin = '"Goal"'
    end
    object cdsEventTypessubst: TBooleanField
      FieldName = 'subst'
      Origin = 'subst'
    end
    object cdsEventTypessave: TBooleanField
      FieldName = 'save'
      Origin = 'save'
    end
    object cdsEventTypesaccident: TBooleanField
      FieldName = 'accident'
      Origin = 'accident'
    end
  end
  object dsTeams: TDataSource
    Left = 504
    Top = 184
  end
  object dsMatchTeams: TDataSource
    Left = 400
    Top = 216
  end
  object dsMatchEvents: TDataSource
    Left = 288
    Top = 400
  end
  object dsMatchTeamPlayers: TDataSource
    Left = 400
    Top = 328
  end
  object dsTeamPlayers: TDataSource
    Left = 504
    Top = 408
  end
  object dsTeamChampPlayers: TDataSource
    Left = 176
    Top = 480
  end
  object dsChampRanking: TDataSource
    Left = 400
    Top = 104
  end
  object dsTeamLastSeason: TDataSource
    Left = 736
    Top = 152
  end
  object dsTeamsClubsLeagues: TDataSource
    Left = 504
    Top = 296
  end
  object dsTeamsPlayersLast: TDataSource
    Left = 504
    Top = 520
  end
  object dsTeamRankings: TDataSource
    Left = 624
    Top = 336
  end
  object dsPlayerHistory: TDataSource
    Left = 620
    Top = 448
  end
  object dsClubPlayers: TDataSource
    Left = 624
    Top = 504
  end
  object dsAllPlayers: TDataSource
    Left = 736
    Top = 472
  end
  object dsTeamHistory: TDataSource
    Left = 288
    Top = 512
  end
  object dsMatchTeamAllPlayers: TDataSource
    Left = 400
    Top = 440
  end
  object DataSource1: TDataSource
    Left = 56
    Top = 552
  end
  object dsLkpRoles: TDataSource
    Left = 736
    Top = 584
  end
  object dsPlayerAlbum: TDataSource
    Left = 512
    Top = 632
  end
  object dsGolRanking: TDataSource
    Left = 56
    Top = 664
  end
  object cdsLkpClubs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClubs'
    Left = 624
    Top = 728
    object cdsLkpClubsclub_id: TIntegerField
      FieldName = 'club_id'
    end
    object cdsLkpClubsclub_name: TWideStringField
      FieldName = 'club_name'
      Size = 128
    end
    object cdsLkpClubsFoundation_date: TDateField
      FieldName = 'Foundation_date'
    end
  end
  object dspClubs: TDataSetProvider
    Left = 624
    Top = 672
  end
  object dsChampRankingView: TDataSource
    Left = 400
    Top = 664
  end
  object dsFootballMarket: TDataSource
    Left = 176
    Top = 704
  end
  object dsLkpAllPlayers: TDataSource
    Left = 864
    Top = 256
  end
end
