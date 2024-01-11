object dlgFootballSelectTeamClubPlayers: TdlgFootballSelectTeamClubPlayers
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Giocatori della Rosa della Squadra'
  ClientHeight = 479
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 438
    Width = 530
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 424
      Top = 8
      Width = 97
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 265
    Height = 438
    Align = alLeft
    Caption = 'Panel2'
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 263
      Height = 41
      Align = alTop
      TabOrder = 0
      object DBNavigator6: TDBNavigator
        Left = 1
        Top = 1
        Width = 120
        Height = 39
        DataSource = dsAllTeamPlayers
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
        Align = alLeft
        TabOrder = 0
      end
      object Button1: TButton
        Left = 121
        Top = 1
        Width = 135
        Height = 39
        Align = alLeft
        Caption = 'Aggiungi'
        TabOrder = 1
      end
    end
    object grdTeamPlayers: TEnhCRDBGrid
      Left = 1
      Top = 42
      Width = 263
      Height = 395
      Align = alClient
      DataSource = dsAllTeamPlayers
      FixedColor = clSkyBlue
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      HighlightBGColor = clBlack
      HighlightFont.Charset = DEFAULT_CHARSET
      HighlightFont.Color = clWindowText
      HighlightFont.Height = -11
      HighlightFont.Name = 'Tahoma'
      HighlightFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'fullname'
          Title.Caption = 'Cognome'
          Width = 241
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 265
    Top = 0
    Width = 265
    Height = 438
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 263
      Height = 41
      Align = alTop
      TabOrder = 0
      object DBNavigator1: TDBNavigator
        Left = 1
        Top = 1
        Width = 120
        Height = 39
        DataSource = dsAllClubPlayers
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
        Align = alLeft
        TabOrder = 0
      end
      object Button2: TButton
        Left = 121
        Top = 1
        Width = 135
        Height = 39
        Align = alLeft
        Caption = 'Aggiungi'
        TabOrder = 1
      end
    end
    object grdAllClubPlayers: TEnhCRDBGrid
      Left = 1
      Top = 42
      Width = 263
      Height = 395
      Align = alClient
      DataSource = dsAllClubPlayers
      FixedColor = clSkyBlue
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      HighlightBGColor = clBlack
      HighlightFont.Charset = DEFAULT_CHARSET
      HighlightFont.Color = clWindowText
      HighlightFont.Height = -11
      HighlightFont.Name = 'Tahoma'
      HighlightFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'fullname'
          Title.Caption = 'Cognome'
          Width = 242
          Visible = True
        end>
    end
  end
  object dsAllTeamPlayers: TDataSource
    DataSet = dmFootballPostgres.qryAllPlayers
    Left = 96
    Top = 235
  end
  object dsAllClubPlayers: TDataSource
    DataSet = dmFootballPostgres.qryAllClubPlayers
    Left = 368
    Top = 235
  end
end
