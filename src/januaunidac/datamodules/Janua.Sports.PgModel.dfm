inherited dmJanuaPgSportsModel: TdmJanuaPgSportsModel
  Height = 524
  Width = 572
  inherited PgErgoConnection: TJanuaUniConnection
    Port = 5432
    Server = 'pg.januaservers.com'
    SchemaParams = <
      item
        Key = 'sports.players_group_id'
        Value = 30
      end
      item
        Key = 'test.test_key'
        Value = -1
      end>
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited qryUser: TUniQuery
    Top = 296
  end
  inherited qryTowns: TUniQuery
    Top = 352
  end
  inherited testTable: TUniTable
    Top = 408
  end
  inherited spSetSchemaID: TUniStoredProc
    Top = 464
    CommandStoredProcName = 'system.set_schema_id'
  end
  object dsTeamChampionships: TDataSource
    DataSet = qryTeamsChampionships
    Left = 176
    Top = 320
  end
  object qryTeamsChampionships: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_teams_championships'
      '  (season_id, league_id, team_id, position, penalty)'
      'VALUES'
      '  (:season_id, :league_id, :team_id, :position, :penalty)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_teams_championships'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'team_id = :Old_team_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_teams_championships'
      'SET'
      
        '  season_id = :season_id, league_id = :league_id, team_id = :tea' +
        'm_id, position = :position, penalty = :penalty'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'team_id = :Old_team_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_championships'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'team_id = :Old_team_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT season_id, league_id, team_id, position, penalty FROM foo' +
        'tball.ft_teams_championships'
      'WHERE'
      
        '  season_id = :season_id AND league_id = :league_id AND team_id ' +
        '= :team_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_championships'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  t.*'
      '  FROM '
      '  sports.teams_championships_view t'
      '  where'
      '  t.season_id = :season_id and t.league_id = :league_id'
      '  order by t.team_name asc')
    MasterSource = dsChampionships
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    Left = 176
    Top = 264
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 3
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
    object qryTeamsChampionshipsposition: TSmallintField
      FieldName = 'position'
    end
    object qryTeamsChampionshipspenalty: TSmallintField
      DefaultExpression = '0'
      FieldName = 'penalty'
      Required = True
    end
    object qryTeamsChampionshipsclub_name: TWideStringField
      FieldName = 'club_name'
      Size = 128
    end
  end
  object dsChampionships: TDataSource
    DataSet = qryChampionships
    Left = 176
    Top = 208
  end
  object qryChampionships: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_championships'
      'WHERE'
      '  season_id = :Old_season_id AND league_id = :Old_league_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT season_id, league_id FROM football.ft_championships'
      'WHERE'
      '  season_id = :season_id AND league_id = :league_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_championships'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT C.*'
      '  FROM '
      '      sports.championships_view C'
      '  WHERE C.season_id = :season_id'
      '   AND (c.league_id = :league_id or :league_id = 0)'
      '')
    MasterSource = dsSeasons
    MasterFields = 'season_id'
    DetailFields = 'season_id'
    Left = 176
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'season_id'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftInteger
        Name = 'league_id'
        ParamType = ptInput
        Value = 0
      end>
    object qryChampionshipsseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryChampionshipsleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object qryChampionshipspromoted: TSmallintField
      FieldName = 'promoted'
    end
    object qryChampionshipsplayoff: TSmallintField
      FieldName = 'playoff'
    end
    object qryChampionshipsrelegation: TSmallintField
      FieldName = 'relegation'
    end
    object qryChampionshipschampions: TSmallintField
      FieldName = 'champions'
    end
    object qryChampionshipsplayout: TSmallintField
      FieldName = 'playout'
    end
    object qryChampionshipsteams: TSmallintField
      FieldName = 'teams'
    end
    object qryChampionshipsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryChampionshipsjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryChampionshipsdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryChampionshipsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryChampionshipsupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryChampionshipsuser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 128
    end
    object qryChampionshipsuser_update: TWideStringField
      FieldName = 'user_update'
      Size = 128
    end
    object qryChampionshipsid: TIntegerField
      FieldName = 'id'
    end
    object qryChampionshipsleague_name: TWideStringField
      FieldName = 'league_name'
      Size = 128
    end
    object qryChampionshipsleague_position: TSmallintField
      FieldName = 'league_position'
    end
    object qryChampionshipsleague_code: TWideStringField
      FieldName = 'league_code'
      Size = 6
    end
  end
  object dsSeasons: TDataSource
    DataSet = qrySeasons
    Enabled = False
    Left = 176
    Top = 96
  end
  object qrySeasons: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_seasons'
      'WHERE'
      '  season_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT season_id, season_des, season_code, db_schema_id FROM foo' +
        'tball.ft_seasons'
      'WHERE'
      '  season_id = :season_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_seasons'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select v.id as season_id,  v.* '
      'from sports.seasons_view v'
      '  where v.id = :season_id or :season_id = 0'
      'order by id desc')
    AfterOpen = qrySeasonsAfterOpen
    OnNewRecord = qrySeasonsNewRecord
    Left = 176
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'season_id'
        ParamType = ptInput
        Value = 0
      end>
    object qrySeasonsid: TIntegerField
      FieldName = 'id'
    end
    object qrySeasonsseason_des: TWideStringField
      FieldName = 'season_des'
    end
    object qrySeasonsseason_code: TWideStringField
      FieldName = 'season_code'
      FixedChar = True
      Size = 5
    end
    object qrySeasonsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qrySeasonsorder_number: TSmallintField
      FieldName = 'order_number'
    end
    object qrySeasonsremote_id: TSmallintField
      FieldName = 'remote_id'
    end
    object qrySeasonsjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qrySeasonsdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qrySeasonsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qrySeasonsupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qrySeasonsuser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 128
    end
    object qrySeasonsuser_update: TWideStringField
      FieldName = 'user_update'
      Size = 128
    end
    object qrySeasonsseason_id: TIntegerField
      FieldName = 'season_id'
    end
  end
  object qryLkpSeasons: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_seasons'
      'WHERE'
      '  season_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT season_id, season_des, season_code, db_schema_id FROM foo' +
        'tball.ft_seasons'
      'WHERE'
      '  season_id = :season_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_seasons'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select '
      '   v.id as season_id,  v.season_des,v.season_code  '
      'from sports.seasons_view v'
      'order by id desc')
    Left = 176
    Top = 440
    object qryLkpSeasonsseason_id: TIntegerField
      FieldName = 'season_id'
    end
    object qryLkpSeasonsseason_des: TWideStringField
      FieldName = 'season_des'
    end
    object qryLkpSeasonsseason_code: TWideStringField
      FieldName = 'season_code'
      FixedChar = True
      Size = 5
    end
  end
  object qryMatchDays: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO sports.calendar_view'
      
        '  (season_id, league_id, match_day_number, match_day_date, match' +
        '_day_played, rest_team_id, db_schema_id, jguid, deleted, insert_' +
        'date, update_date, user_insert, user_update)'
      'VALUES'
      
        '  (:season_id, :league_id, :match_day_number, :match_day_date, :' +
        'match_day_played, :rest_team_id, :db_schema_id, :jguid, :deleted' +
        ', :insert_date, :update_date, :user_insert, :user_update)'
      'RETURNING'
      
        '  season_id, league_id, match_day_number, match_day_date, match_' +
        'day_played, rest_team_id, db_schema_id, jguid, deleted, insert_d' +
        'ate, update_date, user_insert, user_update')
    SQLDelete.Strings = (
      'DELETE FROM sports.calendar_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE sports.calendar_view'
      'SET'
      
        '  season_id = :season_id, league_id = :league_id, match_day_numb' +
        'er = :match_day_number, match_day_date = :match_day_date, match_' +
        'day_played = :match_day_played, rest_team_id = :rest_team_id, db' +
        '_schema_id = :db_schema_id, jguid = :jguid, deleted = :deleted, ' +
        'insert_date = :insert_date, update_date = :update_date, user_ins' +
        'ert = :user_insert, user_update = :user_update'
      'WHERE'
      '  jguid = :Old_jguid'
      'RETURNING'
      
        '  season_id, league_id, match_day_number, match_day_date, match_' +
        'day_played, rest_team_id, db_schema_id, jguid, deleted, insert_d' +
        'ate, update_date, user_insert, user_update')
    SQLLock.Strings = (
      'SELECT * FROM sports.calendar_view'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT season_id, league_id, match_day_number, match_day_date, m' +
        'atch_day_played, rest_team_id, db_schema_id, jguid, deleted, ins' +
        'ert_date, update_date, user_insert, user_update FROM sports.cale' +
        'ndar_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM sports.calendar_view'
      ''
      ') t')
    DataTypeMap = <
      item
        DBType = 517
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      '  FROM sports.calendar_view'
      'WHERE'
      '   season_id = :season_id '
      '   and'
      '   league_id = :league_id'
      'ORDER BY  match_day_number')
    MasterSource = dsChampionships
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    DMLRefresh = True
    Left = 376
    Top = 88
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 3
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
    object qryMatchDaysmatch_day_date: TDateField
      FieldName = 'match_day_date'
    end
    object qryMatchDaysmatch_day_played: TDateField
      FieldName = 'match_day_played'
    end
    object qryMatchDaysrest_team_id: TIntegerField
      FieldName = 'rest_team_id'
    end
    object qryMatchDayslkpRestTeam: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpRestTeam'
      LookupDataSet = lkpTeamsChampionship
      LookupKeyFields = 'team_id'
      LookupResultField = 'team_name'
      KeyFields = 'rest_team_id'
      Size = 60
      Lookup = True
    end
    object qryMatchDaysdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryMatchDaysjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryMatchDaysdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryMatchDaysinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryMatchDaysupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryMatchDaysuser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 128
    end
    object qryMatchDaysuser_update: TWideStringField
      FieldName = 'user_update'
      Size = 128
    end
  end
  object qryMatches: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO sports.matches_view'
      
        '  (id, league_id, season_id, match_day_number, match_time, match' +
        '_date, home_team_id, visitors_team_id, score_home, score_visitor' +
        ', points_home, points_visitors, notes, confirmed, home_notes, vi' +
        'sitors_notes, suspended, postponed, forfeit, remote_id, field_id' +
        ', article_url, video_url, db_schema_id, jguid, deleted, insert_d' +
        'ate, update_date, user_insert, user_update, home_team_name, visi' +
        'tors_team_name)'
      'VALUES'
      
        '  (:match_id, :league_id, :season_id, :match_day_number, :match_' +
        'time, :match_date, :home_team_id, :visitors_team_id, :score_home' +
        ', :score_visitor, :points_home, :points_visitors, :notes, :confi' +
        'rmed, :home_notes, :visitors_notes, :suspended, :postponed, :for' +
        'feit, :remote_id, :field_id, :article_url, :video_url, :db_schem' +
        'a_id, :jguid, :deleted, :insert_date, :update_date, :user_insert' +
        ', :user_update, :home_team_name, :visitors_team_name)')
    SQLDelete.Strings = (
      'DELETE FROM sports.matches_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE sports.matches_view'
      'SET'
      
        '  id = :match_id, league_id = :league_id, season_id = :season_id' +
        ', match_day_number = :match_day_number, match_time = :match_time' +
        ', match_date = :match_date, home_team_id = :home_team_id, visito' +
        'rs_team_id = :visitors_team_id, score_home = :score_home, score_' +
        'visitor = :score_visitor, points_home = :points_home, points_vis' +
        'itors = :points_visitors, notes = :notes, confirmed = :confirmed' +
        ', home_notes = :home_notes, visitors_notes = :visitors_notes, su' +
        'spended = :suspended, postponed = :postponed, forfeit = :forfeit' +
        ', remote_id = :remote_id, field_id = :field_id, article_url = :a' +
        'rticle_url, video_url = :video_url, db_schema_id = :db_schema_id' +
        ', jguid = :jguid, deleted = :deleted, insert_date = :insert_date' +
        ', update_date = :update_date, user_insert = :user_insert, user_u' +
        'pdate = :user_update, home_team_name = :home_team_name, visitors' +
        '_team_name = :visitors_team_name'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM sports.matches_view'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, league_id, season_id, match_day_number, match_time, m' +
        'atch_date, home_team_id, visitors_team_id, score_home, score_vis' +
        'itor, points_home, points_visitors, notes, confirmed, home_notes' +
        ', visitors_notes, suspended, postponed, forfeit, remote_id, fiel' +
        'd_id, article_url, video_url, db_schema_id, jguid, deleted, inse' +
        'rt_date, update_date, user_insert, user_update, home_team_name, ' +
        'visitors_team_name FROM sports.matches_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM sports.matches_view'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'notes'
        FieldType = ftWideString
        FieldLength = 1024
      end
      item
        FieldName = 'games_sets'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT c.id as match_id,  c.*'
      '  FROM sports.matches_view c'
      'WHERE c.match_day_number = :match_day_number '
      '      and c.league_id = :league_id'
      '       and c.season_id = :season_id')
    MasterSource = dsMatchDays
    MasterFields = 'league_id;season_id;match_day_number'
    DetailFields = 'league_id;season_id;match_day_number'
    AfterOpen = qryMatchesAfterOpen
    AfterScroll = qryMatchesAfterScroll
    OnNewRecord = qryMatchesNewRecord
    Left = 376
    Top = 200
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
        Value = 3
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Size = 2
        Value = 2
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
    object qryMatchespoints_home: TSmallintField
      FieldName = 'points_home'
      Origin = 'points_home'
    end
    object qryMatchespoints_visitors: TSmallintField
      FieldName = 'points_visitors'
      Origin = 'points_visitors'
    end
    object qryMatchesconfirmed: TBooleanField
      DefaultExpression = 'false'
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
    object qryMatchesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryMatcheshome_notes: TWideStringField
      FieldName = 'home_notes'
      Size = 1024
    end
    object qryMatchesvisitors_notes: TWideStringField
      FieldName = 'visitors_notes'
      Size = 1024
    end
    object qryMatchesmatch_date: TDateField
      FieldName = 'match_date'
    end
    object qryMatchesinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryMatchesupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryMatchesnotes: TWideStringField
      FieldName = 'notes'
      Size = 1024
    end
    object qryMatchesmatch_time: TDateTimeField
      FieldName = 'match_time'
    end
    object qryMatchessuspended: TBooleanField
      DefaultExpression = 'false'
      FieldName = 'suspended'
    end
    object qryMatchespostponed: TBooleanField
      DefaultExpression = 'false'
      FieldName = 'postponed'
    end
    object qryMatchesforfeit: TBooleanField
      DefaultExpression = 'false'
      FieldName = 'forfeit'
      Required = True
    end
    object qryMatchesremote_id: TIntegerField
      FieldName = 'remote_id'
    end
    object qryMatchesid: TIntegerField
      FieldName = 'id'
    end
    object qryMatchesscore_home: TSmallintField
      FieldName = 'score_home'
    end
    object qryMatchesscore_visitor: TSmallintField
      FieldName = 'score_visitor'
    end
    object qryMatchesfield_id: TIntegerField
      FieldName = 'field_id'
    end
    object qryMatchesarticle_url: TWideStringField
      FieldName = 'article_url'
      Size = 1024
    end
    object qryMatchesvideo_url: TWideStringField
      FieldName = 'video_url'
      Size = 1024
    end
    object qryMatchesjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryMatchesdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryMatchesuser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 128
    end
    object qryMatchesuser_update: TWideStringField
      FieldName = 'user_update'
      Size = 128
    end
    object qryMatcheshome_team_name: TWideStringField
      FieldName = 'home_team_name'
      Size = 128
    end
    object qryMatchesvisitors_team_name: TWideStringField
      FieldName = 'visitors_team_name'
      Size = 128
    end
    object qryMatchesgames_sets: TWideStringField
      FieldName = 'games_sets'
      Size = 1024
    end
  end
  object dsMatchDays: TDataSource
    DataSet = qryMatchDays
    Left = 376
    Top = 144
  end
  object dsMatches: TDataSource
    DataSet = qryMatches
    OnDataChange = dsMatchesDataChange
    Left = 376
    Top = 252
  end
  object qryMatchEvents: TUniQuery
    KeyFields = 'match_events_row_id'
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_match_events'
      'WHERE'
      '  match_events_row_id = :Old_match_events_row_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT match_id, team_id, player_id, event_id, minute, value, ma' +
        'tch_events_row_id, notes, favor_team_id FROM football.ft_match_e' +
        'vents'
      'WHERE'
      '  match_events_row_id = :match_events_row_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_match_events'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'teamplayer'
        FieldType = ftWideString
        FieldLength = 512
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select e.id AS match_events_row_id,  e.*'
      'from '
      'sports.match_events_view e'
      'where '
      'match_id = :match_id')
    MasterSource = dsMatches
    MasterFields = 'match_id'
    DetailFields = 'match_id'
    Left = 480
    Top = 104
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
    object qryMatchEventsid: TLargeintField
      FieldName = 'id'
    end
    object qryMatchEventsgame_set: TWideStringField
      FieldName = 'game_set'
      Size = 128
    end
    object qryMatchEventsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryMatchEventsjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryMatchEventsdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryMatchEventsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryMatchEventsupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryMatchEventsuser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 128
    end
    object qryMatchEventsuser_update: TWideStringField
      FieldName = 'user_update'
      Size = 128
    end
    object qryMatchEventsteam_name: TWideStringField
      FieldName = 'team_name'
      Size = 128
    end
  end
  object qryMatchAllPlayers: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO sports.match_players_view'
      
        '  (id, match_id, player_id, minutes, vote, played, team_id, pos,' +
        ' subst_id, score, self_score, conceded, since, until, sent_off, ' +
        'injuries, db_schema_id, jguid, deleted, insert_date, update_date' +
        ', user_insert, user_update, notes, full_name, lkpplayername)'
      'VALUES'
      
        '  (:id, :match_id, :player_id, :minutes, :vote, :played, :team_i' +
        'd, :pos, :subst_id, :score, :self_score, :conceded, :since, :unt' +
        'il, :sent_off, :injuries, :db_schema_id, :jguid, :deleted, :inse' +
        'rt_date, :update_date, :user_insert, :user_update, :notes, :full' +
        '_name, :lkpplayername)')
    SQLDelete.Strings = (
      'DELETE FROM sports.match_players_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE sports.match_players_view'
      'SET'
      
        '  id = :id, match_id = :match_id, player_id = :player_id, minute' +
        's = :minutes, vote = :vote, played = :played, team_id = :team_id' +
        ', pos = :pos, subst_id = :subst_id, score = :score, self_score =' +
        ' :self_score, conceded = :conceded, since = :since, until = :unt' +
        'il, sent_off = :sent_off, injuries = :injuries, db_schema_id = :' +
        'db_schema_id, jguid = :jguid, deleted = :deleted, insert_date = ' +
        ':insert_date, update_date = :update_date, user_insert = :user_in' +
        'sert, user_update = :user_update, notes = :notes, full_name = :f' +
        'ull_name, lkpplayername = :lkpplayername'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM sports.match_players_view'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, match_id, player_id, minutes, vote, played, team_id, ' +
        'pos, subst_id, score, self_score, conceded, since, until, sent_o' +
        'ff, injuries, db_schema_id, jguid, deleted, insert_date, update_' +
        'date, user_insert, user_update, notes, full_name, lkpplayername ' +
        'FROM sports.match_players_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM sports.match_players_view'
      ''
      ') t')
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
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  '
      '   m.*  '
      '  FROM '
      '    sports.match_players_view m'
      'where '
      'm.match_id = :match_id'
      'order by m.pos')
    Left = 480
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'match_id'
        Value = nil
      end>
    object qryMatchAllPlayersid: TLargeintField
      FieldName = 'id'
    end
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
    object qryMatchAllPlayerssubst_id: TIntegerField
      FieldName = 'subst_id'
    end
    object qryMatchAllPlayersscore: TSmallintField
      FieldName = 'score'
    end
    object qryMatchAllPlayersself_score: TSmallintField
      FieldName = 'self_score'
    end
    object qryMatchAllPlayersconceded: TSmallintField
      FieldName = 'conceded'
    end
    object qryMatchAllPlayerssince: TSmallintField
      FieldName = 'since'
    end
    object qryMatchAllPlayersuntil: TSmallintField
      FieldName = 'until'
    end
    object qryMatchAllPlayerssent_off: TSmallintField
      FieldName = 'sent_off'
    end
    object qryMatchAllPlayersinjuries: TSmallintField
      FieldName = 'injuries'
    end
    object qryMatchAllPlayersdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryMatchAllPlayersjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryMatchAllPlayersnotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
  end
  object dsMatchEvents: TDataSource
    DataSet = qryMatchEvents
    Left = 480
    Top = 160
  end
  object lkpTeamsChampionship: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_championships'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'team_id = :Old_team_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT season_id, league_id, team_id FROM football.ft_teams_cham' +
        'pionships'
      'WHERE'
      
        '  season_id = :season_id AND league_id = :league_id AND team_id ' +
        '= :team_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_championships'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  t.*'
      '  FROM '
      '  sports.teams_championships_view t'
      '  where'
      '  t.season_id = :season_id and t.league_id = :league_id'
      '  order by t.team_name asc')
    MasterSource = dsChampionships
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    Left = 176
    Top = 376
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Size = 2
        Value = 3
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
  object qrySelectTeam: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO sports.teams_championships_view'
      
        '  (team_name, club_name, id, season_id, league_id, team_id, posi' +
        'tion, penalty, remote_id, jguid)'
      'VALUES'
      
        '  (:team_name, :club_name, :id, :season_id, :league_id, :team_id' +
        ', :position, :penalty, :remote_id, :jguid)')
    SQLDelete.Strings = (
      'DELETE FROM sports.teams_championships_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE sports.teams_championships_view'
      'SET'
      
        '  team_name = :team_name, club_name = :club_name, id = :id, seas' +
        'on_id = :season_id, league_id = :league_id, team_id = :team_id, ' +
        'position = :position, penalty = :penalty, remote_id = :remote_id' +
        ', jguid = :jguid'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM sports.teams_championships_view'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT team_name, club_name, id, season_id, league_id, team_id, ' +
        'position, penalty, remote_id, jguid FROM sports.teams_championsh' +
        'ips_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM sports.teams_championships_view'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT t.season_id, t.league_id, t.team_id, t.team_name'
      '  FROM '
      '  sports.teams_championships_view t'
      '  where'
      '  t.season_id = :season_id and t.league_id = :league_id'
      '  and'
      '  t.team_id not in ('
      '     select visitors_team_id from sports.matches m where '
      
        '     m.season_id = :season_id and m.league_id = :league_id and m' +
        '.match_day_number = :match_day_number '
      '     union'
      '     select home_team_id from sports.matches m where '
      
        '     m.season_id = :season_id and m.league_id = :league_id and m' +
        '.match_day_number = :match_day_number'
      '    )    '
      '  order by t.team_name asc')
    MasterSource = dsMatchDays
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    Left = 376
    Top = 304
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 3
      end
      item
        DataType = ftSmallint
        Name = 'match_day_number'
        ParamType = ptInput
        Value = 1
      end>
    object qrySelectTeamseason_id: TSmallintField
      FieldName = 'season_id'
      Required = True
    end
    object qrySelectTeamleague_id: TSmallintField
      FieldName = 'league_id'
      Required = True
    end
    object qrySelectTeamteam_id: TSmallintField
      FieldName = 'team_id'
      Required = True
    end
    object qrySelectTeamteam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
  end
  object qryHomePlayers: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO sports.match_players_view'
      
        '  (match_id, player_id, minutes, vote, played, team_id, pos, sub' +
        'st_id, score, self_score, conceded, since, until, sent_off, inju' +
        'ries)'
      'VALUES'
      
        '  (:match_id, :player_id, :minutes, :vote, :played, :team_id, :p' +
        'os, :subst_id, :score, :self_score, :conceded, :since, :until, :' +
        'sent_off, :injuries)')
    SQLDelete.Strings = (
      'DELETE FROM sports.match_players_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE sports.match_players_view'
      'SET'
      
        '  match_id = :match_id, player_id = :player_id, minutes = :minut' +
        'es, vote = :vote, played = :played, '
      
        '  team_id = :team_id, pos = :pos, subst_id = :subst_id, score = ' +
        ':score, self_score = :self_score, '
      
        '  conceded = :conceded, since = :since, until = :until, sent_off' +
        ' = :sent_off, injuries = :injuries'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM sports.match_players_view'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT '
      
        '  match_id, player_id, minutes, vote, played, team_id, pos, subs' +
        't_id, score, self_score, conceded, since, until, sent_off, '
      '  injuries '
      '  FROM sports.match_players_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM sports.match_players_view'
      ''
      ') t')
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
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  '
      '   m.*  '
      '  FROM '
      '    sports.match_players_view m'
      'where '
      'm.match_id = :id'
      'and'
      'm.team_id = :home_team_id'
      'order by m.pos')
    MasterSource = dsMatches
    MasterFields = 'id;home_team_id'
    DetailFields = 'match_id;team_id'
    BeforePost = qryHomePlayersBeforePost
    OnNewRecord = qryHomePlayersNewRecord
    Left = 296
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 44
      end
      item
        DataType = ftSmallint
        Name = 'home_team_id'
        ParamType = ptInput
        Value = 2
      end>
    object qryHomePlayersid: TLargeintField
      FieldName = 'id'
    end
    object qryHomePlayersmatch_id: TIntegerField
      FieldName = 'match_id'
      Required = True
    end
    object qryHomePlayersplayer_id: TIntegerField
      FieldName = 'player_id'
    end
    object qryHomePlayersminutes: TSmallintField
      FieldName = 'minutes'
    end
    object qryHomePlayersvote: TFloatField
      FieldName = 'vote'
    end
    object qryHomePlayersplayed: TBooleanField
      FieldName = 'played'
    end
    object qryHomePlayersteam_id: TSmallintField
      FieldName = 'team_id'
    end
    object qryHomePlayerspos: TSmallintField
      FieldName = 'pos'
    end
    object qryHomePlayerssubst_id: TIntegerField
      FieldName = 'subst_id'
    end
    object qryHomePlayersscore: TSmallintField
      FieldName = 'score'
    end
    object qryHomePlayersself_score: TSmallintField
      FieldName = 'self_score'
    end
    object qryHomePlayersconceded: TSmallintField
      FieldName = 'conceded'
    end
    object qryHomePlayerssince: TSmallintField
      FieldName = 'since'
    end
    object qryHomePlayersuntil: TSmallintField
      FieldName = 'until'
    end
    object qryHomePlayerssent_off: TSmallintField
      FieldName = 'sent_off'
    end
    object qryHomePlayersinjuries: TSmallintField
      FieldName = 'injuries'
    end
    object qryHomePlayersdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryHomePlayersjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryHomePlayersdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryHomePlayersinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryHomePlayersupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryHomePlayersuser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 128
    end
    object qryHomePlayersuser_update: TWideStringField
      FieldName = 'user_update'
      Size = 128
    end
    object qryHomePlayersnotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryHomePlayersfull_name: TWideStringField
      FieldName = 'full_name'
      Size = 512
    end
    object qryHomePlayerslkpplayername: TWideStringField
      FieldName = 'lkpplayername'
      LookupDataSet = lkpHomePlayers
      LookupKeyFields = 'player_id'
      LookupResultField = 'full_name'
      Size = 512
    end
  end
  object qryVisitorsPlayers: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO sports.match_players_view'
      
        '  (id, match_id, player_id, minutes, vote, played, team_id, pos,' +
        ' subst_id, score, self_score, conceded, since, until, sent_off, ' +
        'injuries, jguid)'
      'VALUES'
      
        '  (:id, :match_id, :player_id, :minutes, :vote, :played, :team_i' +
        'd, :pos, :subst_id, :score, :self_score, :conceded, :since, :unt' +
        'il, :sent_off, :injuries, :jguid)')
    SQLDelete.Strings = (
      'DELETE FROM sports.match_players_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE sports.match_players_view'
      'SET'
      
        '  id = :id, match_id = :match_id, player_id = :player_id, minute' +
        's = :minutes, vote = :vote, played = :played, '
      
        '  team_id = :team_id, pos = :pos, subst_id = :subst_id, score = ' +
        ':score, self_score = :self_score, '
      
        '  conceded = :conceded, since = :since, until = :until, sent_off' +
        ' = :sent_off, injuries = :injuries, jguid = :jguid'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM sports.match_players_view'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT '
      
        '  id, match_id, player_id, minutes, vote, played, team_id, pos, ' +
        'subst_id, score, self_score, conceded, since, until, '
      '  sent_off, injuries, jguid FROM sports.match_players_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM sports.match_players_view'
      ''
      ') t')
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
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  '
      '   m.*  '
      '  FROM '
      '    sports.match_players_view m'
      'where '
      'm.match_id = :id'
      'order by m.pos')
    MasterSource = dsMatches
    MasterFields = 'id;visitors_team_id'
    DetailFields = 'match_id;team_id'
    BeforePost = qryVisitorsPlayersBeforePost
    OnNewRecord = qryVisitorsPlayersNewRecord
    Left = 456
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 44
      end
      item
        DataType = ftSmallint
        Name = 'visitors_team_id'
        ParamType = ptInput
        Value = 3
      end>
    object qryVisitorsPlayersid: TLargeintField
      FieldName = 'id'
    end
    object qryVisitorsPlayersmatch_id: TIntegerField
      FieldName = 'match_id'
    end
    object qryVisitorsPlayersplayer_id: TIntegerField
      FieldName = 'player_id'
    end
    object qryVisitorsPlayersminutes: TSmallintField
      FieldName = 'minutes'
    end
    object qryVisitorsPlayersvote: TFloatField
      FieldName = 'vote'
    end
    object qryVisitorsPlayersplayed: TBooleanField
      FieldName = 'played'
    end
    object qryVisitorsPlayersteam_id: TSmallintField
      FieldName = 'team_id'
    end
    object qryVisitorsPlayerspos: TSmallintField
      FieldName = 'pos'
    end
    object qryVisitorsPlayerssubst_id: TIntegerField
      FieldName = 'subst_id'
    end
    object qryVisitorsPlayersscore: TSmallintField
      FieldName = 'score'
    end
    object qryVisitorsPlayersself_score: TSmallintField
      FieldName = 'self_score'
    end
    object qryVisitorsPlayersconceded: TSmallintField
      FieldName = 'conceded'
    end
    object qryVisitorsPlayerssince: TSmallintField
      FieldName = 'since'
    end
    object qryVisitorsPlayersuntil: TSmallintField
      FieldName = 'until'
    end
    object qryVisitorsPlayerssent_off: TSmallintField
      FieldName = 'sent_off'
    end
    object qryVisitorsPlayersinjuries: TSmallintField
      FieldName = 'injuries'
    end
    object qryVisitorsPlayersdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryVisitorsPlayersjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryVisitorsPlayersdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryVisitorsPlayersinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryVisitorsPlayersupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryVisitorsPlayersuser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 128
    end
    object qryVisitorsPlayersuser_update: TWideStringField
      FieldName = 'user_update'
      Size = 128
    end
    object qryVisitorsPlayersnotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryVisitorsPlayersfull_name: TWideStringField
      FieldName = 'full_name'
      Size = 512
    end
    object qryVisitorsPlayerslkpplayername: TWideStringField
      FieldName = 'lkpplayername'
      LookupDataSet = lkpVisitorsPlayers
      LookupKeyFields = 'player_id'
      LookupResultField = 'full_name'
      Size = 512
    end
  end
  object qryMatchDayRanking: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  c.*'
      '  FROM sports.matchday_ranking_view c'
      'WHERE c.matchday = :match_day_number '
      '      and c.league_id = :league_id'
      '       and c.season_id = :season_id')
    MasterSource = dsMatchDays
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    Left = 272
    Top = 184
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
        Value = 3
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 2
      end>
    object qryMatchDayRankingseason_id: TIntegerField
      FieldName = 'season_id'
    end
    object qryMatchDayRankingleague_id: TIntegerField
      FieldName = 'league_id'
    end
    object qryMatchDayRankingmatchday: TSmallintField
      FieldName = 'matchday'
    end
    object qryMatchDayRankingpos: TSmallintField
      FieldName = 'pos'
    end
    object qryMatchDayRankingteam_id: TIntegerField
      FieldName = 'team_id'
    end
    object qryMatchDayRankingwon_matches: TSmallintField
      FieldName = 'won_matches'
    end
    object qryMatchDayRankinglost_matches: TSmallintField
      FieldName = 'lost_matches'
    end
    object qryMatchDayRankingtied_matches: TSmallintField
      FieldName = 'tied_matches'
    end
    object qryMatchDayRankinghome_matches: TSmallintField
      FieldName = 'home_matches'
    end
    object qryMatchDayRankinghome_won: TSmallintField
      FieldName = 'home_won'
    end
    object qryMatchDayRankinghome_lost: TSmallintField
      FieldName = 'home_lost'
    end
    object qryMatchDayRankinghome_tied: TSmallintField
      FieldName = 'home_tied'
    end
    object qryMatchDayRankingoutside_played: TSmallintField
      FieldName = 'outside_played'
    end
    object qryMatchDayRankingoutside_won: TSmallintField
      FieldName = 'outside_won'
    end
    object qryMatchDayRankingoutside_lost: TSmallintField
      FieldName = 'outside_lost'
    end
    object qryMatchDayRankingoutside_tied: TSmallintField
      FieldName = 'outside_tied'
    end
    object qryMatchDayRankingpoints: TSmallintField
      FieldName = 'points'
    end
    object qryMatchDayRankingpoints_home: TSmallintField
      FieldName = 'points_home'
    end
    object qryMatchDayRankingpoints_outside: TSmallintField
      FieldName = 'points_outside'
    end
    object qryMatchDayRankingscored: TSmallintField
      FieldName = 'scored'
    end
    object qryMatchDayRankingscored_home: TSmallintField
      FieldName = 'scored_home'
    end
    object qryMatchDayRankingscored_outside: TSmallintField
      FieldName = 'scored_outside'
    end
    object qryMatchDayRankingconceded: TSmallintField
      FieldName = 'conceded'
    end
    object qryMatchDayRankingconceded_home: TSmallintField
      FieldName = 'conceded_home'
    end
    object qryMatchDayRankingconceded_outside: TSmallintField
      FieldName = 'conceded_outside'
    end
    object qryMatchDayRankingaggregate_points: TSmallintField
      FieldName = 'aggregate_points'
    end
    object qryMatchDayRankingaggregate_group: TSmallintField
      FieldName = 'aggregate_group'
    end
    object qryMatchDayRankingrownum: TSmallintField
      FieldName = 'rownum'
    end
    object qryMatchDayRankingdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryMatchDayRankingteam_name: TWideStringField
      FieldName = 'team_name'
      Size = 128
    end
    object qryMatchDayRankingclub_name: TWideStringField
      FieldName = 'club_name'
      Size = 128
    end
    object qryMatchDayRankingdelta: TSmallintField
      FieldName = 'delta'
    end
    object qryMatchDayRankingdelta_games: TSmallintField
      FieldName = 'delta_games'
    end
    object qryMatchDayRankinggames_scored: TSmallintField
      FieldName = 'games_scored'
    end
    object qryMatchDayRankinggames_conceded: TSmallintField
      FieldName = 'games_conceded'
    end
    object qryMatchDayRankingplayed: TSmallintField
      FieldName = 'played'
    end
  end
  object spGenerateDayRanking: TUniStoredProc
    StoredProcName = 'sports.generate_day_ranking'
    SQL.Strings = (
      
        'SELECT sports.generate_day_ranking(:p_day, :p_league_id, :p_seas' +
        'on_id)')
    Connection = PgErgoConnection
    Left = 272
    Top = 120
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'p_day'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'p_league_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'p_season_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'sports.generate_day_ranking'
  end
  object qryGetLastMatchDay: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT * from  sports.get_last_match_day(:p_season_id, :p_league' +
        '_id)')
    Left = 272
    Top = 56
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'p_season_id'
        Value = 2
      end
      item
        DataType = ftSmallint
        Name = 'p_league_id'
        Value = 3
      end>
    object qryGetLastMatchDayget_last_match_day: TSmallintField
      FieldName = 'get_last_match_day'
      ReadOnly = True
    end
  end
  object lkpHomePlayers: TUniQuery
    DataTypeMap = <
      item
        DBType = 517
        FieldType = ftWideString
        FieldLength = 128
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT player_id, jguid, first_name, family_name, role_name, fir' +
        'st_name || '#39' '#39' || family_name as full_name'
      'FROM sports.team_players_view'
      'where'
      '   team_id = :home_team_id and season_id = :season_id ')
    MasterSource = dsMatches
    Left = 312
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'home_team_id'
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        Value = nil
      end>
    object lkpHomePlayersplayer_id: TIntegerField
      FieldName = 'player_id'
    end
    object lkpHomePlayersjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object lkpHomePlayersfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object lkpHomePlayersfamily_name: TWideStringField
      FieldName = 'family_name'
      Size = 128
    end
    object lkpHomePlayersrole_name: TWideStringField
      FieldName = 'role_name'
      Size = 30
    end
    object lkpHomePlayersfull_name: TWideStringField
      FieldName = 'full_name'
      ReadOnly = True
      Size = 128
    end
  end
  object lkpVisitorsPlayers: TUniQuery
    DataTypeMap = <
      item
        DBType = 517
        FieldType = ftWideString
        FieldLength = 128
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT player_id, jguid, first_name, family_name, role_name, fir' +
        'st_name || '#39' '#39' || family_name as full_name'
      'FROM sports.team_players_view'
      'where'
      '   team_id = :visitors_team_id and season_id = :season_id ')
    MasterSource = dsMatches
    Left = 448
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'visitors_team_id'
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        Value = nil
      end>
    object lkpVisitorsPlayersplayer_id: TIntegerField
      FieldName = 'player_id'
    end
    object lkpVisitorsPlayersjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object lkpVisitorsPlayersfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object lkpVisitorsPlayersfamily_name: TWideStringField
      FieldName = 'family_name'
      Size = 128
    end
    object lkpVisitorsPlayersrole_name: TWideStringField
      FieldName = 'role_name'
      Size = 30
    end
    object lkpVisitorsPlayersfull_name: TWideStringField
      FieldName = 'full_name'
      ReadOnly = True
      Size = 128
    end
  end
  object qrySets: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO sports.sets'
      
        '  (id, match_id, score_home, score_visitors, remote_id, db_schem' +
        'a_id, jguid, deleted, insert_date, update_date, user_insert, use' +
        'r_update, number)'
      'VALUES'
      
        '  (:id, :match_id, :score_home, :score_visitors, :remote_id, :db' +
        '_schema_id, :jguid, :deleted, :insert_date, :update_date, :user_' +
        'insert, :user_update, :number)')
    SQLDelete.Strings = (
      'DELETE FROM sports.sets'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE sports.sets'
      'SET'
      
        '  id = :id, match_id = :match_id, score_home = :score_home, scor' +
        'e_visitors = :score_visitors, remote_id = :remote_id, db_schema_' +
        'id = :db_schema_id, jguid = :jguid, deleted = :deleted, insert_d' +
        'ate = :insert_date, update_date = :update_date, user_insert = :u' +
        'ser_insert, user_update = :user_update, number = :number'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM sports.sets'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, match_id, score_home, score_visitors, remote_id, db_s' +
        'chema_id, jguid, deleted, insert_date, update_date, user_insert,' +
        ' user_update, number FROM sports.sets'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM sports.sets'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT s.*'
      #9'FROM sports.sets s'
      'WHERE'
      '      s.match_id = :id')
    MasterSource = dsMatches
    MasterFields = 'id'
    DetailFields = 'match_id'
    BeforePost = qrySetsBeforePost
    OnNewRecord = qrySetsNewRecord
    Left = 376
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
    object qrySetsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qrySetsmatch_id: TIntegerField
      FieldName = 'match_id'
      Required = True
    end
    object qrySetsscore_home: TSmallintField
      FieldName = 'score_home'
      Required = True
    end
    object qrySetsscore_visitors: TSmallintField
      FieldName = 'score_visitors'
      Required = True
    end
    object qrySetsremote_id: TLargeintField
      FieldName = 'remote_id'
    end
    object qrySetsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qrySetsjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qrySetsdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qrySetsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qrySetsupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qrySetsuser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 128
    end
    object qrySetsuser_update: TWideStringField
      FieldName = 'user_update'
      Size = 128
    end
    object qrySetsnumber: TSmallintField
      FieldName = 'number'
    end
  end
  object spAddMatchDay1: TUniStoredProc
    StoredProcName = 'sports.add_match_day'
    SQL.Strings = (
      'SELECT sports.add_match_day(:p_season_id, :p_league_id)')
    Connection = PgErgoConnection
    Left = 480
    Top = 272
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_season_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_league_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'sports.add_match_day'
  end
end
