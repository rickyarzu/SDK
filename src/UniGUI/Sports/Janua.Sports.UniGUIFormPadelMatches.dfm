inherited frmUniGUIPadelMatches: TfrmUniGUIPadelMatches
  AlignWithMargins = True
  Width = 936
  Height = 938
  Caption = 'frmUniGUISportMatches1'
  BorderStyle = bsNone
  AutoScroll = True
  ExplicitWidth = 936
  ExplicitHeight = 938
  TextHeight = 15
  inherited cboMatchDay: TUniDBLookupComboBox
    Width = 85
    ExplicitWidth = 85
  end
  inherited grdMatches: TUniDBGrid
    Width = 936
    Columns = <
      item
        FieldName = 'match_date'
        Title.Caption = 'Disputata il:'
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 100
      end
      item
        FieldName = 'lkpHomeTeam'
        Title.Caption = 'Squadra 1'
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 258
      end
      item
        FieldName = 'lkpVisitorTeam'
        Title.Caption = 'Squadra 2'
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 273
      end
      item
        FieldName = 'score_home'
        Title.Caption = ' '
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 28
      end
      item
        FieldName = 'score_visitor'
        Title.Caption = ' '
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 30
      end
      item
        FieldName = 'confirmed'
        Title.Caption = ' '
        Title.Font.Height = -15
        Title.Font.Style = [fsBold]
        Width = 35
      end
      item
        FieldName = 'games_sets'
        Title.Caption = ' '
        Width = 100
      end
      item
        Title.Caption = ' '
        Width = 0
      end>
  end
  inherited btnNewMatch: TUniFSButton
    Left = 17
    Top = 52
    Width = 168
    OnClick = btnNewMatchClick
    ExplicitLeft = 17
    ExplicitTop = 52
    ExplicitWidth = 168
  end
  inherited btnManageMatch: TUniFSButton
    Top = 52
    Width = 170
    ImageIndex = 8
    OnClick = btnManageMatchClick
    ExplicitTop = 52
    ExplicitWidth = 170
  end
  inherited UniFSButton1: TUniFSButton
    Left = 389
    Top = 52
    Width = 180
    ImageIndex = 3
    ExplicitLeft = 389
    ExplicitTop = 52
    ExplicitWidth = 180
  end
  inherited grdRanking: TUniDBGrid
    Top = 463
    Width = 936
    Height = 515
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
        FieldName = 'games_scored'
        Title.Caption = 'Fatti'
        Width = 64
      end
      item
        FieldName = 'games_conceded'
        Title.Caption = 'Subiti'
        Width = 64
      end
      item
        FieldName = 'delta_games'
        Title.Caption = 'Differenza'
        Width = 80
      end
      item
        Title.Caption = ' '
        Width = 10
      end>
  end
  inherited btnAddMatchDay1: TUniFSButton
    Left = 575
    Top = 52
    Width = 186
    ExplicitLeft = 575
    ExplicitTop = 52
    ExplicitWidth = 186
  end
  inherited btnmnuExcel: TUniFSMenuButton
    Left = 767
    Top = 52
    Width = 123
    ExplicitLeft = 767
    ExplicitTop = 52
    ExplicitWidth = 123
  end
end
