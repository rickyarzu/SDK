inherited dmFootballPostgresVCL: TdmFootballPostgresVCL
  Height = 788
  Width = 822
  inherited PgErgoConnection: TPgConnection
    EncryptedPassword = '8CFFCCFF8BFF8BFFCEFF92FFCBFF91FFCBFF'
  end
  inherited qryMatchTeamPlayers: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO football.ft_match_players'
      
        '  (match_id, player_id, minutes, vote, played, team_id, pos, sub' +
        'st_id, goal, owngoal, lostgoal)'
      'VALUES'
      
        '  (:match_id, :player_id, :minutes, :vote, :played, :team_id, :p' +
        'os, :subst_id, :goal, :owngoal, :lostgoal)')
    SQLUpdate.Strings = (
      'UPDATE football.ft_match_players'
      'SET'
      
        '  match_id = :match_id, player_id = :player_id, minutes = :minut' +
        'es, vote = :vote, played = :played, team_id = :team_id, pos = :p' +
        'os, subst_id = :subst_id, goal = :goal, owngoal = :owngoal, lost' +
        'goal = :lostgoal'
      'WHERE'
      
        '  match_id = :Old_match_id AND player_id = :Old_player_id AND te' +
        'am_id = :Old_team_id')
    SQLRefresh.Strings = (
      
        'SELECT match_id, player_id, minutes, vote, played, team_id, pos,' +
        ' subst_id, goal, owngoal, lostgoal FROM football.ft_match_player' +
        's'
      'WHERE'
      
        '  match_id = :match_id AND player_id = :player_id AND team_id = ' +
        ':team_id')
    SQL.Strings = (
      'SELECT  '
      '   m.*, p.family_name, p.first_name, '
      '   p.family_name || '#39' '#39' || p.first_name || '#39' - '#39' '
      
        '   || public.nvl( to_char(p.birth_date, '#39'dd/mm/yy'#39') , public.nvl' +
        '(p.notes, '#39'n.d.'#39') ) '
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
  end
  inherited qryFootballMarket: TPgQuery
    Left = 288
    Top = 688
  end
  inherited dsFootballMarket: TDataSource
    Top = 712
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 176
    Top = 656
  end
  object JanuaDialog1: TJanuaDialog
    LogToFile = False
    ApplicationType = jatDefault
    Language = jlaNone
    DialogType = jdtWarning
    Left = 56
    Top = 688
  end
end
