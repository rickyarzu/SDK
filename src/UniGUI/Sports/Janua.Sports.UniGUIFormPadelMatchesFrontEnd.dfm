inherited frmUniGUIPadelMatchesFrontEnd: TfrmUniGUIPadelMatchesFrontEnd
  AlignWithMargins = True
  Width = 936
  Height = 938
  Caption = 'Risultati e Classifiche'
  BorderStyle = bsNone
  AutoScroll = True
  ExplicitWidth = 936
  ExplicitHeight = 938
  TextHeight = 15
  inherited cboChampionship: TUniDBLookupComboBox [0]
    Visible = False
  end
  inherited btnNewMatch: TUniFSButton [1]
    Top = 120
    Width = 129
    Visible = False
    StyleButton = GoogleBlueRound
    OnClick = btnNewMatchClick
    ExplicitTop = 120
    ExplicitWidth = 129
  end
  inherited btnManageMatch: TUniFSButton [2]
    Left = 143
    Top = 120
    Visible = False
    StyleButton = GoogleGreenRound
    ImageIndex = 8
    OnClick = btnManageMatchClick
    ExplicitLeft = 143
    ExplicitTop = 120
  end
  inherited btnAddMatchDay1: TUniFSButton [3]
    Left = 536
    Top = 120
    Width = 174
    Visible = False
    ExplicitLeft = 536
    ExplicitTop = 120
    ExplicitWidth = 174
  end
  inherited btnmnuExcel: TUniFSMenuButton [4]
    Left = 716
    Top = 120
    Visible = False
    ExplicitLeft = 716
    ExplicitTop = 120
  end
  inherited cboMatchDay: TUniDBLookupComboBox [5]
    Left = 615
    Font.Color = clRed
    ExplicitLeft = 615
  end
  inherited UniFSButton1: TUniFSButton [6]
    Left = 356
    Top = 120
    Width = 165
    Visible = False
    StyleButton = GoogleDangerRound
    ImageIndex = 3
    ExplicitLeft = 356
    ExplicitTop = 120
    ExplicitWidth = 165
  end
  inherited grdMatches: TUniDBGrid [7]
    Top = 52
    Width = 870
    TitleFont.Color = clRed
    TitleFont.Height = -16
    TitleFont.Style = [fsBold]
    BorderStyle = ubsNone
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
        Width = 258
        Font.Color = clBlack
      end
      item
        FieldName = 'lkpVisitorTeam'
        Title.Caption = 'Squadra 2'
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 299
        Font.Color = clBlack
      end
      item
        FieldName = 'score_home'
        Title.Caption = ' '
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 31
      end
      item
        FieldName = 'score_visitor'
        Title.Caption = ' '
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 32
      end
      item
        FieldName = 'games_sets'
        Title.Caption = ' '
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 181
      end
      item
        Title.Caption = ' '
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 0
      end>
  end
  inherited cboSeason: TUniDBLookupComboBox [8]
    Visible = False
  end
  inherited grdRanking: TUniDBGrid [9]
    Top = 419
    Width = 870
    Height = 700
    TitleFont.Color = clRed
    TitleFont.Height = -16
    TitleFont.Style = [fsBold]
    BorderStyle = ubsNone
    Font.Height = -15
    ParentFont = False
    Columns = <
      item
        FieldName = 'pos'
        Title.Caption = 'Pos'
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 40
      end
      item
        FieldName = 'team_name'
        Title.Caption = 'Squadre'
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 272
      end
      item
        FieldName = 'points'
        Title.Caption = 'Punti'
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 65
        Alignment = taCenter
      end
      item
        FieldName = 'played'
        Title.Caption = 'Giocate'
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 79
        Alignment = taCenter
      end
      item
        FieldName = 'games_scored'
        Title.Caption = 'Game Fatti'
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 108
        Alignment = taCenter
      end
      item
        FieldName = 'games_conceded'
        Title.Caption = 'Game Subiti'
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 119
        Alignment = taCenter
      end
      item
        FieldName = 'delta_games'
        Title.Caption = 'Differenza Game'
        Title.Font.Color = 30716
        Title.Font.Height = -16
        Title.Font.Style = [fsBold]
        Width = 153
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
  object btnExcel: TUniFSButton [10]
    Left = 713
    Top = 9
    Width = 89
    Height = 37
    Hint = ''
    StyleButton = GoogleOrange
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Excel'
    TabOrder = 10
  end
  object lbChampionship: TUniLabel [11]
    Left = 32
    Top = 10
    Width = 577
    Height = 36
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Championship'
    ParentFont = False
    Font.Color = 30716
    Font.Height = -16
    Font.Style = [fsBold]
    ParentColor = False
    Color = clBtnFace
    TabOrder = 11
  end
  object ugexMatches: TUniGridExcelExporter
    FileExtention = 'xlsx'
    MimeType = 
      'application/vnd.openxmlformats-officedocument.spreadsheetml.shee' +
      't'
    CharSet = 'UTF-8'
    Left = 632
    Top = 184
  end
end
