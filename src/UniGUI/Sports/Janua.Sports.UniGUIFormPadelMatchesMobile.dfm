inherited frmUniGUIPadelMatchesFrontEnd: TfrmUniGUIPadelMatchesFrontEnd
  AlignWithMargins = True
  Width = 919
  Height = 938
  Caption = 'Risultati e Classifiche'
  BorderStyle = bsNone
  AutoScroll = True
  ExplicitWidth = 919
  ExplicitHeight = 938
  TextHeight = 15
  inherited cboChampionship: TUniDBLookupComboBox [0]
    Left = 80
    Top = 206
    Width = 361
    Visible = False
    ExplicitLeft = 80
    ExplicitTop = 206
    ExplicitWidth = 361
  end
  inherited cboSeason: TUniDBLookupComboBox [1]
    Left = 26
    Top = 120
    Visible = False
    ExplicitLeft = 26
    ExplicitTop = 120
  end
  inherited grdMatches: TUniDBGrid [2]
    Top = 52
    Width = 920
    Height = 406
    TitleFont.Color = clRed
    TitleFont.Height = -16
    TitleFont.Style = [fsBold]
    BorderStyle = ubsNone
    Font.Height = -13
    Exporter.UseColumnRenderer = True
    Exporter.Exporter = ugexMatches
    Exporter.Title = 'Risultati '
    Columns = <
      item
        FieldName = 'lkpHomeTeam'
        Title.Caption = 'Squadra 1'
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 160
        Font.Color = clBlack
      end
      item
        FieldName = 'lkpVisitorTeam'
        Title.Caption = 'Squadra 2'
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 171
      end
      item
        FieldName = 'score_home'
        Title.Caption = ' '
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 18
      end
      item
        FieldName = 'score_visitor'
        Title.Caption = ' '
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 18
      end
      item
        Title.Caption = ' '
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 0
      end>
  end
  object btnExcel: TUniFSButton [3]
    Left = 174
    Top = 164
    Width = 89
    Height = 36
    Hint = ''
    Visible = False
    StyleButton = Success
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'btnExcel'
    TabOrder = 10
  end
  inherited btnNewMatch: TUniFSButton [4]
    Left = 80
    Top = 120
    Visible = False
    StyleButton = GoogleBlueRound
    OnClick = btnNewMatchClick
    ExplicitLeft = 80
    ExplicitTop = 120
  end
  inherited btnManageMatch: TUniFSButton [5]
    Left = 284
    Top = 120
    Visible = False
    StyleButton = GoogleGreenRound
    ImageIndex = 8
    OnClick = btnManageMatchClick
    ExplicitLeft = 284
    ExplicitTop = 120
  end
  inherited btnAddMatchDay1: TUniFSButton [6]
    Left = 174
    Top = 164
    Visible = False
    ExplicitLeft = 174
    ExplicitTop = 164
  end
  inherited UniFSButton1: TUniFSButton [7]
    Left = 174
    Top = 144
    Visible = False
    StyleButton = GoogleDangerRound
    ImageIndex = 3
    ExplicitLeft = 174
    ExplicitTop = 144
  end
  inherited cboMatchDay: TUniDBLookupComboBox [8]
    Left = 791
    Width = 97
    Font.Color = clRed
    Font.Height = -19
    Anchors = [akTop, akRight]
    ExplicitLeft = 791
    ExplicitWidth = 97
  end
  inherited btnmnuExcel: TUniFSMenuButton [9]
    Left = 196
    Top = 164
    Visible = False
    ExplicitLeft = 196
    ExplicitTop = 164
  end
  inherited grdRanking: TUniDBGrid [10]
    Left = 0
    Top = 464
    Width = 928
    Height = 917
    TitleFont.Color = clRed
    TitleFont.Height = -16
    TitleFont.Style = [fsBold]
    BorderStyle = ubsNone
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Height = -13
    ParentFont = False
    Columns = <
      item
        FieldName = 'pos'
        Title.Caption = ' '
        Title.Font.Color = 30716
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 28
      end
      item
        FieldName = 'team_name'
        Title.Caption = 'Squadre'
        Title.Font.Color = 30716
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 182
        Font.Height = -13
      end
      item
        FieldName = 'points'
        Title.Caption = 'Pt'
        Title.Font.Color = 30716
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 35
        Font.Height = -13
        Alignment = taCenter
      end
      item
        FieldName = 'played'
        Title.Caption = 'PG'
        Title.Font.Color = 30716
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 35
        Font.Height = -13
        Alignment = taCenter
      end
      item
        FieldName = 'games_scored'
        Title.Caption = 'GF'
        Title.Font.Color = 30716
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 35
        Font.Height = -13
        Alignment = taCenter
      end
      item
        FieldName = 'games_conceded'
        Title.Caption = 'GS'
        Title.Font.Color = 30716
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 34
        Font.Height = -13
        Alignment = taCenter
      end
      item
        FieldName = 'delta_games'
        Title.Caption = 'DG'
        Title.Font.Color = 30716
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 36
        Font.Height = -13
        Alignment = taCenter
      end
      item
        Title.Caption = ' '
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 0
      end>
  end
  object lbChampionship: TUniLabel [11]
    Left = 0
    Top = 10
    Width = 785
    Height = 36
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Championship'
    Anchors = [akLeft, akTop, akRight]
    ParentFont = False
    Font.Color = 30716
    Font.Height = -16
    Font.Style = [fsBold]
    ParentColor = False
    Color = clBtnFace
    TabOrder = 11
  end
  inherited dsMatchesPage: TDataSource
    Left = 304
    Top = 216
  end
  inherited dsMatchDays: TDataSource
    Left = 304
    Top = 160
  end
  inherited fdmMatchesPage: TFDMemTable
    Left = 120
    Top = 128
  end
  inherited dsMatches: TDataSource
    Left = 120
  end
  inherited dsMatchdayRanking: TDataSource
    Left = 120
  end
  inherited dsSelectTeams: TDataSource
    Left = 304
  end
  inherited unpmnMatches: TUniPopupMenu
    Left = 208
    Top = 240
  end
  inherited ugexExcel1: TUniGridExcelExporter
    Left = 120
  end
  object ugexMatches: TUniGridExcelExporter
    FileExtention = 'xlsx'
    MimeType = 
      'application/vnd.openxmlformats-officedocument.spreadsheetml.shee' +
      't'
    CharSet = 'UTF-8'
    Left = 200
    Top = 176
  end
end
