object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Chart'
  TitleButtons = <
    item
      ButtonId = 0
      Separator = True
    end>
  
  TextHeight = 15
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object btnHCPie: TUnimBitBtn
    Left = 0
    Top = 0
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Pie'
    OnClick = btnHCPieClick
  end
  object btnHCBar2: TUnimBitBtn
    Left = 0
    Top = 47
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Bar'
    OnClick = btnHCBar2Click
  end
  object btnHCBar: TUnimBitBtn
    Left = 0
    Top = 94
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Bar Custom'
    OnClick = btnHCBarClick
  end
  object btnHCLine: TUnimBitBtn
    Left = 0
    Top = 141
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Line'
    OnClick = btnHCLineClick
  end
end
