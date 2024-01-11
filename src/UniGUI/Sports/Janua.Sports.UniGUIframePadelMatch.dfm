object frameUniGUPadelMatch: TframeUniGUPadelMatch
  Left = 0
  Top = 0
  Width = 734
  Height = 399
  OnCreate = UniFrameCreate
  TabOrder = 0
  object cboHome: TUniDBLookupComboBox
    Left = 13
    Top = 50
    Width = 310
    Height = 38
    Hint = ''
    ListField = 'team_name'
    ListSource = dsChampionshipsTeams
    KeyField = 'team_id'
    ListFieldIndex = 0
    DataField = 'home_team_id'
    DataSource = dsMatches
    ParentFont = False
    Font.Height = -21
    TabOrder = 0
    Color = clWindow
    MatchFieldWidth = False
    OnCloseUp = cboHomeCloseUp
  end
  object cboVisitors: TUniDBLookupComboBox
    Left = 397
    Top = 50
    Width = 310
    Height = 38
    Hint = ''
    ListField = 'team_name'
    ListSource = dsChampionshipsTeams
    KeyField = 'team_id'
    ListFieldIndex = 0
    DataField = 'visitors_team_id'
    DataSource = dmJanuaPgSportsMatches.dsMatches
    ParentFont = False
    Font.Height = -21
    TabOrder = 1
    Color = clWindow
    MatchFieldWidth = False
    OnCloseUp = cboVisitorsCloseUp
  end
  object ulbLeague: TUniLabel
    Left = 329
    Top = 50
    Width = 62
    Height = 30
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'VS'
    ParentFont = False
    Font.Height = -21
    ParentColor = False
    Color = clBtnFace
    TabOrder = 2
  end
  object lbSet: TUniLabel
    Left = 329
    Top = 200
    Width = 62
    Height = 30
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Set'
    ParentFont = False
    Font.Height = -21
    ParentColor = False
    Color = clBtnFace
    TabOrder = 3
  end
  object lbPlayerA: TUniLabel
    Left = 13
    Top = 83
    Width = 310
    Height = 30
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Giocatori'
    ParentFont = False
    Font.Height = -21
    ParentColor = False
    Color = clBtnFace
    TabOrder = 4
  end
  object lbPlayerB: TUniLabel
    Left = 397
    Top = 83
    Width = 310
    Height = 30
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Giocatori'
    ParentFont = False
    Font.Height = -21
    ParentColor = False
    Color = clBtnFace
    TabOrder = 5
  end
  object lbTeamA: TUniLabel
    Left = 13
    Top = 14
    Width = 310
    Height = 30
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Squadra A'
    ParentFont = False
    Font.Height = -21
    ParentColor = False
    Color = clBtnFace
    TabOrder = 6
  end
  object lbTeamB: TUniLabel
    Left = 397
    Top = 14
    Width = 310
    Height = 30
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Squadra B'
    ParentFont = False
    Font.Height = -21
    ParentColor = False
    Color = clBtnFace
    TabOrder = 7
  end
  object UniLabel1: TUniLabel
    Left = 8
    Top = 260
    Width = 169
    Height = 30
    Hint = ''
    AutoSize = False
    Caption = 'Squadra A'
    ParentFont = False
    Font.Color = 30716
    Font.Height = -21
    Font.Style = [fsBold]
    ParentColor = False
    Color = clBtnFace
    TabOrder = 8
  end
  object UniLabel2: TUniLabel
    Left = 8
    Top = 319
    Width = 177
    Height = 30
    Hint = ''
    AutoSize = False
    Caption = 'Squadra B'
    ParentFont = False
    Font.Color = 30716
    Font.Height = -21
    Font.Style = [fsBold]
    ParentColor = False
    Color = clBtnFace
    TabOrder = 9
  end
  object UniGroupBox1: TUniGroupBox
    Left = 168
    Top = 236
    Width = 97
    Height = 137
    Hint = ''
    Caption = 'Primo Set'
    TabOrder = 10
    object SetA1: TUniSpinEdit
      Left = 10
      Top = 25
      Width = 73
      Height = 40
      Hint = ''
      TabOrder = 1
      ParentFont = False
      Font.Height = -21
      Font.Style = [fsBold]
    end
    object SetB1: TUniSpinEdit
      Left = 10
      Top = 81
      Width = 73
      Height = 40
      Hint = ''
      TabOrder = 2
      ParentFont = False
      Font.Height = -21
      Font.Style = [fsBold]
    end
  end
  object UniGroupBox2: TUniGroupBox
    Left = 294
    Top = 236
    Width = 97
    Height = 137
    Hint = ''
    Caption = 'Secondo Set'
    TabOrder = 11
    object SetA2: TUniSpinEdit
      Left = 10
      Top = 25
      Width = 73
      Height = 40
      Hint = ''
      TabOrder = 1
      ParentFont = False
      Font.Height = -21
      Font.Style = [fsBold]
    end
    object SetB2: TUniSpinEdit
      Left = 10
      Top = 81
      Width = 73
      Height = 40
      Hint = ''
      TabOrder = 2
      ParentFont = False
      Font.Height = -21
      Font.Style = [fsBold]
    end
  end
  object UniGroupBox3: TUniGroupBox
    Left = 422
    Top = 236
    Width = 97
    Height = 137
    Hint = ''
    Caption = 'Terzo Set'
    TabOrder = 12
    object SetA3: TUniSpinEdit
      Left = 10
      Top = 25
      Width = 73
      Height = 40
      Hint = ''
      TabOrder = 1
      ParentFont = False
      Font.Height = -21
      Font.Style = [fsBold]
    end
    object SetB3: TUniSpinEdit
      Left = 10
      Top = 81
      Width = 73
      Height = 40
      Hint = ''
      TabOrder = 2
      ParentFont = False
      Font.Height = -21
      Font.Style = [fsBold]
    end
  end
  object UniGroupBox4: TUniGroupBox
    Left = 599
    Top = 236
    Width = 108
    Height = 137
    Hint = ''
    Caption = 'Risultato Finale'
    TabOrder = 13
    object UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit
      Left = 23
      Top = 25
      Width = 50
      Height = 42
      Hint = ''
      DataField = 'score_home'
      DataSource = dsMatches
      Alignment = taCenter
      ParentFont = False
      Font.Height = -21
      Font.Style = [fsBold]
      TabOrder = 1
      DecimalPrecision = 0
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit
      Left = 23
      Top = 81
      Width = 50
      Height = 42
      Hint = ''
      DataField = 'score_visitor'
      DataSource = dsMatches
      Alignment = taCenter
      ParentFont = False
      Font.Height = -21
      Font.Style = [fsBold]
      TabOrder = 2
      DecimalPrecision = 0
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
  end
  object btnConf: TUniFSButton
    Left = 525
    Top = 288
    Width = 60
    Height = 33
    Hint = ''
    StyleButton = GoogleDangerRound
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Conferma'
    TabOrder = 14
    OnClick = btnConfClick
  end
  object UniDBLookupComboBox1: TUniDBLookupComboBox
    Left = 13
    Top = 119
    Width = 310
    Height = 38
    Hint = ''
    ListField = 'full_name'
    ListSource = dsHomePlayers
    KeyField = 'player_id'
    ListFieldIndex = 0
    DataField = 'home1'
    DataSource = dslocal
    ParentFont = False
    Font.Height = -19
    TabOrder = 15
    Color = clWindow
    MatchFieldWidth = False
  end
  object UniDBLookupComboBox2: TUniDBLookupComboBox
    Left = 13
    Top = 163
    Width = 310
    Height = 38
    Hint = ''
    ListField = 'full_name'
    ListSource = dsHomePlayers
    KeyField = 'player_id'
    ListFieldIndex = 0
    DataField = 'home2'
    DataSource = dslocal
    ParentFont = False
    Font.Height = -19
    TabOrder = 16
    Color = clWindow
    MatchFieldWidth = False
  end
  object UniDBLookupComboBox3: TUniDBLookupComboBox
    Left = 397
    Top = 119
    Width = 310
    Height = 38
    Hint = ''
    ListField = 'full_name'
    ListSource = dsVisitorsPlayers
    KeyField = 'player_id'
    ListFieldIndex = 0
    DataField = 'visi1'
    DataSource = dslocal
    ParentFont = False
    Font.Height = -19
    TabOrder = 17
    Color = clWindow
    MatchFieldWidth = False
  end
  object UniDBLookupComboBox4: TUniDBLookupComboBox
    Left = 397
    Top = 163
    Width = 310
    Height = 38
    Hint = ''
    ListField = 'full_name'
    ListSource = dsVisitorsPlayers
    KeyField = 'player_id'
    ListFieldIndex = 0
    DataField = 'visi2'
    DataSource = dslocal
    ParentFont = False
    Font.Height = -19
    TabOrder = 18
    Color = clWindow
    MatchFieldWidth = False
  end
  object dbtMatchDate: TUniDBText
    Left = 0
    Top = 0
    Width = 734
    Height = 21
    Hint = ''
    DataField = 'match_date'
    DataSource = dsMatches
    Alignment = taCenter
    AutoSize = False
    Align = alTop
    ParentFont = False
    Font.Color = 30716
    Font.Height = -16
    Font.Style = [fsBold]
  end
  object dsMatches: TDataSource
    DataSet = dmJanuaPgSportsMatches.qryMatches
    Left = 40
    Top = 152
  end
  object dsChampionshipsTeams: TDataSource
    DataSet = dmJanuaPgSportsMatches.lkpTeamsChampionship
    Left = 456
    Top = 152
  end
  object dsHomePlayers: TDataSource
    DataSet = dmJanuaPgSportsMatches.lkpHomePlayers
    Left = 176
    Top = 144
  end
  object dsVisitorsPlayers: TDataSource
    DataSet = dmJanuaPgSportsMatches.lkpVisitorsPlayers
    Left = 600
    Top = 152
  end
  object dslocal: TDataSource
    DataSet = memMatch
    Left = 352
    Top = 184
  end
  object dlgMatchDate: TUniCalendarDialog
    Date = 44885.000000000000000000
    Left = 344
    Top = 56
  end
  object memMatch: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 344
    Top = 120
    object FDMemTable1home1: TIntegerField
      FieldName = 'home1'
    end
    object FDMemTable1home2: TIntegerField
      FieldName = 'home2'
    end
    object FDMemTable1visi1: TIntegerField
      FieldName = 'visi1'
    end
    object FDMemTable1visi2: TIntegerField
      FieldName = 'visi2'
    end
  end
end
