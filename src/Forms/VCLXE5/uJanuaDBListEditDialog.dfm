inherited JanuaDBListEditDialog: TJanuaDBListEditDialog
  Caption = 'JanuaDBListEditDialog'
  ClientHeight = 277
  ExplicitHeight = 302
  PixelsPerInch = 96
  TextHeight = 13
  inherited AdvGlowButton1: TAdvGlowButton
    Top = 244
  end
  inherited AdvGlowButton2: TAdvGlowButton
    Top = 244
  end
  inherited JanuaFrameNavigator1: TJanuaFrameNavigator
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 336
  end
  object EnhCRDBGrid1: TEnhCRDBGrid [3]
    Left = 0
    Top = 32
    Width = 336
    Height = 206
    Anchors = [akLeft, akTop, akRight, akBottom]
    FixedColor = clWhite
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
  end
  inherited OraSession1: TOraSession
    Left = 152
    Top = 48
  end
  inherited OraQuery1: TOraQuery
    Left = 184
    Top = 48
  end
  inherited JanuaSystem1: TJanuaSystem
    Left = 216
    Top = 48
  end
  inherited OraDataSource1: TOraDataSource
    Left = 120
    Top = 48
  end
end
