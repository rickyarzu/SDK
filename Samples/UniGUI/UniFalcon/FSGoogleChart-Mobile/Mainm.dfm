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
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object btnGauge: TUnimBitBtn
    Left = 0
    Top = 0
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Gauge'
    OnClick = btnGaugeClick
  end
  object btnPie: TUnimBitBtn
    Left = 0
    Top = 47
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Pie'
    OnClick = btnPieClick
  end
  object btnBar: TUnimBitBtn
    Left = 0
    Top = 94
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Bar'
    OnClick = btnBarClick
  end
end
