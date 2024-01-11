object frmUniGUISportMatches: TfrmUniGUISportMatches
  Left = 0
  Top = 0
  ClientHeight = 938
  ClientWidth = 919
  Caption = 'Matches'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Layout = 'form'
  OnCreate = UniFormCreate
  OnDestroy = UniFormDestroy
  DesignSize = (
    919
    938)
  TextHeight = 15
  object cboMatchDay: TUniDBLookupComboBox
    Left = 805
    Top = 8
    Width = 92
    Height = 38
    Hint = ''
    ListField = 'match_day_number'
    ListSource = dsMatchDays
    KeyField = 'match_day_number'
    ListFieldIndex = 0
    DataField = 'matchday'
    DataSource = dsMatchesPage
    ParentFont = False
    Font.Height = -21
    TabOrder = 0
    Color = clWindow
    MatchFieldWidth = False
  end
  object grdMatches: TUniDBGrid
    Left = 8
    Top = 92
    Width = 899
    Height = 361
    Hint = ''
    DataSource = dsMatches
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight]
    Font.Height = -15
    ParentFont = False
    TabOrder = 1
    ParentColor = False
    Color = clBtnFace
    Exporter.Enabled = True
    Exporter.FileName = 'Risultati'
    Exporter.Exporter = ugexExcel1
    Columns = <
      item
        FieldName = 'match_date'
        Title.Caption = 'Disputata il:'
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 100
        Font.Color = 30716
      end
      item
        FieldName = 'lkpHomeTeam'
        Title.Caption = 'Squadra 1'
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 258
        Font.Color = 30716
      end
      item
        FieldName = 'lkpVisitorTeam'
        Title.Caption = 'Squadra 2'
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 299
        Font.Color = 30716
      end
      item
        FieldName = 'score_home'
        Title.Caption = ' '
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 28
        Font.Color = 30716
      end
      item
        FieldName = 'score_visitor'
        Title.Caption = ' '
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 30
        Font.Color = 30716
      end
      item
        FieldName = 'confirmed'
        Title.Caption = ' '
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 24
        Font.Color = 30716
      end
      item
        FieldName = 'games_sets'
        Title.Caption = ' '
        Width = 100
        Font.Color = 30716
      end
      item
        Title.Caption = ' '
        Width = 0
        Font.Color = 30716
      end>
  end
  object btnNewMatch: TUniFSButton
    Left = 8
    Top = 48
    Width = 185
    Height = 38
    Hint = ''
    StyleButton = Info
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Nuovo Match'
    TabOrder = 2
    Scale = bbsMedium
    ImageIndex = 0
  end
  object btnManageMatch: TUniFSButton
    Left = 199
    Top = 48
    Width = 194
    Height = 38
    Hint = ''
    StyleButton = Warning
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Gestisci Match'
    TabOrder = 3
    Scale = bbsSmall
  end
  object UniFSButton1: TUniFSButton
    Left = 397
    Top = 48
    Width = 194
    Height = 38
    Hint = ''
    StyleButton = Danger
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Aggiorna Classifica'
    TabOrder = 4
    Scale = bbsSmall
    OnClick = UniFSButton1Click
  end
  object grdRanking: TUniDBGrid
    Left = 8
    Top = 472
    Width = 899
    Height = 506
    Hint = ''
    DataSource = dsMatchdayRanking
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 5
    ParentColor = False
    Color = clBtnFace
    Exporter.Enabled = True
    Exporter.FileName = 'Classifica'
    Exporter.Exporter = ugexExcel1
    Columns = <
      item
        FieldName = 'pos'
        Title.Caption = 'Pos'
        Width = 64
      end
      item
        FieldName = 'rownum'
        Title.Caption = 'Classifica'
        Width = 64
      end
      item
        FieldName = 'team_name'
        Title.Caption = 'Squadra'
        Width = 202
      end
      item
        FieldName = 'points'
        Title.Caption = 'Punti'
        Width = 64
      end
      item
        FieldName = 'won_matches'
        Title.Caption = 'Vinte'
        Width = 64
      end
      item
        FieldName = 'lost_matches'
        Title.Caption = 'Perse'
        Width = 64
      end
      item
        FieldName = 'scored'
        Title.Caption = 'Fatti'
        Width = 64
      end
      item
        FieldName = 'conceded'
        Title.Caption = 'Subiti'
        Width = 64
      end
      item
        FieldName = 'delta'
        Title.Caption = 'Differenza'
        Width = 80
      end
      item
        Title.Caption = ' '
        Width = 10
      end>
  end
  object btnAddMatchDay1: TUniFSButton
    Left = 605
    Top = 48
    Width = 194
    Height = 38
    Hint = ''
    StyleButton = Warning
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Aggiungi Nuova Giornata'
    TabOrder = 6
    Scale = bbsSmall
    OnClick = btnAddMatchDay1Click
  end
  object btnmnuExcel: TUniFSMenuButton
    Left = 805
    Top = 48
    Width = 92
    Height = 38
    Hint = ''
    DropdownMenu = unpmnMatches
    Caption = 'Excel'
    TabOrder = 7
    Scale = bbsSmall
    StyleMenuButton = Success
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
  end
  object cboChampionship: TUniDBLookupComboBox
    Left = 199
    Top = 8
    Width = 600
    Height = 38
    Hint = ''
    ListField = 'league_name'
    ListSource = dsChampionship
    KeyField = 'league_id'
    ListFieldIndex = 0
    DataField = 'league_id'
    DataSource = dsMatchesPage
    ParentFont = False
    Font.Height = -21
    TabOrder = 8
    Color = clWindow
    MatchFieldWidth = False
  end
  object cboSeason: TUniDBLookupComboBox
    Left = 8
    Top = 8
    Width = 185
    Height = 38
    Hint = ''
    ListField = 'season_des'
    ListSource = dsSeason
    KeyField = 'season_id'
    ListFieldIndex = 0
    DataField = 'season_id'
    DataSource = dsMatchesPage
    ParentFont = False
    Font.Height = -21
    TabOrder = 9
    Color = clWindow
    MatchFieldWidth = False
  end
  object dsMatchesPage: TDataSource
    DataSet = fdmMatchesPage
    Left = 408
    Top = 232
  end
  object dsMatchDays: TDataSource
    DataSet = dmJanuaPgSportsMatches.qryMatchDays
    Left = 408
    Top = 168
  end
  object fdmMatchesPage: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 408
    Top = 112
    object fdmMatchesPageseason_id: TIntegerField
      FieldName = 'season_id'
    end
    object fdmMatchesPageleague_id: TIntegerField
      FieldName = 'league_id'
    end
    object fdmMatchesPagematchday: TSmallintField
      FieldName = 'matchday'
    end
  end
  object dsMatches: TDataSource
    DataSet = dmJanuaPgSportsMatches.qryMatches
    Left = 496
    Top = 264
  end
  object dsMatchdayRanking: TDataSource
    DataSet = dmJanuaPgSportsMatches.qryMatchDayRanking
    Left = 496
    Top = 192
  end
  object dsSelectTeams: TDataSource
    DataSet = dmJanuaPgSportsMatches.qryMatches
    Left = 408
    Top = 304
  end
  object unpmnMatches: TUniPopupMenu
    Left = 656
    Top = 192
    object mnuMatches: TUniMenuItem
      Caption = 'Partite'
      OnClick = mnuMatchesClick
    end
    object unmntmRanking: TUniMenuItem
      Caption = 'Classifica'
      OnClick = unmntmRankingClick
    end
  end
  object ugexExcel1: TUniGridExcelExporter
    FileExtention = 'xlsx'
    MimeType = 
      'application/vnd.openxmlformats-officedocument.spreadsheetml.shee' +
      't'
    CharSet = 'UTF-8'
    Left = 496
    Top = 320
  end
  object dsSeason: TDataSource
    DataSet = dmJanuaPgSportsMatches.qrySeasons
    Left = 296
    Top = 144
  end
  object dsChampionship: TDataSource
    DataSet = dmJanuaPgSportsMatches.qryChampionships
    Left = 296
    Top = 208
  end
end
