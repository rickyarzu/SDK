inherited dmPgSportsChampionshipWizard: TdmPgSportsChampionshipWizard
  Height = 555
  Width = 643
  inherited PgErgoConnection: TJanuaUniConnection
    DataTypeMap = <
      item
        DBType = 521
        FieldType = ftDateTime
      end
      item
        DBType = 520
        FieldType = ftDateTime
      end>
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited PgUni: TPostgreSQLUniProvider
    Left = 184
    Top = 376
  end
  inherited spSetSchemaID: TUniStoredProc
    CommandStoredProcName = 'system.set_schema_id'
  end
  object qryChampionships: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO sports.championships_view'
      
        '  (season_id, league_id, promoted, playoff, relegation, champion' +
        's, playout, teams, db_schema_id, jguid, deleted, insert_date, up' +
        'date_date, user_insert, user_update, id, league_name, league_pos' +
        'ition, league_code)'
      'VALUES'
      
        '  (:season_id, :league_id, :promoted, :playoff, :relegation, :ch' +
        'ampions, :playout, :teams, :db_schema_id, :jguid, :deleted, :ins' +
        'ert_date, :update_date, :user_insert, :user_update, :id, :league' +
        '_name, :league_position, :league_code)')
    SQLDelete.Strings = (
      'DELETE FROM sports.championships_view'
      'WHERE'
      '  season_id = :Old_season_id AND league_id = :Old_league_id')
    SQLUpdate.Strings = (
      'UPDATE sports.championships_view'
      'SET'
      
        '  season_id = :season_id, league_id = :league_id, promoted = :pr' +
        'omoted, playoff = :playoff, relegation = :relegation, champions ' +
        '= :champions, playout = :playout, teams = :teams, db_schema_id =' +
        ' :db_schema_id, jguid = :jguid, deleted = :deleted, insert_date ' +
        '= :insert_date, update_date = :update_date, user_insert = :user_' +
        'insert, user_update = :user_update, id = :id, league_name = :lea' +
        'gue_name, league_position = :league_position, league_code = :lea' +
        'gue_code'
      'WHERE'
      '  season_id = :Old_season_id AND league_id = :Old_league_id')
    SQLLock.Strings = (
      'SELECT * FROM sports.championships_view'
      'WHERE'
      '  season_id = :Old_season_id AND league_id = :Old_league_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT season_id, league_id, promoted, playoff, relegation, cham' +
        'pions, playout, teams, db_schema_id, jguid, deleted, insert_date' +
        ', update_date, user_insert, user_update, id, league_name, league' +
        '_position, league_code FROM sports.championships_view'
      'WHERE'
      '  season_id = :season_id AND league_id = :league_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM sports.championships_view'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT C.*'
      '  FROM '
      '      sports.championships_view C'
      '  WHERE C.season_id = :id'
      '')
    MasterSource = dsSeasons
    MasterFields = 'id'
    DetailFields = 'season_id'
    AfterOpen = qryChampionshipsAfterOpen
    Left = 184
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 6
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
    Left = 184
    Top = 88
  end
  object dsChampionships: TDataSource
    DataSet = qryChampionships
    Left = 184
    Top = 192
  end
  object qrySeasons: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO sports.seasons_view'
      '  (id, season_des, season_code)'
      'VALUES'
      '  (:id, :season_des, :season_code)')
    SQLDelete.Strings = (
      'DELETE FROM sports.seasons_view'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE sports.seasons_view'
      'SET'
      '  id = :id, season_des = :season_des, season_code = :season_code'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM sports.seasons_view'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT id, season_des, season_code FROM sports.seasons_view'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM sports.seasons_view'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from sports.seasons_view'
      'order by id desc')
    AfterOpen = qrySeasonsAfterOpen
    Left = 184
    Top = 32
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
  end
  object qryTeamsChampionships: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO sports.teams_championships_view'
      
        '  (team_name, club_name, id, season_id, league_id, team_id, posi' +
        'tion, penalty, remote_id, db_schema_id, jguid, deleted, insert_d' +
        'ate, update_date, user_insert, user_update, club_id, league_name' +
        ')'
      'VALUES'
      
        '  (:team_name, :club_name, :id, :season_id, :league_id, :team_id' +
        ', :position, :penalty, :remote_id, :db_schema_id, :jguid, :delet' +
        'ed, :insert_date, :update_date, :user_insert, :user_update, :clu' +
        'b_id, :league_name)')
    SQLDelete.Strings = (
      'DELETE FROM sports.teams_championships_view'
      'WHERE'
      
        '  id = :Old_id AND season_id = :Old_season_id AND league_id = :O' +
        'ld_league_id')
    SQLUpdate.Strings = (
      'UPDATE sports.teams_championships_view'
      'SET'
      
        '  team_name = :team_name, club_name = :club_name, id = :id, seas' +
        'on_id = :season_id, league_id = :league_id, team_id = :team_id, ' +
        'position = :position, penalty = :penalty, remote_id = :remote_id' +
        ', db_schema_id = :db_schema_id, jguid = :jguid, deleted = :delet' +
        'ed, insert_date = :insert_date, update_date = :update_date, user' +
        '_insert = :user_insert, user_update = :user_update, club_id = :c' +
        'lub_id, league_name = :league_name'
      'WHERE'
      
        '  id = :Old_id AND season_id = :Old_season_id AND league_id = :O' +
        'ld_league_id')
    SQLLock.Strings = (
      'SELECT * FROM sports.teams_championships_view'
      'WHERE'
      
        '  id = :Old_id AND season_id = :Old_season_id AND league_id = :O' +
        'ld_league_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT team_name, club_name, id, season_id, league_id, team_id, ' +
        'position, penalty, remote_id, db_schema_id, jguid, deleted, inse' +
        'rt_date, update_date, user_insert, user_update, club_id, league_' +
        'name FROM sports.teams_championships_view'
      'WHERE'
      '  id = :id AND season_id = :season_id AND league_id = :league_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM sports.teams_championships_view'
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
    Active = True
    OnNewRecord = qryTeamsChampionshipsNewRecord
    Left = 184
    Top = 248
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 6
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 26
      end>
    object qryTeamsChampionshipsteam_name: TWideStringField
      FieldName = 'team_name'
      Size = 128
    end
    object qryTeamsChampionshipsclub_name: TWideStringField
      FieldName = 'club_name'
      Size = 128
    end
    object qryTeamsChampionshipsid: TIntegerField
      FieldName = 'id'
    end
    object qryTeamsChampionshipsseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryTeamsChampionshipsleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object qryTeamsChampionshipsteam_id: TSmallintField
      FieldName = 'team_id'
    end
    object qryTeamsChampionshipsposition: TSmallintField
      FieldName = 'position'
    end
    object qryTeamsChampionshipspenalty: TSmallintField
      FieldName = 'penalty'
    end
    object qryTeamsChampionshipsremote_id: TIntegerField
      FieldName = 'remote_id'
    end
    object qryTeamsChampionshipsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryTeamsChampionshipsjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryTeamsChampionshipsdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryTeamsChampionshipsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryTeamsChampionshipsupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryTeamsChampionshipsuser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 128
    end
    object qryTeamsChampionshipsuser_update: TWideStringField
      FieldName = 'user_update'
      Size = 128
    end
    object qryTeamsChampionshipsclub_id: TSmallintField
      FieldName = 'club_id'
    end
    object qryTeamsChampionshipsleague_name: TWideStringField
      FieldName = 'league_name'
      Size = 128
    end
  end
  object dsTeamChampionships: TDataSource
    DataSet = qryTeamsChampionships
    Left = 184
    Top = 304
  end
  object qryAllTeams: TUniQuery
    KeyFields = 'team_id'
    SQLInsert.Strings = (
      'INSERT INTO sports.teams_view'
      
        '  (id, club_id, team_name, trainer_id, image, remote_id, db_sche' +
        'ma_id, jguid, deleted, insert_date, update_date, user_insert, us' +
        'er_update, club_name, club_image, team_id)'
      'VALUES'
      
        '  (:id, :club_id, :team_name, :trainer_id, :image, :remote_id, :' +
        'db_schema_id, :jguid, :deleted, :insert_date, :update_date, :use' +
        'r_insert, :user_update, :club_name, :club_image, :team_id)')
    SQLDelete.Strings = (
      'DELETE FROM sports.teams_view'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE sports.teams_view'
      'SET'
      
        '  id = :id, club_id = :club_id, team_name = :team_name, trainer_' +
        'id = :trainer_id, image = :image, remote_id = :remote_id, db_sch' +
        'ema_id = :db_schema_id, jguid = :jguid, deleted = :deleted, inse' +
        'rt_date = :insert_date, update_date = :update_date, user_insert ' +
        '= :user_insert, user_update = :user_update, club_name = :club_na' +
        'me, club_image = :club_image, team_id = :team_id'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM sports.teams_view'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, club_id, team_name, trainer_id, image, remote_id, db_' +
        'schema_id, jguid, deleted, insert_date, update_date, user_insert' +
        ', user_update, club_name, club_image, team_id FROM sports.teams_' +
        'view'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM sports.teams_view'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select t.* '
      'from sports.teams_view t '
      'order by team_name')
    MasterFields = 'id'
    DetailFields = 'club_id'
    OnNewRecord = qryAllTeamsNewRecord
    Left = 184
    Top = 448
    object qryAllTeamsid: TIntegerField
      FieldName = 'id'
    end
    object qryAllTeamsclub_id: TSmallintField
      FieldName = 'club_id'
    end
    object qryAllTeamsteam_name: TWideStringField
      FieldName = 'team_name'
      Size = 128
    end
    object qryAllTeamstrainer_id: TIntegerField
      FieldName = 'trainer_id'
    end
    object qryAllTeamsimage: TBlobField
      FieldName = 'image'
    end
    object qryAllTeamsremote_id: TIntegerField
      FieldName = 'remote_id'
    end
    object qryAllTeamsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryAllTeamsjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryAllTeamsdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryAllTeamsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryAllTeamsupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryAllTeamsuser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 128
    end
    object qryAllTeamsuser_update: TWideStringField
      FieldName = 'user_update'
      Size = 128
    end
    object qryAllTeamsclub_name: TWideStringField
      FieldName = 'club_name'
      Size = 128
    end
    object qryAllTeamsclub_image: TBlobField
      FieldName = 'club_image'
    end
    object qryAllTeamsteam_id: TIntegerField
      FieldName = 'team_id'
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
        'tors_team_name, games_sets)'
      'VALUES'
      
        '  (:match_id, :league_id, :season_id, :match_day_number, :match_' +
        'time, :match_date, :home_team_id, :visitors_team_id, :score_home' +
        ', :score_visitor, :points_home, :points_visitors, :notes, :confi' +
        'rmed, :home_notes, :visitors_notes, :suspended, :postponed, :for' +
        'feit, :remote_id, :field_id, :article_url, :video_url, :db_schem' +
        'a_id, :jguid, :deleted, :insert_date, :update_date, :user_insert' +
        ', :user_update, :home_team_name, :visitors_team_name, :games_set' +
        's)')
    SQLDelete.Strings = (
      'DELETE FROM sports.matches_view'
      'WHERE'
      '  id = :Old_match_id')
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
        '_team_name = :visitors_team_name, games_sets = :games_sets'
      'WHERE'
      '  id = :Old_match_id')
    SQLLock.Strings = (
      'SELECT * FROM sports.matches_view'
      'WHERE'
      '  id = :Old_match_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, league_id, season_id, match_day_number, match_time, m' +
        'atch_date, home_team_id, visitors_team_id, score_home, score_vis' +
        'itor, points_home, points_visitors, notes, confirmed, home_notes' +
        ', visitors_notes, suspended, postponed, forfeit, remote_id, fiel' +
        'd_id, article_url, video_url, db_schema_id, jguid, deleted, inse' +
        'rt_date, update_date, user_insert, user_update, home_team_name, ' +
        'visitors_team_name, games_sets FROM sports.matches_view'
      'WHERE'
      '  id = :match_id')
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
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT c.id as match_id,  c.*'
      '  FROM sports.matches_view c'
      'WHERE '
      '      c.match_day_number = :match_day_number and '
      '      c.league_id = :league_id and '
      '      c.season_id = :season_id')
    MasterSource = dsMatchDays
    MasterFields = 'league_id;season_id'
    DetailFields = 'league_id;season_id'
    Left = 384
    Top = 160
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'match_day_number'
        ParamType = ptInput
        Value = 2
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
        Value = 6
      end>
    object qryMatchesmatch_id: TIntegerField
      FieldName = 'match_id'
    end
    object qryMatchesid: TIntegerField
      FieldName = 'id'
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
    object qryMatchesmatch_time: TDateTimeField
      FieldName = 'match_time'
    end
    object qryMatchesmatch_date: TDateField
      FieldName = 'match_date'
    end
    object qryMatcheshome_team_id: TIntegerField
      FieldName = 'home_team_id'
    end
    object qryMatchesvisitors_team_id: TIntegerField
      FieldName = 'visitors_team_id'
    end
    object qryMatchesscore_home: TSmallintField
      FieldName = 'score_home'
    end
    object qryMatchesscore_visitor: TSmallintField
      FieldName = 'score_visitor'
    end
    object qryMatchespoints_home: TSmallintField
      FieldName = 'points_home'
    end
    object qryMatchespoints_visitors: TSmallintField
      FieldName = 'points_visitors'
    end
    object qryMatchesnotes: TWideStringField
      FieldName = 'notes'
      Size = 1024
    end
    object qryMatchesconfirmed: TBooleanField
      FieldName = 'confirmed'
    end
    object qryMatcheshome_notes: TWideStringField
      FieldName = 'home_notes'
      Size = 1024
    end
    object qryMatchesvisitors_notes: TWideStringField
      FieldName = 'visitors_notes'
      Size = 1024
    end
    object qryMatchessuspended: TBooleanField
      FieldName = 'suspended'
    end
    object qryMatchespostponed: TBooleanField
      FieldName = 'postponed'
    end
    object qryMatchesforfeit: TBooleanField
      FieldName = 'forfeit'
    end
    object qryMatchesremote_id: TIntegerField
      FieldName = 'remote_id'
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
    object qryMatchesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryMatchesjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryMatchesdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryMatchesinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryMatchesupdate_date: TDateTimeField
      FieldName = 'update_date'
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
    object qryMatchesgames_sets: TWideMemoField
      FieldName = 'games_sets'
      BlobType = ftWideMemo
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
    AfterOpen = qryMatchDaysAfterOpen
    AfterScroll = qryMatchDaysAfterScroll
    Left = 384
    Top = 48
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 6
      end
      item
        DataType = ftSmallint
        Name = 'league_id'
        ParamType = ptInput
        Value = 26
      end>
    object qryMatchDaysseason_id: TSmallintField
      FieldName = 'season_id'
    end
    object qryMatchDaysleague_id: TSmallintField
      FieldName = 'league_id'
    end
    object qryMatchDaysmatch_day_number: TSmallintField
      FieldName = 'match_day_number'
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
  object dsMatchDays: TDataSource
    DataSet = qryMatchDays
    Enabled = False
    Left = 384
    Top = 104
  end
end
