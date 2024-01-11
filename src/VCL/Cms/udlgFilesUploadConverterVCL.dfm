object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Caricamento e Conversione Files'
  ClientHeight = 416
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object AdvProgressBar1: TAdvProgressBar
    Left = 24
    Top = 311
    Width = 545
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    Level0ColorTo = 14811105
    Level1ColorTo = 13303807
    Level2Color = 5483007
    Level2ColorTo = 11064319
    Level3ColorTo = 13290239
    Level1Perc = 70
    Level2Perc = 90
    Position = 50
    ShowBorder = True
    Version = '1.3.2.3'
  end
  object CRDBGrid1: TEnhCRDBGrid
    Left = 24
    Top = 16
    Width = 545
    Height = 289
    TabOrder = 0
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
  end
  object DataSource1: TDataSource
    Left = 288
    Top = 216
  end
end
