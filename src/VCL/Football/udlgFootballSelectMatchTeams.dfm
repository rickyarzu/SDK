object dlgFootballSelectMatchTeams: TdlgFootballSelectMatchTeams
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Seleziona Club e Squadre'
  ClientHeight = 451
  ClientWidth = 533
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
    Top = 0
    Width = 533
    Height = 41
    Align = alTop
    Caption = 'Selezionare Squdra in Casa e in Trasferta per la Partita'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 410
    Width = 533
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      533
      41)
    object BitBtn1: TBitBtn
      Left = 424
      Top = 8
      Width = 89
      Height = 25
      Anchors = [akRight, akBottom]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object EnhCRDBGrid1: TEnhCRDBGrid
    Left = 0
    Top = 41
    Width = 265
    Height = 369
    Align = alLeft
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
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
        FieldName = 'team_id'
        Title.Caption = 'id'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'team_name'
        Title.Caption = 'Squadra in Casa'
        Width = 190
        Visible = True
      end>
  end
  object EnhCRDBGrid2: TEnhCRDBGrid
    Left = 265
    Top = 41
    Width = 268
    Height = 369
    Align = alClient
    DataSource = DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
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
        FieldName = 'team_id'
        Title.Caption = 'id'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'team_name'
        Title.Caption = 'Squadra in Trasferta'
        Width = 190
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = dmFootballPostgres.qrySelectHome
    Left = 104
    Top = 176
  end
  object DataSource2: TDataSource
    DataSet = dmFootballPostgres.qrySelectVisitors
    Left = 360
    Top = 176
  end
end
