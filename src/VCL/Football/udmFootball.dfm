inherited dmFootball: TdmFootball
  Height = 853
  Width = 984
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited qryClubs: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_clubs'
      
        '  (club_id, club_name, "Foundation_date", president, stadium_id,' +
        ' town, vice_president, team_manager, athletic_manager, colors, w' +
        'ebsite, db_schema_id, remote_id, anagraph_id, club_image)'
      'VALUES'
      
        '  (:club_id, :club_name, :"Foundation_date", :president, :stadiu' +
        'm_id, :town, :vice_president, :team_manager, :athletic_manager, ' +
        ':colors, :website, :db_schema_id, :remote_id, :anagraph_id, :clu' +
        'b_image)')
    SQLUpdate.Strings = (
      'UPDATE football.ft_clubs'
      'SET'
      
        '  club_id = :club_id, club_name = :club_name, "Foundation_date" ' +
        '= :"Foundation_date", president = :president, stadium_id = :stad' +
        'ium_id, town = :town, vice_president = :vice_president, team_man' +
        'ager = :team_manager, athletic_manager = :athletic_manager, colo' +
        'rs = :colors, website = :website, db_schema_id = :db_schema_id, ' +
        'remote_id = :remote_id, anagraph_id = :anagraph_id, club_image =' +
        ' :club_image'
      'WHERE'
      '  club_id = :Old_club_id')
    SQLRefresh.Strings = (
      
        'SELECT club_id, club_name, "Foundation_date", president, stadium' +
        '_id, town, vice_president, team_manager, athletic_manager, color' +
        's, website, db_schema_id, remote_id, anagraph_id, club_image FRO' +
        'M football.ft_clubs'
      'WHERE'
      '  club_id = :club_id')
  end
  inherited qryTeams: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_teams'
      
        '  (team_id, club_id, team_name, trainer_id, remote_id, db_schema' +
        '_id, image)'
      'VALUES'
      
        '  (:team_id, :club_id, :team_name, :trainer_id, :remote_id, :db_' +
        'schema_id, :image)')
    SQLUpdate.Strings = (
      'UPDATE football.ft_teams'
      'SET'
      
        '  team_id = :team_id, club_id = :club_id, team_name = :team_name' +
        ', trainer_id = :trainer_id, remote_id = :remote_id, db_schema_id' +
        ' = :db_schema_id, image = :image'
      'WHERE'
      '  team_id = :Old_team_id')
    SQLRefresh.Strings = (
      
        'SELECT team_id, club_id, team_name, trainer_id, remote_id, db_sc' +
        'hema_id, image FROM football.ft_teams'
      'WHERE'
      '  team_id = :team_id')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'club_id'
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object qryTeamstrainer_id: TIntegerField
      FieldName = 'trainer_id'
    end
    object qryTeamsremote_id: TIntegerField
      FieldName = 'remote_id'
    end
    object qryTeamsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryTeamsimage: TBlobField
      FieldName = 'image'
    end
  end
  inherited qryTeamsChampionships: TUniQuery
    object qryTeamsChampionshipsteam_name_1: TWideStringField
      FieldName = 'team_name_1'
      Size = 128
    end
    object qryTeamsChampionshipsremote_id: TLargeintField
      FieldName = 'remote_id'
    end
    object qryTeamsChampionshipsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
  end
  inherited lkpTeams: TClientDataSet
    Active = True
  end
  inherited qryTeamPlayers: TUniQuery
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'team_id'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 44
      end>
  end
  inherited qryTeamPlayersLast: TUniQuery
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'team_id'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftSmallint
        Name = 'season_id'
        ParamType = ptInput
        Value = 44
      end>
  end
  inherited qryTeamsClubsLeagues: TUniQuery
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
        Value = 1
      end>
  end
  inherited dsPlayerHistory: TDataSource
    DataSet = qryPlayerAlbum
  end
  inherited qryMatchTeamAllPlayers: TUniQuery
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
      'and'
      
        '(lower(p.family_name || '#39' '#39' || p.first_name) like lower(:search_' +
        'name) or :search_name = '#39'%'#39')'
      'order by family_name, first_name')
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
      end
      item
        DataType = ftWideString
        Name = 'search_name'
        ParamType = ptInput
        Value = '%'
      end>
  end
  inherited qryTeamHistory: TUniQuery
    ParamData = <
      item
        DataType = ftInteger
        Name = 'team_id'
        ParamType = ptInput
        Value = 1
      end>
  end
  inherited qrySelectHome: TUniQuery
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
        DataType = ftSmallint
        Name = 'match_day_number'
        ParamType = ptInput
        Value = 1
      end>
  end
  inherited qrySelectVisitors: TUniQuery
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
        DataType = ftSmallint
        Name = 'match_day_number'
        ParamType = ptInput
        Value = 1
      end>
  end
  inherited qryPlayerAlbum: TUniQuery
    KeyFields = 'career_id'
    MasterFields = 'anagraph_id'
    DetailFields = 'player_id'
    ParamData = <
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = 1522
      end>
    object qryPlayerAlbumlkpLeague: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpLeague'
      LookupDataSet = lkpLeagues
      LookupKeyFields = 'league_id'
      LookupResultField = 'league_name'
      KeyFields = 'league_id'
      Size = 128
      Lookup = True
    end
  end
  inherited cdsLkpClubs: TClientDataSet
    Active = True
  end
  inherited prcRanking: TUniStoredProc
    CommandStoredProcName = 'football.ft_rankings_season:0'
  end
  inherited lkpMatchDaysTo: TUniQuery
    Left = 856
    Top = 128
  end
  inherited prcInheritPlayer: TUniStoredProc
    Left = 856
    Top = 176
    CommandStoredProcName = 'football.ft_player_inherit:0'
  end
  inherited qryLkpAllPlayers: TUniQuery
    Left = 856
    Top = 240
  end
  inherited dsLkpAllPlayers: TDataSource
    Top = 304
  end
  inherited prcPlayerTeamOrigin: TUniStoredProc
    CommandStoredProcName = 'football.ft_player_origin:0'
  end
  object lkpLeagues: TUniQuery
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
      '  ORDER BY l.league_position')
    MasterSource = dsSeasons
    Left = 840
    Top = 64
    object lkpLeaguesleague_id: TSmallintField
      FieldName = 'league_id'
      Required = True
    end
    object lkpLeaguesleague_name: TWideStringField
      FieldName = 'league_name'
      Size = 128
    end
    object lkpLeaguesiso_country_code: TWideStringField
      FieldName = 'iso_country_code'
      Required = True
      FixedChar = True
      Size = 3
    end
    object lkpLeaguesleague_position: TSmallintField
      FieldName = 'league_position'
    end
    object lkpLeaguesleague_code: TWideStringField
      FieldName = 'league_code'
      Size = 6
    end
    object lkpLeaguesdb_schema_id: TSmallintField
      FieldName = 'db_schema_id'
      Required = True
    end
    object lkpLeaguesremote_id: TSmallintField
      FieldName = 'remote_id'
    end
    object lkpLeaguespromotedcss: TWideStringField
      FieldName = 'promotedcss'
      Size = 128
    end
    object lkpLeaguesplayoffcss: TWideStringField
      FieldName = 'playoffcss'
      Required = True
      Size = 128
    end
    object lkpLeagueschampionscss: TWideStringField
      FieldName = 'championscss'
      Required = True
      Size = 128
    end
    object lkpLeaguesplayoutcss: TWideStringField
      FieldName = 'playoutcss'
      Required = True
      Size = 128
    end
    object lkpLeaguesrelegationcss: TWideStringField
      FieldName = 'relegationcss'
      Required = True
      Size = 128
    end
    object lkpLeaguesall_players: TBooleanField
      FieldName = 'all_players'
    end
  end
end
