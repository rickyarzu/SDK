inherited dmPgFootballStorage: TdmPgFootballStorage
  Height = 654
  Width = 814
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object qryPlayer: TUniQuery
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
        FieldName = 'full_name'
        FieldType = ftWideString
        FieldLength = 256
        IgnoreErrors = True
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT   '
      '  p.* , family_name || '#39' '#39' || first_name as full_name'
      '  FROM '
      '   football.ft_players p'
      'where '
      '   p.anagraph_id = :player_id')
    AfterOpen = UpdatePlayerCareer
    AfterScroll = UpdatePlayerCareer
    Left = 728
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'player_id'
        ParamType = ptInput
        Value = 52543
      end>
    object qryPlayeranagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryPlayerbirth_date: TDateField
      FieldName = 'birth_date'
    end
    object qryPlayerbirth_year: TSmallintField
      FieldName = 'birth_year'
    end
    object qryPlayerfirst_name: TWideStringField
      FieldName = 'first_name'
      Required = True
      Size = 128
    end
    object qryPlayerfamily_name: TWideStringField
      FieldName = 'family_name'
      Size = 128
    end
    object qryPlayerbirth_place: TWideStringField
      FieldName = 'birth_place'
      Size = 128
    end
    object qryPlayernotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryPlayerrole: TSmallintField
      FieldName = 'role'
    end
    object qryPlayerfull_name: TWideStringField
      FieldName = 'full_name'
      ReadOnly = True
      Size = 256
    end
  end
  object qryMatchDay: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_calendar'
      'WHERE'
      '  match_id = :Old_match_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT match_id, league_id, season_id, match_day_number, match_d' +
        'ate, home_team_id, visitors_team_id, goal_home, goal_visitor, po' +
        'ints_home, points_visitors, notes, confirmed, db_schema_id, inse' +
        'rt_date, update_date, home_notes, visitors_notes FROM football.f' +
        't_calendar'
      'WHERE'
      '  match_id = :match_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_calendar'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'match_date'
        FieldType = ftDate
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select s.season_des, s.season_code, l.league_name, m.*'
      
        'from football.ft_match_days m, football.ft_leagues l, football.f' +
        't_seasons s'
      'where'
      's.season_id = :season_id'
      'and'
      'l.league_id = :league_id'
      'and'
      'm.league_id = :league_id'
      'and '
      'm.season_id = :season_id'
      'and'
      'm.match_day_number = :match_day_number '
      '-- and'
      '-- l.db_schema_id = :db_schema_id')
    DetailFields = 'league_id;season_id;match_day_number'
    Left = 379
    Top = 32
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 76
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 124
      end
      item
        DataType = ftSmallint
        Name = 'match_day_number'
        ParamType = ptInput
        Value = 30
      end>
    object qryMatchDayseason_des: TWideStringField
      FieldName = 'season_des'
      ReadOnly = True
    end
    object qryMatchDayseason_code: TWideStringField
      FieldName = 'season_code'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object qryMatchDayleague_name: TWideStringField
      FieldName = 'league_name'
      ReadOnly = True
      Size = 128
    end
    object qryMatchDayseason_id: TSmallintField
      FieldName = 'season_id'
      Required = True
    end
    object qryMatchDayleague_id: TSmallintField
      FieldName = 'league_id'
      Required = True
    end
    object qryMatchDaymatch_day_number: TSmallintField
      FieldName = 'match_day_number'
      Required = True
    end
    object qryMatchDaymatch_day_date: TDateField
      FieldName = 'match_day_date'
    end
    object qryMatchDayrest_team_id: TIntegerField
      FieldName = 'rest_team_id'
    end
    object qryMatchDaydb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryMatchDaymatch_day_played: TDateField
      FieldName = 'match_day_played'
    end
  end
  object qryPlayerCareer: TUniQuery
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
    DataTypeMap = <
      item
        FieldName = 'matches'
        FieldType = ftWideString
        FieldLength = 6
      end
      item
        FieldName = 'goals'
        FieldType = ftWideString
        FieldLength = 6
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      '/*SELECT '
      
        '  db_schema_id, season_des, season_code, league_name, league_cod' +
        'e, team_name, player_id, league_id, season_id, team_id, '
      
        '  played, minutes, goal, owngoal, lostgoal, injuries, sent_off, ' +
        'last_match, played as matches'
      '  FROM '
      
        '  football.ft_view_players_seasons where player_id = :anagraph_i' +
        'd'
      '*/'
      ''
      'SELECT s.db_schema_id, career_id,  '
      '  matches::integer as matches , '
      '  goals::integer  goals, '
      '  player_id, notes, votes, minutes, image_id'
      '  , s.*, t.team_name, t.team_id,  l.*'
      
        '  FROM football.ft_player_career c, football.ft_seasons s, footb' +
        'all.ft_teams t, football.ft_leagues l'
      'where'
      'player_id = :anagraph_id'
      'and '
      't.team_id = c.team_id'
      'and'
      's.season_id = c.season_id'
      'and'
      'l.league_id = c.league_id'
      'order by c.season_id desc'
      '')
    MasterSource = dsPlayer
    MasterFields = 'anagraph_id'
    DetailFields = 'player_id'
    Left = 728
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = 123769
      end>
    object qryPlayerCareerdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      ReadOnly = True
      Required = True
    end
    object qryPlayerCareercareer_id: TIntegerField
      FieldName = 'career_id'
      Required = True
    end
    object qryPlayerCareermatches: TWideStringField
      FieldName = 'matches'
      ReadOnly = True
      Size = 6
    end
    object qryPlayerCareergoals: TWideStringField
      FieldName = 'goals'
      ReadOnly = True
      Size = 6
    end
    object qryPlayerCareerplayer_id: TIntegerField
      FieldName = 'player_id'
    end
    object qryPlayerCareernotes: TWideStringField
      FieldName = 'notes'
      Size = 255
    end
    object qryPlayerCareervotes: TFloatField
      FieldName = 'votes'
    end
    object qryPlayerCareerminutes: TIntegerField
      FieldName = 'minutes'
    end
    object qryPlayerCareerimage_id: TLargeintField
      FieldName = 'image_id'
    end
    object qryPlayerCareerseason_id: TIntegerField
      FieldName = 'season_id'
      ReadOnly = True
      Required = True
    end
    object qryPlayerCareerseason_des: TWideStringField
      FieldName = 'season_des'
      ReadOnly = True
    end
    object qryPlayerCareerseason_code: TWideStringField
      FieldName = 'season_code'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object qryPlayerCareerdb_schema_id_1: TIntegerField
      FieldName = 'db_schema_id_1'
      ReadOnly = True
      Required = True
    end
    object qryPlayerCareerteam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
    object qryPlayerCareerteam_id: TIntegerField
      FieldName = 'team_id'
      ReadOnly = True
      Required = True
    end
    object qryPlayerCareerleague_id: TSmallintField
      FieldName = 'league_id'
      ReadOnly = True
      Required = True
    end
    object qryPlayerCareerleague_name: TWideStringField
      FieldName = 'league_name'
      ReadOnly = True
      Size = 128
    end
    object qryPlayerCareeriso_country_code: TWideStringField
      FieldName = 'iso_country_code'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryPlayerCareerleague_position: TSmallintField
      FieldName = 'league_position'
      ReadOnly = True
    end
    object qryPlayerCareerleague_code: TWideStringField
      FieldName = 'league_code'
      ReadOnly = True
      Size = 6
    end
    object qryPlayerCareerdb_schema_id_2: TSmallintField
      FieldName = 'db_schema_id_2'
      ReadOnly = True
    end
    object qryPlayerCareerremote_id: TSmallintField
      FieldName = 'remote_id'
      ReadOnly = True
    end
    object qryPlayerCareerpromotedcss: TWideStringField
      FieldName = 'promotedcss'
      ReadOnly = True
      Size = 128
    end
    object qryPlayerCareerplayoffcss: TWideStringField
      FieldName = 'playoffcss'
      ReadOnly = True
      Size = 128
    end
    object qryPlayerCareerchampionscss: TWideStringField
      FieldName = 'championscss'
      ReadOnly = True
      Size = 128
    end
    object qryPlayerCareerplayoutcss: TWideStringField
      FieldName = 'playoutcss'
      ReadOnly = True
      Size = 128
    end
    object qryPlayerCareerrelegationcss: TWideStringField
      FieldName = 'relegationcss'
      ReadOnly = True
      Size = 128
    end
    object qryPlayerCareerall_players: TBooleanField
      FieldName = 'all_players'
      ReadOnly = True
    end
  end
  object dsTeam: TDataSource
    DataSet = qryChampionshipTeam
    Left = 544
    Top = 69
  end
  object qryTeamHistory: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select s.season_des,  s.season_code, h.*  from '
      'football.ft_teams_history h, football.ft_seasons s'
      'where'
      's.season_id = h.season_id'
      'order by h.season_id desc')
    MasterSource = dsTeam
    MasterFields = 'team_id'
    DetailFields = 'team_id'
    Left = 544
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'team_id'
        ParamType = ptInput
        Value = 1
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
  object dsPlayer: TDataSource
    DataSet = qryPlayer
    Left = 728
    Top = 61
  end
  object qryTeamMatches: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_calendar'
      'WHERE'
      '  match_id = :Old_match_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT match_id, league_id, season_id, match_day_number, match_d' +
        'ate, home_team_id, visitors_team_id, goal_home, goal_visitor, po' +
        'ints_home, points_visitors, notes, confirmed, db_schema_id, inse' +
        'rt_date, update_date, home_notes, visitors_notes FROM football.f' +
        't_calendar'
      'WHERE'
      '  match_id = :match_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_calendar'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'match_date'
        FieldType = ftDate
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT '
      'row_number() over() as rownum, '
      'c.*, a.team_name as home_team, b.team_name as visitors_team,'
      'football.match_level(c.confirmed, c.goal_home)'
      
        '  FROM football.ft_calendar c, football.ft_teams a, football.ft_' +
        'teams b'
      'WHERE '
      'a.team_id = c.home_team_id'
      'and b.team_id = c.visitors_team_id'
      'and :team_id in (c.home_team_id, c.visitors_team_id)'
      'and c.league_id = :league_id'
      'and c.season_id = :season_id'
      'order by match_day_number')
    MasterSource = dsChampionshipTeam
    DetailFields = 'league_id;season_id;match_day_number'
    Left = 659
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'team_id'
        ParamType = ptInput
        Value = 289
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 9
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 49
      end>
    object qryTeamMatchesrownum: TLargeintField
      FieldName = 'rownum'
      ReadOnly = True
    end
    object qryTeamMatchesmatch_id: TIntegerField
      FieldName = 'match_id'
      Required = True
    end
    object qryTeamMatchesleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object qryTeamMatchesseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryTeamMatchesmatch_day_number: TSmallintField
      FieldName = 'match_day_number'
    end
    object qryTeamMatchesmatch_date: TDateField
      FieldName = 'match_date'
    end
    object qryTeamMatcheshome_team_id: TSmallintField
      FieldName = 'home_team_id'
    end
    object qryTeamMatchesvisitors_team_id: TSmallintField
      FieldName = 'visitors_team_id'
    end
    object qryTeamMatchesgoal_home: TSmallintField
      FieldName = 'goal_home'
    end
    object qryTeamMatchesgoal_visitor: TSmallintField
      FieldName = 'goal_visitor'
    end
    object qryTeamMatchespoints_home: TSmallintField
      FieldName = 'points_home'
    end
    object qryTeamMatchespoints_visitors: TSmallintField
      FieldName = 'points_visitors'
    end
    object qryTeamMatchesnotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryTeamMatchesconfirmed: TBooleanField
      FieldName = 'confirmed'
    end
    object qryTeamMatchesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryTeamMatchesinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryTeamMatchesupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryTeamMatcheshome_notes: TWideStringField
      FieldName = 'home_notes'
      Size = 1024
    end
    object qryTeamMatchesvisitors_notes: TWideStringField
      FieldName = 'visitors_notes'
      Size = 1024
    end
    object qryTeamMatchesfiled_id: TIntegerField
      FieldName = 'filed_id'
    end
    object qryTeamMatchesremote_id: TIntegerField
      FieldName = 'remote_id'
    end
    object qryTeamMatchesforfeit: TBooleanField
      FieldName = 'forfeit'
    end
    object qryTeamMatchespostponed: TBooleanField
      FieldName = 'postponed'
    end
    object qryTeamMatchessuspended: TBooleanField
      FieldName = 'suspended'
    end
    object qryTeamMatchesreferee_third_id: TIntegerField
      FieldName = 'referee_third_id'
    end
    object qryTeamMatchesreferee_second_id: TIntegerField
      FieldName = 'referee_second_id'
    end
    object qryTeamMatchesreferee_id: TIntegerField
      FieldName = 'referee_id'
    end
    object qryTeamMatchesmatch_time: TDateTimeField
      FieldName = 'match_time'
    end
    object qryTeamMatcheshome_team: TWideStringField
      FieldName = 'home_team'
      ReadOnly = True
      Size = 128
    end
    object qryTeamMatchesvisitors_team: TWideStringField
      FieldName = 'visitors_team'
      ReadOnly = True
      Size = 128
    end
    object qryTeamMatchesmatch_level: TSmallintField
      FieldName = 'match_level'
      ReadOnly = True
    end
  end
  object dsChampionship: TUniDataSource
    DataSet = qryChampionship
    Left = 280
    Top = 296
  end
  object qryChampionshipTeam: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT t.*,  r.*, goal_done - goal_lost as goal_diff'
      '  FROM football.ft_ranking_table r, football.ft_teams t'
      'WHERE'
      '     season_id = :season_id and league_id = :league_id'
      '     and'
      '     r.team_id = :team_id'
      '     and'
      '     t.team_id = :team_id'
      '')
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    OnCalcFields = qryChampionshipTeamCalcFields
    Left = 603
    Top = 200
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        Value = 48
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        Value = 3
      end
      item
        DataType = ftSmallint
        Name = 'team_id'
        Value = 1491
      end>
    object IntegerField9: TIntegerField
      FieldName = 'team_id'
      Required = True
    end
    object SmallintField39: TSmallintField
      FieldName = 'club_id'
      Required = True
    end
    object WideStringField22: TWideStringField
      FieldName = 'team_name'
      Size = 128
    end
    object IntegerField10: TIntegerField
      FieldName = 'trainer_id'
    end
    object IntegerField15: TIntegerField
      FieldName = 'remote_id'
    end
    object IntegerField16: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryChampionshipTeamranking_id: TIntegerField
      FieldName = 'ranking_id'
      Required = True
    end
    object qryChampionshipTeamseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryChampionshipTeamleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object qryChampionshipTeampos: TSmallintField
      FieldName = 'pos'
    end
    object qryChampionshipTeamplayed_matches: TSmallintField
      FieldName = 'played_matches'
    end
    object qryChampionshipTeamwon_matches: TSmallintField
      FieldName = 'won_matches'
    end
    object qryChampionshipTeamlost_matches: TSmallintField
      FieldName = 'lost_matches'
    end
    object qryChampionshipTeamtied_matches: TSmallintField
      FieldName = 'tied_matches'
    end
    object qryChampionshipTeamhome_matches: TSmallintField
      FieldName = 'home_matches'
    end
    object qryChampionshipTeamhome_won: TSmallintField
      FieldName = 'home_won'
    end
    object qryChampionshipTeamhome_lost: TSmallintField
      FieldName = 'home_lost'
    end
    object qryChampionshipTeamhome_tied: TSmallintField
      FieldName = 'home_tied'
    end
    object qryChampionshipTeamoutside_played: TSmallintField
      FieldName = 'outside_played'
    end
    object qryChampionshipTeamoutside_won: TSmallintField
      FieldName = 'outside_won'
    end
    object qryChampionshipTeamoutside_lost: TSmallintField
      FieldName = 'outside_lost'
    end
    object qryChampionshipTeamoutside_tied: TSmallintField
      FieldName = 'outside_tied'
    end
    object qryChampionshipTeamgoal_done: TSmallintField
      FieldName = 'goal_done'
    end
    object qryChampionshipTeamgoal_lost: TSmallintField
      FieldName = 'goal_lost'
    end
    object qryChampionshipTeampoints: TSmallintField
      FieldName = 'points'
    end
    object qryChampionshipTeamgoal_diff: TSmallintField
      FieldName = 'goal_diff'
      ReadOnly = True
    end
    object qryChampionshipTeamscoring_average: TFloatField
      FieldKind = fkCalculated
      FieldName = 'scoring_average'
      Calculated = True
    end
  end
  object dsChampionshipTeam: TDataSource
    DataSet = qryChampionshipTeam
    Left = 608
    Top = 253
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
      '   t.*, p.*, :league_id::integer league_id, :team_name team_name'
      '  --, c.season_id, c.league_id, c.league_id, c.penalty'
      '  FROM '
      '    football.ft_teams_players t'
      '  , football.ft_players p'
      '  , football.ft_teams_championships c'
      'where '
      'c.team_id = t.team_id'
      'and'
      'c.season_id = :season_id'
      'and'
      't.team_id = :team_id'
      'and'
      't.season_id = :season_id'
      'and'
      'p.anagraph_id = t.player_id'
      'order by family_name, first_name')
    MasterSource = dsChampionshipTeam
    Left = 560
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'league_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'team_name'
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 76
      end
      item
        DataType = ftSmallint
        Name = 'team_id'
        ParamType = ptInput
        Value = 2691
      end>
    object qryTeamPlayersteam_id: TSmallintField
      FieldName = 'team_id'
      Required = True
    end
    object qryTeamPlayersplayer_id: TIntegerField
      FieldName = 'player_id'
      Required = True
    end
    object qryTeamPlayersseason_id: TSmallintField
      FieldName = 'season_id'
      ReadOnly = True
      Required = True
    end
    object qryTeamPlayerssince: TDateField
      FieldName = 'since'
    end
    object qryTeamPlayersuntil: TDateField
      FieldName = 'until'
    end
    object qryTeamPlayersclub_origin_id: TIntegerField
      FieldName = 'club_origin_id'
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
    object qryTeamPlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
      Required = True
    end
    object qryTeamPlayersbirth_date: TDateField
      FieldName = 'birth_date'
      ReadOnly = True
    end
    object qryTeamPlayersbirth_year: TSmallintField
      FieldName = 'birth_year'
      ReadOnly = True
    end
    object qryTeamPlayersfirst_name: TWideStringField
      FieldName = 'first_name'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object qryTeamPlayersfamily_name: TWideStringField
      FieldName = 'family_name'
      ReadOnly = True
      Size = 128
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
      ReadOnly = True
    end
    object qryTeamPlayersleague_id: TIntegerField
      FieldName = 'league_id'
      ReadOnly = True
    end
    object qryTeamPlayersteam_name: TWideMemoField
      FieldName = 'team_name'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object qryFirstSeasonLeague: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select   '
      ' l.*'
      'from '
      
        'football.ft_championships c, football.ft_leagues l, football.ft_' +
        'seasons s'
      'where'
      's.season_id = c.season_id '
      'and '
      'c.season_id = :season_id '
      'and  '
      'l.league_id = c.league_id '
      'order by '
      'league_position'
      'limit 1')
    Left = 72
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'season_id'
        ParamType = ptInput
        Value = 49
      end>
    object qryFirstSeasonLeagueleague_id: TSmallintField
      FieldName = 'league_id'
      ReadOnly = True
      Required = True
    end
    object qryFirstSeasonLeagueleague_name: TWideStringField
      FieldName = 'league_name'
      ReadOnly = True
      Size = 128
    end
    object qryFirstSeasonLeagueiso_country_code: TWideStringField
      FieldName = 'iso_country_code'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryFirstSeasonLeagueleague_position: TSmallintField
      FieldName = 'league_position'
      ReadOnly = True
    end
    object qryFirstSeasonLeagueleague_code: TWideStringField
      FieldName = 'league_code'
      ReadOnly = True
      Size = 6
    end
    object qryFirstSeasonLeaguedb_schema_id: TSmallintField
      FieldName = 'db_schema_id'
      ReadOnly = True
    end
    object qryFirstSeasonLeagueremote_id: TSmallintField
      FieldName = 'remote_id'
      ReadOnly = True
    end
    object qryFirstSeasonLeaguepromotedcss: TWideStringField
      FieldName = 'promotedcss'
      ReadOnly = True
      Size = 128
    end
    object qryFirstSeasonLeagueplayoffcss: TWideStringField
      FieldName = 'playoffcss'
      ReadOnly = True
      Size = 128
    end
    object qryFirstSeasonLeaguechampionscss: TWideStringField
      FieldName = 'championscss'
      ReadOnly = True
      Size = 128
    end
    object qryFirstSeasonLeagueplayoutcss: TWideStringField
      FieldName = 'playoutcss'
      ReadOnly = True
      Size = 128
    end
    object qryFirstSeasonLeaguerelegationcss: TWideStringField
      FieldName = 'relegationcss'
      ReadOnly = True
      Size = 128
    end
  end
  object dsCalendarDay: TUniDataSource
    DataSet = qryCalendarDay
    Left = 184
    Top = 472
  end
  object qryCalendarDay: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_calendar'
      'WHERE'
      '  match_id = :Old_match_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT match_id, league_id, season_id, match_day_number, match_d' +
        'ate, home_team_id, visitors_team_id, goal_home, goal_visitor, po' +
        'ints_home, points_visitors, notes, confirmed, db_schema_id, inse' +
        'rt_date, update_date, home_notes, visitors_notes FROM football.f' +
        't_calendar'
      'WHERE'
      '  match_id = :match_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_calendar'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'match_date'
        FieldType = ftDate
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select s.season_des, s.season_code, l.league_name, m.*'
      
        'from football.ft_match_days m, football.ft_leagues l, football.f' +
        't_seasons s'
      'where'
      's.season_id = :season_id'
      'and'
      'l.league_id = :league_id'
      'and'
      'm.league_id = :league_id'
      'and '
      'm.season_id = :season_id')
    DetailFields = 'league_id;season_id;match_day_number'
    Left = 187
    Top = 408
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 48
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 3
      end>
    object WideStringField12: TWideStringField
      FieldName = 'season_des'
      ReadOnly = True
    end
    object WideStringField13: TWideStringField
      FieldName = 'season_code'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object WideStringField14: TWideStringField
      FieldName = 'league_name'
      ReadOnly = True
      Size = 128
    end
    object SmallintField23: TSmallintField
      FieldName = 'season_id'
      Required = True
    end
    object SmallintField24: TSmallintField
      FieldName = 'league_id'
      Required = True
    end
    object SmallintField25: TSmallintField
      FieldName = 'match_day_number'
      Required = True
    end
    object DateField4: TDateField
      FieldName = 'match_day_date'
    end
    object IntegerField7: TIntegerField
      FieldName = 'rest_team_id'
    end
    object IntegerField8: TIntegerField
      FieldName = 'db_schema_id'
    end
    object DateField5: TDateField
      FieldName = 'match_day_played'
    end
  end
  object qryCalendarMatches: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_calendar'
      'WHERE'
      '  match_id = :Old_match_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT match_id, league_id, season_id, match_day_number, match_d' +
        'ate, home_team_id, visitors_team_id, goal_home, goal_visitor, po' +
        'ints_home, points_visitors, notes, confirmed, db_schema_id, inse' +
        'rt_date, update_date, home_notes, visitors_notes FROM football.f' +
        't_calendar'
      'WHERE'
      '  match_id = :match_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_calendar'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'match_date'
        FieldType = ftDate
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT '
      'row_number() over() as rownum, '
      'c.*, a.team_name as home_team, b.team_name as visitors_team'
      
        '  FROM football.ft_calendar c, football.ft_teams a, football.ft_' +
        'teams b'
      'WHERE '
      'a.team_id = c.home_team_id'
      'and'
      'b.team_id = c.visitors_team_id'
      'and '
      'c.league_id = :league_id'
      'and '
      'c.season_id = :season_id'
      'and'
      'c.match_day_number = :match_day_number ')
    MasterSource = dsCalendarDay
    DetailFields = 'league_id;season_id;match_day_number'
    OnCalcFields = qryCalendarMatchesCalcFields
    Left = 187
    Top = 536
    ParamData = <
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
        Value = 48
      end
      item
        DataType = ftSmallint
        Name = 'match_day_number'
        ParamType = ptInput
        Value = 1
      end>
    object qryCalendarMatchesrownum: TLargeintField
      FieldName = 'rownum'
      ReadOnly = True
    end
    object qryCalendarMatchesmatch_id: TIntegerField
      FieldName = 'match_id'
      Required = True
    end
    object qryCalendarMatchesleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object qryCalendarMatchesseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryCalendarMatchesmatch_day_number: TSmallintField
      FieldName = 'match_day_number'
    end
    object qryCalendarMatchesmatch_date: TDateField
      FieldName = 'match_date'
    end
    object qryCalendarMatcheshome_team_id: TSmallintField
      FieldName = 'home_team_id'
    end
    object qryCalendarMatchesvisitors_team_id: TSmallintField
      FieldName = 'visitors_team_id'
    end
    object qryCalendarMatchesgoal_home: TSmallintField
      FieldName = 'goal_home'
    end
    object qryCalendarMatchesgoal_visitor: TSmallintField
      FieldName = 'goal_visitor'
    end
    object qryCalendarMatchespoints_home: TSmallintField
      FieldName = 'points_home'
    end
    object qryCalendarMatchespoints_visitors: TSmallintField
      FieldName = 'points_visitors'
    end
    object qryCalendarMatchesnotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryCalendarMatchesconfirmed: TBooleanField
      FieldName = 'confirmed'
    end
    object qryCalendarMatchesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryCalendarMatchesinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryCalendarMatchesupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryCalendarMatcheshome_notes: TWideStringField
      FieldName = 'home_notes'
      Size = 1024
    end
    object qryCalendarMatchesvisitors_notes: TWideStringField
      FieldName = 'visitors_notes'
      Size = 1024
    end
    object qryCalendarMatchesfiled_id: TIntegerField
      FieldName = 'filed_id'
    end
    object qryCalendarMatchesremote_id: TIntegerField
      FieldName = 'remote_id'
    end
    object qryCalendarMatchesforfeit: TBooleanField
      FieldName = 'forfeit'
    end
    object qryCalendarMatchespostponed: TBooleanField
      FieldName = 'postponed'
    end
    object qryCalendarMatchessuspended: TBooleanField
      FieldName = 'suspended'
    end
    object qryCalendarMatchesreferee_third_id: TIntegerField
      FieldName = 'referee_third_id'
    end
    object qryCalendarMatchesreferee_second_id: TIntegerField
      FieldName = 'referee_second_id'
    end
    object qryCalendarMatchesreferee_id: TIntegerField
      FieldName = 'referee_id'
    end
    object qryCalendarMatchesmatch_time: TDateTimeField
      FieldName = 'match_time'
    end
    object qryCalendarMatcheshome_team: TWideStringField
      FieldName = 'home_team'
      ReadOnly = True
      Size = 128
    end
    object qryCalendarMatchesvisitors_team: TWideStringField
      FieldName = 'visitors_team'
      ReadOnly = True
      Size = 128
    end
  end
  object qryMatchDetailEvents: TUniQuery
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
      'select e.*,'
      '  -- et.event_des,   '
      '   p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      
        '   || public.nvl( to_char(p.birth_date, '#39'dd/mm/yy'#39') , public.nvl' +
        '(p.notes, '#39'n.d.'#39') ) '
      '   || '#39' '#39' || r.role_name '
      '    as teamplayer'
      '  , p.*'
      '  , t.team_name'
      'from '
      
        'football.ft_match_events e, football.ft_players p, football.ft_t' +
        'eams t, '
      'football.ft_roles r'
      '-- , football.ft_event_types et'
      'where '
      '-- et.event_id = e.event_id'
      '-- and'
      'match_id = :match_id'
      'and'
      't.team_id = e.team_id'
      'and'
      'p.anagraph_id = e.player_id'
      'and'
      'public.nvl(p.role, 0) = r.role_id'
      'order by minute asc')
    MasterSource = dsMatchDetail
    MasterFields = 'match_id'
    DetailFields = 'match_id'
    Left = 512
    Top = 520
    ParamData = <
      item
        DataType = ftInteger
        Name = 'match_id'
        ParamType = ptInput
        Value = 153840
      end>
    object qryMatchDetailEventsmatch_id: TIntegerField
      FieldName = 'match_id'
    end
    object qryMatchDetailEventsteam_id: TSmallintField
      FieldName = 'team_id'
    end
    object qryMatchDetailEventsplayer_id: TIntegerField
      FieldName = 'player_id'
    end
    object qryMatchDetailEventsevent_id: TSmallintField
      FieldName = 'event_id'
    end
    object qryMatchDetailEventsminute: TIntegerField
      FieldName = 'minute'
    end
    object qryMatchDetailEventsvalue: TSmallintField
      FieldName = 'value'
      Required = True
    end
    object qryMatchDetailEventsmatch_events_row_id: TLargeintField
      FieldName = 'match_events_row_id'
    end
    object qryMatchDetailEventsnotes: TWideStringField
      FieldName = 'notes'
      Size = 60
    end
    object qryMatchDetailEventsfavor_team_id: TIntegerField
      FieldName = 'favor_team_id'
    end
    object qryMatchDetailEventsteamplayer: TWideStringField
      FieldName = 'teamplayer'
      ReadOnly = True
      Size = 512
    end
    object qryMatchDetailEventsfamily_name: TWideStringField
      FieldName = 'family_name'
      ReadOnly = True
      Size = 128
    end
    object qryMatchDetailEventsteam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
    object qryMatchDetailEventsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
      Required = True
    end
    object qryMatchDetailEventsbirth_date: TDateField
      FieldName = 'birth_date'
      ReadOnly = True
    end
    object qryMatchDetailEventsbirth_year: TSmallintField
      FieldName = 'birth_year'
      ReadOnly = True
    end
    object qryMatchDetailEventsfirst_name: TWideStringField
      FieldName = 'first_name'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object qryMatchDetailEventsbirth_place: TWideStringField
      FieldName = 'birth_place'
      ReadOnly = True
      Size = 128
    end
    object qryMatchDetailEventsrole: TSmallintField
      FieldName = 'role'
      ReadOnly = True
    end
  end
  object qryMatchVisitorsPlayers: TUniQuery
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
        'es, '
      
        '  vote = :vote, played = :played, team_id = :team_id, pos = :pos' +
        ', '
      '  subst_id = :subst_id, goal = :goal, owngoal = :owngoal, '
      
        '  lostgoal = :lostgoal, since = :since, until = :until, sent_off' +
        ' = :sent_off, '
      '  injuries = :injuries'
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
      end
      item
        FieldName = 'row_name'
        FieldType = ftWideString
        FieldLength = 512
      end
      item
        FieldName = 'team_name'
        FieldType = ftWideString
        FieldLength = 128
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  '
      '   m.*, p.*, '
      '   p.family_name || '#39' '#39' || p.first_name as full_name, '
      '   p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      
        '   || public.nvl( to_char(p.birth_date, '#39'dd/mm/yy'#39') , public.nvl' +
        '(p.notes, '#39'n.d.'#39') ) '
      '   || '#39' '#39' || r.role_name as row_name, r.*,'
      '   :season_id::integer season_id, '
      '   :league_id::integer league_id,'
      '   :visitors_team::character varying team_name'
      '  FROM '
      '    football.ft_players p'
      '  , football.ft_match_players m'
      '  , football.ft_roles r'
      'where '
      'public.nvl(p.role, 0) = r.role_id'
      'and'
      'm.match_id = :match_id'
      'and'
      'm.team_id = :visitors_team_id'
      'and'
      'p.anagraph_id = m.player_id'
      'order by pos')
    MasterSource = dsMatchDetail
    MasterFields = 'match_id;visitors_team_id'
    DetailFields = 'match_id;team_id'
    Left = 579
    Top = 584
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 76
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 132
      end
      item
        DataType = ftWideString
        Name = 'visitors_team'
        ParamType = ptInput
        Value = 'Lido Square FBC'
      end
      item
        DataType = ftInteger
        Name = 'match_id'
        ParamType = ptInput
        Value = 153840
      end
      item
        DataType = ftSmallint
        Name = 'visitors_team_id'
        ParamType = ptInput
        Value = 2672
      end>
    object qryMatchVisitorsPlayersmatch_id: TIntegerField
      FieldName = 'match_id'
      ReadOnly = True
      Required = True
    end
    object qryMatchVisitorsPlayersplayer_id: TIntegerField
      FieldName = 'player_id'
      ReadOnly = True
      Required = True
    end
    object qryMatchVisitorsPlayersminutes: TSmallintField
      FieldName = 'minutes'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayersvote: TFloatField
      FieldName = 'vote'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayersplayed: TBooleanField
      FieldName = 'played'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayersteam_id: TSmallintField
      FieldName = 'team_id'
      ReadOnly = True
      Required = True
    end
    object qryMatchVisitorsPlayerspos: TSmallintField
      FieldName = 'pos'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayerssubst_id: TIntegerField
      FieldName = 'subst_id'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayersgoal: TSmallintField
      FieldName = 'goal'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayersowngoal: TSmallintField
      FieldName = 'owngoal'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayerslostgoal: TSmallintField
      FieldName = 'lostgoal'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayerssince: TSmallintField
      FieldName = 'since'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayersuntil: TSmallintField
      FieldName = 'until'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayerssent_off: TSmallintField
      FieldName = 'sent_off'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayersinjuries: TSmallintField
      FieldName = 'injuries'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayersdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayersfmtp_jguid: TWideStringField
      FieldName = 'fmtp_jguid'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qryMatchVisitorsPlayersfmtp_deleted: TBooleanField
      FieldName = 'fmtp_deleted'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryMatchVisitorsPlayersbirth_date: TDateField
      FieldName = 'birth_date'
    end
    object qryMatchVisitorsPlayersbirth_year: TSmallintField
      FieldName = 'birth_year'
    end
    object qryMatchVisitorsPlayersfirst_name: TWideStringField
      FieldName = 'first_name'
      Required = True
      Size = 128
    end
    object qryMatchVisitorsPlayersfamily_name: TWideStringField
      FieldName = 'family_name'
      Size = 128
    end
    object qryMatchVisitorsPlayersbirth_place: TWideStringField
      FieldName = 'birth_place'
      Size = 128
    end
    object qryMatchVisitorsPlayersnotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryMatchVisitorsPlayersrole: TSmallintField
      FieldName = 'role'
    end
    object qryMatchVisitorsPlayersremote_id: TIntegerField
      FieldName = 'remote_id'
    end
    object qryMatchVisitorsPlayersheight: TSmallintField
      FieldName = 'height'
    end
    object qryMatchVisitorsPlayersweight: TSmallintField
      FieldName = 'weight'
    end
    object qryMatchVisitorsPlayerspplr_jguid: TWideStringField
      FieldName = 'pplr_jguid'
      Required = True
      Size = 40
    end
    object qryMatchVisitorsPlayerspplr_deleted: TBooleanField
      FieldName = 'pplr_deleted'
    end
    object qryMatchVisitorsPlayersfull_name: TWideStringField
      FieldName = 'full_name'
      ReadOnly = True
      Size = 512
    end
    object qryMatchVisitorsPlayersrow_name: TWideStringField
      FieldName = 'row_name'
      ReadOnly = True
      Size = 512
    end
    object qryMatchVisitorsPlayersrole_id: TSmallintField
      FieldName = 'role_id'
      ReadOnly = True
      Required = True
    end
    object qryMatchVisitorsPlayersrole_code: TWideStringField
      FieldName = 'role_code'
      ReadOnly = True
      Size = 5
    end
    object qryMatchVisitorsPlayersrole_name: TWideStringField
      FieldName = 'role_name'
      ReadOnly = True
      Size = 30
    end
    object qryMatchVisitorsPlayersfrls_jguid: TWideStringField
      FieldName = 'frls_jguid'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qryMatchVisitorsPlayersfrls_deleted: TBooleanField
      FieldName = 'frls_deleted'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayersseason_id: TIntegerField
      FieldName = 'season_id'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayersleague_id: TIntegerField
      FieldName = 'league_id'
      ReadOnly = True
    end
    object qryMatchVisitorsPlayersteam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
  end
  object qryMatchHomePlayers: TUniQuery
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
        'es, '
      
        '  vote = :vote, played = :played, team_id = :team_id, pos = :pos' +
        ', '
      '  subst_id = :subst_id, goal = :goal, owngoal = :owngoal, '
      
        '  lostgoal = :lostgoal, since = :since, until = :until, sent_off' +
        ' = :sent_off, '
      '  injuries = :injuries'
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
      end
      item
        FieldName = 'row_name'
        FieldType = ftWideString
        FieldLength = 512
      end
      item
        FieldName = 'team_name'
        FieldType = ftWideString
        FieldLength = 128
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  '
      '   m.*, p.*, '
      '   p.family_name || '#39' '#39' || p.first_name as full_name, '
      '   p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      
        '   || public.nvl( to_char(p.birth_date, '#39'dd/mm/yy'#39') , public.nvl' +
        '(p.notes, '#39'n.d.'#39') ) '
      '   || '#39' '#39' || r.role_name as row_name, r.*, '
      '   :season_id::integer season_id, '
      '   :league_id::integer league_id,'
      '   :home_team::character varying team_name'
      '  FROM '
      '    football.ft_players p'
      '  , football.ft_match_players m'
      '  , football.ft_roles r'
      'where '
      'public.nvl(p.role, 0) = r.role_id'
      'and'
      'm.match_id = :match_id'
      'and'
      'm.team_id = :home_team_id'
      'and'
      'p.anagraph_id = m.player_id'
      'order by pos')
    MasterSource = dsMatchDetail
    MasterFields = 'match_id;home_team_id'
    DetailFields = 'match_id;team_id'
    Left = 451
    Top = 584
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 76
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 132
      end
      item
        DataType = ftWideString
        Name = 'home_team'
        ParamType = ptInput
        Value = 'Afrodecimo'
      end
      item
        DataType = ftInteger
        Name = 'match_id'
        ParamType = ptInput
        Value = 153840
      end
      item
        DataType = ftSmallint
        Name = 'home_team_id'
        ParamType = ptInput
        Value = 2668
      end>
    object qryMatchHomePlayersmatch_id: TIntegerField
      FieldName = 'match_id'
      ReadOnly = True
      Required = True
    end
    object qryMatchHomePlayersplayer_id: TIntegerField
      FieldName = 'player_id'
      ReadOnly = True
      Required = True
    end
    object qryMatchHomePlayersminutes: TSmallintField
      FieldName = 'minutes'
      ReadOnly = True
    end
    object qryMatchHomePlayersvote: TFloatField
      FieldName = 'vote'
      ReadOnly = True
    end
    object qryMatchHomePlayersplayed: TBooleanField
      FieldName = 'played'
      ReadOnly = True
    end
    object qryMatchHomePlayersteam_id: TSmallintField
      FieldName = 'team_id'
      ReadOnly = True
      Required = True
    end
    object qryMatchHomePlayerspos: TSmallintField
      FieldName = 'pos'
      ReadOnly = True
    end
    object qryMatchHomePlayerssubst_id: TIntegerField
      FieldName = 'subst_id'
      ReadOnly = True
    end
    object qryMatchHomePlayersgoal: TSmallintField
      FieldName = 'goal'
      ReadOnly = True
    end
    object qryMatchHomePlayersowngoal: TSmallintField
      FieldName = 'owngoal'
      ReadOnly = True
    end
    object qryMatchHomePlayerslostgoal: TSmallintField
      FieldName = 'lostgoal'
      ReadOnly = True
    end
    object qryMatchHomePlayerssince: TSmallintField
      FieldName = 'since'
      ReadOnly = True
    end
    object qryMatchHomePlayersuntil: TSmallintField
      FieldName = 'until'
      ReadOnly = True
    end
    object qryMatchHomePlayerssent_off: TSmallintField
      FieldName = 'sent_off'
      ReadOnly = True
    end
    object qryMatchHomePlayersinjuries: TSmallintField
      FieldName = 'injuries'
      ReadOnly = True
    end
    object qryMatchHomePlayersdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      ReadOnly = True
    end
    object qryMatchHomePlayersfmtp_jguid: TWideStringField
      FieldName = 'fmtp_jguid'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qryMatchHomePlayersfmtp_deleted: TBooleanField
      FieldName = 'fmtp_deleted'
      ReadOnly = True
    end
    object qryMatchHomePlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryMatchHomePlayersbirth_date: TDateField
      FieldName = 'birth_date'
    end
    object qryMatchHomePlayersbirth_year: TSmallintField
      FieldName = 'birth_year'
    end
    object qryMatchHomePlayersfirst_name: TWideStringField
      FieldName = 'first_name'
      Required = True
      Size = 128
    end
    object qryMatchHomePlayersfamily_name: TWideStringField
      FieldName = 'family_name'
      Size = 128
    end
    object qryMatchHomePlayersbirth_place: TWideStringField
      FieldName = 'birth_place'
      Size = 128
    end
    object qryMatchHomePlayersnotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryMatchHomePlayersrole: TSmallintField
      FieldName = 'role'
    end
    object qryMatchHomePlayersremote_id: TIntegerField
      FieldName = 'remote_id'
    end
    object qryMatchHomePlayersheight: TSmallintField
      FieldName = 'height'
    end
    object qryMatchHomePlayersweight: TSmallintField
      FieldName = 'weight'
    end
    object qryMatchHomePlayerspplr_jguid: TWideStringField
      FieldName = 'pplr_jguid'
      Required = True
      Size = 40
    end
    object qryMatchHomePlayerspplr_deleted: TBooleanField
      FieldName = 'pplr_deleted'
    end
    object qryMatchHomePlayersfull_name: TWideStringField
      FieldName = 'full_name'
      ReadOnly = True
      Size = 512
    end
    object qryMatchHomePlayersrow_name: TWideStringField
      FieldName = 'row_name'
      ReadOnly = True
      Size = 512
    end
    object qryMatchHomePlayersrole_id: TSmallintField
      FieldName = 'role_id'
      ReadOnly = True
      Required = True
    end
    object qryMatchHomePlayersrole_code: TWideStringField
      FieldName = 'role_code'
      ReadOnly = True
      Size = 5
    end
    object qryMatchHomePlayersrole_name: TWideStringField
      FieldName = 'role_name'
      ReadOnly = True
      Size = 30
    end
    object qryMatchHomePlayersfrls_jguid: TWideStringField
      FieldName = 'frls_jguid'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qryMatchHomePlayersfrls_deleted: TBooleanField
      FieldName = 'frls_deleted'
      ReadOnly = True
    end
    object qryMatchHomePlayersseason_id: TIntegerField
      FieldName = 'season_id'
      ReadOnly = True
    end
    object qryMatchHomePlayersleague_id: TIntegerField
      FieldName = 'league_id'
      ReadOnly = True
    end
    object qryMatchHomePlayersteam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
  end
  object dsMatchDetail: TDataSource
    DataSet = qryMatchDetail
    Left = 512
    Top = 461
  end
  object qryMatchDetail: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_calendar'
      'WHERE'
      '  match_id = :Old_match_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT match_id, league_id, season_id, match_day_number, match_d' +
        'ate, home_team_id, visitors_team_id, goal_home, goal_visitor, po' +
        'ints_home, points_visitors, notes, confirmed, db_schema_id, inse' +
        'rt_date, update_date, home_notes, visitors_notes FROM football.f' +
        't_calendar'
      'WHERE'
      '  match_id = :match_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_calendar'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'match_date'
        FieldType = ftDate
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT '
      'c.*, a.team_name as home_team, b.team_name as visitors_team,'
      'football.match_level(c.confirmed, c.goal_home)'
      
        '  FROM football.ft_calendar c, football.ft_teams a, football.ft_' +
        'teams b'
      'WHERE '
      'a.team_id = c.home_team_id'
      'and'
      'b.team_id = c.visitors_team_id'
      'and'
      '('
      '  (c.match_id = :match_id)'
      '  or'
      '  ('
      '      match_day_number = :match_day_number'
      '      and c.league_id = :league_id'
      '      and c.season_id = :season_id'
      '      and :match_id = 0'
      '  )'
      ')'
      'order by '
      
        'football.match_level(c.confirmed, c.goal_home) asc,  a.team_name' +
        ' asc'
      ''
      '')
    AfterOpen = qryMatchDetailAfterOpen
    Left = 507
    Top = 408
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'match_id'
        Value = 0
      end
      item
        DataType = ftSmallint
        Name = 'match_day_number'
        Value = 2
      end
      item
        DataType = ftInteger
        Name = 'league_id'
        Value = 124
      end
      item
        DataType = ftInteger
        Name = 'season_id'
        Value = 77
      end>
    object qryMatchDetailmatch_id: TIntegerField
      FieldName = 'match_id'
      Required = True
    end
    object qryMatchDetailleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object qryMatchDetailseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryMatchDetailmatch_day_number: TSmallintField
      FieldName = 'match_day_number'
    end
    object qryMatchDetailmatch_date: TDateField
      FieldName = 'match_date'
    end
    object qryMatchDetailhome_team_id: TSmallintField
      FieldName = 'home_team_id'
    end
    object qryMatchDetailvisitors_team_id: TSmallintField
      FieldName = 'visitors_team_id'
    end
    object qryMatchDetailgoal_home: TSmallintField
      FieldName = 'goal_home'
    end
    object qryMatchDetailgoal_visitor: TSmallintField
      FieldName = 'goal_visitor'
    end
    object qryMatchDetailpoints_home: TSmallintField
      FieldName = 'points_home'
    end
    object qryMatchDetailpoints_visitors: TSmallintField
      FieldName = 'points_visitors'
    end
    object qryMatchDetailnotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryMatchDetailconfirmed: TBooleanField
      FieldName = 'confirmed'
    end
    object qryMatchDetaildb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryMatchDetailinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryMatchDetailupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryMatchDetailhome_notes: TWideStringField
      FieldName = 'home_notes'
      Size = 1024
    end
    object qryMatchDetailvisitors_notes: TWideStringField
      FieldName = 'visitors_notes'
      Size = 1024
    end
    object qryMatchDetailfiled_id: TIntegerField
      FieldName = 'filed_id'
    end
    object qryMatchDetailremote_id: TIntegerField
      FieldName = 'remote_id'
    end
    object qryMatchDetailforfeit: TBooleanField
      FieldName = 'forfeit'
    end
    object qryMatchDetailpostponed: TBooleanField
      FieldName = 'postponed'
    end
    object qryMatchDetailsuspended: TBooleanField
      FieldName = 'suspended'
    end
    object qryMatchDetailreferee_third_id: TIntegerField
      FieldName = 'referee_third_id'
    end
    object qryMatchDetailreferee_second_id: TIntegerField
      FieldName = 'referee_second_id'
    end
    object qryMatchDetailreferee_id: TIntegerField
      FieldName = 'referee_id'
    end
    object qryMatchDetailmatch_time: TDateTimeField
      FieldName = 'match_time'
    end
    object qryMatchDetailhome_team: TWideStringField
      FieldName = 'home_team'
      ReadOnly = True
      Size = 128
    end
    object qryMatchDetailvisitors_team: TWideStringField
      FieldName = 'visitors_team'
      ReadOnly = True
      Size = 128
    end
    object qryMatchDetailmatch_level: TSmallintField
      FieldName = 'match_level'
      ReadOnly = True
    end
  end
  object qryLkpEventTypes: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from football.ft_event_types')
    Left = 272
    Top = 128
  end
  object qryNextMatchDay: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_calendar'
      'WHERE'
      '  match_id = :Old_match_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT match_id, league_id, season_id, match_day_number, match_d' +
        'ate, home_team_id, visitors_team_id, goal_home, goal_visitor, po' +
        'ints_home, points_visitors, notes, confirmed, db_schema_id, inse' +
        'rt_date, update_date, home_notes, visitors_notes FROM football.f' +
        't_calendar'
      'WHERE'
      '  match_id = :match_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_calendar'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'match_date'
        FieldType = ftDate
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select s.season_des, s.season_code, l.league_name, m.*'
      
        'from football.ft_match_days m, football.ft_leagues l, football.f' +
        't_seasons s'
      'where'
      's.season_id = :season_id'
      'and'
      'l.league_id = :league_id'
      'and'
      'm.league_id = :league_id'
      'and '
      'm.season_id = :season_id'
      'and'
      'm.match_day_number = :match_day_number '
      '-- and'
      '-- l.db_schema_id = :db_schema_id')
    DetailFields = 'league_id;season_id;match_day_number'
    Left = 379
    Top = 88
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 75
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 125
      end
      item
        DataType = ftSmallint
        Name = 'match_day_number'
        ParamType = ptInput
        Value = 2
      end>
    object qryNextMatchDayseason_des: TWideStringField
      FieldName = 'season_des'
      ReadOnly = True
    end
    object qryNextMatchDayseason_code: TWideStringField
      FieldName = 'season_code'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object qryNextMatchDayleague_name: TWideStringField
      FieldName = 'league_name'
      ReadOnly = True
      Size = 128
    end
    object qryNextMatchDayseason_id: TSmallintField
      FieldName = 'season_id'
      Required = True
    end
    object qryNextMatchDayleague_id: TSmallintField
      FieldName = 'league_id'
      Required = True
    end
    object qryNextMatchDaymatch_day_number: TSmallintField
      FieldName = 'match_day_number'
      Required = True
    end
    object qryNextMatchDayrest_team_id: TIntegerField
      FieldName = 'rest_team_id'
    end
    object qryNextMatchDaydb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryNextMatchDaymatch_day_date: TDateField
      FieldName = 'match_day_date'
    end
    object qryNextMatchDaymatch_day_played: TDateField
      FieldName = 'match_day_played'
    end
  end
  object qryChampionship: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select  '
      'c.*, '
      ' l.*, s.season_des, s.season_code'
      'from '
      
        'football.ft_championships c, football.ft_leagues l, football.ft_' +
        'seasons s'
      'where'
      's.season_id = c.season_id '
      'and '
      'c.season_id = :season_id and c.league_id = :league_id'
      'and '
      'l.league_id = c.league_id '
      'order by '
      'league_position')
    Left = 184
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'season_id'
        ParamType = ptInput
        Value = 76
      end
      item
        DataType = ftInteger
        Name = 'league_id'
        ParamType = ptInput
        Value = 124
      end>
    object qryChampionshipleague_id: TSmallintField
      FieldName = 'league_id'
      ReadOnly = True
      Required = True
    end
    object qryChampionshipleague_name: TWideStringField
      FieldName = 'league_name'
      ReadOnly = True
      Size = 128
    end
    object qryChampionshipseason_id: TIntegerField
      FieldName = 'season_id'
      ReadOnly = True
      Required = True
    end
    object qryChampionshipseason_des: TWideStringField
      FieldName = 'season_des'
      ReadOnly = True
    end
    object qryChampionshipseason_code: TWideStringField
      FieldName = 'season_code'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object qryChampionshipdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      ReadOnly = True
      Required = True
    end
    object qryChampionshippromoted: TSmallintField
      FieldName = 'promoted'
    end
    object qryChampionshipplayoff: TSmallintField
      FieldName = 'playoff'
    end
    object qryChampionshiprelegation: TSmallintField
      FieldName = 'relegation'
    end
    object qryChampionshipchampions: TSmallintField
      FieldName = 'champions'
    end
    object qryChampionshipplayout: TSmallintField
      FieldName = 'playout'
    end
    object qryChampionshipteams: TSmallintField
      FieldName = 'teams'
      Required = True
    end
    object qryChampionshipiso_country_code: TWideStringField
      FieldName = 'iso_country_code'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryChampionshipleague_position: TSmallintField
      FieldName = 'league_position'
      ReadOnly = True
    end
    object qryChampionshipleague_code: TWideStringField
      FieldName = 'league_code'
      ReadOnly = True
      Size = 6
    end
    object qryChampionshiprelegationcss: TWideStringField
      FieldName = 'relegationcss'
      ReadOnly = True
      Size = 128
    end
    object qryChampionshipplayoutcss: TWideStringField
      FieldName = 'playoutcss'
      ReadOnly = True
      Size = 128
    end
    object qryChampionshipchampionscss: TWideStringField
      FieldName = 'championscss'
      ReadOnly = True
      Size = 128
    end
    object qryChampionshipplayoffcss: TWideStringField
      FieldName = 'playoffcss'
      ReadOnly = True
      Size = 128
    end
    object qryChampionshippromotedcss: TWideStringField
      FieldName = 'promotedcss'
      ReadOnly = True
      Size = 128
    end
  end
  object qryNextMatches: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_calendar'
      'WHERE'
      '  match_id = :Old_match_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT match_id, league_id, season_id, match_day_number, match_d' +
        'ate, home_team_id, visitors_team_id, goal_home, goal_visitor, po' +
        'ints_home, points_visitors, notes, confirmed, db_schema_id, inse' +
        'rt_date, update_date, home_notes, visitors_notes FROM football.f' +
        't_calendar'
      'WHERE'
      '  match_id = :match_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_calendar'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'match_date'
        FieldType = ftDate
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT row_number() over() as rownum, c.*, a.team_name as home_t' +
        'eam, b.team_name as visitors_team'
      
        '  FROM football.ft_calendar c, football.ft_teams a, football.ft_' +
        'teams b'
      'WHERE '
      'a.team_id = c.home_team_id'
      'and'
      'b.team_id = c.visitors_team_id'
      'and'
      'c.match_day_number = :match_day_number '
      '      and c.league_id = :league_id'
      '       and c.season_id = :season_id')
    Left = 379
    Top = 200
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'match_day_number'
        ParamType = ptInput
        Value = 3
      end
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
      end>
    object IntegerField1: TIntegerField
      FieldName = 'match_id'
      Required = True
    end
    object SmallintField1: TSmallintField
      FieldName = 'league_id'
    end
    object SmallintField2: TSmallintField
      FieldName = 'season_id'
    end
    object SmallintField3: TSmallintField
      FieldName = 'match_day_number'
    end
    object DateField1: TDateField
      FieldName = 'match_date'
    end
    object SmallintField4: TSmallintField
      FieldName = 'home_team_id'
    end
    object SmallintField5: TSmallintField
      FieldName = 'visitors_team_id'
    end
    object SmallintField6: TSmallintField
      FieldName = 'goal_home'
    end
    object SmallintField7: TSmallintField
      FieldName = 'goal_visitor'
    end
    object SmallintField8: TSmallintField
      FieldName = 'points_home'
    end
    object SmallintField9: TSmallintField
      FieldName = 'points_visitors'
    end
    object WideMemoField1: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object BooleanField1: TBooleanField
      FieldName = 'confirmed'
    end
    object IntegerField2: TIntegerField
      FieldName = 'db_schema_id'
    end
    object SQLTimeStampField1: TDateTimeField
      FieldName = 'insert_date'
    end
    object SQLTimeStampField2: TDateTimeField
      FieldName = 'update_date'
    end
    object WideStringField1: TWideStringField
      FieldName = 'home_notes'
      Size = 1024
    end
    object WideStringField2: TWideStringField
      FieldName = 'visitors_notes'
      Size = 1024
    end
    object WideStringField3: TWideStringField
      FieldName = 'home_team'
      ReadOnly = True
      Size = 128
    end
    object WideStringField4: TWideStringField
      FieldName = 'visitors_team'
      ReadOnly = True
      Size = 128
    end
    object qryNextMatchesrownum: TLargeintField
      FieldName = 'rownum'
      ReadOnly = True
    end
    object qryNextMatchesmatch_time: TDateTimeField
      FieldName = 'match_time'
    end
    object qryNextMatchesreferee_id: TIntegerField
      FieldName = 'referee_id'
    end
    object qryNextMatchesreferee_second_id: TIntegerField
      FieldName = 'referee_second_id'
    end
    object qryNextMatchesreferee_third_id: TIntegerField
      FieldName = 'referee_third_id'
    end
    object qryNextMatchessuspended: TBooleanField
      FieldName = 'suspended'
    end
    object qryNextMatchespostponed: TBooleanField
      FieldName = 'postponed'
    end
    object qryNextMatchesforfeit: TBooleanField
      FieldName = 'forfeit'
      Required = True
    end
    object qryNextMatchesremote_id: TIntegerField
      FieldName = 'remote_id'
    end
    object qryNextMatchesfiled_id: TIntegerField
      FieldName = 'filed_id'
    end
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
        'es, '
      
        '  vote = :vote, played = :played, team_id = :team_id, pos = :pos' +
        ', '
      '  subst_id = :subst_id, goal = :goal, owngoal = :owngoal, '
      
        '  lostgoal = :lostgoal, since = :since, until = :until, sent_off' +
        ' = :sent_off, '
      '  injuries = :injuries'
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
      end
      item
        FieldName = 'row_name'
        FieldType = ftWideString
        FieldLength = 512
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  '
      '   m.*, p.*, '
      '   p.family_name || '#39' '#39' || p.first_name as full_name, '
      '   p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      
        '   || public.nvl( to_char(p.birth_date, '#39'dd/mm/yy'#39') , public.nvl' +
        '(p.notes, '#39'n.d.'#39') ) '
      '   || '#39' '#39' || r.role_name as row_name, r.*'
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
    DetailFields = 'team_id'
    Left = 379
    Top = 440
    ParamData = <
      item
        DataType = ftSmallint
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
    object qryMatchTeamPlayersrole_code: TWideStringField
      FieldName = 'role_code'
      ReadOnly = True
      Size = 5
    end
    object qryMatchTeamPlayersrole_name: TWideStringField
      FieldName = 'role_name'
      ReadOnly = True
      Size = 30
    end
    object qryMatchTeamPlayersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryMatchTeamPlayersbirth_date: TDateField
      FieldName = 'birth_date'
    end
    object qryMatchTeamPlayersbirth_year: TSmallintField
      FieldName = 'birth_year'
    end
    object qryMatchTeamPlayersbirth_place: TWideStringField
      FieldName = 'birth_place'
      Size = 128
    end
    object qryMatchTeamPlayersnotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryMatchTeamPlayersrole: TSmallintField
      FieldName = 'role'
    end
    object qryMatchTeamPlayersrow_name: TWideStringField
      FieldName = 'row_name'
      ReadOnly = True
      Size = 512
    end
  end
  object qryLastMatch: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT '
      'max(match_day_number) as last_match'
      'FROM football.ft_calendar'
      '/*'
      'max(played_matches) as last_match '
      'from '
      'football.ft_ranking_table '
      '*/'
      'where '
      'season_id = :season_id '
      'and '
      'league_id = :league_id'
      'and'
      'goal_home is not null'
      ''
      '')
    Left = 184
    Top = 344
    ParamData = <
      item
        DataType = ftInteger
        Name = 'season_id'
        ParamType = ptInput
        Value = 49
      end
      item
        DataType = ftInteger
        Name = 'league_id'
        ParamType = ptInput
        Value = 16
      end>
    object qryLastMatchlast_match: TSmallintField
      FieldName = 'last_match'
      ReadOnly = True
    end
  end
  object qryGolRanking: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select row_number() over() as rownum, a.*, a.goals as goal'
      'from'
      '('
      'SELECT   '
      
        '       s.first_name,  s.family_name,  t.team_name,  v.league_id,' +
        ' v.season_id,   v.team_id, '
      '       v.player_id, count(1) as goals'
      
        '  FROM football.ft_match_events e, football.ft_calendar m, footb' +
        'all.ft_teams t, '
      
        '       football.ft_players s, football.mv_players_championships ' +
        'v'
      '  where '
      '  ---- t.team_id = e.team_id and '
      '  s.anagraph_id = e.player_id and'
      '  m.match_id = e.match_id '
      '  and m.season_id = :season_id and m.league_id = :league_id'
      
        '  and v.season_id = :season_id and v.league_id = :league_id and ' +
        'v.player_id = e.player_id and t.team_id = v.team_id'
      '  and e.event_id = 1'
      
        '  group by s.first_name, s.family_name, v.league_id, v.season_id' +
        ', v.team_id, v.player_id, t.team_name'
      '  order by goals desc'
      '  limit :limit'
      ') a')
    Left = 187
    Top = 220
    ParamData = <
      item
        DataType = ftInteger
        Name = 'season_id'
        ParamType = ptInput
        Value = 76
      end
      item
        DataType = ftInteger
        Name = 'league_id'
        ParamType = ptInput
        Value = 124
      end
      item
        DataType = ftSmallint
        Name = 'LIMIT'
        Value = 100
      end>
    object qryGolRankingrownum: TLargeintField
      FieldName = 'rownum'
      ReadOnly = True
    end
    object qryGolRankingfamily_name: TWideStringField
      FieldName = 'family_name'
      ReadOnly = True
      Size = 128
    end
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
    object qryGolRankingfirst_name: TWideStringField
      FieldName = 'first_name'
      ReadOnly = True
      Size = 128
    end
    object qryGolRankinggoals: TLargeintField
      FieldName = 'goals'
      ReadOnly = True
    end
    object qryGolRankinggoal: TLargeintField
      FieldName = 'goal'
      ReadOnly = True
    end
  end
  object qryLastSeason: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select max(season_id) '
      '   as season_id '
      '   from '
      '   football.ft_seasons'
      'where '
      '  db_schema_id = :db_schema_id')
    Left = 184
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 32
      end>
    object qryLastSeasonseason_id: TIntegerField
      FieldName = 'season_id'
      ReadOnly = True
    end
  end
  object dsMatchTeams: TDataSource
    DataSet = qryMatchTeams
    Left = 376
    Top = 381
  end
  object qryMatches: TUniQuery
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
    SQLLock.Strings = (
      'SELECT * FROM football.ft_calendar'
      'WHERE'
      '  match_id = :Old_match_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT match_id, league_id, season_id, match_day_number, match_d' +
        'ate, home_team_id, visitors_team_id, goal_home, goal_visitor, po' +
        'ints_home, points_visitors, notes, confirmed, db_schema_id, inse' +
        'rt_date, update_date, home_notes, visitors_notes FROM football.f' +
        't_calendar'
      'WHERE'
      '  match_id = :match_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM football.ft_calendar'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'match_date'
        FieldType = ftDate
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT '
      'row_number() over() as rownum, '
      'c.*, a.team_name as home_team, b.team_name as visitors_team,'
      'football.match_level(c.confirmed, c.goal_home)'
      
        '  FROM football.ft_calendar c, football.ft_teams a, football.ft_' +
        'teams b'
      'WHERE '
      'a.team_id = c.home_team_id'
      'and'
      'b.team_id = c.visitors_team_id'
      'and'
      'c.match_day_number = :match_day_number '
      '      and c.league_id = :league_id'
      '       and c.season_id = :season_id'
      'order by a.team_name')
    DetailFields = 'league_id;season_id;match_day_number'
    OnCalcFields = qryMatchesCalcFields
    Left = 379
    Top = 144
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'match_day_number'
        ParamType = ptInput
        Value = 30
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 124
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 76
      end>
    object qryMatchesrownum: TLargeintField
      FieldName = 'rownum'
      ReadOnly = True
    end
    object qryMatchesmatch_id: TIntegerField
      FieldName = 'match_id'
      Required = True
    end
    object qryMatchesleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object qryMatchesseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryMatchesmatch_day_number: TSmallintField
      FieldName = 'match_day_number'
    end
    object qryMatchesmatch_date: TDateField
      FieldName = 'match_date'
    end
    object qryMatcheshome_team_id: TSmallintField
      FieldName = 'home_team_id'
    end
    object qryMatchesvisitors_team_id: TSmallintField
      FieldName = 'visitors_team_id'
    end
    object qryMatchesgoal_home: TSmallintField
      FieldName = 'goal_home'
    end
    object qryMatchesgoal_visitor: TSmallintField
      FieldName = 'goal_visitor'
    end
    object qryMatchespoints_home: TSmallintField
      FieldName = 'points_home'
    end
    object qryMatchespoints_visitors: TSmallintField
      FieldName = 'points_visitors'
    end
    object qryMatchesnotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryMatchesconfirmed: TBooleanField
      FieldName = 'confirmed'
    end
    object qryMatchesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryMatchesinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryMatchesupdate_date: TDateTimeField
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
    object qryMatcheshome_team: TWideStringField
      FieldName = 'home_team'
      ReadOnly = True
      Size = 128
    end
    object qryMatchesvisitors_team: TWideStringField
      FieldName = 'visitors_team'
      ReadOnly = True
      Size = 128
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
      FieldName = 'suspended'
    end
    object qryMatchespostponed: TBooleanField
      FieldName = 'postponed'
    end
    object qryMatchesforfeit: TBooleanField
      FieldName = 'forfeit'
      Required = True
    end
    object qryMatchesremote_id: TIntegerField
      FieldName = 'remote_id'
    end
    object qryMatchesfiled_id: TIntegerField
      FieldName = 'filed_id'
    end
    object qryMatchesmatch_name: TStringField
      FieldKind = fkCalculated
      FieldName = 'match_name'
      Size = 256
      Calculated = True
    end
    object qryMatchesmatch_level: TSmallintField
      FieldName = 'match_level'
      ReadOnly = True
    end
  end
  object qryChampRanking: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT t.team_name,  r.*, goal_done - goal_lost as goal_diff'
      ''
      '  FROM football.ft_ranking_table r, football.ft_teams t'
      'WHERE'
      '     (season_id = :season_id or :season_id = 0)'
      '     and '
      '     (league_id = :league_id or :league_id = 0)'
      '     and'
      '     t.team_id = r.team_id'
      ''
      '')
    DetailFields = 'season_id;league_id'
    IndexFieldNames = 'pos'
    OnCalcFields = qryChampRankingCalcFields
    Left = 187
    Top = 160
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 0
      end>
    object qryChampRankingteam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
    object qryChampRankingranking_id: TIntegerField
      FieldName = 'ranking_id'
      Required = True
    end
    object qryChampRankingseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryChampRankingleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object qryChampRankingteam_id: TIntegerField
      FieldName = 'team_id'
    end
    object qryChampRankingpos: TSmallintField
      FieldName = 'pos'
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
    object qryChampRankingpoints: TSmallintField
      FieldName = 'points'
    end
    object qryChampRankinggoal_diff: TSmallintField
      FieldName = 'goal_diff'
      ReadOnly = True
    end
    object qryChampRankingscoring_average: TFloatField
      FieldKind = fkCalculated
      FieldName = 'scoring_average'
      Calculated = True
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
      'select e.*,   '
      '   p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      
        '   || public.nvl( to_char(p.birth_date, '#39'dd/mm/yy'#39') , public.nvl' +
        '(p.notes, '#39'n.d.'#39') ) '
      '   || '#39' '#39' || r.role_name '
      '    as teamplayer'
      '  , p.family_name '
      'from '
      
        'football.ft_match_events e, football.ft_players p, football.ft_t' +
        'eams t, football.ft_roles r'
      'where '
      'match_id = :match_id'
      'and'
      't.team_id = e.team_id'
      'and'
      'p.anagraph_id = e.player_id'
      'and'
      'public.nvl(p.role, 0) = r.role_id')
    MasterSource = dsMatchTeams
    MasterFields = 'match_id'
    DetailFields = 'match_id'
    Left = 376
    Top = 264
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
      LookupDataSet = qryMatchTeamPlayers
      LookupKeyFields = 'player_id'
      LookupResultField = 'full_name'
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
  end
  object qryMatchTeams: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from football.ft_teams where '
      'team_id in (:home_team_id, :visitors_team_id)')
    MasterFields = 'home_team_id;visitors_team_id'
    Left = 376
    Top = 328
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
  object qryTeam: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from football.ft_teams where '
      'team_id = :team_id')
    MasterFields = 'home_team_id;visitors_team_id'
    Left = 539
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'team_id'
        Value = nil
      end>
    object qryTeamteam_id: TIntegerField
      FieldName = 'team_id'
      Required = True
    end
    object qryTeamclub_id: TSmallintField
      FieldName = 'club_id'
      Required = True
    end
    object qryTeamteam_name: TWideStringField
      FieldName = 'team_name'
      Size = 128
    end
    object qryTeamtrainer_id: TIntegerField
      FieldName = 'trainer_id'
    end
    object qryTeamremote_id: TIntegerField
      FieldName = 'remote_id'
    end
    object qryTeamdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
  end
  object qryChampionships: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select   c.*, '
      '          l.*, '
      '          s.season_des, s.season_code'
      'from '
      
        'football.ft_championships c, football.ft_leagues l, football.ft_' +
        'seasons s'
      'where'
      's.season_id = c.season_id '
      'and'
      '( c.season_id = :season_id or :season_id = 0)'
      'and '
      'l.league_id = c.league_id '
      'order by '
      'league_position')
    Filtered = True
    Filter = 'season_id = 51 and league_id = 28'
    Left = 184
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'season_id'
        ParamType = ptInput
        Value = 0
      end>
    object qryChampionshipsleague_name: TWideStringField
      FieldName = 'league_name'
      ReadOnly = True
      Size = 128
    end
    object qryChampionshipsleague_position: TSmallintField
      FieldName = 'league_position'
      ReadOnly = True
    end
    object qryChampionshipsseason_id: TIntegerField
      FieldName = 'season_id'
      ReadOnly = True
      Required = True
    end
    object qryChampionshipsseason_des: TWideStringField
      FieldName = 'season_des'
      ReadOnly = True
    end
    object qryChampionshipsseason_code: TWideStringField
      FieldName = 'season_code'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object qryChampionshipsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryChampionshipsleague_id: TSmallintField
      FieldName = 'league_id'
      ReadOnly = True
      Required = True
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
    object qryChampionshipsiso_country_code: TWideStringField
      FieldName = 'iso_country_code'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryChampionshipsleague_code: TWideStringField
      FieldName = 'league_code'
      ReadOnly = True
      Size = 6
    end
    object qryChampionshipsrelegationcss: TWideStringField
      FieldName = 'relegationcss'
      ReadOnly = True
      Size = 128
    end
    object qryChampionshipsplayoutcss: TWideStringField
      FieldName = 'playoutcss'
      ReadOnly = True
      Size = 128
    end
    object qryChampionshipschampionscss: TWideStringField
      FieldName = 'championscss'
      ReadOnly = True
      Size = 128
    end
    object qryChampionshipsplayoffcss: TWideStringField
      FieldName = 'playoffcss'
      ReadOnly = True
      Size = 128
    end
    object qryChampionshipspromotedcss: TWideStringField
      FieldName = 'promotedcss'
      ReadOnly = True
      Size = 128
    end
    object qryChampionshipsremote_id: TSmallintField
      FieldName = 'remote_id'
      ReadOnly = True
    end
  end
  object qryDynamicRanking: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      ' SELECT '
      '    row_number() over() as pos, a.* from '
      ''
      ' ('
      ' select '
      '    calendar_ranks.club_name team_name,'
      '    calendar_ranks.league_id,'
      '    calendar_ranks.season_id,'
      '    calendar_ranks.team_id,'
      ''
      '    max(calendar_ranks.match_day_number) AS last_match_day,'
      ''
      '    sum(calendar_ranks.played_home) AS home_matches,'
      '    sum(calendar_ranks.played_visitor) AS outside_played,'
      ''
      '    sum(calendar_ranks.goal_win_home) AS goal_win_home,'
      '    sum(calendar_ranks.goal_win_visitor) AS goal_win_visitor,'
      ''
      '    sum(calendar_ranks.goal_lost_home) AS goal_lost_home,'
      '    sum(calendar_ranks.goal_lost_visitor) AS goal_lost_visitor,'
      ''
      '    sum(calendar_ranks.points_home) AS points_home,'
      '    sum(calendar_ranks.points_visitor) AS points_visitor,'
      ''
      
        '    sum(calendar_ranks.points_home) + sum(calendar_ranks.points_' +
        'visitor) - ft_teams_championships.penalty::numeric AS points,'
      ''
      
        '    '#39'-3'#39'::integer::numeric * sum(calendar_ranks.played_home) + s' +
        'um(calendar_ranks.points_home) AS average_home,'
      
        '    sum(calendar_ranks.played_visitor) - sum(calendar_ranks.poin' +
        'ts_visitor) AS average_visitor,'
      ''
      
        '    '#39'-3'#39'::integer::numeric * sum(calendar_ranks.played_home) + s' +
        'um(calendar_ranks.points_home) + ('#39'-1'#39'::integer::numeric * sum(c' +
        'alendar_ranks.played_visitor) + sum(calendar_ranks.points_visito' +
        'r)) AS average,'
      
        '    sum(calendar_ranks.goal_win_home) + sum(calendar_ranks.goal_' +
        'win_visitor) AS goal_done,'
      
        '    sum(calendar_ranks.goal_lost_home) + sum(calendar_ranks.goal' +
        '_lost_visitor) AS goal_lost,'
      ''
      
        '    sum(calendar_ranks.goal_win_home) + sum(calendar_ranks.goal_' +
        'win_visitor) - (sum(calendar_ranks.goal_lost_home) + sum(calenda' +
        'r_ranks.goal_lost_visitor)) AS goal_difference,'
      ''
      '    sum(calendar_ranks.lost_home) AS home_lost,'
      '    sum(calendar_ranks.win_home) AS home_won,'
      '    sum(calendar_ranks.pair_home) AS home_tied,'
      ''
      '    sum(calendar_ranks.lost_visitor) AS outside_lost,'
      '    sum(calendar_ranks.win_visitor) AS outside_won,'
      '    sum(calendar_ranks.pair_visitor) AS outside_tied,'
      ''
      
        '    sum(calendar_ranks.lost_home + calendar_ranks.lost_visitor) ' +
        'AS lost_matches,'
      
        '    sum(calendar_ranks.win_home + calendar_ranks.win_visitor) AS' +
        ' won_matches,'
      
        '    sum(calendar_ranks.pair_home + calendar_ranks.pair_visitor) ' +
        'AS tied_matches,'
      
        '    sum(calendar_ranks.played_home + calendar_ranks.played_visit' +
        'or) AS played_matches,'
      ''
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
      
        #9'  AND calendar_ranks.match_day_number >= :from AND (calendar_ra' +
        'nks.match_day_number <= :to or :to = 0)'#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9 +
        #9#9#9#9' '
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
    Left = 664
    Top = 384
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
        Value = 124
      end
      item
        DataType = ftSmallint
        Name = 'FROM'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftSmallint
        Name = 'TO'
        ParamType = ptInput
        Value = 0
      end>
    object qryDynamicRankingpos: TLargeintField
      FieldName = 'pos'
      ReadOnly = True
    end
    object qryDynamicRankingleague_id: TSmallintField
      FieldName = 'league_id'
      ReadOnly = True
    end
    object qryDynamicRankingseason_id: TSmallintField
      FieldName = 'season_id'
      ReadOnly = True
    end
    object qryDynamicRankingteam_id: TIntegerField
      FieldName = 'team_id'
      ReadOnly = True
    end
    object qryDynamicRankinglast_match_day: TSmallintField
      FieldName = 'last_match_day'
      ReadOnly = True
    end
    object qryDynamicRankinghome_matches: TFloatField
      FieldName = 'home_matches'
      ReadOnly = True
    end
    object qryDynamicRankingoutside_played: TFloatField
      FieldName = 'outside_played'
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
    object qryDynamicRankinggoal_done: TFloatField
      FieldName = 'goal_done'
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
    object qryDynamicRankinghome_lost: TFloatField
      FieldName = 'home_lost'
      ReadOnly = True
    end
    object qryDynamicRankinghome_won: TFloatField
      FieldName = 'home_won'
      ReadOnly = True
    end
    object qryDynamicRankinghome_tied: TFloatField
      FieldName = 'home_tied'
      ReadOnly = True
    end
    object qryDynamicRankingoutside_lost: TFloatField
      FieldName = 'outside_lost'
      ReadOnly = True
    end
    object qryDynamicRankingoutside_won: TFloatField
      FieldName = 'outside_won'
      ReadOnly = True
    end
    object qryDynamicRankingoutside_tied: TFloatField
      FieldName = 'outside_tied'
      ReadOnly = True
    end
    object qryDynamicRankinglost_matches: TFloatField
      FieldName = 'lost_matches'
      ReadOnly = True
    end
    object qryDynamicRankingwon_matches: TFloatField
      FieldName = 'won_matches'
      ReadOnly = True
    end
    object qryDynamicRankingtied_matches: TFloatField
      FieldName = 'tied_matches'
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
    object qryDynamicRankingteam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
  end
  object lkpMatchDays: TUniQuery
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
    MasterFields = 'season_id;league_id'
    DetailFields = 'season_id;league_id'
    DMLRefresh = True
    Left = 664
    Top = 440
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
    object lkpMatchDaysmatch_day_number: TSmallintField
      FieldName = 'match_day_number'
      Required = True
    end
  end
  object DynamicGolRanking: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select row_number() over() as rownum, a.*, a.goals as goal'
      'from'
      '('
      'SELECT   '
      
        '       s.first_name,  s.family_name,  t.team_name,  v.league_id,' +
        ' v.season_id,   v.team_id, '
      '       v.player_id, count(1) as goals'
      
        '  FROM football.ft_match_events e, football.ft_calendar m, footb' +
        'all.ft_teams t, '
      
        '       football.ft_players s, football.mv_players_championships ' +
        'v'
      '  where '
      '  ---t.team_id = e.team_id and '
      '  s.anagraph_id = e.player_id and'
      '  m.match_id = e.match_id '
      '  and m.season_id = :season_id and m.league_id = :league_id'
      
        '  and v.season_id = :season_id and v.league_id = :league_id and ' +
        'v.player_id = e.player_id and v.team_id = t.team_id'
      '  and e.event_id = 1'
      
        '  and (m.match_day_number >= :from or :from = 0) and (m.match_da' +
        'y_number <= :to or :to = 0)'
      
        '  group by s.first_name, s.family_name, v.league_id, v.season_id' +
        ', v.team_id, v.player_id, t.team_name'
      '  order by goals desc'
      '  limit :limit'
      ') a')
    Left = 659
    Top = 500
    ParamData = <
      item
        DataType = ftInteger
        Name = 'season_id'
        ParamType = ptInput
        Value = 76
      end
      item
        DataType = ftInteger
        Name = 'league_id'
        ParamType = ptInput
        Value = 124
      end
      item
        DataType = ftSmallint
        Name = 'FROM'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftSmallint
        Name = 'TO'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftSmallint
        Name = 'LIMIT'
        Value = 100
      end>
    object DynamicGolRankingrownum: TLargeintField
      FieldName = 'rownum'
      ReadOnly = True
    end
    object DynamicGolRankingfirst_name: TWideStringField
      FieldName = 'first_name'
      ReadOnly = True
      Size = 128
    end
    object DynamicGolRankingfamily_name: TWideStringField
      FieldName = 'family_name'
      ReadOnly = True
      Size = 128
    end
    object DynamicGolRankingteam_name: TWideStringField
      FieldName = 'team_name'
      ReadOnly = True
      Size = 128
    end
    object DynamicGolRankingleague_id: TSmallintField
      FieldName = 'league_id'
      ReadOnly = True
    end
    object DynamicGolRankingseason_id: TSmallintField
      FieldName = 'season_id'
      ReadOnly = True
    end
    object DynamicGolRankingteam_id: TSmallintField
      FieldName = 'team_id'
      ReadOnly = True
    end
    object DynamicGolRankingplayer_id: TIntegerField
      FieldName = 'player_id'
      ReadOnly = True
    end
    object DynamicGolRankinggoals: TLargeintField
      FieldName = 'goals'
      ReadOnly = True
    end
    object DynamicGolRankinggoal: TLargeintField
      FieldName = 'goal'
      ReadOnly = True
    end
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
      'where '
      '  db_schema_id = :db_schema_id'
      '  and'
      '  (:season_id = season_id or :season_id = 0)'
      'order by season_id desc')
    Left = 72
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 11
      end
      item
        DataType = ftInteger
        Name = 'season_id'
        ParamType = ptInput
        Value = 0
      end>
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
end
