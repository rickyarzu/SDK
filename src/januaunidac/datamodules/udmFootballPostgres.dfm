inherited dmFootballPostgres: TdmFootballPostgres
  OldCreateOrder = False
  OnDestroy = DSServerModuleDestroy
  Height = 790
  Width = 971
  inherited PgErgoConnection: TJanuaUniConnection
    Database = 'januaproject'
    Left = 56
    Top = 72
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited tbUserSessionRoles: TUniTable
    Left = 56
    Top = 240
  end
  inherited dsUserSession: TDataSource
    Left = 56
    Top = 184
  end
  inherited qryUserSession: TUniQuery
    Left = 56
    Top = 128
  end
  inherited qryUserProfile: TUniQuery
    Left = 56
    Top = 296
  end
  inherited qryUser: TUniQuery
    Left = 56
    Top = 352
  end
  inherited qryTowns: TUniQuery
    Left = 56
    Top = 408
  end
  inherited testTable: TUniTable
    Left = 56
    Top = 504
  end
  inherited PgUni: TPostgreSQLUniProvider
    Left = 128
  end
  object dspSeasons: TDataSetProvider
    DataSet = qrySeasons
    Left = 176
    Top = 368
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
      
        'SELECT f.*, l.league_name, l.iso_country_code, l.league_position' +
        ', l.league_code'
      '  FROM '
      '      football.ft_leagues l '
      '  INNER JOIN football.ft_championships f '
      '  ON l.league_id = f.league_id'
      '  WHERE f.season_id = :season_id'
      '  ORDER BY l.league_position')
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
        Size = 4
        Value = 77
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
    object qryChampionshipsleague_position: TSmallintField
      FieldName = 'league_position'
    end
    object qryChampionshipsleague_code: TWideStringField
      FieldName = 'league_code'
      Size = 6
    end
    object qryChampionshipsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      ReadOnly = True
    end
    object qryChampionshipspromoted: TSmallintField
      FieldName = 'promoted'
      ReadOnly = True
    end
    object qryChampionshipsplayoff: TSmallintField
      FieldName = 'playoff'
      ReadOnly = True
    end
    object qryChampionshipsrelegation: TSmallintField
      FieldName = 'relegation'
      ReadOnly = True
    end
    object qryChampionshipschampions: TSmallintField
      FieldName = 'champions'
      ReadOnly = True
    end
    object qryChampionshipsplayout: TSmallintField
      FieldName = 'playout'
      ReadOnly = True
    end
    object qryChampionshipsteams: TSmallintField
      FieldName = 'teams'
      ReadOnly = True
    end
  end
  object dsSeasons: TDataSource
    DataSet = qrySeasons
    Enabled = False
    Left = 176
    Top = 96
  end
  object dsChampionships: TDataSource
    DataSet = qryChampionships
    Left = 176
    Top = 200
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
      'select * from football.ft_seasons'
      'order by season_id desc')
    AfterScroll = qrySeasonsAfterScroll
    OnNewRecord = qrySeasonsNewRecord
    Left = 176
    Top = 48
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
  object qryClubs: TUniQuery
    KeyFields = 'club_id'
    SQLInsert.Strings = (
      'INSERT INTO football.ft_clubs'
      
        '  (club_id, club_name, "Foundation_date", anagraph_id, stadium_i' +
        'd, town, vice_president, team_manager, athletic_manager, colors,' +
        ' website, db_schema_id, remote_id, president, club_image, fclb_d' +
        'eleted, fclb_jguid)'
      'VALUES'
      
        '  (:club_id, :club_name, :"Foundation_date", :anagraph_id, :stad' +
        'ium_id, :town, :vice_president, :team_manager, :athletic_manager' +
        ', :colors, :website, :db_schema_id, :remote_id, :president, :clu' +
        'b_image, :fclb_deleted, :fclb_jguid)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_clubs'
      'WHERE'
      '  club_id = :Old_club_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_clubs'
      'SET'
      
        '  club_id = :club_id, club_name = :club_name, "Foundation_date" ' +
        '= :"Foundation_date", anagraph_id = :anagraph_id, stadium_id = :' +
        'stadium_id, town = :town, vice_president = :vice_president, team' +
        '_manager = :team_manager, athletic_manager = :athletic_manager, ' +
        'colors = :colors, website = :website, db_schema_id = :db_schema_' +
        'id, remote_id = :remote_id, president = :president, club_image =' +
        ' :club_image, fclb_deleted = :fclb_deleted, fclb_jguid = :fclb_j' +
        'guid'
      'WHERE'
      '  club_id = :Old_club_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_clubs'
      'WHERE'
      '  club_id = :Old_club_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT club_id, club_name, "Foundation_date", anagraph_id, stadi' +
        'um_id, town, vice_president, team_manager, athletic_manager, col' +
        'ors, website, db_schema_id, remote_id, president, club_image, fc' +
        'lb_deleted, fclb_jguid FROM football.ft_clubs'
      'WHERE'
      '  club_id = :club_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_clubs'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from football.ft_clubs')
    Filtered = True
    AfterOpen = qryClubsAfterOpen
    BeforeScroll = qryClubsBeforeScroll
    AfterScroll = qryClubsAfterScroll
    OnCalcFields = qryClubsCalcFields
    Left = 504
    Top = 32
    object qryClubsclub_id: TIntegerField
      FieldName = 'club_id'
    end
    object qryClubsclub_name: TWideStringField
      FieldName = 'club_name'
      Size = 128
    end
    object qryClubssearch_name: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'search_name'
      Size = 256
      Calculated = True
    end
    object qryClubsFoundation_date: TDateField
      FieldName = 'Foundation_date'
    end
    object qryClubsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryClubsstadium_id: TSmallintField
      FieldName = 'stadium_id'
    end
    object qryClubstown: TWideStringField
      FieldName = 'town'
      Size = 128
    end
    object qryClubsvice_president: TWideStringField
      FieldName = 'vice_president'
      Size = 128
    end
    object qryClubsteam_manager: TWideStringField
      FieldName = 'team_manager'
      Size = 128
    end
    object qryClubsathletic_manager: TWideStringField
      FieldName = 'athletic_manager'
      Size = 128
    end
    object qryClubscolors: TWideStringField
      FieldName = 'colors'
      Size = 128
    end
    object qryClubswebsite: TWideStringField
      FieldName = 'website'
      Size = 128
    end
    object qryClubsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryClubsremote_id: TIntegerField
      FieldName = 'remote_id'
    end
    object qryClubspresident: TWideStringField
      FieldName = 'president'
      Size = 128
    end
    object qryClubsclub_image: TBlobField
      FieldName = 'club_image'
    end
    object qryClubsfclb_deleted: TBooleanField
      FieldName = 'fclb_deleted'
    end
    object qryClubsfclb_jguid: TWideStringField
      FieldName = 'fclb_jguid'
      Required = True
      Size = 40
    end
  end
  object qryTeams: TUniQuery
    KeyFields = 'team_id'
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams'
      'WHERE'
      '  team_id = :Old_team_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT team_id, club_id, team_name FROM football.ft_teams'
      'WHERE'
      '  team_id = :team_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select t.* '
      'from football.ft_teams t '
      'where'
      'club_id = :club_id'
      'order by team_name')
    MasterSource = dsClubs
    MasterFields = 'club_id'
    DetailFields = 'club_id'
    AfterOpen = qryTeamsAfterOpen
    AfterScroll = qryTeamsAfterScroll
    Left = 504
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'club_id'
        ParamType = ptInput
        Size = 4
        Value = 2713
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
    Left = 504
    Top = 80
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
      'SELECT  t.team_name, c.*'
      '  FROM '
      '  football.ft_teams_championships c, football.ft_teams t'
      '  where'
      '  c.team_id = t.team_id'
      '  and'
      '  c.season_id = :season_id and c.league_id = :league_id'
      '  order by t.team_name asc')
    MasterSource = dsChampionships
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    AfterScroll = qryTeamsChampionshipsAfterScroll
    Left = 176
    Top = 256
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 77
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Size = 2
        Value = 145
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
  object dsTeamChampionships: TDataSource
    DataSet = qryTeamsChampionships
    Left = 176
    Top = 312
  end
  object qryMatchDays: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_match_days'
      
        '  (season_id, league_id, match_day_number, match_day_date, match' +
        '_day_played, rest_team_id)'
      'VALUES'
      
        '  (:season_id, :league_id, :match_day_number, :match_day_date, :' +
        'match_day_played, :rest_team_id)'
      'RETURNING'
      
        '  season_id, league_id, match_day_number, match_day_date, match_' +
        'day_played, rest_team_id')
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
        'day_played = :match_day_played, rest_team_id = :rest_team_id'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'match_day_number = :Old_match_day_number'
      'RETURNING'
      
        '  season_id, league_id, match_day_number, match_day_date, match_' +
        'day_played, rest_team_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_match_days'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'match_day_number = :Old_match_day_number'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT season_id, league_id, match_day_number, match_day_date, m' +
        'atch_day_played, rest_team_id FROM football.ft_match_days'
      'WHERE'
      
        '  season_id = :season_id AND league_id = :league_id AND match_da' +
        'y_number = :match_day_number')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_match_days'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      '  FROM football.ft_match_days'
      'WHERE'
      '   season_id = :season_id '
      '   and'
      '   league_id = :league_id'
      'ORDER BY  match_day_number')
    MasterSource = dsChampionships
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    DMLRefresh = True
    AfterOpen = qryMatchDaysAfterOpen
    Left = 288
    Top = 128
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Size = 2
        Value = 77
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Size = 2
        Value = 145
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
      LookupDataSet = lkpTeams
      LookupKeyFields = 'team_id'
      LookupResultField = 'team_name'
      KeyFields = 'rest_team_id'
      Size = 60
      Lookup = True
    end
  end
  object qryMatches: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_calendar'
      
        '  (match_id, league_id, season_id, match_day_number, match_date,' +
        ' home_team_id, visitors_team_id, goal_home, goal_visitor, points' +
        '_home, points_visitors, notes, confirmed, db_schema_id, insert_d' +
        'ate, update_date, home_notes, visitors_notes, match_time, refere' +
        'e_id, referee_second_id, referee_third_id, suspended, postponed,' +
        ' forfeit, remote_id, filed_id)'
      'VALUES'
      
        '  (:match_id, :league_id, :season_id, :match_day_number, :match_' +
        'date, :home_team_id, :visitors_team_id, :goal_home, :goal_visito' +
        'r, :points_home, :points_visitors, :notes, :confirmed, :db_schem' +
        'a_id, :insert_date, :update_date, :home_notes, :visitors_notes, ' +
        ':match_time, :referee_id, :referee_second_id, :referee_third_id,' +
        ' :suspended, :postponed, :forfeit, :remote_id, :filed_id)')
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
        'home_notes = :home_notes, visitors_notes = :visitors_notes, matc' +
        'h_time = :match_time, referee_id = :referee_id, referee_second_i' +
        'd = :referee_second_id, referee_third_id = :referee_third_id, su' +
        'spended = :suspended, postponed = :postponed, forfeit = :forfeit' +
        ', remote_id = :remote_id, filed_id = :filed_id'
      'WHERE'
      '  match_id = :Old_match_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_calendar'
      'WHERE'
      '  match_id = :Old_match_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT match_id, league_id, season_id, match_day_number, match_d' +
        'ate, home_team_id, visitors_team_id, goal_home, goal_visitor, po' +
        'ints_home, points_visitors, notes, confirmed, db_schema_id, inse' +
        'rt_date, update_date, home_notes, visitors_notes, match_time, re' +
        'feree_id, referee_second_id, referee_third_id, suspended, postpo' +
        'ned, forfeit, remote_id, filed_id FROM football.ft_calendar'
      'WHERE'
      '  match_id = :match_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_calendar'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'notes'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT c.*'
      '  FROM football.ft_calendar c'
      'WHERE c.match_day_number = :match_day_number '
      '      and c.league_id = :league_id'
      '       and c.season_id = :season_id')
    MasterSource = dsMatchDays
    MasterFields = 'league_id;season_id;match_day_number'
    DetailFields = 'league_id;season_id;match_day_number'
    BeforePost = qryMatchesBeforePost
    AfterScroll = qryMatchesAfterScroll
    Left = 288
    Top = 232
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
    object qryMatchesreferee_id: TIntegerField
      FieldName = 'referee_id'
    end
    object qryMatchesreferee_second_id: TIntegerField
      FieldName = 'referee_second_id'
    end
    object qryMatchesreferee_third_id: TIntegerField
      FieldName = 'referee_third_id'
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
    object qryMatchesfiled_id: TIntegerField
      FieldName = 'filed_id'
    end
  end
  object dsMatchDays: TDataSource
    DataSet = qryMatchDays
    Left = 288
    Top = 184
  end
  object dsMatches: TDataSource
    DataSet = qryMatches
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
  object qryLkpTeams: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select t.* , c.club_name, club_image'
      'from football.ft_teams t , football.ft_clubs c'
      'where'
      'c.club_id = t.club_id')
    Left = 736
    Top = 208
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
    object qryLkpTeamstrainer_id: TIntegerField
      FieldName = 'trainer_id'
    end
    object qryLkpTeamsremote_id: TIntegerField
      FieldName = 'remote_id'
    end
    object qryLkpTeamsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryLkpTeamsimage: TBlobField
      FieldName = 'image'
    end
    object qryLkpTeamsclub_image: TBlobField
      FieldName = 'club_image'
      ReadOnly = True
    end
  end
  object cdsLkpTeams: TDataSetProvider
    DataSet = qryLkpTeams
    Left = 736
    Top = 256
  end
  object qryLkpEventTypes: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from football.ft_event_types')
    Left = 624
    Top = 16
  end
  object dspEventTypes: TDataSetProvider
    DataSet = qryLkpEventTypes
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
    MasterSource = dsMatches
    MasterFields = 'match_id'
    DetailFields = 'match_id'
    BeforePost = qryMatchEventsBeforePost
    Left = 288
    Top = 344
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
  object qryMatchAllPlayers: TUniQuery
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
      '   m.*,  '
      '   p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      
        '   || public.nvl( to_char(p.birth_date, '#39'dd/mm/yy'#39') , public.nvl' +
        '(p.notes, '#39'n.d.'#39') ) '
      '   || '#39' '#39' || r.role_name  '
      '   as full_name'
      
        '  , family_name || '#39' '#39' || first_name || '#39' - '#39' || t.team_name as ' +
        'lkpPlayerName'
      '  , t.team_name'
      '  FROM '
      '    football.ft_players p'
      '  , football.ft_roles r'
      '  , football.ft_match_players m'
      '  , football.ft_teams t'
      'where '
      'm.match_id = :match_id'
      'and'
      'p.anagraph_id = m.player_id'
      'and'
      't.team_id = m.team_id'
      '  and public.nvl(p.role, 0) = r.role_id'
      'order by pos')
    Left = 288
    Top = 456
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
  object qryMatchTeams: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from football.ft_teams where '
      'team_id in (:home_team_id, :visitors_team_id)')
    MasterSource = dsMatches
    MasterFields = 'home_team_id;visitors_team_id'
    AfterScroll = qryMatchTeamsAfterScroll
    Left = 400
    Top = 160
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
    Left = 504
    Top = 184
  end
  object dsMatchTeams: TDataSource
    DataSet = qryMatchTeams
    Left = 400
    Top = 216
  end
  object dsMatchEvents: TDataSource
    DataSet = qryMatchEvents
    Left = 288
    Top = 400
  end
  object qryMatchTeamPlayers: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_match_players'
      
        '  (match_id, player_id, minutes, vote, played, team_id, pos, sub' +
        'st_id, goal, owngoal, lostgoal, since, until, sent_off, injuries' +
        ')'
      'VALUES'
      
        '  (:match_id, :player_id, :minutes, :vote, :played, :team_id, :p' +
        'os, :subst_id, :goal, :owngoal, :lostgoal, :since, :until, :sent' +
        '_off, :injuries)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_match_players'
      'WHERE'
      
        '  match_id = :Old_match_id AND player_id = :Old_player_id AND te' +
        'am_id = :Old_team_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_match_players'
      'SET'
      
        '  match_id = :match_id, player_id = :player_id, minutes = :minut' +
        'es, vote = :vote, played = :played, team_id = :team_id, pos = :p' +
        'os, subst_id = :subst_id, goal = :goal, owngoal = :owngoal, lost' +
        'goal = :lostgoal, since = :since, until = :until, sent_off = :se' +
        'nt_off, injuries = :injuries'
      'WHERE'
      
        '  match_id = :Old_match_id AND player_id = :Old_player_id AND te' +
        'am_id = :Old_team_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_match_players'
      'WHERE'
      
        '  match_id = :Old_match_id AND player_id = :Old_player_id AND te' +
        'am_id = :Old_team_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT match_id, player_id, minutes, vote, played, team_id, pos,' +
        ' subst_id, goal, owngoal, lostgoal, since, until, sent_off, inju' +
        'ries FROM football.ft_match_players'
      'WHERE'
      
        '  match_id = :match_id AND player_id = :player_id AND team_id = ' +
        ':team_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_match_players'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'full_name'
        FieldType = ftWideString
        FieldLength = 512
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  '
      '   m.*, p.family_name, p.first_name, '
      '   p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      '   || public.nvl( to_char(p.birth_date, '#39'dd/mm/yy'#39') , '
      
        '                  public.nvl(to_char(p.birth_year, '#39'9999'#39'), publ' +
        'ic.nvl(notes, '#39'n.a.'#39'))) '
      '   || '#39' '#39' || r.role_name '
      '  as full_name, r.role_id'
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
    MasterSource = dsMatchTeams
    MasterFields = 'team_id'
    DetailFields = 'team_id'
    OnNewRecord = qryMatchTeamPlayersNewRecord
    Left = 400
    Top = 272
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
    object qryMatchTeamPlayersgoal: TSmallintField
      FieldName = 'goal'
    end
    object qryMatchTeamPlayersowngoal: TSmallintField
      FieldName = 'owngoal'
    end
    object qryMatchTeamPlayerslostgoal: TSmallintField
      FieldName = 'lostgoal'
    end
    object qryMatchTeamPlayersrole_id: TSmallintField
      FieldName = 'role_id'
      ReadOnly = True
      Required = True
    end
    object qryMatchTeamPlayerssince: TSmallintField
      FieldName = 'since'
    end
    object qryMatchTeamPlayersuntil: TSmallintField
      FieldName = 'until'
    end
    object qryMatchTeamPlayerssent_off: TSmallintField
      FieldName = 'sent_off'
    end
    object qryMatchTeamPlayersinjuries: TSmallintField
      FieldName = 'injuries'
    end
  end
  object dsMatchTeamPlayers: TDataSource
    DataSet = qryMatchTeamPlayers
    Left = 400
    Top = 328
  end
  object qryTeamPlayers: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT team_id, player_id, season_id, since, until, club_origin_' +
        'id FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :team_id AND player_id = :player_id AND season_id = ' +
        ':season_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_players'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT   '
      '   t.*, p.*, r.role_code as lkpRoleCode, '
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
    MasterSource = dsTeamsClubsLeagues
    MasterFields = 'team_id;season_id'
    DetailFields = 'team_id;season_id'
    OnCalcFields = qryTeamPlayersCalcFields
    Left = 504
    Top = 352
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'team_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = nil
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
    object qryTeamPlayerssince: TDateField
      FieldName = 'since'
    end
    object qryTeamPlayersuntil: TDateField
      FieldName = 'until'
    end
    object qryTeamPlayersbirth_date: TDateField
      FieldName = 'birth_date'
      ReadOnly = True
    end
    object qryTeamPlayerslkpClubName: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpClubName'
      LookupDataSet = cdsLkpClubs
      LookupKeyFields = 'club_id'
      LookupResultField = 'club_name'
      KeyFields = 'club_origin_id'
      Size = 128
      Lookup = True
    end
    object qryTeamPlayersgoal: TSmallintField
      FieldName = 'goal'
    end
    object qryTeamPlayersowngoal: TSmallintField
      FieldName = 'owngoal'
    end
    object qryTeamPlayerslostgoal: TSmallintField
      FieldName = 'lostgoal'
    end
    object qryTeamPlayerssent_off: TSmallintField
      FieldName = 'sent_off'
    end
    object qryTeamPlayersinjuries: TSmallintField
      FieldName = 'injuries'
    end
    object qryTeamPlayersminutes: TSmallintField
      FieldName = 'minutes'
    end
    object qryTeamPlayersmatches: TIntegerField
      FieldName = 'matches'
    end
    object qryTeamPlayersgoals: TIntegerField
      FieldName = 'goals'
    end
    object qryTeamPlayersvotes: TFloatField
      FieldName = 'votes'
    end
    object qryTeamPlayerslkpOriginClubName: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpOriginClubName'
      LookupDataSet = cdsLkpClubs
      LookupKeyFields = 'club_id'
      LookupResultField = 'club_name'
      KeyFields = 'club_origin_id'
      Size = 128
      Lookup = True
    end
    object qryTeamPlayerslkprolecode: TWideStringField
      FieldName = 'lkprolecode'
      ReadOnly = True
      Size = 5
    end
  end
  object dsTeamPlayers: TDataSource
    DataSet = qryTeamPlayers
    Left = 504
    Top = 408
  end
  object qryTeamChampPlayers: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT team_id, player_id, season_id, since, until, club_origin_' +
        'id FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :team_id AND player_id = :player_id AND season_id = ' +
        ':season_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_players'
      ''
      ') t')
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
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  '
      '  p.*, '
      '   p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      
        '   || public.nvl( to_char(p.birth_date, '#39'dd/mm/yy'#39') , public.nvl' +
        '(p.notes, '#39'n.d.'#39') ) '
      '   || '#39' '#39' || r.role_name'
      '  as fullname,   t.*, r.role_code'
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
    Left = 176
    Top = 424
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'TEAM_ID'
        ParamType = ptInput
        Value = 3771
      end
      item
        DataType = ftSmallint
        Name = 'SEASON_ID'
        ParamType = ptInput
        Value = 77
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
    object qryTeamChampPlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
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
    object qryTeamChampPlayersbirth_date: TDateField
      FieldName = 'birth_date'
      ReadOnly = True
    end
    object qryTeamChampPlayerssince: TDateField
      FieldName = 'since'
      ReadOnly = True
    end
    object qryTeamChampPlayersuntil: TDateField
      FieldName = 'until'
      ReadOnly = True
    end
    object qryTeamChampPlayersgoal: TSmallintField
      FieldName = 'goal'
      ReadOnly = True
    end
    object qryTeamChampPlayersowngoal: TSmallintField
      FieldName = 'owngoal'
      ReadOnly = True
    end
    object qryTeamChampPlayerslostgoal: TSmallintField
      FieldName = 'lostgoal'
      ReadOnly = True
    end
    object qryTeamChampPlayerssent_off: TSmallintField
      FieldName = 'sent_off'
      ReadOnly = True
    end
    object qryTeamChampPlayersinjuries: TSmallintField
      FieldName = 'injuries'
      ReadOnly = True
    end
    object qryTeamChampPlayersminutes: TSmallintField
      FieldName = 'minutes'
      ReadOnly = True
    end
    object qryTeamChampPlayersmatches: TIntegerField
      FieldName = 'matches'
      ReadOnly = True
    end
    object qryTeamChampPlayersgoals: TIntegerField
      FieldName = 'goals'
      ReadOnly = True
    end
    object qryTeamChampPlayersvotes: TFloatField
      FieldName = 'votes'
      ReadOnly = True
    end
    object qryTeamChampPlayersrole_code: TWideStringField
      FieldName = 'role_code'
      Size = 5
    end
    object qryTeamChampPlayerslkpClubName: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpClubName'
      LookupDataSet = cdsLkpClubs
      LookupKeyFields = 'club_id'
      LookupResultField = 'club_name'
      KeyFields = 'club_origin_id'
      Size = 128
      Lookup = True
    end
    object qryTeamChampPlayerslkpOriginClubName: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpOriginClubName'
      LookupDataSet = cdsLkpClubs
      LookupKeyFields = 'club_id'
      LookupResultField = 'club_name'
      KeyFields = 'club_origin_id'
      Size = 128
      Lookup = True
    end
  end
  object dsTeamChampPlayers: TDataSource
    DataSet = qryTeamChampPlayers
    Left = 176
    Top = 480
  end
  object qryChampRanking: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      '  FROM football.ft_ranking_table'
      'WHERE'
      '     season_id = :season_id and league_id = :league_id'
      'order by pos')
    MasterSource = dsChampionships
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    IndexFieldNames = 'pos'
    OnCalcFields = qryChampRankingCalcFields
    Left = 400
    Top = 48
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 77
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 145
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
    object qryChampRankingcalcGoalDifference: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'calcGoalDifference'
      Calculated = True
    end
    object qryChampRankingpoints: TSmallintField
      FieldName = 'points'
    end
  end
  object dsChampRanking: TDataSource
    DataSet = qryChampRanking
    Left = 400
    Top = 104
  end
  object qrySelectLeagues: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_leagues'
      'WHERE'
      '  league_id = :Old_league_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT league_id, league_name, iso_country_code, league_position' +
        ' FROM football.ft_leagues'
      'WHERE'
      '  league_id = :league_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_leagues'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  l.*'
      '  FROM '
      '      football.ft_leagues l '
      
        '  WHERE not exists (select 1 from football.ft_championships f wh' +
        'ere'
      '     f.season_id = :season_id and l.league_id = f.league_id)'
      '  ORDER BY l.league_position')
    MasterSource = dsSeasons
    Left = 176
    Top = 536
    ParamData = <
      item
        DataType = ftInteger
        Name = 'season_id'
        ParamType = ptInput
        Value = 77
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
  object qryTeamsLastSeason: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT c.season_id, c.league_id, c.team_id, t.team_name, s.club_' +
        'name'
      '  FROM '
      
        '  football.ft_teams_championships c, football.ft_teams t, footba' +
        'll.ft_clubs s'
      '  where'
      '  c.team_id = t.team_id'
      '  and'
      '  s.club_id = t.club_id'
      '  and'
      '  c.season_id = (:season_id  - 1) and c.league_id = (:league_id)'
      '  and'
      '  not exists ('
      'select 1 from football.ft_teams_championships c '
      'where c.season_id = :season_id and c.team_id = t.team_id)'
      '  order by t.team_name asc')
    BeforeOpen = qryTeamsLastSeasonBeforeOpen
    Left = 736
    Top = 96
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
    object qryTeamsLastSeasonclub_name: TWideStringField
      FieldName = 'club_name'
      ReadOnly = True
      Size = 128
    end
  end
  object qryCloneSeason: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'INSERT INTO football.ft_championships('
      
        '            season_id, league_id, db_schema_id, promoted, playof' +
        'f, relegation, '
      '            champions, playout, teams)'
      
        'select  :new_season_id, league_id, db_schema_id, promoted, playo' +
        'ff, relegation, '
      '            champions, playout, teams'
      'from football.ft_championships f '
      'where f.season_id = :old_season_id'
      'and not exists '
      '(select 1 from football.ft_championships g '
      'where g.season_id =  :new_season_id '
      'and f.league_id = g.league_id)')
    Left = 288
    Top = 72
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
  object qryAllPlayers: TUniQuery
    KeyFields = 'anagraph_id'
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_players'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT anagraph_id, birth_date, birth_year, first_name, family_n' +
        'ame, birth_place, notes, role FROM football.ft_players'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_players'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    Connection = PgErgoConnection
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
    Left = 736
    Top = 416
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
    object qryAllPlayersbirth_date: TDateField
      FieldName = 'birth_date'
    end
  end
  object dsTeamLastSeason: TDataSource
    DataSet = qryTeamsLastSeason
    Left = 736
    Top = 152
  end
  object qryTeamPlayersLast: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT team_id, player_id, season_id, since, until FROM football' +
        '.ft_teams_players'
      'WHERE'
      
        '  team_id = :team_id AND player_id = :player_id AND season_id = ' +
        ':season_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_players'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    Connection = PgErgoConnection
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
    MasterSource = dsTeamsClubsLeagues
    MasterFields = 'team_id'
    DetailFields = 'team_id'
    Left = 504
    Top = 464
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'team_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = nil
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
    object qryTeamPlayersLastanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
      Required = True
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
    object qryTeamPlayersLastsince: TDateField
      FieldName = 'since'
    end
    object qryTeamPlayersLastuntil: TDateField
      FieldName = 'until'
    end
    object qryTeamPlayersLastbirth_date: TDateField
      FieldName = 'birth_date'
      ReadOnly = True
    end
  end
  object qryTeamsClubsLeagues: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * '
      '  FROM '
      '  football.ft_view_club_teams_championships v'
      '  where'
      '  v.season_id = :season_id '
      '  and  '
      '  v.club_id = :club_id'
      '  order by v.team_name asc')
    MasterSource = dsClubs
    MasterFields = 'club_id'
    DetailFields = 'club_id'
    DMLRefresh = True
    Left = 504
    Top = 240
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
        Value = 2713
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
  object dsTeamsClubsLeagues: TDataSource
    DataSet = qryTeamsClubsLeagues
    Left = 504
    Top = 296
  end
  object dsTeamsPlayersLast: TDataSource
    DataSet = qryTeamPlayersLast
    Left = 504
    Top = 520
  end
  object lkpRoles: TUniTable
    TableName = 'football.ft_roles'
    Connection = PgErgoConnection
    Left = 736
    Top = 360
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
  object qryTeamRankings: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT football.ft_seasons.season_id,  football.ft_seasons.seaso' +
        'n_code, '
      'football.ft_ranking_table.*, football.ft_leagues.league_name'
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
    MasterSource = dsTeams
    MasterFields = 'team_id'
    DetailFields = 'team_id'
    Left = 624
    Top = 280
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
    object qryTeamRankingsranking_id: TIntegerField
      FieldName = 'ranking_id'
      ReadOnly = True
      Required = True
    end
    object qryTeamRankingsleague_id: TSmallintField
      FieldName = 'league_id'
      ReadOnly = True
    end
    object qryTeamRankingspoints: TSmallintField
      FieldName = 'points'
      ReadOnly = True
    end
  end
  object dsTeamRankings: TDataSource
    DataSet = qryTeamRankings
    Left = 624
    Top = 336
  end
  object qryPlayerHistory: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT c.*, '
      's.season_code, l.league_name, '
      't.team_name'
      'FROM '
      
        'football.ft_player_career c, football.ft_seasons s, football.ft_' +
        'leagues l, football.ft_teams t'
      'where'
      
        'c.season_id = s.season_id and c.league_id = l.league_id and c.te' +
        'am_id = t.team_id'
      'and'
      'c.player_id = :anagraph_id'
      'order by season_id desc, career_id desc'
      ''
      '/*'
      
        'SELECT football.ft_player_career.*, football.ft_seasons.season_c' +
        'ode, football.ft_leagues.league_name, '
      'football.ft_teams.team_name'
      'FROM '
      '(football.ft_player_career'
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
      'anagraph_id = :anagraph_id'
      '*/')
    MasterSource = dsAllPlayers
    MasterFields = 'anagraph_id'
    DetailFields = 'player_id'
    Left = 848
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'anagraph_id'
        Value = nil
      end>
    object qryPlayerHistorycareer_id: TIntegerField
      FieldName = 'career_id'
      Required = True
    end
    object qryPlayerHistoryseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryPlayerHistoryseason_code: TWideStringField
      FieldName = 'season_code'
      Size = 50
    end
    object qryPlayerHistoryteam_id: TIntegerField
      FieldName = 'team_id'
    end
    object qryPlayerHistoryleague_code: TWideStringField
      FieldName = 'league_code'
      Size = 50
    end
    object qryPlayerHistoryleague_id: TIntegerField
      FieldName = 'league_id'
    end
    object qryPlayerHistorymatches: TWideStringField
      FieldName = 'matches'
      Required = True
      Size = 50
    end
    object qryPlayerHistorygoals: TWideStringField
      FieldName = 'goals'
      Required = True
      Size = 50
    end
    object qryPlayerHistoryplayer_id: TIntegerField
      FieldName = 'player_id'
    end
    object qryPlayerHistorynotes: TWideStringField
      FieldName = 'notes'
      Size = 255
    end
    object qryPlayerHistoryvotes: TFloatField
      FieldName = 'votes'
    end
    object qryPlayerHistoryminutes: TIntegerField
      FieldName = 'minutes'
    end
    object qryPlayerHistoryimage_id: TLargeintField
      FieldName = 'image_id'
    end
    object qryPlayerHistoryowngoal: TSmallintField
      FieldName = 'owngoal'
    end
    object qryPlayerHistorylostgoal: TSmallintField
      FieldName = 'lostgoal'
    end
    object qryPlayerHistorysent_off: TSmallintField
      FieldName = 'sent_off'
    end
    object qryPlayerHistoryinjuries: TSmallintField
      FieldName = 'injuries'
    end
    object qryPlayerHistorydb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryPlayerHistoryfplc_deleted: TBooleanField
      FieldName = 'fplc_deleted'
    end
    object qryPlayerHistoryfplc_jguid: TWideStringField
      FieldName = 'fplc_jguid'
      Required = True
      Size = 40
    end
    object qryPlayerHistoryseason_code_1: TWideStringField
      FieldName = 'season_code_1'
      FixedChar = True
      Size = 5
    end
    object qryPlayerHistoryleague_name: TWideStringField
      FieldName = 'league_name'
      ReadOnly = True
      Size = 128
    end
    object qryPlayerHistoryteam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
    object qryPlayerHistorylkpSeason: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpSeason'
      LookupDataSet = qryLkpSeasons
      LookupKeyFields = 'season_id'
      LookupResultField = 'season_des'
      KeyFields = 'season_id'
      Size = 128
      Lookup = True
    end
    object qryPlayerHistorylkpTeam: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpTeam'
      LookupDataSet = qryLkpTeams
      LookupKeyFields = 'team_id'
      LookupResultField = 'team_name'
      KeyFields = 'team_id'
      Size = 128
      Lookup = True
    end
    object qryPlayerHistorylkpLeague: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpLeague'
      LookupDataSet = qryLkpLeagues
      LookupKeyFields = 'league_id'
      LookupResultField = 'league_name'
      KeyFields = 'league_id'
      Size = 128
      Lookup = True
    end
  end
  object dsPlayerHistory: TDataSource
    DataSet = qryPlayerHistory
    Left = 844
    Top = 560
  end
  object qryAllTeamsNoSeason: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams'
      'WHERE'
      '  team_id = :Old_team_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT team_id, club_id, team_name FROM football.ft_teams'
      'WHERE'
      '  team_id = :team_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams'
      ''
      ') t')
    Connection = PgErgoConnection
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
    Left = 736
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'season_id'
        ParamType = ptInput
        Value = 77
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
      'SELECT c.season_id, c.league_id, c.team_id, t.team_name'
      '  FROM '
      '  football.ft_teams_championships c, football.ft_teams t'
      '  where'
      '  c.team_id = t.team_id'
      '  and'
      '  c.season_id = :season_id and c.league_id = :league_id'
      '  order by t.team_name asc')
    MasterSource = dsChampionships
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    Left = 624
    Top = 168
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 77
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Size = 2
        Value = 145
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
  object qryClubPlayers: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT team_id, player_id, season_id, since, until FROM football' +
        '.ft_teams_players'
      'WHERE'
      
        '  team_id = :team_id AND player_id = :player_id AND season_id = ' +
        ':season_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_players'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT   '
      '   s.*, p.*,'
      '   p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      
        '   || public.nvl( to_char(p.birth_date, '#39'dd/mm/yy'#39') , public.nvl' +
        '(p.notes, '#39'n.d.'#39') ) '
      '   || '#39' '#39' || r.role_name '
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
    Left = 624
    Top = 224
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
    object qryClubPlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
      Required = True
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
    object qryClubPlayerssince: TDateField
      FieldName = 'since'
    end
    object qryClubPlayersuntil: TDateField
      FieldName = 'until'
    end
    object qryClubPlayersbirth_date: TDateField
      FieldName = 'birth_date'
      ReadOnly = True
    end
  end
  object dsClubPlayers: TDataSource
    DataSet = qryClubPlayers
    Left = 624
    Top = 504
  end
  object qryAllClubPlayers: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT team_id, player_id, season_id, since, until FROM football' +
        '.ft_teams_players'
      'WHERE'
      
        '  team_id = :team_id AND player_id = :player_id AND season_id = ' +
        ':season_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_players'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT   '
      
        '   k.club_name,   c.club_id,  s.team_id, s.player_id, s.season_i' +
        'd, s.since, s.until, p.*,'
      '   p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      
        '   || public.nvl( to_char(p.birth_date, '#39'dd/mm/yy'#39') , public.nvl' +
        '(p.notes, '#39'n.d.'#39') ) '
      '   || '#39' '#39' || r.role_name'
      
        '   --    family_name || '#39' '#39' || first_name || '#39' - '#39' || public.nvl' +
        '(notes, text('#39'n.a.'#39')) || '#39' '#39' || r.role_name '
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
    Left = 736
    Top = 528
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
    object qryAllClubPlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
      Required = True
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
    object qryAllClubPlayerssince: TDateField
      FieldName = 'since'
    end
    object qryAllClubPlayersuntil: TDateField
      FieldName = 'until'
    end
    object qryAllClubPlayersbirth_date: TDateField
      FieldName = 'birth_date'
      ReadOnly = True
    end
  end
  object dsAllPlayers: TDataSource
    DataSet = qryAllPlayers
    Left = 736
    Top = 472
  end
  object qryMatchTeamAllPlayers: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT team_id, player_id, season_id, since, until, club_origin_' +
        'id FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :team_id AND player_id = :player_id AND season_id = ' +
        ':season_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_players'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT   '
      '   t.*, p.*,'
      '   p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      
        '   || public.nvl( to_char(p.birth_date, '#39'dd/mm/yy'#39') , public.nvl' +
        '(p.notes, '#39'n.d.'#39') ) '
      '   || '#39' '#39' || r.role_name '
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
    Left = 400
    Top = 384
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
    object qryMatchTeamAllPlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
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
    object qryMatchTeamAllPlayerssince: TDateField
      FieldName = 'since'
    end
    object qryMatchTeamAllPlayersuntil: TDateField
      FieldName = 'until'
    end
    object qryMatchTeamAllPlayersbirth_date: TDateField
      FieldName = 'birth_date'
      ReadOnly = True
    end
  end
  object qryAllTeamPlayers: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT team_id, player_id, season_id, since, until FROM football' +
        '.ft_teams_players'
      'WHERE'
      
        '  team_id = :team_id AND player_id = :player_id AND season_id = ' +
        ':season_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_players'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT   '
      '   distinct'
      '   p.*, '
      '   p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      
        '   || public.nvl( to_char(p.birth_date, '#39'dd/mm/yy'#39') , public.nvl' +
        '(p.notes, '#39'n.d.'#39') ) '
      '   || '#39' '#39' || r.role_name    '
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
    Left = 512
    Top = 576
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
    object qryAllTeamPlayersbirth_date: TDateField
      FieldName = 'birth_date'
      ReadOnly = True
    end
  end
  object qryClubAllPlayers: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_teams_players'
      'WHERE'
      
        '  team_id = :Old_team_id AND player_id = :Old_player_id AND seas' +
        'on_id = :Old_season_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT team_id, player_id, season_id, since, until FROM football' +
        '.ft_teams_players'
      'WHERE'
      
        '  team_id = :team_id AND player_id = :player_id AND season_id = ' +
        ':season_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_teams_players'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT   '
      '   distinct  '
      '   p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      
        '   || public.nvl( to_char(p.birth_date, '#39'dd/mm/yy'#39') , public.nvl' +
        '(p.notes, '#39'n.d.'#39') ) '
      '   || '#39' '#39' || r.role_name    '
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
    Left = 400
    Top = 496
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
  object qryTeamHistory: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select s.season_des,  s.season_code, h.*  from '
      'football.ft_teams_history h, football.ft_seasons s'
      'where'
      's.season_id = h.season_id'
      'order by h.season_id desc')
    MasterSource = dsTeams
    MasterFields = 'team_id'
    DetailFields = 'team_id'
    Left = 400
    Top = 552
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
    Left = 288
    Top = 512
  end
  object qrySelectHome: TUniQuery
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
    MasterSource = dsMatchDays
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    BeforeOpen = qrySelectHomeBeforeOpen
    Left = 288
    Top = 568
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 77
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 145
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
  object qrySelectVisitors: TUniQuery
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
    MasterSource = dsMatchDays
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    BeforeOpen = qrySelectVisitorsBeforeOpen
    Left = 288
    Top = 624
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 77
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Size = 2
        Value = 145
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
  object qryVerificaMatches: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_calendar'
      'WHERE'
      '  match_id = :Old_match_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT match_id, league_id, season_id, match_day_number, match_d' +
        'ate, home_team_id, visitors_team_id, goal_home, goal_visitor, po' +
        'ints_home, points_visitors, notes, confirmed FROM football.ft_ca' +
        'lendar'
      'WHERE'
      '  match_id = :match_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_calendar'
      ''
      ') t')
    Connection = PgErgoConnection
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
    MasterSource = dsMatchDays
    MasterFields = 'league_id;season_id'
    DetailFields = 'league_id;season_id'
    Left = 400
    Top = 608
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
    object qryVerificaMatchesmatch_date: TDateField
      FieldName = 'match_date'
    end
  end
  object dsMatchTeamAllPlayers: TDataSource
    DataSet = qryMatchTeamAllPlayers
    Left = 400
    Top = 440
  end
  object qryInsertCalendar: TUniSQL
    Connection = PgErgoConnection
    SQL.Strings = (
      'INSERT INTO football.ft_calendar('
      'match_id, league_id, season_id, match_day_number, '
      'home_team_id, visitors_team_id, db_schema_id)'
      'VALUES'
      '(:match_id, :league_id, :season_id, :match_day_number, '
      ':home_team_id, :visitors_team_id, :db_schema_id);')
    Left = 56
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'match_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'league_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'season_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'match_day_number'
        Value = nil
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
      end
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        Value = nil
      end>
  end
  object DataSource1: TDataSource
    Left = 56
    Top = 552
  end
  object dsLkpRoles: TDataSource
    DataSet = lkpRoles
    Left = 736
    Top = 584
  end
  object qryPlayerAlbum: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_player_career'
      
        '  (career_id, season_id, season_code, team_id, league_code, leag' +
        'ue_id, matches, goals, player_id, notes, votes, minutes, image_i' +
        'd)'
      'VALUES'
      
        '  (:career_id, :season_id, :season_code, :team_id, :league_code,' +
        ' :league_id, :matches, :goals, :player_id, :notes, :votes, :minu' +
        'tes, :image_id)')
    SQLDelete.Strings = (
      'DELETE FROM football.ft_player_career'
      'WHERE'
      '  career_id = :Old_career_id')
    SQLUpdate.Strings = (
      'UPDATE football.ft_player_career'
      'SET'
      
        '  career_id = :career_id, season_id = :season_id, season_code = ' +
        ':season_code, team_id = :team_id, league_code = :league_code, le' +
        'ague_id = :league_id, matches = :matches, goals = :goals, player' +
        '_id = :player_id, notes = :notes, votes = :votes, minutes = :min' +
        'utes, image_id = :image_id'
      'WHERE'
      '  career_id = :Old_career_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_player_career'
      'WHERE'
      '  career_id = :Old_career_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT career_id, season_id, season_code, team_id, league_code, ' +
        'league_id, matches, goals, player_id, notes, votes, minutes, ima' +
        'ge_id FROM football.ft_player_career'
      'WHERE'
      '  career_id = :career_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_player_career'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT c.*'
      '  FROM football.ft_player_career c'
      'where'
      'player_id = :anagraph_id'
      'order by season_id desc')
    MasterSource = dsAllPlayers
    Left = 624
    Top = 560
    ParamData = <
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = 120889
      end>
    object qryPlayerAlbumcareer_id: TIntegerField
      FieldName = 'career_id'
      Required = True
    end
    object qryPlayerAlbumseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryPlayerAlbumseason_code: TWideStringField
      FieldName = 'season_code'
      Size = 50
    end
    object qryPlayerAlbumteam_id: TIntegerField
      FieldName = 'team_id'
    end
    object qryPlayerAlbumleague_code: TWideStringField
      FieldName = 'league_code'
      Size = 50
    end
    object qryPlayerAlbumleague_id: TIntegerField
      FieldName = 'league_id'
    end
    object qryPlayerAlbummatches: TWideStringField
      FieldName = 'matches'
      Size = 50
    end
    object qryPlayerAlbumgoals: TWideStringField
      FieldName = 'goals'
      Size = 50
    end
    object qryPlayerAlbumplayer_id: TIntegerField
      FieldName = 'player_id'
    end
    object qryPlayerAlbumnotes: TWideStringField
      FieldName = 'notes'
      Size = 255
    end
    object qryPlayerAlbumvotes: TFloatField
      FieldName = 'votes'
    end
    object qryPlayerAlbumminutes: TIntegerField
      FieldName = 'minutes'
    end
    object qryPlayerAlbumlkpTeam: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpTeam'
      LookupDataSet = lkpTeams
      LookupKeyFields = 'team_id'
      LookupResultField = 'team_name'
      KeyFields = 'team_id'
      Size = 100
      Lookup = True
    end
    object qryPlayerAlbumlkpSeason: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpSeason'
      LookupDataSet = qryLkpSeasons
      LookupKeyFields = 'season_id'
      LookupResultField = 'season_des'
      KeyFields = 'season_id'
      Size = 12
      Lookup = True
    end
    object qryPlayerAlbumimage_id: TLargeintField
      FieldName = 'image_id'
    end
  end
  object dsPlayerAlbum: TDataSource
    DataSet = qryPlayerAlbum
    Left = 512
    Top = 632
  end
  object qryGolRanking: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT s.family_name,  t.team_name,  league_id, season_id,   e.t' +
        'eam_id, player_id, count(1) as gol'
      
        '  FROM football.ft_match_events e, football.ft_calendar m, footb' +
        'all.ft_teams t, football.ft_players s'
      '  where '
      '  t.team_id = e.team_id and s.anagraph_id = e.player_id and'
      '  m.match_id = e.match_id '
      '  and m.season_id = :season_id and m.league_id = :league_id'
      '  and e.event_id = 1'
      
        '  group by  s.family_name, league_id, season_id,    e.team_id, p' +
        'layer_id, team_name'
      '  order by gol desc')
    MasterSource = dsChampionships
    MasterFields = 'league_id;season_id'
    DetailFields = 'league_id;season_id'
    Left = 56
    Top = 604
    ParamData = <
      item
        DataType = ftInteger
        Name = 'season_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'league_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryGolRankingteam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
    object qryGolRankingleague_id: TSmallintField
      FieldName = 'league_id'
      ReadOnly = True
    end
    object qryGolRankingseason_id: TSmallintField
      FieldName = 'season_id'
      ReadOnly = True
    end
    object qryGolRankingteam_id: TSmallintField
      FieldName = 'team_id'
    end
    object qryGolRankingplayer_id: TIntegerField
      FieldName = 'player_id'
    end
    object qryGolRankinggol: TLargeintField
      FieldName = 'gol'
      ReadOnly = True
    end
    object qryGolRankingfamily_name: TWideStringField
      FieldName = 'family_name'
      ReadOnly = True
      Size = 128
    end
  end
  object dsGolRanking: TDataSource
    DataSet = qryGolRanking
    Left = 56
    Top = 664
  end
  object qryClubSeasons: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select '
      '    cs.*, s.season_code, s.season_des '
      'from '
      '    football.ft_club_seasons cs, football.ft_seasons s'
      'where'
      '    cs.season_id = s.season_id')
    MasterSource = dsClubs
    Left = 176
    Top = 592
  end
  object qryStatsPlayer: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'select * from football.ft_view_players_seasons where player_id =' +
        ' :anagraph_id')
    MasterSource = dsAllPlayers
    MasterFields = 'anagraph_id'
    DetailFields = 'player_id'
    Left = 56
    Top = 720
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'anagraph_id'
        Value = nil
      end>
    object qryStatsPlayerdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryStatsPlayerseason_des: TWideStringField
      FieldName = 'season_des'
    end
    object qryStatsPlayerseason_code: TWideStringField
      FieldName = 'season_code'
      FixedChar = True
      Size = 5
    end
    object qryStatsPlayerleague_name: TWideStringField
      FieldName = 'league_name'
      Size = 128
    end
    object qryStatsPlayerteam_name: TWideStringField
      FieldName = 'team_name'
      Size = 128
    end
    object qryStatsPlayerplayer_id: TIntegerField
      FieldName = 'player_id'
    end
    object qryStatsPlayerleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object qryStatsPlayerseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryStatsPlayerteam_id: TIntegerField
      FieldName = 'team_id'
    end
    object qryStatsPlayerplayed: TFloatField
      FieldName = 'played'
    end
    object qryStatsPlayerminutes: TFloatField
      FieldName = 'minutes'
    end
    object qryStatsPlayergoal: TFloatField
      FieldName = 'goal'
    end
    object qryStatsPlayerowngoal: TFloatField
      FieldName = 'owngoal'
    end
    object qryStatsPlayerlostgoal: TFloatField
      FieldName = 'lostgoal'
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
      'select * from football.ft_seasons'
      'order by season_id desc')
    AfterScroll = qrySeasonsAfterScroll
    OnNewRecord = qrySeasonsNewRecord
    Left = 288
    Top = 16
    object qryLkpSeasonsseason_id: TIntegerField
      FieldName = 'season_id'
      Required = True
    end
    object qryLkpSeasonsseason_des: TWideStringField
      FieldName = 'season_des'
    end
    object qryLkpSeasonsseason_code: TWideStringField
      FieldName = 'season_code'
      FixedChar = True
      Size = 5
    end
    object qryLkpSeasonsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
  end
  object qrylkpClubs: TUniQuery
    KeyFields = 'club_id'
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from football.ft_clubs')
    Filtered = True
    Left = 624
    Top = 616
    object qrylkpClubsclub_id: TIntegerField
      FieldName = 'club_id'
    end
    object qrylkpClubsclub_name: TWideStringField
      FieldName = 'club_name'
      Size = 128
    end
    object qrylkpClubsFoundation_date: TDateField
      FieldName = 'Foundation_date'
    end
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
    DataSet = qrylkpClubs
    Left = 624
    Top = 672
  end
  object dsChampRankingView: TDataSource
    DataSet = qryChampRankingView
    Left = 400
    Top = 664
  end
  object qryChampRankingView: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT row_number() over() as pos, *'
      '  FROM football.ft_ranking_view'
      'WHERE'
      '     season_id = :season_id and league_id = :league_id')
    MasterSource = dsChampionships
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    Left = 400
    Top = 720
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 77
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 145
      end>
    object qryChampRankingViewclub_name: TWideStringField
      FieldName = 'club_name'
      Size = 128
    end
    object qryChampRankingViewleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object qryChampRankingViewseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryChampRankingViewplayed_home: TFloatField
      FieldName = 'played_home'
    end
    object qryChampRankingViewplayed_visitor: TFloatField
      FieldName = 'played_visitor'
    end
    object qryChampRankingViewgoal_win_home: TFloatField
      FieldName = 'goal_win_home'
    end
    object qryChampRankingViewgoal_win_visitor: TFloatField
      FieldName = 'goal_win_visitor'
    end
    object qryChampRankingViewgoal_lost_home: TFloatField
      FieldName = 'goal_lost_home'
    end
    object qryChampRankingViewgoal_lost_visitor: TFloatField
      FieldName = 'goal_lost_visitor'
    end
    object qryChampRankingViewpoints_home: TFloatField
      FieldName = 'points_home'
    end
    object qryChampRankingViewpoints_visitor: TFloatField
      FieldName = 'points_visitor'
    end
    object qryChampRankingViewpoints: TFloatField
      FieldName = 'points'
    end
    object qryChampRankingViewaverage_home: TFloatField
      FieldName = 'average_home'
    end
    object qryChampRankingViewaverage_visitor: TFloatField
      FieldName = 'average_visitor'
    end
    object qryChampRankingViewaverage: TFloatField
      FieldName = 'average'
    end
    object qryChampRankingViewgoal_win: TFloatField
      FieldName = 'goal_win'
    end
    object qryChampRankingViewgoal_lost: TFloatField
      FieldName = 'goal_lost'
    end
    object qryChampRankingViewgoal_difference: TFloatField
      FieldName = 'goal_difference'
    end
    object qryChampRankingViewpos: TLargeintField
      FieldName = 'pos'
      ReadOnly = True
    end
    object qryChampRankingViewwin_home: TFloatField
      FieldName = 'win_home'
    end
    object qryChampRankingViewlost_home: TFloatField
      FieldName = 'lost_home'
    end
    object qryChampRankingViewpair_home: TFloatField
      FieldName = 'pair_home'
    end
    object qryChampRankingViewwin_visitr: TFloatField
      FieldName = 'win_visitr'
    end
    object qryChampRankingViewlost_visitor: TFloatField
      FieldName = 'lost_visitor'
    end
    object qryChampRankingViewpair_visitor: TFloatField
      FieldName = 'pair_visitor'
    end
  end
  object qryFootballMarket: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT p.season_id, t.team_id, p.player_id,  p.since, p.until, p' +
        '.club_origin_id, '
      '       t.team_name, l1.league_code, l1.league_name,  '
      
        '       t1.team_name as origin_team, l2.league_code, l2.league_na' +
        'me,  '
      '       s.first_name, s.family_name, '
      '       p.matches, p1.matches as origin_matches'
      '  FROM football.ft_teams_players p, football.ft_teams t, '
      
        '       football.ft_teams_championships c1, football.ft_teams_cha' +
        'mpionships c2, '
      '       football.ft_leagues l1, football.ft_leagues l2, '
      
        '       football.ft_teams_players p1, football.ft_teams t1, footb' +
        'all.ft_players s'
      '   where '
      '       p.team_id = t.team_id'
      '   and t1.team_id = p1.team_id '
      '   '
      '   and c1.team_id = p.team_id'
      '   and c1.season_id = p.season_id'
      '   and l1.league_id = c1.league_id '
      '   '
      '   and c2.team_id = p1.team_id'
      '   and c2.season_id = p1.season_id'
      '   and l2.league_id = c2.league_id '
      '   '
      '   '
      '   and p1.team_id = p.club_origin_id '
      '   and p1.player_id = p.player_id'
      '   and p1.season_id = p.season_id'
      '   '
      '   and p.team_id <> p.club_origin_id '
      '   and p.season_id = :season_id'
      ''
      '   and s.anagraph_id = p.player_id'
      '   order by t.team_name,  p.team_id, p.since')
    MasterSource = dsSeasons
    Left = 176
    Top = 648
    ParamData = <
      item
        DataType = ftInteger
        Name = 'season_id'
        ParamType = ptInput
        Value = 77
      end>
    object qryFootballMarketseason_id: TSmallintField
      FieldName = 'season_id'
      Required = True
    end
    object qryFootballMarketteam_id: TIntegerField
      FieldName = 'team_id'
      ReadOnly = True
      Required = True
    end
    object qryFootballMarketplayer_id: TIntegerField
      FieldName = 'player_id'
      Required = True
    end
    object qryFootballMarketsince: TDateField
      FieldName = 'since'
    end
    object qryFootballMarketuntil: TDateField
      FieldName = 'until'
    end
    object qryFootballMarketclub_origin_id: TIntegerField
      FieldName = 'club_origin_id'
    end
    object qryFootballMarketteam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
    object qryFootballMarketorigin_team: TWideStringField
      FieldName = 'origin_team'
      ReadOnly = True
      Size = 128
    end
    object qryFootballMarketfirst_name: TWideStringField
      FieldName = 'first_name'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object qryFootballMarketfamily_name: TWideStringField
      FieldName = 'family_name'
      ReadOnly = True
      Size = 128
    end
    object qryFootballMarketmatches: TIntegerField
      FieldName = 'matches'
    end
    object qryFootballMarketorigin_matches: TIntegerField
      FieldName = 'origin_matches'
      ReadOnly = True
    end
    object qryFootballMarketleague_code: TWideStringField
      FieldName = 'league_code'
      ReadOnly = True
      Size = 6
    end
    object qryFootballMarketleague_name: TWideStringField
      FieldName = 'league_name'
      ReadOnly = True
      Size = 128
    end
    object qryFootballMarketleague_code_1: TWideStringField
      FieldName = 'league_code_1'
      ReadOnly = True
      Size = 6
    end
    object qryFootballMarketleague_name_1: TWideStringField
      FieldName = 'league_name_1'
      ReadOnly = True
      Size = 128
    end
  end
  object dsFootballMarket: TDataSource
    DataSet = qryFootballMarket
    Left = 176
    Top = 704
  end
  object prcRanking: TUniStoredProc
    StoredProcName = 'football.ft_rankings_season'
    SQL.Strings = (
      'SELECT football.ft_rankings_season(:p_season_id, :p_league_id)')
    Connection = PgErgoConnection
    Left = 736
    Top = 648
    ParamData = <
      item
        DataType = ftInteger
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
    CommandStoredProcName = 'football.ft_rankings_season:0'
  end
  object qryDynamicRanking: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      ' SELECT '
      '    row_number() over() as pos, a.* from '
      ''
      ' ('
      ' select '
      '    calendar_ranks.club_name,'
      '    calendar_ranks.league_id,'
      '    calendar_ranks.season_id,'
      '    calendar_ranks.team_id,'
      '    max(calendar_ranks.match_day_number) AS last_match_day,'
      '    sum(calendar_ranks.played_home) AS played_home,'
      '    sum(calendar_ranks.played_visitor) AS played_visitor,'
      '    sum(calendar_ranks.goal_win_home) AS goal_win_home,'
      '    sum(calendar_ranks.goal_win_visitor) AS goal_win_visitor,'
      '    sum(calendar_ranks.goal_lost_home) AS goal_lost_home,'
      '    sum(calendar_ranks.goal_lost_visitor) AS goal_lost_visitor,'
      '    sum(calendar_ranks.points_home) AS points_home,'
      '    sum(calendar_ranks.points_visitor) AS points_visitor,'
      
        '    sum(calendar_ranks.points_home) + sum(calendar_ranks.points_' +
        'visitor) - ft_teams_championships.penalty::numeric AS points,'
      
        '    '#39'-3'#39'::integer::numeric * sum(calendar_ranks.played_home) + s' +
        'um(calendar_ranks.points_home) AS average_home,'
      
        '    sum(calendar_ranks.played_visitor) - sum(calendar_ranks.poin' +
        'ts_visitor) AS average_visitor,'
      
        '    '#39'-3'#39'::integer::numeric * sum(calendar_ranks.played_home) + s' +
        'um(calendar_ranks.points_home) + ('#39'-1'#39'::integer::numeric * sum(c' +
        'alendar_ranks.played_visitor) + sum(calendar_ranks.points_visito' +
        'r)) AS average,'
      
        '    sum(calendar_ranks.goal_win_home) + sum(calendar_ranks.goal_' +
        'win_visitor) AS goal_win,'
      
        '    sum(calendar_ranks.goal_lost_home) + sum(calendar_ranks.goal' +
        '_lost_visitor) AS goal_lost,'
      
        '    sum(calendar_ranks.goal_win_home) + sum(calendar_ranks.goal_' +
        'win_visitor) - (sum(calendar_ranks.goal_lost_home) + sum(calenda' +
        'r_ranks.goal_lost_visitor)) AS goal_difference,'
      '    sum(calendar_ranks.lost_home) AS lost_home,'
      '    sum(calendar_ranks.win_home) AS win_home,'
      '    sum(calendar_ranks.pair_home) AS pair_home,'
      '    sum(calendar_ranks.lost_visitor) AS lost_visitor,'
      '    sum(calendar_ranks.win_visitor) AS win_visitor,'
      '    sum(calendar_ranks.pair_visitor) AS pair_visitor,'
      
        '    sum(calendar_ranks.lost_home + calendar_ranks.lost_visitor) ' +
        'AS lost_matches,'
      
        '    sum(calendar_ranks.win_home + calendar_ranks.win_visitor) AS' +
        ' win_matches,'
      
        '    sum(calendar_ranks.pair_home + calendar_ranks.pair_visitor) ' +
        'AS pair_matches,'
      
        '    sum(calendar_ranks.played_home + calendar_ranks.played_visit' +
        'or) AS played_matches,'
      '    - ft_teams_championships.penalty AS penalty'
      '   FROM '
      #9'football.calendar_ranks,'
      '    football.ft_teams_championships'#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9' '
      '  WHERE '
      
        #9'  ft_teams_championships.team_id = calendar_ranks.team_id '#9#9#9#9#9 +
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9' '
      #9'  AND ft_teams_championships.season_id = :season_id '
      #9'  AND ft_teams_championships.league_id = :league_id '#9
      
        #9'  AND calendar_ranks.season_id = :season_id AND calendar_ranks.' +
        'league_id = :league_id '
      
        #9'  AND calendar_ranks.match_day_number >= :from AND calendar_ran' +
        'ks.match_day_number <= :to'#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9' '
      '  GROUP BY '
      
        #9' calendar_ranks.club_name, calendar_ranks.league_id, calendar_r' +
        'anks.season_id, calendar_ranks.team_id, ft_teams_championships.p' +
        'enalty'
      '  ORDER BY '
      
        #9' (nvl(sum(calendar_ranks.points_home)::integer + sum(calendar_r' +
        'anks.points_visitor)::integer - ft_teams_championships.penalty::' +
        'integer, 0)) DESC, '
      
        '         (sum(calendar_ranks.goal_win_home) + sum(calendar_ranks' +
        '.goal_win_visitor) - (sum(calendar_ranks.goal_lost_home) + sum(c' +
        'alendar_ranks.goal_lost_visitor))) DESC, '
      
        '         ('#39'-3'#39'::integer::numeric * sum(calendar_ranks.played_hom' +
        'e) + sum(calendar_ranks.points_home) + ('#39'-1'#39'::integer::numeric *' +
        ' sum(calendar_ranks.played_visitor) + sum(calendar_ranks.points_' +
        'visitor))) DESC'
      ') a; '
      '')
    MasterSource = dsChampionships
    Left = 512
    Top = 696
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
      end
      item
        DataType = ftSmallint
        Name = 'FROM'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'TO'
        ParamType = ptInput
        Value = nil
      end>
    object qryDynamicRankingpos: TLargeintField
      FieldName = 'pos'
      ReadOnly = True
    end
    object qryDynamicRankingclub_name: TWideStringField
      FieldName = 'club_name'
      Size = 128
    end
    object qryDynamicRankingleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object qryDynamicRankingseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryDynamicRankingteam_id: TIntegerField
      FieldName = 'team_id'
    end
    object qryDynamicRankinglast_match_day: TSmallintField
      FieldName = 'last_match_day'
      ReadOnly = True
    end
    object qryDynamicRankingplayed_home: TFloatField
      FieldName = 'played_home'
      ReadOnly = True
    end
    object qryDynamicRankingplayed_visitor: TFloatField
      FieldName = 'played_visitor'
      ReadOnly = True
    end
    object qryDynamicRankinggoal_win_home: TFloatField
      FieldName = 'goal_win_home'
      ReadOnly = True
    end
    object qryDynamicRankinggoal_win_visitor: TFloatField
      FieldName = 'goal_win_visitor'
      ReadOnly = True
    end
    object qryDynamicRankinggoal_lost_home: TFloatField
      FieldName = 'goal_lost_home'
      ReadOnly = True
    end
    object qryDynamicRankinggoal_lost_visitor: TFloatField
      FieldName = 'goal_lost_visitor'
      ReadOnly = True
    end
    object qryDynamicRankingpoints_home: TFloatField
      FieldName = 'points_home'
      ReadOnly = True
    end
    object qryDynamicRankingpoints_visitor: TFloatField
      FieldName = 'points_visitor'
      ReadOnly = True
    end
    object qryDynamicRankingpoints: TFloatField
      FieldName = 'points'
      ReadOnly = True
    end
    object qryDynamicRankingaverage_home: TFloatField
      FieldName = 'average_home'
      ReadOnly = True
    end
    object qryDynamicRankingaverage_visitor: TFloatField
      FieldName = 'average_visitor'
      ReadOnly = True
    end
    object qryDynamicRankingaverage: TFloatField
      FieldName = 'average'
      ReadOnly = True
    end
    object qryDynamicRankinggoal_win: TFloatField
      FieldName = 'goal_win'
      ReadOnly = True
    end
    object qryDynamicRankinggoal_lost: TFloatField
      FieldName = 'goal_lost'
      ReadOnly = True
    end
    object qryDynamicRankinggoal_difference: TFloatField
      FieldName = 'goal_difference'
      ReadOnly = True
    end
    object qryDynamicRankinglost_home: TFloatField
      FieldName = 'lost_home'
      ReadOnly = True
    end
    object qryDynamicRankingwin_home: TFloatField
      FieldName = 'win_home'
      ReadOnly = True
    end
    object qryDynamicRankingpair_home: TFloatField
      FieldName = 'pair_home'
      ReadOnly = True
    end
    object qryDynamicRankinglost_visitor: TFloatField
      FieldName = 'lost_visitor'
      ReadOnly = True
    end
    object qryDynamicRankingwin_visitor: TFloatField
      FieldName = 'win_visitor'
      ReadOnly = True
    end
    object qryDynamicRankingpair_visitor: TFloatField
      FieldName = 'pair_visitor'
      ReadOnly = True
    end
    object qryDynamicRankinglost_matches: TFloatField
      FieldName = 'lost_matches'
      ReadOnly = True
    end
    object qryDynamicRankingwin_matches: TFloatField
      FieldName = 'win_matches'
      ReadOnly = True
    end
    object qryDynamicRankingpair_matches: TFloatField
      FieldName = 'pair_matches'
      ReadOnly = True
    end
    object qryDynamicRankingplayed_matches: TFloatField
      FieldName = 'played_matches'
      ReadOnly = True
    end
    object qryDynamicRankingpenalty: TSmallintField
      FieldName = 'penalty'
      ReadOnly = True
    end
  end
  object lkpMatchDaysFrom: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_match_days'
      
        '  (season_id, league_id, match_day_number, match_day_date, match' +
        '_day_played, rest_team_id)'
      'VALUES'
      
        '  (:season_id, :league_id, :match_day_number, :match_day_date, :' +
        'match_day_played, :rest_team_id)'
      'RETURNING'
      
        '  season_id, league_id, match_day_number, match_day_date, match_' +
        'day_played, rest_team_id')
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
        'day_played = :match_day_played, rest_team_id = :rest_team_id'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'match_day_number = :Old_match_day_number'
      'RETURNING'
      
        '  season_id, league_id, match_day_number, match_day_date, match_' +
        'day_played, rest_team_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_match_days'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'match_day_number = :Old_match_day_number'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT season_id, league_id, match_day_number, match_day_date, m' +
        'atch_day_played, rest_team_id FROM football.ft_match_days'
      'WHERE'
      
        '  season_id = :season_id AND league_id = :league_id AND match_da' +
        'y_number = :match_day_number')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_match_days'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT match_day_number'
      '  FROM football.ft_match_days'
      'WHERE'
      '   season_id = :season_id '
      '   and'
      '   league_id = :league_id'
      'ORDER BY  match_day_number')
    MasterSource = dsChampionships
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    DMLRefresh = True
    AfterOpen = qryMatchDaysAfterOpen
    Left = 736
    Top = 712
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Size = 2
        Value = 77
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Size = 2
        Value = 145
      end>
    object lkpMatchDaysFrommatch_day_number: TSmallintField
      FieldName = 'match_day_number'
      Required = True
    end
  end
  object lkpMatchDaysTo: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_match_days'
      
        '  (season_id, league_id, match_day_number, match_day_date, match' +
        '_day_played, rest_team_id)'
      'VALUES'
      
        '  (:season_id, :league_id, :match_day_number, :match_day_date, :' +
        'match_day_played, :rest_team_id)'
      'RETURNING'
      
        '  season_id, league_id, match_day_number, match_day_date, match_' +
        'day_played, rest_team_id')
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
        'day_played = :match_day_played, rest_team_id = :rest_team_id'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'match_day_number = :Old_match_day_number'
      'RETURNING'
      
        '  season_id, league_id, match_day_number, match_day_date, match_' +
        'day_played, rest_team_id')
    SQLLock.Strings = (
      'SELECT * FROM football.ft_match_days'
      'WHERE'
      
        '  season_id = :Old_season_id AND league_id = :Old_league_id AND ' +
        'match_day_number = :Old_match_day_number'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT season_id, league_id, match_day_number, match_day_date, m' +
        'atch_day_played, rest_team_id FROM football.ft_match_days'
      'WHERE'
      
        '  season_id = :season_id AND league_id = :league_id AND match_da' +
        'y_number = :match_day_number')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_match_days'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT match_day_number'
      '  FROM football.ft_match_days'
      'WHERE'
      '   season_id = :season_id '
      '   and'
      '   league_id = :league_id'
      'ORDER BY  match_day_number')
    MasterSource = dsChampionships
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    DMLRefresh = True
    AfterOpen = qryMatchDaysAfterOpen
    Left = 864
    Top = 736
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Size = 2
        Value = 77
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Size = 2
        Value = 145
      end>
    object lkpMatchDaysTomatch_day_number: TSmallintField
      FieldName = 'match_day_number'
      Required = True
    end
  end
  object prcInheritPlayer: TUniStoredProc
    StoredProcName = 'football.ft_player_inherit'
    SQL.Strings = (
      
        'SELECT * FROM football.ft_player_inherit(:p_from_player, :p_to_p' +
        'layer)')
    Connection = PgErgoConnection
    Left = 872
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_from_player'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_to_player'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'football.ft_player_inherit:0'
  end
  object qryLkpAllPlayers: TUniQuery
    KeyFields = 'anagraph_id'
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_players'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT anagraph_id, birth_date, birth_year, first_name, family_n' +
        'ame, birth_place, notes, role FROM football.ft_players'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_players'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'fullname'
        FieldType = ftWideString
        FieldLength = 512
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT   '
      '   p.*, '
      
        '    lower (family_name || '#39' '#39' || first_name || '#39' - '#39' || public.n' +
        'vl(notes, text('#39'n.a.'#39')) || '#39' '#39' || role_name)  as fullname'
      '  FROM '
      '    football.ft_players p, football.ft_roles r'
      '  where '
      '    public.nvl(p.role, 0) = r.role_id'
      'order by family_name, first_name')
    Left = 864
    Top = 192
    object qryLkpAllPlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryLkpAllPlayersbirth_date: TDateField
      FieldName = 'birth_date'
    end
    object qryLkpAllPlayersbirth_year: TSmallintField
      FieldName = 'birth_year'
    end
    object qryLkpAllPlayersfirst_name: TWideStringField
      FieldName = 'first_name'
      Required = True
      Size = 128
    end
    object qryLkpAllPlayersfamily_name: TWideStringField
      FieldName = 'family_name'
      Size = 128
    end
    object qryLkpAllPlayersbirth_place: TWideStringField
      FieldName = 'birth_place'
      Size = 128
    end
    object qryLkpAllPlayersnotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryLkpAllPlayersrole: TSmallintField
      FieldName = 'role'
    end
    object qryLkpAllPlayersdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryLkpAllPlayersremote_id: TIntegerField
      FieldName = 'remote_id'
    end
    object qryLkpAllPlayersheight: TSmallintField
      FieldName = 'height'
    end
    object qryLkpAllPlayersweight: TSmallintField
      FieldName = 'weight'
    end
    object qryLkpAllPlayerspplr_jguid: TWideStringField
      FieldName = 'pplr_jguid'
      Required = True
      Size = 40
    end
    object qryLkpAllPlayerspplr_deleted: TBooleanField
      FieldName = 'pplr_deleted'
    end
    object qryLkpAllPlayersfullname: TWideStringField
      FieldName = 'fullname'
      ReadOnly = True
      Size = 512
    end
  end
  object dsLkpAllPlayers: TDataSource
    DataSet = qryLkpAllPlayers
    Left = 864
    Top = 256
  end
  object PgScript1: TUniScript
    Connection = PgErgoConnection
    Left = 864
    Top = 320
  end
  object prcPlayerTeamOrigin: TUniStoredProc
    StoredProcName = 'football.ft_player_origin'
    SQL.Strings = (
      'SELECT football.ft_player_origin(:p_season)')
    Connection = PgErgoConnection
    Left = 864
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_season'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'football.ft_player_origin:0'
  end
  object qryLkpLeagues: TUniQuery
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
      'select * from football.ft_leagues'
      'order by league_position'
      '')
    AfterScroll = qrySeasonsAfterScroll
    OnNewRecord = qrySeasonsNewRecord
    Left = 56
    Top = 456
    object qryLkpLeaguesleague_id: TSmallintField
      FieldName = 'league_id'
      Required = True
    end
    object qryLkpLeaguesleague_name: TWideStringField
      FieldName = 'league_name'
      Size = 128
    end
    object qryLkpLeaguesiso_country_code: TWideStringField
      FieldName = 'iso_country_code'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryLkpLeaguesleague_position: TSmallintField
      FieldName = 'league_position'
    end
    object qryLkpLeaguesleague_code: TWideStringField
      FieldName = 'league_code'
      Size = 6
    end
    object qryLkpLeaguesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryLkpLeaguesremote_id: TSmallintField
      FieldName = 'remote_id'
    end
    object qryLkpLeaguespromotedcss: TWideStringField
      FieldName = 'promotedcss'
      Size = 128
    end
    object qryLkpLeaguesplayoffcss: TWideStringField
      FieldName = 'playoffcss'
      Size = 128
    end
    object qryLkpLeagueschampionscss: TWideStringField
      FieldName = 'championscss'
      Size = 128
    end
    object qryLkpLeaguesplayoutcss: TWideStringField
      FieldName = 'playoutcss'
      Size = 128
    end
    object qryLkpLeaguesrelegationcss: TWideStringField
      FieldName = 'relegationcss'
      Size = 128
    end
    object qryLkpLeaguesall_players: TBooleanField
      FieldName = 'all_players'
    end
    object qryLkpLeaguesflgs_deleted: TBooleanField
      FieldName = 'flgs_deleted'
    end
    object qryLkpLeaguesflgs_jguid: TWideStringField
      FieldName = 'flgs_jguid'
      Required = True
      Size = 40
    end
  end
end
