object dlgSelectPlayerMatch: TdlgSelectPlayerMatch
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Seleziona un Giocatore'
  ClientHeight = 349
  ClientWidth = 264
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
    Top = 308
    Width = 264
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      264
      41)
    object BitBtn1: TBitBtn
      Left = 165
      Top = 6
      Width = 83
      Height = 25
      Anchors = [akRight, akBottom]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object grdMatchTeamAllPlayers: TEnhCRDBGrid
    Left = 0
    Top = 0
    Width = 264
    Height = 308
    Align = alClient
    DataSource = dmFootballPostgres.dsMatchTeamAllPlayers
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
        Title.Caption = 'Giocatore'
        Width = 240
        Visible = True
      end>
  end
end
