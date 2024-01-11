object dmFootball: TdmFootball
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 687
  Width = 719
  object dspSeasons: TDataSetProvider
    Left = 64
    Top = 360
  end
  object qryChampionships: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_championships'
      '  (season_id, league_id)'
      'VALUES'
      '  (:season_id, :league_id)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_championships'
      'WHERE'
      '  season_id = :Old_season_id AND league_id = :Old_league_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_championships'
      'SET'
      '  season_id = :season_id, league_id = :league_id'
      'WHERE'
      '  season_id = :Old_season_id AND league_id = :Old_league_id')
    SQLRefresh.Strings = (
      'SELECT season_id, league_id FROM football.ft_championships'
      'WHERE'
      '  season_id = :season_id AND league_id = :league_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_championships'
      'WHERE'
      '  season_id = :Old_season_id AND league_id = :Old_league_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_championships'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT f.*, l.league_name, l.iso_country_code'
      '  FROM '
      '      football.ft_leagues l '
      '  INNER JOIN football.ft_championships f '
      '  ON l.league_id = f.league_id'
      '  WHERE f.season_id = :season_id'
      '  ORDER BY l.league_position')
    MasterFields = 'season_id'
    DetailFields = 'season_id'
    MasterSource = dsSeasons
    Left = 64
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'season_id'
        ParamType = ptInput
        Size = 4
        Value = 45
      end>
    object qryChampionshipsseason_id: TSmallintField
      FieldName = 'season_id'
      Origin = 'season_id'
    end
    object qryChampionshipsleague_id: TSmallintField
      FieldName = 'league_id'
      Origin = 'league_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryChampionshipsleague_name: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'league_name'
      Origin = 'league_name'
      Size = 128
    end
    object qryChampionshipsiso_country_code: TWideStringField
      FieldName = 'iso_country_code'
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object dsSeasons: TDataSource
    DataSet = qrySeasons
    Left = 64
    Top = 88
  end
  object dsChampionships: TDataSource
    DataSet = qryChampionships
    Left = 64
    Top = 192
  end
  object qrySeasons: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_seasons'
      '  (season_id, season_des, season_code, db_schema_id)'
      'VALUES'
      '  (:season_id, :season_des, :season_code, :db_schema_id)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_seasons'
      'WHERE'
      '  season_id = :Old_season_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_seasons'
      'SET'
      
        '  season_id = :season_id, season_des = :season_des, season_code ' +
        '= :season_code, db_schema_id = :db_schema_id'
      'WHERE'
      '  season_id = :Old_season_id')
    SQLRefresh.Strings = (
      
        'SELECT season_id, season_des, season_code, db_schema_id FROM foo' +
        'tball.ft_seasons'
      'WHERE'
      '  season_id = :season_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_seasons'
      'WHERE'
      '  season_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_seasons'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'select * from football.ft_seasons'
      'order by season_id desc')
    AfterScroll = qrySeasonsAfterScroll
    OnNewRecord = qrySeasonsNewRecord
    Left = 64
    Top = 40
    object qrySeasonsseason_id: TIntegerField
      FieldName = 'season_id'
      Origin = 'season_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySeasonsseason_des: TWideStringField
      Alignment = taRightJustify
      FieldName = 'season_des'
      Origin = 'season_des'
    end
    object qrySeasonsseason_code: TWideStringField
      Alignment = taRightJustify
      FieldName = 'season_code'
      FixedChar = True
      Size = 5
    end
    object qrySeasonsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
  end
  object qryClubs: TPgQuery
    KeyFields = 'club_id'
    KeySequence = 'football.ft_clubs_seq'
    Connection = PgConnection1
    SQL.Strings = (
      'select * from football.ft_clubs')
    Filtered = True
    AfterOpen = qryClubsAfterOpen
    OnCalcFields = qryClubsCalcFields
    Left = 392
    Top = 24
    object qryClubsclub_id: TIntegerField
      FieldName = 'club_id'
      Required = True
    end
    object qryClubsclub_name: TWideStringField
      FieldName = 'club_name'
      Size = 128
    end
    object qryClubsFoundation_date: TPgDateField
      FieldName = 'Foundation_date'
    end
    object qryClubssearch_name: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'search_name'
      Size = 256
      Calculated = True
    end
  end
  object qryTeams: TPgQuery
    KeyFields = 'team_id'
    KeySequence = 'football.ft_teams_seq'
    SQLInsert.Strings = (
      'INSERT INTO football.ft_teams'
      '  (team_id, club_id, team_name)'
      'VALUES'
      '  (:team_id, :club_id, :team_name)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_teams'
      'WHERE'
      '  team_id = :Old_team_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_teams'
      'SET'
      '  team_id = :team_id, club_id = :club_id, team_name = :team_name'
      'WHERE'
      '  team_id = :Old_team_id')
    SQLRefresh.Strings = (
      'SELECT team_id, club_id, team_name FROM football.ft_teams'
      'WHERE'
      '  team_id = :team_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams'
      'WHERE'
      '  team_id = :Old_team_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'select t.* '
      'from football.ft_teams t '
      'where'
      'club_id = :club_id'
      'order by team_name')
    MasterFields = 'club_id'
    DetailFields = 'club_id'
    MasterSource = dsClubs
    AfterOpen = qryTeamsAfterOpen
    AfterScroll = qryTeamsAfterScroll
    Left = 392
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'club_id'
        ParamType = ptInput
        Size = 4
        Value = 251
      end>
    object qryTeamsteam_id: TIntegerField
      FieldName = 'team_id'
      Origin = 'team_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamsclub_id: TSmallintField
      FieldName = 'club_id'
      Origin = 'club_id'
    end
    object qryTeamsteam_name: TWideStringField
      FieldName = 'team_name'
      Origin = 'team_name'
      Size = 128
    end
  end
  object dsClubs: TDataSource
    DataSet = qryClubs
    Left = 392
    Top = 72
  end
  object qryTeamsChampionships: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_teams_championships'
      '  (season_id, league_id, team_id)'
      'VALUES'
      '  (:season_id, :league_id, :team_id)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_teams_championships'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'team_id = :Old_team_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_teams_championships'
      'SET'
      
        '  season_id = :season_id, league_id = :league_id, team_id = :tea' +
        'm_id'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'team_id = :Old_team_id')
    SQLRefresh.Strings = (
      
        'SELECT season_id, league_id, team_id FROM football.ft_teams_cham' +
        'pionships'
      'WHERE'
      
        '  season_id = :season_id AND league_id = :league_id AND team_id ' +
        '= :team_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_championships'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'team_id = :Old_team_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_championships'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT c.season_id, c.league_id, c.team_id, t.team_name'
      '  FROM '
      '  football.ft_teams_championships c, football.ft_teams t'
      '  where'
      '  c.team_id = t.team_id'
      '  and'
      '  c.season_id = :season_id and c.league_id = :league_id'
      '  order by t.team_name asc')
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    MasterSource = dsChampionships
    AfterScroll = qryTeamsChampionshipsAfterScroll
    Left = 64
    Top = 248
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 44
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Size = 2
        Value = 26
      end>
    object qryTeamsChampionshipsseason_id: TSmallintField
      FieldName = 'season_id'
      Origin = 'season_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamsChampionshipsleague_id: TSmallintField
      FieldName = 'league_id'
      Origin = 'league_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamsChampionshipsteam_id: TSmallintField
      FieldName = 'team_id'
      Origin = 'team_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamsChampionshipsteam_name: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'team_name'
      Origin = 'team_name'
      Size = 128
    end
  end
  object dsTeamChampionships: TDataSource
    DataSet = qryTeamsChampionships
    Left = 64
    Top = 304
  end
  object qryMatchDays: TPgQuery
    DMLRefresh = True
    SQLInsert.Strings = (
      'INSERT INTO football.ft_match_days'
      
        '  (season_id, league_id, match_day_number, match_day_date, match' +
        '_day_played)'
      'VALUES'
      
        '  (:season_id, :league_id, :match_day_number, :match_day_date, :' +
        'match_day_played)'
      'RETURNING'
      
        '  season_id, league_id, match_day_number, match_day_date, match_' +
        'day_played')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_match_days'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'match_day_number = :Old_match_day_number')
    SQLUpdate.Strings = (
      'UPDATE football.ft_match_days'
      'SET'
      
        '  season_id = :season_id, league_id = :league_id, match_day_numb' +
        'er = :match_day_number, match_day_date = :match_day_date, match_' +
        'day_played = :match_day_played'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'match_day_number = :Old_match_day_number'
      'RETURNING'
      
        '  season_id, league_id, match_day_number, match_day_date, match_' +
        'day_played')
    SQLRefresh.Strings = (
      
        'SELECT season_id, league_id, match_day_number, match_day_date, m' +
        'atch_day_played FROM football.ft_match_days'
      'WHERE'
      
        '  season_id = :season_id AND league_id = :league_id AND match_da' +
        'y_number = :match_day_number')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_match_days'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'match_day_number = :Old_match_day_number'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_match_days'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT season_id, league_id, '
      '        match_day_number, match_day_date, '
      '        match_day_played'
      '  FROM football.ft_match_days'
      'WHERE'
      '   season_id = :season_id '
      '   and'
      '   league_id = :league_id'
      'ORDER BY  match_day_number')
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    MasterSource = dsChampionships
    AfterOpen = qryMatchDaysAfterOpen
    Left = 176
    Top = 120
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Size = 2
        Value = 44
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Size = 2
        Value = 26
      end>
    object qryMatchDaysseason_id: TSmallintField
      FieldName = 'season_id'
      Origin = 'season_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMatchDaysleague_id: TSmallintField
      FieldName = 'league_id'
      Origin = 'league_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMatchDaysmatch_day_number: TSmallintField
      FieldName = 'match_day_number'
      Origin = 'match_day_number'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMatchDaysmatch_day_date: TPgDateField
      FieldName = 'match_day_date'
    end
    object qryMatchDaysmatch_day_played: TPgDateField
      FieldName = 'match_day_played'
    end
  end
  object qryMatches: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_calendar'
      
        '  (match_id, league_id, season_id, match_day_number, match_date,' +
        ' home_team_id, visitors_team_id, goal_home, goal_visitor, points' +
        '_home, points_visitors, notes, confirmed, db_schema_id, insert_d' +
        'ate, update_date, home_notes, visitors_notes)'
      'VALUES'
      
        '  (:match_id, :league_id, :season_id, :match_day_number, :match_' +
        'date, :home_team_id, :visitors_team_id, :goal_home, :goal_visito' +
        'r, :points_home, :points_visitors, :notes, :confirmed, :db_schem' +
        'a_id, :insert_date, :update_date, :home_notes, :visitors_notes)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_calendar'
      'WHERE'
      '  match_id = :Old_match_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_calendar'
      'SET'
      
        '  match_id = :match_id, league_id = :league_id, season_id = :sea' +
        'son_id, match_day_number = :match_day_number, match_date = :matc' +
        'h_date, home_team_id = :home_team_id, visitors_team_id = :visito' +
        'rs_team_id, goal_home = :goal_home, goal_visitor = :goal_visitor' +
        ', points_home = :points_home, points_visitors = :points_visitors' +
        ', notes = :notes, confirmed = :confirmed, db_schema_id = :db_sch' +
        'ema_id, insert_date = :insert_date, update_date = :update_date, ' +
        'home_notes = :home_notes, visitors_notes = :visitors_notes'
      'WHERE'
      '  match_id = :Old_match_id')
    SQLRefresh.Strings = (
      
        'SELECT match_id, league_id, season_id, match_day_number, match_d' +
        'ate, home_team_id, visitors_team_id, goal_home, goal_visitor, po' +
        'ints_home, points_visitors, notes, confirmed, db_schema_id, inse' +
        'rt_date, update_date, home_notes, visitors_notes FROM football.f' +
        't_calendar'
      'WHERE'
      '  match_id = :match_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_calendar'
      'WHERE'
      '  match_id = :Old_match_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_calendar'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT c.*'
      '  FROM football.ft_calendar c'
      'WHERE c.match_day_number = :match_day_number '
      '      and c.league_id = :league_id'
      '       and c.season_id = :season_id')
    MasterFields = 'league_id;season_id;match_day_number'
    DetailFields = 'league_id;season_id;match_day_number'
    MasterSource = dsMatchDays
    AfterScroll = qryMatchesAfterScroll
    Left = 176
    Top = 224
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'match_day_number'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Size = 2
        Value = 26
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Size = 2
        Value = 44
      end>
    object qryMatchesmatch_id: TIntegerField
      FieldName = 'match_id'
      Origin = 'match_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMatchesleague_id: TSmallintField
      FieldName = 'league_id'
      Origin = 'league_id'
    end
    object qryMatchesseason_id: TSmallintField
      FieldName = 'season_id'
      Origin = 'season_id'
    end
    object qryMatchesmatch_day_number: TSmallintField
      FieldName = 'match_day_number'
      Origin = 'match_day_number'
    end
    object qryMatcheshome_team_id: TSmallintField
      FieldName = 'home_team_id'
      Origin = 'home_team_id'
    end
    object qryMatchesvisitors_team_id: TSmallintField
      FieldName = 'visitors_team_id'
      Origin = 'visitors_team_id'
    end
    object qryMatchesgoal_home: TSmallintField
      FieldName = 'goal_home'
      Origin = 'goal_home'
    end
    object qryMatchesgoal_visitor: TSmallintField
      FieldName = 'goal_visitor'
      Origin = 'goal_visitor'
    end
    object qryMatchespoints_home: TSmallintField
      FieldName = 'points_home'
      Origin = 'points_home'
    end
    object qryMatchespoints_visitors: TSmallintField
      FieldName = 'points_visitors'
      Origin = 'points_visitors'
    end
    object qryMatchesconfirmed: TBooleanField
      FieldName = 'confirmed'
      Origin = 'confirmed'
    end
    object qryMatcheslkpHomeTeam: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpHomeTeam'
      LookupDataSet = lkpTeamsChampionship
      LookupKeyFields = 'team_id'
      LookupResultField = 'team_name'
      KeyFields = 'home_team_id'
      Size = 60
      Lookup = True
    end
    object qryMatcheslkpVisitorTeam: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpVisitorTeam'
      LookupDataSet = lkpTeamsChampionship
      LookupKeyFields = 'team_id'
      LookupResultField = 'team_name'
      KeyFields = 'visitors_team_id'
      Size = 60
      Lookup = True
    end
    object qryMatchesmatch_date: TPgDateField
      FieldName = 'match_date'
    end
    object qryMatchesnotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryMatchesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryMatchesinsert_date: TPgTimeStampField
      FieldName = 'insert_date'
    end
    object qryMatchesupdate_date: TPgTimeStampField
      FieldName = 'update_date'
    end
    object qryMatcheshome_notes: TWideStringField
      FieldName = 'home_notes'
      Size = 1024
    end
    object qryMatchesvisitors_notes: TWideStringField
      FieldName = 'visitors_notes'
      Size = 1024
    end
  end
  object dsMatchDays: TDataSource
    DataSet = qryMatchDays
    Left = 176
    Top = 176
  end
  object dsMatches: TDataSource
    DataSet = qryMatches
    Left = 176
    Top = 276
  end
  object lkpTeams: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsLkpTeams'
    Left = 624
    Top = 296
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
  object qryLkpTeams: TPgQuery
    Connection = PgConnection1
    SQL.Strings = (
      'select t.* , c.club_name'
      'from football.ft_teams t , football.ft_clubs c'
      'where'
      'c.club_id = t.club_id')
    Left = 624
    Top = 200
    object IntegerField1: TIntegerField
      FieldName = 'team_id'
      Origin = 'team_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SmallintField1: TSmallintField
      FieldName = 'club_id'
      Origin = 'club_id'
    end
    object WideStringField1: TWideStringField
      FieldName = 'team_name'
      Origin = 'team_name'
      Size = 128
    end
    object qryLkpTeamsclub_name: TWideStringField
      FieldName = 'club_name'
      ReadOnly = True
      Size = 128
    end
  end
  object cdsLkpTeams: TDataSetProvider
    DataSet = qryLkpTeams
    Left = 624
    Top = 248
  end
  object qryLkpEventTypes: TPgQuery
    Connection = PgConnection1
    SQL.Strings = (
      'select * from football.ft_event_types')
    Left = 512
    Top = 8
  end
  object dspEventTypes: TDataSetProvider
    DataSet = qryLkpEventTypes
    Left = 512
    Top = 56
  end
  object cdsEventTypes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEventTypes'
    Left = 512
    Top = 104
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
  object qryMatchEvents: TPgQuery
    KeyFields = 'match_events_row_id'
    KeySequence = 'football.ft_matchevents_seq'
    DataTypeMap.IgnoreInvalidRules = False
    DataTypeMap = <
      item
        FieldName = 'teamplayer'
        FieldType = ftWideString
        FieldLength = 512
      end>
    SQLInsert.Strings = (
      'INSERT INTO football.ft_match_events'
      
        '  (match_id, team_id, player_id, event_id, minute, value, match_' +
        'events_row_id, notes, favor_team_id)'
      'VALUES'
      
        '  (:match_id, :team_id, :player_id, :event_id, :minute, :value, ' +
        ':match_events_row_id, :notes, :favor_team_id)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_match_events'
      'WHERE'
      '  match_events_row_id = :Old_match_events_row_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_match_events'
      'SET'
      
        '  match_id = :match_id, team_id = :team_id, player_id = :player_' +
        'id, event_id = :event_id, minute = :minute, value = :value, matc' +
        'h_events_row_id = :match_events_row_id, notes = :notes, favor_te' +
        'am_id = :favor_team_id'
      'WHERE'
      '  match_events_row_id = :Old_match_events_row_id')
    SQLRefresh.Strings = (
      
        'SELECT match_id, team_id, player_id, event_id, minute, value, ma' +
        'tch_events_row_id, notes, favor_team_id FROM football.ft_match_e' +
        'vents'
      'WHERE'
      '  match_events_row_id = :match_events_row_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_match_events'
      'WHERE'
      '  match_events_row_id = :Old_match_events_row_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_match_events'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      
        'select e.*, s.family_name || '#39' '#39' || t.team_name as teamplayer, s' +
        '.family_name '
      'from '
      
        'football.ft_match_events e, football.ft_players s, football.ft_t' +
        'eams t'
      'where '
      'match_id = :match_id'
      'and'
      't.team_id = e.team_id'
      'and'
      's.anagraph_id = e.player_id')
    MasterFields = 'match_id'
    DetailFields = 'match_id'
    MasterSource = dsMatches
    BeforePost = qryMatchEventsBeforePost
    Left = 176
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'match_id'
        ParamType = ptInput
        Size = 4
        Value = nil
      end>
    object qryMatchEventsmatch_id: TIntegerField
      FieldName = 'match_id'
      Origin = 'match_id'
    end
    object qryMatchEventsteam_id: TSmallintField
      FieldName = 'team_id'
      Origin = 'team_id'
    end
    object qryMatchEventsplayer_id: TIntegerField
      FieldName = 'player_id'
      Origin = 'player_id'
    end
    object qryMatchEventsevent_id: TSmallintField
      FieldName = 'event_id'
      Origin = 'event_id'
    end
    object qryMatchEventsminute: TIntegerField
      FieldName = 'minute'
      Origin = '"minute"'
    end
    object qryMatchEventsvalue: TSmallintField
      FieldName = 'value'
      Origin = '"value"'
    end
    object qryMatchEventsmatch_events_row_id: TLargeintField
      FieldName = 'match_events_row_id'
      Origin = 'match_events_row_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMatchEventslkpTeamPlayer: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpTeamPlayer'
      LookupDataSet = qryMatchAllPlayers
      LookupKeyFields = 'player_id'
      LookupResultField = 'lkpPlayerName'
      KeyFields = 'player_id'
      Size = 60
      Lookup = True
    end
    object qryMatchEventslkpEventType: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpEventType'
      LookupDataSet = qryLkpEventTypes
      LookupKeyFields = 'event_id'
      LookupResultField = 'event_des'
      KeyFields = 'event_id'
      Size = 30
      Lookup = True
    end
    object qryMatchEventsnotes: TWideStringField
      FieldName = 'notes'
      Size = 60
    end
    object qryMatchEventsfavor_team_id: TIntegerField
      FieldName = 'favor_team_id'
    end
    object qryMatchEventsteamplayer: TWideStringField
      FieldName = 'teamplayer'
      ReadOnly = True
      Size = 512
    end
    object qryMatchEventsfamily_name: TWideStringField
      FieldName = 'family_name'
      Size = 128
    end
  end
  object qryMatchAllPlayers: TPgQuery
    DataTypeMap.IgnoreInvalidRules = False
    DataTypeMap = <
      item
        FieldName = 'lkpplayername'
        FieldType = ftWideString
        FieldLength = 512
      end
      item
        FieldName = 'full_name'
        FieldType = ftWideString
        FieldLength = 512
      end>
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT  '
      '   m.*,  '
      
        '  family_name || '#39' '#39' || first_name || '#39' - '#39' || t.team_name as fu' +
        'll_name'
      
        '  , family_name || '#39' '#39' || first_name || '#39' - '#39' || t.team_name as ' +
        'lkpPlayerName'
      '  , t.team_name'
      '  FROM '
      '    football.ft_players p'
      '  , ft_match_players m'
      '  , ft_teams t'
      'where '
      'm.match_id = :match_id'
      'and'
      'p.anagraph_id = m.player_id'
      'and'
      't.team_id = m.team_id'
      'order by pos')
    Left = 176
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'match_id'
        Value = nil
      end>
    object qryMatchAllPlayersmatch_id: TIntegerField
      FieldName = 'match_id'
      ReadOnly = True
      Required = True
    end
    object qryMatchAllPlayersplayer_id: TIntegerField
      FieldName = 'player_id'
      ReadOnly = True
      Required = True
    end
    object qryMatchAllPlayersminutes: TSmallintField
      FieldName = 'minutes'
      ReadOnly = True
    end
    object qryMatchAllPlayersvote: TFloatField
      FieldName = 'vote'
      ReadOnly = True
    end
    object qryMatchAllPlayersplayed: TBooleanField
      FieldName = 'played'
      ReadOnly = True
    end
    object qryMatchAllPlayersteam_id: TSmallintField
      FieldName = 'team_id'
      ReadOnly = True
    end
    object qryMatchAllPlayerspos: TSmallintField
      FieldName = 'pos'
      ReadOnly = True
    end
    object qryMatchAllPlayersteam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
    object qryMatchAllPlayersfull_name: TWideStringField
      FieldName = 'full_name'
      ReadOnly = True
      Size = 512
    end
    object qryMatchAllPlayerslkpplayername: TWideStringField
      FieldName = 'lkpplayername'
      ReadOnly = True
      Size = 512
    end
  end
  object qryMatchTeams: TPgQuery
    Connection = PgConnection1
    SQL.Strings = (
      'select * from football.ft_teams where '
      'team_id in (:home_team_id, :visitors_team_id)')
    MasterFields = 'home_team_id;visitors_team_id'
    MasterSource = dsMatches
    AfterScroll = qryMatchTeamsAfterScroll
    Left = 288
    Top = 152
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'home_team_id'
        ParamType = ptInput
        Size = 2
        Value = 464
      end
      item
        DataType = ftSmallint
        Name = 'visitors_team_id'
        ParamType = ptInput
        Size = 2
        Value = 720
      end>
    object qryMatchTeamsteam_id: TIntegerField
      FieldName = 'team_id'
      Required = True
    end
    object qryMatchTeamsclub_id: TSmallintField
      FieldName = 'club_id'
      Required = True
    end
    object qryMatchTeamsteam_name: TWideStringField
      FieldName = 'team_name'
      Size = 128
    end
  end
  object dsTeams: TDataSource
    DataSet = qryTeams
    Left = 392
    Top = 176
  end
  object dsMatchTeams: TDataSource
    DataSet = qryMatchTeams
    Left = 288
    Top = 208
  end
  object dsMatchEvents: TDataSource
    DataSet = qryMatchEvents
    Left = 176
    Top = 392
  end
  object qryMatchTeamPlayers: TPgQuery
    DataTypeMap.IgnoreInvalidRules = False
    DataTypeMap = <
      item
        FieldName = 'full_name'
        FieldType = ftWideString
        FieldLength = 512
      end>
    SQLInsert.Strings = (
      'INSERT INTO football.ft_match_players'
      
        '  (match_id, player_id, minutes, vote, played, team_id, pos, sub' +
        'st_id)'
      'VALUES'
      
        '  (:match_id, :player_id, :minutes, :vote, :played, :team_id, :p' +
        'os, :subst_id)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_match_players'
      'WHERE'
      
        '  match_id = :Old_match_id AND player_id = :Old_player_id AND te' +
        'am_id = :Old_team_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_match_players'
      'SET'
      
        '  match_id = :match_id, player_id = :player_id, minutes = :minut' +
        'es, '
      
        '  vote = :vote, played = :played, team_id = :team_id, pos = :pos' +
        ', '
      '  subst_id = :subst_id'
      'WHERE'
      
        '  match_id = :Old_match_id AND player_id = :Old_player_id AND te' +
        'am_id = :Old_team_id')
    SQLRefresh.Strings = (
      
        'SELECT match_id, player_id, minutes, vote, played, team_id, pos,' +
        ' subst_id FROM football.ft_match_players'
      'WHERE'
      
        '  match_id = :match_id AND player_id = :player_id AND team_id = ' +
        ':team_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_match_players'
      'WHERE'
      
        '  match_id = :Old_match_id AND player_id = :Old_player_id AND te' +
        'am_id = :Old_team_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_match_players'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT  '
      '   m.*, p.family_name, p.first_name, '
      
        '  family_name || '#39' '#39' || first_name || '#39' - '#39' || public.nvl(notes,' +
        ' text('#39'n.a.'#39')) || r.role_name'
      '  as full_name'
      '  FROM '
      '    football.ft_players p'
      '  , football.ft_match_players m'
      '  , football.ft_roles r'
      'where '
      'public.nvl(p.role, 0) = r.role_id'
      'and'
      'm.match_id = :match_id'
      'and'
      'm.team_id = :team_id'
      'and'
      'p.anagraph_id = m.player_id'
      'order by pos')
    MasterFields = 'team_id'
    DetailFields = 'team_id'
    MasterSource = dsMatchTeams
    OnNewRecord = qryMatchTeamPlayersNewRecord
    Left = 288
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'match_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'team_id'
        ParamType = ptInput
        Value = 464
      end>
    object qryMatchTeamPlayersmatch_id: TIntegerField
      FieldName = 'match_id'
    end
    object qryMatchTeamPlayersplayer_id: TIntegerField
      FieldName = 'player_id'
    end
    object qryMatchTeamPlayersminutes: TSmallintField
      FieldName = 'minutes'
    end
    object qryMatchTeamPlayersvote: TFloatField
      FieldName = 'vote'
    end
    object qryMatchTeamPlayersplayed: TBooleanField
      FieldName = 'played'
    end
    object qryMatchTeamPlayersteam_id: TSmallintField
      FieldName = 'team_id'
    end
    object qryMatchTeamPlayerspos: TSmallintField
      FieldName = 'pos'
    end
    object qryMatchTeamPlayersfull_name: TWideStringField
      FieldName = 'full_name'
      Size = 512
    end
    object qryMatchTeamPlayerssubst_id: TIntegerField
      FieldName = 'subst_id'
    end
    object qryMatchTeamPlayersfamily_name: TWideStringField
      FieldName = 'family_name'
      Size = 128
    end
    object qryMatchTeamPlayersfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
  end
  object dsMatchTeamPlayers: TDataSource
    DataSet = qryMatchTeamPlayers
    Left = 288
    Top = 320
  end
  object qryTeamPlayers: TPgQuery
    DataTypeMap.IgnoreInvalidRules = False
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    SQLInsert.Strings = (
      'INSERT INTO football.ft_teams_players'
      '  (team_id, player_id, season_id, since, until, club_origin_id)'
      'VALUES'
      
        '  (:team_id, :player_id, :season_id, :since, :until, :club_origi' +
        'n_id)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_teams_players'
      'SET'
      
        '  team_id = :team_id, player_id = :player_id, season_id = :seaso' +
        'n_id, since = :since, until = :until, club_origin_id = :club_ori' +
        'gin_id'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id')
    SQLRefresh.Strings = (
      
        'SELECT team_id, player_id, season_id, since, until, club_origin_' +
        'id FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :team_id AND player_id = :player_id AND season_id = ' +
        ':season_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_players'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT   '
      '   t.*, p.*,'
      '       p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      
        '       || public.nvl(notes, text('#39'n.a.'#39'))  || '#39' '#39' || r.role_name' +
        ' '
      '    as fullname'
      '  FROM '
      '    football.ft_teams_players t'
      '  , football.ft_players p'
      '  , football.ft_roles r'
      'where '
      'r.role_id = public.nvl(p.role,0)'
      'and'
      'team_id = :team_id'
      'and'
      'season_id = :season_id'
      'and'
      'p.anagraph_id = t.player_id'
      'order by family_name, first_name')
    MasterFields = 'team_id;season_id'
    DetailFields = 'team_id;season_id'
    MasterSource = dsTeamsLeagues
    OnCalcFields = qryTeamPlayersCalcFields
    Left = 392
    Top = 344
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'team_id'
        ParamType = ptInput
        Value = 251
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 44
      end>
    object qryTeamPlayersfamily_name: TWideStringField
      FieldName = 'family_name'
      Origin = 'family_name'
      Size = 128
    end
    object qryTeamPlayersfirst_name: TWideStringField
      FieldName = 'first_name'
      Origin = 'first_name'
      Size = 128
    end
    object qryTeamPlayersteam_id: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'team_id'
      Origin = 'team_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamPlayersplayer_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'player_id'
      Origin = 'player_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamPlayersseason_id: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'season_id'
      Origin = 'season_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamPlayerssince: TPgDateField
      FieldName = 'since'
    end
    object qryTeamPlayersuntil: TPgDateField
      FieldName = 'until'
    end
    object qryTeamPlayerslkpPlayerName: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'lkpPlayerName'
      Size = 0
      Calculated = True
    end
    object qryTeamPlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
      Required = True
    end
    object qryTeamPlayersbirth_date: TPgDateField
      FieldName = 'birth_date'
      ReadOnly = True
    end
    object qryTeamPlayersbirth_year: TSmallintField
      FieldName = 'birth_year'
      ReadOnly = True
    end
    object qryTeamPlayersbirth_place: TWideStringField
      FieldName = 'birth_place'
      ReadOnly = True
      Size = 128
    end
    object qryTeamPlayersnotes: TWideMemoField
      FieldName = 'notes'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryTeamPlayersrole: TSmallintField
      FieldName = 'role'
    end
    object qryTeamPlayerslkpRoleName: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpRoleName'
      LookupDataSet = lkpRoles
      LookupKeyFields = 'role_id'
      LookupResultField = 'role_name'
      KeyFields = 'role'
      Size = 30
      Lookup = True
    end
    object qryTeamPlayersclub_origin_id: TIntegerField
      FieldName = 'club_origin_id'
    end
    object qryTeamPlayersfullname: TWideStringField
      FieldName = 'fullname'
      Size = 512
    end
  end
  object dsTeamPlayers: TDataSource
    DataSet = qryTeamPlayers
    Left = 392
    Top = 400
  end
  object PgConnection1: TPgConnection
    PoolingOptions.MaxPoolSize = 1000
    Pooling = True
    Username = 'sportmedia'
    Server = 'sbs2011'
    LoginPrompt = False
    BeforeConnect = PgConnection1BeforeConnect
    Database = 'januaproject'
    Options.UseUnicode = True
    Options.EnablePgTimeStamps = True
    Schema = 'football'
    Left = 176
    Top = 64
    EncryptedPassword = '8CFFCCFF8BFF8BFFCEFF92FFCBFF91FFCBFF'
  end
  object qryTeamChampPlayers: TPgQuery
    DataTypeMap.IgnoreInvalidRules = False
    DataTypeMap = <
      item
        FieldName = 'notes'
        FieldType = ftWideString
        FieldLength = 1024
      end
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 256
      end>
    SQLInsert.Strings = (
      'INSERT INTO football.ft_teams_players'
      '  (team_id, player_id, season_id, since, until, club_origin_id)'
      'VALUES'
      
        '  (:team_id, :player_id, :season_id, :since, :until, :club_origi' +
        'n_id)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_teams_players'
      'SET'
      
        '  team_id = :team_id, player_id = :player_id, season_id = :seaso' +
        'n_id, since = :since, until = :until, club_origin_id = :club_ori' +
        'gin_id'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id')
    SQLRefresh.Strings = (
      
        'SELECT team_id, player_id, season_id, since, until, club_origin_' +
        'id FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :team_id AND player_id = :player_id AND season_id = ' +
        ':season_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_players'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT  '
      '  p.*, '
      
        '  family_name || '#39' '#39' || first_name || '#39' - '#39' || public.nvl(notes,' +
        ' text('#39'n.a.'#39')) || '#39' '#39' || r.role_name '
      '  as fullname,   t.*'
      '  FROM '
      '  football.ft_roles r, '
      '    football.ft_teams_players t '
      
        '    inner join  football.ft_players p on p.anagraph_id = t.playe' +
        'r_id'
      'where '
      'team_id = :team_id'
      'and'
      'public.nvl(p.role, 0) = r.role_id'
      'and'
      'season_id = :season_id'
      'order by family_name, first_name')
    MasterSource = dsTeamChampionships
    OnNewRecord = qryTeamChampPlayersNewRecord
    Left = 64
    Top = 416
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TEAM_ID'
        ParamType = ptInput
        Value = 355
      end
      item
        DataType = ftSmallint
        Name = 'SEASON_ID'
        ParamType = ptInput
        Value = nil
      end>
    object qryTeamChampPlayersfamily_name: TWideStringField
      FieldName = 'family_name'
      Size = 128
    end
    object qryTeamChampPlayersfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qryTeamChampPlayersteam_id: TSmallintField
      FieldName = 'team_id'
      Required = True
    end
    object qryTeamChampPlayersplayer_id: TIntegerField
      FieldName = 'player_id'
      Required = True
    end
    object qryTeamChampPlayersseason_id: TSmallintField
      FieldName = 'season_id'
      Required = True
    end
    object qryTeamChampPlayerssince: TPgDateField
      FieldName = 'since'
    end
    object qryTeamChampPlayersuntil: TPgDateField
      FieldName = 'until'
    end
    object qryTeamChampPlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryTeamChampPlayersbirth_date: TPgDateField
      FieldName = 'birth_date'
    end
    object qryTeamChampPlayersbirth_year: TSmallintField
      FieldName = 'birth_year'
    end
    object qryTeamChampPlayersbirth_place: TWideStringField
      FieldName = 'birth_place'
      Size = 128
    end
    object qryTeamChampPlayersrole: TSmallintField
      FieldName = 'role'
    end
    object qryTeamChampPlayersnotes: TWideStringField
      FieldName = 'notes'
      Size = 1024
    end
    object qryTeamChampPlayersfullname: TWideStringField
      FieldName = 'fullname'
      Size = 256
    end
    object qryTeamChampPlayersclub_origin_id: TIntegerField
      FieldName = 'club_origin_id'
    end
  end
  object dsTeamChampPlayers: TDataSource
    DataSet = qryTeamChampPlayers
    Left = 64
    Top = 472
  end
  object qryChampRanking: TPgQuery
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT ranking_id, season_id, league_id, team_id, pos'
      '      , played_matches, '
      
        '       won_matches, lost_matches, tied_matches, home_matches, ho' +
        'me_won, '
      
        '       home_lost, home_tied, outside_played, outside_won, outsid' +
        'e_lost, '
      '       outside_tied, goal_done, goal_lost'
      '  FROM football.ft_ranking_table'
      'WHERE'
      '     season_id = :season_id and league_id = :league_id')
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    MasterSource = dsChampionships
    Left = 288
    Top = 40
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryChampRankingranking_id: TIntegerField
      FieldName = 'ranking_id'
    end
    object qryChampRankingseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryChampRankingleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object qryChampRankingteam_id: TSmallintField
      FieldName = 'team_id'
    end
    object qryChampRankingplayed_matches: TSmallintField
      FieldName = 'played_matches'
    end
    object qryChampRankingwon_matches: TSmallintField
      FieldName = 'won_matches'
    end
    object qryChampRankinglost_matches: TSmallintField
      FieldName = 'lost_matches'
    end
    object qryChampRankingtied_matches: TSmallintField
      FieldName = 'tied_matches'
    end
    object qryChampRankinghome_matches: TSmallintField
      FieldName = 'home_matches'
    end
    object qryChampRankinghome_won: TSmallintField
      FieldName = 'home_won'
    end
    object qryChampRankinghome_lost: TSmallintField
      FieldName = 'home_lost'
    end
    object qryChampRankinghome_tied: TSmallintField
      FieldName = 'home_tied'
    end
    object qryChampRankingoutside_played: TSmallintField
      FieldName = 'outside_played'
    end
    object qryChampRankingoutside_won: TSmallintField
      FieldName = 'outside_won'
    end
    object qryChampRankingoutside_lost: TSmallintField
      FieldName = 'outside_lost'
    end
    object qryChampRankingoutside_tied: TSmallintField
      FieldName = 'outside_tied'
    end
    object qryChampRankinggoal_done: TSmallintField
      FieldName = 'goal_done'
    end
    object qryChampRankinggoal_lost: TSmallintField
      FieldName = 'goal_lost'
    end
    object qryChampRankinglkpTeamName: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpTeamName'
      LookupDataSet = lkpTeams
      LookupKeyFields = 'team_id'
      LookupResultField = 'club_name'
      KeyFields = 'team_id'
      Size = 60
      Lookup = True
    end
    object qryChampRankingcalcPunti: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'calcPunti'
      Calculated = True
    end
    object qryChampRankingcalcEnglish: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calcEnglish'
      Calculated = True
    end
    object qryChampRankingpos: TSmallintField
      FieldName = 'pos'
    end
  end
  object dsChampRanking: TDataSource
    DataSet = qryChampRanking
    Left = 288
    Top = 96
  end
  object qrySelectLeagues: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_leagues'
      '  (league_id, league_name, iso_country_code, league_position)'
      'VALUES'
      
        '  (:league_id, :league_name, :iso_country_code, :league_position' +
        ')')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_leagues'
      'WHERE'
      '  league_id = :Old_league_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_leagues'
      'SET'
      
        '  league_id = :league_id, league_name = :league_name, iso_countr' +
        'y_code = :iso_country_code, league_position = :league_position'
      'WHERE'
      '  league_id = :Old_league_id')
    SQLRefresh.Strings = (
      
        'SELECT league_id, league_name, iso_country_code, league_position' +
        ' FROM football.ft_leagues'
      'WHERE'
      '  league_id = :league_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_leagues'
      'WHERE'
      '  league_id = :Old_league_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_leagues'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT  l.*'
      '  FROM '
      '      football.ft_leagues l '
      
        '  WHERE not exists (select 1 from football.ft_championships f wh' +
        'ere'
      '     f.season_id = :season_id and l.league_id = f.league_id)'
      '  ORDER BY l.league_position')
    MasterSource = dsSeasons
    Left = 64
    Top = 528
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = nil
      end>
    object qrySelectLeaguesleague_id: TSmallintField
      FieldName = 'league_id'
      Required = True
    end
    object qrySelectLeaguesleague_name: TWideStringField
      FieldName = 'league_name'
      Size = 128
    end
    object qrySelectLeaguesiso_country_code: TWideStringField
      FieldName = 'iso_country_code'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qrySelectLeaguesleague_position: TSmallintField
      FieldName = 'league_position'
    end
  end
  object qryTeamsLastSeason: TPgQuery
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT c.season_id, c.league_id, c.team_id, t.team_name'
      '  FROM '
      '  football.ft_teams_championships c, football.ft_teams t'
      '  where'
      '  c.team_id = t.team_id'
      '  and'
      '  c.season_id = (:season_id  - 1) and c.league_id = (:league_id)'
      '  and'
      '  not exists ('
      'select 1 from football.ft_teams_championships c '
      'where c.season_id = :season_id and c.team_id = t.team_id)'
      '  order by t.team_name asc')
    BeforeOpen = qryTeamsLastSeasonBeforeOpen
    Left = 624
    Top = 88
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 45
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 26
      end>
    object qryTeamsLastSeasonseason_id: TSmallintField
      FieldName = 'season_id'
      Required = True
    end
    object qryTeamsLastSeasonleague_id: TSmallintField
      FieldName = 'league_id'
      Required = True
    end
    object qryTeamsLastSeasonteam_id: TSmallintField
      FieldName = 'team_id'
      Required = True
    end
    object qryTeamsLastSeasonteam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
  end
  object qryCloneSeason: TPgQuery
    Connection = PgConnection1
    SQL.Strings = (
      'insert into football.ft_championships'
      'select  :new_season_id, league_id'
      'from football.ft_championships f '
      'where f.season_id = :old_season_id'
      'and not exists '
      '(select 1 from football.ft_championships g '
      'where g.season_id =  :new_season_id '
      'and f.league_id = g.league_id)')
    Left = 176
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'new_season_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'old_season_id'
        Value = nil
      end>
  end
  object qryAllPlayers: TPgQuery
    KeyFields = 'anagraph_id'
    KeySequence = 'anagraph.an_anagraph_seq'
    DataTypeMap.IgnoreInvalidRules = False
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    SQLInsert.Strings = (
      'INSERT INTO football.ft_players'
      
        '  (anagraph_id, birth_date, birth_year, first_name, family_name,' +
        ' birth_place, notes, role)'
      'VALUES'
      
        '  (:anagraph_id, :birth_date, :birth_year, :first_name, :family_' +
        'name, :birth_place, :notes, :role)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_players'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_players'
      'SET'
      
        '  anagraph_id = :anagraph_id, birth_date = :birth_date, birth_ye' +
        'ar = :birth_year, first_name = :first_name, family_name = :famil' +
        'y_name, birth_place = :birth_place, notes = :notes, role = :role'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLRefresh.Strings = (
      
        'SELECT anagraph_id, birth_date, birth_year, first_name, family_n' +
        'ame, birth_place, notes, role FROM football.ft_players'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_players'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_players'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT   '
      '   p.*, '
      
        '    family_name || '#39' '#39' || first_name || '#39' - '#39' || public.nvl(note' +
        's, text('#39'n.a.'#39')) || '#39' '#39' || role_name'
      '    as fullname'
      '  FROM '
      '    football.ft_players p, football.ft_roles r'
      'where '
      
        '    upper(family_name || '#39' '#39' || first_name) like upper('#39'%'#39' || :f' +
        'amily_name || '#39'%'#39')'
      '    and'
      '   (P.ANAGRAPH_id = :player_id or :player_id = 0)'
      '   and public.nvl(p.role, 0) = r.role_id'
      'order by family_name, first_name')
    Left = 624
    Top = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'family_name'
        Value = 'Ross'
      end
      item
        DataType = ftInteger
        Name = 'player_id'
        ParamType = ptInput
        Value = 0
      end>
    object qryAllPlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryAllPlayersbirth_date: TPgDateField
      FieldName = 'birth_date'
    end
    object qryAllPlayersbirth_year: TSmallintField
      FieldName = 'birth_year'
    end
    object qryAllPlayersfirst_name: TWideStringField
      FieldName = 'first_name'
      Required = True
      Size = 128
    end
    object qryAllPlayersfamily_name: TWideStringField
      FieldName = 'family_name'
      Size = 128
    end
    object qryAllPlayersbirth_place: TWideStringField
      FieldName = 'birth_place'
      Size = 128
    end
    object qryAllPlayersnotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryAllPlayersrole: TSmallintField
      FieldName = 'role'
    end
    object qryAllPlayerslkpRoleName: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpRoleName'
      LookupDataSet = lkpRoles
      LookupKeyFields = 'role_id'
      LookupResultField = 'role_name'
      KeyFields = 'role'
      Size = 30
      Lookup = True
    end
    object qryAllPlayersfullname: TWideStringField
      FieldName = 'fullname'
      ReadOnly = True
      Size = 512
    end
  end
  object dsTeamLastSeason: TDataSource
    DataSet = qryTeamsLastSeason
    Left = 624
    Top = 144
  end
  object qryTeamPlayersLast: TPgQuery
    DataTypeMap.IgnoreInvalidRules = False
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    SQLInsert.Strings = (
      'INSERT INTO football.ft_teams_players'
      '  (team_id, player_id, season_id, since, until)'
      'VALUES'
      '  (:team_id, :player_id, :season_id, :since, :until)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_teams_players'
      'SET'
      
        '  team_id = :team_id, player_id = :player_id, season_id = :seaso' +
        'n_id, since = :since, until = :until'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id')
    SQLRefresh.Strings = (
      
        'SELECT team_id, player_id, season_id, since, until FROM football' +
        '.ft_teams_players'
      'WHERE'
      
        '  team_id = :team_id AND player_id = :player_id AND season_id = ' +
        ':season_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_players'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT   '
      '   t.*, p.*,'
      '   p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      '       || public.nvl(notes, text('#39'n.a.'#39')) || '#39' '#39' || role_name '
      '    as fullname'
      '  FROM '
      '    football.ft_teams_players t'
      '  , football.ft_players p'
      '  , football.ft_roles r'
      'where '
      'r.role_id = public.nvl(p.role,0)'
      'and'
      't.team_id = :team_id'
      'and'
      't.season_id = (:season_id - 1)'
      'and'
      'p.anagraph_id = t.player_id'
      'and not exists'
      '(select 1 from     '
      '  football.ft_teams_players z'
      '  where '
      '   z.team_id = :team_id'
      '  and'
      '    z.season_id = :season_id'
      '  and'
      '    z.player_id = t.player_id  '
      '  )'
      'order by family_name, first_name')
    MasterFields = 'team_id'
    DetailFields = 'team_id'
    MasterSource = dsTeamsLeagues
    Left = 392
    Top = 456
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'team_id'
        ParamType = ptInput
        Value = 251
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 44
      end>
    object qryTeamPlayersLastfamily_name: TWideStringField
      FieldName = 'family_name'
      Origin = 'family_name'
      Size = 128
    end
    object qryTeamPlayersLastfirst_name: TWideStringField
      FieldName = 'first_name'
      Origin = 'first_name'
      Size = 128
    end
    object qryTeamPlayersLastteam_id: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'team_id'
      Origin = 'team_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamPlayersLastplayer_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'player_id'
      Origin = 'player_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamPlayersLastseason_id: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'season_id'
      Origin = 'season_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTeamPlayersLastsince: TPgDateField
      FieldName = 'since'
    end
    object qryTeamPlayersLastuntil: TPgDateField
      FieldName = 'until'
    end
    object qryTeamPlayersLastanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
      Required = True
    end
    object qryTeamPlayersLastbirth_date: TPgDateField
      FieldName = 'birth_date'
      ReadOnly = True
    end
    object qryTeamPlayersLastbirth_year: TSmallintField
      FieldName = 'birth_year'
      ReadOnly = True
    end
    object qryTeamPlayersLastbirth_place: TWideStringField
      FieldName = 'birth_place'
      ReadOnly = True
      Size = 128
    end
    object qryTeamPlayersLastnotes: TWideMemoField
      FieldName = 'notes'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryTeamPlayersLastrole: TSmallintField
      FieldName = 'role'
      ReadOnly = True
    end
    object qryTeamPlayersLastStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpRoleName'
      LookupDataSet = lkpRoles
      LookupKeyFields = 'role_id'
      LookupResultField = 'role_name'
      KeyFields = 'role'
      Size = 30
      Lookup = True
    end
    object qryTeamPlayersLastclub_origin_id: TIntegerField
      FieldName = 'club_origin_id'
    end
    object qryTeamPlayersLastfullname: TWideStringField
      FieldName = 'fullname'
      ReadOnly = True
      Size = 512
    end
  end
  object qryTeamsClubsLeagues: TPgQuery
    DMLRefresh = True
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT * '
      '  FROM '
      '  football.ft_view_club_teams_championships v'
      '  where'
      '  v.season_id = :season_id '
      '  and  '
      '  v.club_id = :club_id'
      '  order by v.team_name asc')
    MasterFields = 'club_id'
    DetailFields = 'club_id'
    MasterSource = dsClubs
    Left = 392
    Top = 232
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 44
      end
      item
        DataType = ftInteger
        Name = 'club_id'
        ParamType = ptInput
        Value = 251
      end>
    object qryTeamsClubsLeaguesclub_id: TSmallintField
      FieldName = 'club_id'
    end
    object qryTeamsClubsLeaguesseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryTeamsClubsLeaguesleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object qryTeamsClubsLeaguesteam_id: TSmallintField
      FieldName = 'team_id'
    end
    object qryTeamsClubsLeaguesteam_name: TWideStringField
      FieldName = 'team_name'
      Size = 128
    end
    object qryTeamsClubsLeaguesleague_name: TWideStringField
      FieldName = 'league_name'
      Size = 128
    end
  end
  object dsTeamsLeagues: TDataSource
    DataSet = qryTeamsClubsLeagues
    Left = 392
    Top = 288
  end
  object dsTeamsPlayersLast: TDataSource
    DataSet = qryTeamPlayersLast
    Left = 392
    Top = 512
  end
  object lkpRoles: TPgTable
    TableName = 'football.ft_roles'
    Connection = PgConnection1
    Left = 624
    Top = 352
    object lkpRolesrole_id: TSmallintField
      FieldName = 'role_id'
      Required = True
    end
    object lkpRolesrole_code: TWideStringField
      FieldName = 'role_code'
      Size = 5
    end
    object lkpRolesrole_name: TWideStringField
      FieldName = 'role_name'
      Size = 30
    end
  end
  object qryTeamRankings: TPgQuery
    Connection = PgConnection1
    SQL.Strings = (
      
        'SELECT football.ft_seasons.season_id,  football.ft_seasons.seaso' +
        'n_code, '
      'football.ft_ranking_table.played_matches, '
      
        'football.ft_ranking_table.won_matches, football.ft_ranking_table' +
        '.lost_matches, '
      
        'football.ft_ranking_table.tied_matches, football.ft_ranking_tabl' +
        'e.home_matches, '
      
        'football.ft_ranking_table.home_won, football.ft_ranking_table.ho' +
        'me_lost, '
      
        'football.ft_ranking_table.home_tied, football.ft_ranking_table.o' +
        'utside_played, '
      
        'football.ft_ranking_table.outside_won, football.ft_ranking_table' +
        '.outside_lost, '
      
        'football.ft_ranking_table.outside_tied, football.ft_ranking_tabl' +
        'e.goal_done, '
      
        'football.ft_ranking_table.goal_lost, football.ft_ranking_table.t' +
        'eam_id,'
      'football.ft_ranking_table.pos, football.ft_leagues.league_name'
      'FROM football.ft_seasons '
      'INNER JOIN '
      '(football.ft_leagues '
      'INNER JOIN football.ft_ranking_table ON '
      
        'football.ft_leagues.league_id = football.ft_ranking_table.league' +
        '_id) '
      
        'ON football.ft_seasons.season_id = football.ft_ranking_table.sea' +
        'son_id'
      'where '
      'team_id = :team_id'
      'order by football.ft_seasons.season_id desc')
    MasterFields = 'team_id'
    DetailFields = 'team_id'
    MasterSource = dsTeams
    Left = 512
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'team_id'
        ParamType = ptInput
        Value = 251
      end>
    object qryTeamRankingsseason_code: TWideStringField
      FieldName = 'season_code'
      FixedChar = True
      Size = 5
    end
    object qryTeamRankingsplayed_matches: TSmallintField
      FieldName = 'played_matches'
      ReadOnly = True
    end
    object qryTeamRankingswon_matches: TSmallintField
      FieldName = 'won_matches'
      ReadOnly = True
    end
    object qryTeamRankingslost_matches: TSmallintField
      FieldName = 'lost_matches'
      ReadOnly = True
    end
    object qryTeamRankingstied_matches: TSmallintField
      FieldName = 'tied_matches'
      ReadOnly = True
    end
    object qryTeamRankingshome_matches: TSmallintField
      FieldName = 'home_matches'
      ReadOnly = True
    end
    object qryTeamRankingshome_won: TSmallintField
      FieldName = 'home_won'
      ReadOnly = True
    end
    object qryTeamRankingshome_lost: TSmallintField
      FieldName = 'home_lost'
      ReadOnly = True
    end
    object qryTeamRankingshome_tied: TSmallintField
      FieldName = 'home_tied'
      ReadOnly = True
    end
    object qryTeamRankingsoutside_played: TSmallintField
      FieldName = 'outside_played'
      ReadOnly = True
    end
    object qryTeamRankingsoutside_won: TSmallintField
      FieldName = 'outside_won'
      ReadOnly = True
    end
    object qryTeamRankingsoutside_lost: TSmallintField
      FieldName = 'outside_lost'
      ReadOnly = True
    end
    object qryTeamRankingsoutside_tied: TSmallintField
      FieldName = 'outside_tied'
      ReadOnly = True
    end
    object qryTeamRankingsgoal_done: TSmallintField
      FieldName = 'goal_done'
      ReadOnly = True
    end
    object qryTeamRankingsgoal_lost: TSmallintField
      FieldName = 'goal_lost'
      ReadOnly = True
    end
    object qryTeamRankingspos: TSmallintField
      FieldName = 'pos'
    end
    object qryTeamRankingscalcEnglish: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calcEnglish'
      Calculated = True
    end
    object qryTeamRankingscalcPunti: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'calcPunti'
      Calculated = True
    end
    object qryTeamRankingsteam_id: TIntegerField
      FieldName = 'team_id'
      ReadOnly = True
    end
    object qryTeamRankingsseason_id: TIntegerField
      FieldName = 'season_id'
      Required = True
    end
    object qryTeamRankingsleague_name: TWideStringField
      FieldName = 'league_name'
      ReadOnly = True
      Size = 128
    end
  end
  object dsTeamRankings: TDataSource
    DataSet = qryTeamRankings
    Left = 512
    Top = 328
  end
  object qryPlayerHistory: TPgQuery
    Connection = PgConnection1
    SQL.Strings = (
      
        'SELECT football.ft_seasons.season_code, football.ft_leagues.leag' +
        'ue_name, '
      'football.ft_ranking_table.pos, football.ft_teams.team_name'
      'FROM '
      '(football.ft_players '
      'INNER JOIN ((football.ft_seasons '
      'INNER JOIN football.ft_teams_players '
      
        'ON football.ft_seasons.season_id = football.ft_teams_players.sea' +
        'son_id) '
      'INNER JOIN (football.ft_teams '
      'INNER JOIN football.ft_ranking_table '
      
        'ON football.ft_teams.team_id = football.ft_ranking_table.team_id' +
        ') '
      
        'ON (football.ft_teams_players.season_id = football.ft_ranking_ta' +
        'ble.season_id) '
      
        'AND (football.ft_teams_players.team_id = football.ft_ranking_tab' +
        'le.team_id)) '
      
        'ON football.ft_players.anagraph_id = football.ft_teams_players.p' +
        'layer_id) '
      'INNER JOIN football.ft_leagues '
      
        'ON football.ft_ranking_table.league_id = football.ft_leagues.lea' +
        'gue_id'
      'where'
      'anagraph_id = :anagraph_id')
    MasterSource = dsTeamPlayers
    Left = 512
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'anagraph_id'
        Value = nil
      end>
    object qryPlayerHistoryseason_code: TWideStringField
      FieldName = 'season_code'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object qryPlayerHistoryleague_name: TWideStringField
      FieldName = 'league_name'
      ReadOnly = True
      Size = 128
    end
    object qryPlayerHistorypos: TSmallintField
      FieldName = 'pos'
      ReadOnly = True
    end
    object qryPlayerHistoryteam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
  end
  object dsPlayerHistory: TDataSource
    DataSet = qryPlayerHistory
    Left = 508
    Top = 440
  end
  object qryAllTeamsNoSeason: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_teams'
      '  (team_id, club_id, team_name)'
      'VALUES'
      '  (:team_id, :club_id, :team_name)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_teams'
      'WHERE'
      '  team_id = :Old_team_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_teams'
      'SET'
      '  team_id = :team_id, club_id = :club_id, team_name = :team_name'
      'WHERE'
      '  team_id = :Old_team_id')
    SQLRefresh.Strings = (
      'SELECT team_id, club_id, team_name FROM football.ft_teams'
      'WHERE'
      '  team_id = :team_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams'
      'WHERE'
      '  team_id = :Old_team_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'select t.* '
      'from football.ft_teams t '
      'where'
      'not exists ('
      'select 1 from football.ft_teams_championships c '
      'where c.season_id = :season_id and c.team_id = t.team_id)'
      'order by team_name')
    MasterSource = dsSeasons
    AfterScroll = qryTeamsAfterScroll
    Left = 624
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'season_id'
        Value = nil
      end>
    object qryAllTeamsNoSeasonteam_id: TIntegerField
      FieldName = 'team_id'
      Required = True
    end
    object qryAllTeamsNoSeasonclub_id: TSmallintField
      FieldName = 'club_id'
      Required = True
    end
    object qryAllTeamsNoSeasonteam_name: TWideStringField
      FieldName = 'team_name'
      Size = 128
    end
  end
  object lkpTeamsChampionship: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_teams_championships'
      '  (season_id, league_id, team_id)'
      'VALUES'
      '  (:season_id, :league_id, :team_id)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_teams_championships'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'team_id = :Old_team_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_teams_championships'
      'SET'
      
        '  season_id = :season_id, league_id = :league_id, team_id = :tea' +
        'm_id'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'team_id = :Old_team_id')
    SQLRefresh.Strings = (
      
        'SELECT season_id, league_id, team_id FROM football.ft_teams_cham' +
        'pionships'
      'WHERE'
      
        '  season_id = :season_id AND league_id = :league_id AND team_id ' +
        '= :team_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_championships'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'team_id = :Old_team_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_championships'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT c.season_id, c.league_id, c.team_id, t.team_name'
      '  FROM '
      '  football.ft_teams_championships c, football.ft_teams t'
      '  where'
      '  c.team_id = t.team_id'
      '  and'
      '  c.season_id = :season_id and c.league_id = :league_id'
      '  order by t.team_name asc')
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    MasterSource = dsChampionships
    Left = 512
    Top = 160
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 44
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Size = 2
        Value = 26
      end>
    object lkpTeamsChampionshipseason_id: TSmallintField
      FieldName = 'season_id'
      Required = True
    end
    object lkpTeamsChampionshipleague_id: TSmallintField
      FieldName = 'league_id'
      Required = True
    end
    object lkpTeamsChampionshipteam_id: TSmallintField
      FieldName = 'team_id'
      Required = True
    end
    object lkpTeamsChampionshipteam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
  end
  object qryClubPlayers: TPgQuery
    DataTypeMap.IgnoreInvalidRules = False
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    SQLInsert.Strings = (
      'INSERT INTO football.ft_teams_players'
      '  (team_id, player_id, season_id, since, until)'
      'VALUES'
      '  (:team_id, :player_id, :season_id, :since, :until)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_teams_players'
      'SET'
      
        '  team_id = :team_id, player_id = :player_id, season_id = :seaso' +
        'n_id, since = :since, until = :until'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id')
    SQLRefresh.Strings = (
      
        'SELECT team_id, player_id, season_id, since, until FROM football' +
        '.ft_teams_players'
      'WHERE'
      
        '  team_id = :team_id AND player_id = :player_id AND season_id = ' +
        ':season_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_players'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT   '
      '   s.*, p.*,'
      
        '      family_name || '#39' '#39' || first_name || '#39' - '#39' || public.nvl(no' +
        'tes, text('#39'n.a.'#39')) || '#39' '#39' || role_name'
      '    as fullname'
      '  FROM '
      '    football.ft_teams_players s'
      '  , football.ft_players p'
      '  , football.ft_teams c'
      '  , football.ft_roles r'
      'where '
      'r.role_id = public.nvl(p.role,0)'
      'and'
      'c.club_id = :club_id'
      'and'
      'c.team_id = s.team_id'
      'and'
      'season_id = :season_id'
      'and'
      'p.anagraph_id = s.player_id'
      'order by family_name, first_name')
    MasterSource = dsClubs
    Left = 512
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'club_id'
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 44
      end>
    object qryClubPlayersteam_id: TSmallintField
      FieldName = 'team_id'
      Required = True
    end
    object qryClubPlayersplayer_id: TIntegerField
      FieldName = 'player_id'
      Required = True
    end
    object qryClubPlayersseason_id: TSmallintField
      FieldName = 'season_id'
      Required = True
    end
    object qryClubPlayerssince: TPgDateField
      FieldName = 'since'
    end
    object qryClubPlayersuntil: TPgDateField
      FieldName = 'until'
    end
    object qryClubPlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
      Required = True
    end
    object qryClubPlayersbirth_date: TPgDateField
      FieldName = 'birth_date'
      ReadOnly = True
    end
    object qryClubPlayersbirth_year: TSmallintField
      FieldName = 'birth_year'
      ReadOnly = True
    end
    object qryClubPlayersfirst_name: TWideStringField
      FieldName = 'first_name'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object qryClubPlayersfamily_name: TWideStringField
      FieldName = 'family_name'
      ReadOnly = True
      Size = 128
    end
    object qryClubPlayersbirth_place: TWideStringField
      FieldName = 'birth_place'
      ReadOnly = True
      Size = 128
    end
    object qryClubPlayersnotes: TWideMemoField
      FieldName = 'notes'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryClubPlayersrole: TSmallintField
      FieldName = 'role'
      ReadOnly = True
    end
    object StringField1: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpRoleName'
      LookupDataSet = lkpRoles
      LookupKeyFields = 'role_id'
      LookupResultField = 'role_name'
      KeyFields = 'role'
      Size = 30
      Lookup = True
    end
    object qryClubPlayersclub_origin_id: TIntegerField
      FieldName = 'club_origin_id'
    end
    object qryClubPlayersfullname: TWideStringField
      FieldName = 'fullname'
      Size = 512
    end
  end
  object dsClubPlayers: TDataSource
    DataSet = qryClubPlayers
    Left = 512
    Top = 496
  end
  object qryAllClubPlayers: TPgQuery
    DataTypeMap.IgnoreInvalidRules = False
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    SQLInsert.Strings = (
      'INSERT INTO football.ft_teams_players'
      '  (team_id, player_id, season_id, since, until)'
      'VALUES'
      '  (:team_id, :player_id, :season_id, :since, :until)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_teams_players'
      'SET'
      
        '  team_id = :team_id, player_id = :player_id, season_id = :seaso' +
        'n_id, since = :since, until = :until'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id')
    SQLRefresh.Strings = (
      
        'SELECT team_id, player_id, season_id, since, until FROM football' +
        '.ft_teams_players'
      'WHERE'
      
        '  team_id = :team_id AND player_id = :player_id AND season_id = ' +
        ':season_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_players'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT   '
      
        '   k.club_name,   c.club_id,  s.team_id, s.player_id, s.season_i' +
        'd, s.since, s.until, p.*,'
      
        '       family_name || '#39' '#39' || first_name || '#39' - '#39' || public.nvl(n' +
        'otes, text('#39'n.a.'#39')) || '#39' '#39' || r.role_name '
      '    as fullname'
      '  FROM '
      '    football.ft_teams_players s'
      '  , football.ft_players p'
      '  , football.ft_teams c'
      '  , football.ft_clubs k'
      '  , football.ft_roles r'
      'where '
      'public.nvl(p.role, 0) = r.role_id'
      'and'
      'k.club_id = c.club_id'
      'and'
      's.player_id = :player_id'
      'and'
      'c.team_id = s.team_id'
      'and'
      'season_id = :season_id'
      'and'
      'p.anagraph_id = s.player_id'
      'order by family_name, first_name')
    MasterSource = dsAllPlayers
    BeforeOpen = qryAllClubPlayersBeforeOpen
    Left = 624
    Top = 520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'player_id'
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 44
      end>
    object qryAllClubPlayersteam_id: TSmallintField
      FieldName = 'team_id'
      Required = True
    end
    object qryAllClubPlayersplayer_id: TIntegerField
      FieldName = 'player_id'
      Required = True
    end
    object qryAllClubPlayersseason_id: TSmallintField
      FieldName = 'season_id'
      Required = True
    end
    object qryAllClubPlayerssince: TPgDateField
      FieldName = 'since'
    end
    object qryAllClubPlayersuntil: TPgDateField
      FieldName = 'until'
    end
    object qryAllClubPlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
      Required = True
    end
    object qryAllClubPlayersbirth_date: TPgDateField
      FieldName = 'birth_date'
      ReadOnly = True
    end
    object qryAllClubPlayersbirth_year: TSmallintField
      FieldName = 'birth_year'
      ReadOnly = True
    end
    object qryAllClubPlayersfirst_name: TWideStringField
      FieldName = 'first_name'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object qryAllClubPlayersfamily_name: TWideStringField
      FieldName = 'family_name'
      ReadOnly = True
      Size = 128
    end
    object qryAllClubPlayersbirth_place: TWideStringField
      FieldName = 'birth_place'
      ReadOnly = True
      Size = 128
    end
    object qryAllClubPlayersnotes: TWideMemoField
      FieldName = 'notes'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryAllClubPlayersrole: TSmallintField
      FieldName = 'role'
      ReadOnly = True
    end
    object qryAllClubPlayersclub_id: TSmallintField
      FieldName = 'club_id'
      ReadOnly = True
      Required = True
    end
    object qryAllClubPlayersclub_name: TWideStringField
      FieldName = 'club_name'
      ReadOnly = True
      Size = 128
    end
    object qryAllClubPlayersfullname: TWideStringField
      FieldName = 'fullname'
      ReadOnly = True
      Size = 512
    end
  end
  object dsAllPlayers: TDataSource
    DataSet = qryAllPlayers
    Left = 624
    Top = 464
  end
  object qryMatchTeamAllPlayers: TPgQuery
    DataTypeMap.IgnoreInvalidRules = False
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    SQLInsert.Strings = (
      'INSERT INTO football.ft_teams_players'
      '  (team_id, player_id, season_id, since, until, club_origin_id)'
      'VALUES'
      
        '  (:team_id, :player_id, :season_id, :since, :until, :club_origi' +
        'n_id)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_teams_players'
      'SET'
      
        '  team_id = :team_id, player_id = :player_id, season_id = :seaso' +
        'n_id, since = :since, until = :until, club_origin_id = :club_ori' +
        'gin_id'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id')
    SQLRefresh.Strings = (
      
        'SELECT team_id, player_id, season_id, since, until, club_origin_' +
        'id FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :team_id AND player_id = :player_id AND season_id = ' +
        ':season_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_players'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT   '
      '   t.*, p.*,'
      '       p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      
        '       || public.nvl(notes, text('#39'n.a.'#39')) || '#39' '#39' || r.role_name ' +
        ' '
      '    as fullname'
      '  FROM '
      '    football.ft_teams_players t'
      '  , football.ft_players p'
      '  , football.ft_roles r'
      'where '
      'public.nvl(p.role, 0) = r.role_id'
      'and'
      'team_id = :team_id'
      'and'
      'season_id = :season_id'
      'and'
      'p.anagraph_id = t.player_id'
      'order by family_name, first_name')
    OnNewRecord = qryMatchTeamAllPlayersNewRecord
    Left = 288
    Top = 376
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'team_id'
        ParamType = ptInput
        Value = 251
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 44
      end>
    object StringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpRoleName'
      LookupDataSet = lkpRoles
      LookupKeyFields = 'role_id'
      LookupResultField = 'role_name'
      KeyFields = 'role'
      Size = 30
      Lookup = True
    end
    object qryMatchTeamAllPlayersteam_id: TSmallintField
      FieldName = 'team_id'
    end
    object qryMatchTeamAllPlayersplayer_id: TIntegerField
      FieldName = 'player_id'
    end
    object qryMatchTeamAllPlayersseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryMatchTeamAllPlayerssince: TPgDateField
      FieldName = 'since'
    end
    object qryMatchTeamAllPlayersuntil: TPgDateField
      FieldName = 'until'
    end
    object qryMatchTeamAllPlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryMatchTeamAllPlayersbirth_date: TPgDateField
      FieldName = 'birth_date'
    end
    object qryMatchTeamAllPlayersbirth_year: TSmallintField
      FieldName = 'birth_year'
    end
    object qryMatchTeamAllPlayersfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qryMatchTeamAllPlayersfamily_name: TWideStringField
      FieldName = 'family_name'
      Size = 128
    end
    object qryMatchTeamAllPlayersbirth_place: TWideStringField
      FieldName = 'birth_place'
      Size = 128
    end
    object qryMatchTeamAllPlayersnotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryMatchTeamAllPlayersrole: TSmallintField
      FieldName = 'role'
    end
    object qryMatchTeamAllPlayersclub_origin_id: TIntegerField
      FieldName = 'club_origin_id'
    end
    object qryMatchTeamAllPlayersfullname: TWideStringField
      FieldName = 'fullname'
      Size = 512
    end
  end
  object qryAllTeamPlayers: TPgQuery
    DataTypeMap.IgnoreInvalidRules = False
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    SQLInsert.Strings = (
      'INSERT INTO football.ft_teams_players'
      '  (team_id, player_id, season_id, since, until)'
      'VALUES'
      '  (:team_id, :player_id, :season_id, :since, :until)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_teams_players'
      'SET'
      
        '  team_id = :team_id, player_id = :player_id, season_id = :seaso' +
        'n_id, since = :since, until = :until'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id')
    SQLRefresh.Strings = (
      
        'SELECT team_id, player_id, season_id, since, until FROM football' +
        '.ft_teams_players'
      'WHERE'
      
        '  team_id = :team_id AND player_id = :player_id AND season_id = ' +
        ':season_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_players'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT   '
      '   distinct'
      '   p.*, '
      
        '   family_name || '#39' '#39' || first_name || '#39' - '#39' || public.nvl(notes' +
        ', text('#39'n.a.'#39')) || '#39' '#39' || r.role_name    '
      '    as fullname'
      '  FROM '
      '    football.ft_teams_players t'
      '  , football.ft_players p'
      '  , football.ft_roles r'
      ''
      'where '
      'public.nvl(p.role, 0) = r.role_id'
      'and'
      't.team_id = :team_id'
      'and'
      't.season_id = (:search_season_id)'
      'and'
      'p.anagraph_id = t.player_id'
      'and'
      '('
      ' not exists (select 1 from  football.ft_teams_players z'
      
        '  where  z.team_id = :team_id and z.season_id = :season_id and z' +
        '.player_id = t.player_id)'
      ' or :check_team = '#39'N'#39
      ')'
      'order by family_name, first_name')
    BeforeOpen = qryAllTeamPlayersBeforeOpen
    Left = 392
    Top = 568
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'team_id'
        ParamType = ptInput
        Value = 251
      end
      item
        DataType = ftInteger
        Name = 'search_season_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 44
      end
      item
        DataType = ftString
        Name = 'check_team'
        ParamType = ptInput
        Value = 'Y'
      end>
    object qryAllTeamPlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
      Required = True
    end
    object qryAllTeamPlayersbirth_date: TPgDateField
      FieldName = 'birth_date'
      ReadOnly = True
    end
    object qryAllTeamPlayersbirth_year: TSmallintField
      FieldName = 'birth_year'
      ReadOnly = True
    end
    object qryAllTeamPlayersfirst_name: TWideStringField
      FieldName = 'first_name'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object qryAllTeamPlayersfamily_name: TWideStringField
      FieldName = 'family_name'
      ReadOnly = True
      Size = 128
    end
    object qryAllTeamPlayersbirth_place: TWideStringField
      FieldName = 'birth_place'
      ReadOnly = True
      Size = 128
    end
    object qryAllTeamPlayersnotes: TWideMemoField
      FieldName = 'notes'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryAllTeamPlayersrole: TSmallintField
      FieldName = 'role'
      ReadOnly = True
    end
    object qryAllTeamPlayersfullname: TWideStringField
      FieldName = 'fullname'
      ReadOnly = True
      Size = 512
    end
  end
  object qryClubAllPlayers: TPgQuery
    DataTypeMap.IgnoreInvalidRules = False
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    SQLInsert.Strings = (
      'INSERT INTO football.ft_teams_players'
      '  (team_id, player_id, season_id, since, until)'
      'VALUES'
      '  (:team_id, :player_id, :season_id, :since, :until)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_teams_players'
      'SET'
      
        '  team_id = :team_id, player_id = :player_id, season_id = :seaso' +
        'n_id, since = :since, until = :until'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id')
    SQLRefresh.Strings = (
      
        'SELECT team_id, player_id, season_id, since, until FROM football' +
        '.ft_teams_players'
      'WHERE'
      
        '  team_id = :team_id AND player_id = :player_id AND season_id = ' +
        ':season_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_players'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT   '
      '   distinct  '
      
        '   family_name || '#39' '#39' || first_name || '#39' - '#39' || public.nvl(notes' +
        ', text('#39'n.a.'#39')) || r.role_name     '
      '   as fullname'
      '   , anagraph_id,  family_name , first_name, p.role, p.notes'
      ''
      '  FROM '
      '    football.ft_teams_players s'
      '  , football.ft_players p'
      '  , football.ft_teams c'
      '  , football.ft_roles r'
      'where '
      'public.nvl(p.role, 0) = r.role_id'
      'and'
      'c.club_id = :club_id'
      'and'
      'c.team_id = s.team_id'
      'and'
      'season_id = :season_id'
      'and'
      'p.anagraph_id = s.player_id'
      'and'
      '('
      ' not exists (select 1 from  football.ft_teams_players z'
      
        '  where  z.team_id = :team_id and z.season_id = :season_id and z' +
        '.player_id = s.player_id)'
      ' or :check_team = '#39'N'#39
      ')'
      'order by family_name, first_name')
    Left = 288
    Top = 488
    ParamData = <
      item
        DataType = ftInteger
        Name = 'club_id'
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 44
      end
      item
        DataType = ftInteger
        Name = 'team_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'check_team'
        ParamType = ptInput
        Value = 'Y'
      end>
    object qryClubAllPlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
      Required = True
    end
    object qryClubAllPlayersfirst_name: TWideStringField
      FieldName = 'first_name'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object qryClubAllPlayersfamily_name: TWideStringField
      FieldName = 'family_name'
      ReadOnly = True
      Size = 128
    end
    object qryClubAllPlayersfullname: TWideStringField
      FieldName = 'fullname'
      ReadOnly = True
      Required = True
      Size = 512
    end
    object qryClubAllPlayersrole: TSmallintField
      FieldName = 'role'
      ReadOnly = True
    end
    object qryClubAllPlayersnotes: TWideMemoField
      FieldName = 'notes'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object qryTeamHistory: TPgQuery
    Connection = PgConnection1
    SQL.Strings = (
      'select s.season_des,  s.season_code, h.*  from '
      'football.ft_teams_history h, football.ft_seasons s'
      'where'
      's.season_id = h.season_id'
      'order by h.season_id desc')
    MasterFields = 'team_id'
    DetailFields = 'team_id'
    MasterSource = dsTeams
    Left = 288
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'team_id'
        Value = nil
      end>
    object qryTeamHistoryseason_des: TWideStringField
      FieldName = 'season_des'
      ReadOnly = True
    end
    object qryTeamHistoryseason_code: TWideStringField
      FieldName = 'season_code'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object qryTeamHistoryteam_id: TIntegerField
      FieldName = 'team_id'
      Required = True
    end
    object qryTeamHistoryseason_id: TSmallintField
      FieldName = 'season_id'
      Required = True
    end
    object qryTeamHistoryleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object qryTeamHistoryleague_code: TWideStringField
      FieldName = 'league_code'
      Required = True
      Size = 12
    end
    object qryTeamHistorypos: TWideStringField
      FieldName = 'pos'
      Size = 3
    end
    object qryTeamHistoryresult_id: TSmallintField
      FieldName = 'result_id'
    end
    object qryTeamHistoryrank_code: TWideStringField
      FieldName = 'rank_code'
      Size = 12
    end
  end
  object dsTeamHistory: TDataSource
    DataSet = qryTeamHistory
    Left = 176
    Top = 504
  end
  object qrySelectHome: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_teams_championships'
      '  (season_id, league_id, team_id)'
      'VALUES'
      '  (:season_id, :league_id, :team_id)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_teams_championships'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'team_id = :Old_team_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_teams_championships'
      'SET'
      
        '  season_id = :season_id, league_id = :league_id, team_id = :tea' +
        'm_id'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'team_id = :Old_team_id')
    SQLRefresh.Strings = (
      
        'SELECT season_id, league_id, team_id FROM football.ft_teams_cham' +
        'pionships'
      'WHERE'
      
        '  season_id = :season_id AND league_id = :league_id AND team_id ' +
        '= :team_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_championships'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'team_id = :Old_team_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_championships'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT c.season_id, c.league_id, c.team_id, t.team_name'
      '  FROM '
      '  football.ft_teams_championships c, football.ft_teams t'
      '  where'
      '  c.team_id = t.team_id'
      '  and'
      '  c.season_id = :season_id and c.league_id = :league_id'
      '  and'
      
        '  c.team_id not in (select visitors_team_id from football.ft_cal' +
        'endar m where '
      
        '   m.season_id = :season_id and m.league_id = :league_id and m.m' +
        'atch_day_number = :match_day_number) '
      '  and'
      
        '  c.team_id not in (select home_team_id from football.ft_calenda' +
        'r m where '
      
        '   m.season_id = :season_id and m.league_id = :league_id and m.m' +
        'atch_day_number = :match_day_number) '
      '   '
      '  order by t.team_name asc')
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    MasterSource = dsMatchDays
    BeforeOpen = qrySelectHomeBeforeOpen
    Left = 176
    Top = 560
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 44
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 26
      end
      item
        DataType = ftInteger
        Name = 'match_day_number'
        ParamType = ptInput
        Value = 1
      end>
    object qrySelectHomeseason_id: TSmallintField
      FieldName = 'season_id'
      Required = True
    end
    object qrySelectHomeleague_id: TSmallintField
      FieldName = 'league_id'
      Required = True
    end
    object qrySelectHometeam_id: TSmallintField
      FieldName = 'team_id'
      Required = True
    end
    object qrySelectHometeam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
  end
  object qrySelectVisitors: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_teams_championships'
      '  (season_id, league_id, team_id)'
      'VALUES'
      '  (:season_id, :league_id, :team_id)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_teams_championships'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'team_id = :Old_team_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_teams_championships'
      'SET'
      
        '  season_id = :season_id, league_id = :league_id, team_id = :tea' +
        'm_id'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'team_id = :Old_team_id')
    SQLRefresh.Strings = (
      
        'SELECT season_id, league_id, team_id FROM football.ft_teams_cham' +
        'pionships'
      'WHERE'
      
        '  season_id = :season_id AND league_id = :league_id AND team_id ' +
        '= :team_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_championships'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'team_id = :Old_team_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_championships'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT c.season_id, c.league_id, c.team_id, t.team_name'
      '  FROM '
      '  football.ft_teams_championships c, football.ft_teams t'
      '  where'
      '  c.team_id = t.team_id'
      '  and'
      '  c.season_id = :season_id and c.league_id = :league_id'
      '  '
      '  -- check match_day_number'
      '  and'
      
        '  c.team_id not in (select visitors_team_id from football.ft_cal' +
        'endar m where '
      '   m.season_id = :season_id and m.league_id = :league_id '
      '   and m.match_day_number = :match_day_number)  '
      '  '
      '  -- match_day_number '
      '  and'
      
        '  c.team_id not in (select home_team_id from football.ft_calenda' +
        'r m where '
      '   m.season_id = :season_id and m.league_id = :league_id '
      '   and m.match_day_number = :match_day_number)  '
      '   '
      '  order by t.team_name asc')
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    MasterSource = dsMatchDays
    BeforeOpen = qrySelectVisitorsBeforeOpen
    Left = 176
    Top = 616
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 44
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Size = 2
        Value = 26
      end
      item
        DataType = ftInteger
        Name = 'match_day_number'
        ParamType = ptInput
        Value = 1
      end>
    object qrySelectVisitorsseason_id: TSmallintField
      FieldName = 'season_id'
      Required = True
    end
    object qrySelectVisitorsleague_id: TSmallintField
      FieldName = 'league_id'
      Required = True
    end
    object qrySelectVisitorsteam_id: TSmallintField
      FieldName = 'team_id'
      Required = True
    end
    object qrySelectVisitorsteam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
  end
  object qryVerificaMatches: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_calendar'
      
        '  (match_id, league_id, season_id, match_day_number, match_date,' +
        ' home_team_id, visitors_team_id, goal_home, goal_visitor, points' +
        '_home, points_visitors, notes, confirmed)'
      'VALUES'
      
        '  (:match_id, :league_id, :season_id, :match_day_number, :match_' +
        'date, :home_team_id, :visitors_team_id, :goal_home, :goal_visito' +
        'r, :points_home, :points_visitors, :notes, :confirmed)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_calendar'
      'WHERE'
      '  match_id = :Old_match_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_calendar'
      'SET'
      
        '  match_id = :match_id, league_id = :league_id, season_id = :sea' +
        'son_id, match_day_number = :match_day_number, match_date = :matc' +
        'h_date, home_team_id = :home_team_id, visitors_team_id = :visito' +
        'rs_team_id, goal_home = :goal_home, goal_visitor = :goal_visitor' +
        ', points_home = :points_home, points_visitors = :points_visitors' +
        ', notes = :notes, confirmed = :confirmed'
      'WHERE'
      '  match_id = :Old_match_id')
    SQLRefresh.Strings = (
      
        'SELECT match_id, league_id, season_id, match_day_number, match_d' +
        'ate, home_team_id, visitors_team_id, goal_home, goal_visitor, po' +
        'ints_home, points_visitors, notes, confirmed FROM football.ft_ca' +
        'lendar'
      'WHERE'
      '  match_id = :match_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_calendar'
      'WHERE'
      '  match_id = :Old_match_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_calendar'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT match_id, league_id, season_id, '
      '       match_day_number, match_date, '
      '       home_team_id, visitors_team_id, goal_home, '
      '       goal_visitor, points_home, '
      '       points_visitors, notes, confirmed'
      '  FROM football.ft_calendar'
      'WHERE  league_id = :league_id'
      '       and season_id = :season_id'
      '       and'
      '       ('
      
        '       ( home_team_id = :home_team_id and visitors_team_id = :vi' +
        'sitors_team_id)'
      '       or'
      
        '       ( home_team_id = :visitors_team_id and visitors_team_id =' +
        ' :home_team_id)'
      '       )')
    MasterFields = 'league_id;season_id'
    DetailFields = 'league_id;season_id'
    MasterSource = dsMatchDays
    Left = 288
    Top = 600
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 26
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 44
      end
      item
        DataType = ftInteger
        Name = 'home_team_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'visitors_team_id'
        Value = nil
      end>
    object qryVerificaMatchesmatch_id: TIntegerField
      FieldName = 'match_id'
      Required = True
    end
    object qryVerificaMatchesleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object qryVerificaMatchesseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryVerificaMatchesmatch_day_number: TSmallintField
      FieldName = 'match_day_number'
    end
    object qryVerificaMatchesmatch_date: TPgDateField
      FieldName = 'match_date'
    end
    object qryVerificaMatcheshome_team_id: TSmallintField
      FieldName = 'home_team_id'
    end
    object qryVerificaMatchesvisitors_team_id: TSmallintField
      FieldName = 'visitors_team_id'
    end
    object qryVerificaMatchesgoal_home: TSmallintField
      FieldName = 'goal_home'
    end
    object qryVerificaMatchesgoal_visitor: TSmallintField
      FieldName = 'goal_visitor'
    end
    object qryVerificaMatchespoints_home: TSmallintField
      FieldName = 'points_home'
    end
    object qryVerificaMatchespoints_visitors: TSmallintField
      FieldName = 'points_visitors'
    end
    object qryVerificaMatchesnotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryVerificaMatchesconfirmed: TBooleanField
      FieldName = 'confirmed'
    end
  end
  object dsMatchTeamAllPlayers: TDataSource
    DataSet = qryMatchTeamAllPlayers
    Left = 288
    Top = 432
  end
end
