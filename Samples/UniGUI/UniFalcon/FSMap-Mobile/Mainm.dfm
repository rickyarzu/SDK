object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'MainmForm'
  TitleButtons = <>
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object btnMarcadoresSimples: TUnimBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 314
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Marcadores Simples'
    OnClick = btnMarcadoresSimplesClick
  end
  object btnPolygon: TUnimBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 56
    Width = 314
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Polygon'
    OnClick = btnMarcadoresSimplesClick
  end
  object btnCurrentPosition: TUnimBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 109
    Width = 314
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Current Position'
    OnClick = btnMarcadoresSimplesClick
  end
  object btnSearchBox: TUnimBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 162
    Width = 314
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Search Box'
    OnClick = btnMarcadoresSimplesClick
  end
  object btnRoute: TUnimBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 215
    Width = 314
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Route'
    OnClick = btnMarcadoresSimplesClick
    ExplicitLeft = 6
    ExplicitTop = 170
  end
end
