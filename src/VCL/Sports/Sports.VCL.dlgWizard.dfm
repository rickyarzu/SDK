object dlgVCLSportsWizard: TdlgVCLSportsWizard
  Left = 0
  Top = 0
  Caption = 'Gestione Sports Club '
  ClientHeight = 956
  ClientWidth = 1163
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  DesignSize = (
    1163
    956)
  TextHeight = 15
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 24
    Top = 40
    Width = 145
    Height = 22
    LookupField = 'id'
    LookupDisplay = 'season_des'
    LookupSource = dsSeasons
    TabOrder = 0
  end
  object JvDBLookupCombo2: TJvDBLookupCombo
    Left = 208
    Top = 40
    Width = 145
    Height = 22
    LookupField = 'id'
    LookupDisplay = 'league_name'
    LookupSource = dsChampionships
    TabOrder = 1
  end
  object EnhCRDBGrid1: TEnhCRDBGrid
    Left = 24
    Top = 224
    Width = 361
    Height = 185
    DataSource = dsChampionships
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -12
    HighlightFont.Name = 'Segoe UI'
    HighlightFont.Style = []
  end
  object EnhCRDBGrid2: TEnhCRDBGrid
    Left = 24
    Top = 68
    Width = 361
    Height = 137
    DataSource = dsSeasons
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -12
    HighlightFont.Name = 'Segoe UI'
    HighlightFont.Style = []
  end
  object EnhCRDBGrid3: TEnhCRDBGrid
    Left = 24
    Top = 616
    Width = 361
    Height = 332
    Anchors = [akLeft, akTop, akBottom]
    DataSource = dsTeamsChampioships
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -12
    HighlightFont.Name = 'Segoe UI'
    HighlightFont.Style = []
  end
  object memTeams: TMemo
    Left = 391
    Top = 68
    Width = 354
    Height = 341
    Lines.Strings = (
      'memTeams')
    TabOrder = 5
  end
  object memMatches: TMemo
    Left = 751
    Top = 68
    Width = 404
    Height = 341
    Anchors = [akLeft, akTop, akRight]
    Lines.Strings = (
      'Memo1')
    TabOrder = 6
  end
  object edSpinMatch: TJvSpinEdit
    Left = 1084
    Top = 39
    Width = 71
    Height = 23
    Alignment = taRightJustify
    Decimal = 0
    MaxValue = 24.000000000000000000
    MinValue = 1.000000000000000000
    Value = 1.000000000000000000
    Anchors = [akTop, akRight]
    TabOrder = 7
  end
  object btnInsertTeams: TButton
    Left = 391
    Top = 37
    Width = 170
    Height = 25
    Caption = 'Inserisci Squadre'
    TabOrder = 8
    OnClick = btnInsertTeamsClick
  end
  object EnhCRDBGrid4: TEnhCRDBGrid
    Left = 24
    Top = 415
    Width = 361
    Height = 185
    DataSource = dsAllTeams
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -12
    HighlightFont.Name = 'Segoe UI'
    HighlightFont.Style = []
  end
  object Button1: TButton
    Left = 751
    Top = 37
    Width = 170
    Height = 25
    Caption = 'Inserisci Partite'
    TabOrder = 10
    OnClick = Button1Click
  end
  object EnhCRDBGrid5: TEnhCRDBGrid
    Left = 391
    Top = 616
    Width = 764
    Height = 332
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsMatches
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -12
    HighlightFont.Name = 'Segoe UI'
    HighlightFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'match_day_number'
        Title.Caption = 'Day'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'match_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'home_team_id'
        Title.Caption = 'hid'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'home_team_name'
        Title.Caption = 'Home Name'
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'visitors_team_id'
        Title.Caption = 'vid'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'visitors_team_name'
        Title.Caption = 'Visitors Name'
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'match_date'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'points_home'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'points_visitors'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'league_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'season_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'confirmed'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'db_schema_id'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'home_notes'
        Width = 6148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'visitors_notes'
        Width = 6148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'notes'
        Width = 6148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'suspended'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'postponed'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'forfeit'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'remote_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'score_home'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'score_visitor'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'article_url'
        Width = 6148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'video_url'
        Width = 6148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jguid'
        Width = 232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'deleted'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_insert'
        Width = 772
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_update'
        Width = 772
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'match_time'
        Width = 208
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'insert_date'
        Width = 208
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'update_date'
        Width = 208
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'games_sets'
        Width = 64
        Visible = True
      end>
  end
  object edMatchDate: TJvDatePickerEdit
    Left = 936
    Top = 39
    Width = 121
    Height = 23
    AllowNoDate = True
    Checked = True
    TabOrder = 12
  end
  object EnhCRDBGrid6: TEnhCRDBGrid
    Left = 391
    Top = 415
    Width = 764
    Height = 185
    Anchors = [akLeft, akTop, akRight]
    DataSource = dsMatchDays
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -12
    HighlightFont.Name = 'Segoe UI'
    HighlightFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'season_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'league_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'match_day_number'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'match_day_played'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rest_team_id'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'db_schema_id'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jguid'
        Width = 232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'deleted'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_insert'
        Width = 772
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_update'
        Width = 772
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'match_day_date'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'insert_date'
        Width = 208
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'update_date'
        Width = 208
        Visible = True
      end>
  end
  object dsSeasons: TDataSource
    DataSet = dmPgSportsChampionshipWizard.qrySeasons
    Left = 72
    Top = 72
  end
  object dsChampionships: TDataSource
    DataSet = dmPgSportsChampionshipWizard.qryChampionships
    Left = 272
    Top = 72
  end
  object dsTeamsChampioships: TDataSource
    DataSet = dmPgSportsChampionshipWizard.qryTeamsChampionships
    Left = 528
    Top = 88
  end
  object dsAllTeams: TDataSource
    DataSet = dmPgSportsChampionshipWizard.qryAllTeams
    Left = 544
    Top = 488
  end
  object dsMatches: TDataSource
    DataSet = dmPgSportsChampionshipWizard.qryMatches
    Left = 704
    Top = 536
  end
  object dsMatchDays: TDataSource
    DataSet = dmPgSportsChampionshipWizard.qryMatchDays
    Left = 792
    Top = 432
  end
end
