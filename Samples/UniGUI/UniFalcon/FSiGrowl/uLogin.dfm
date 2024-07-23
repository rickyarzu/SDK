object UniLoginForm1: TUniLoginForm1
  Left = 0
  Top = 0
  ClientHeight = 453
  ClientWidth = 327
  Caption = 'Hello World - FSiGrowl'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  TextHeight = 13
  object btnHello: TUniBitBtn
    Left = 48
    Top = 176
    Width = 233
    Height = 65
    Hint = ''
    Caption = 'Hello World!'
    TabOrder = 0
    OnClick = btnHelloClick
  end
  object lblFalconSistemas: TUniLabel
    Left = 77
    Top = 320
    Width = 167
    Height = 13
    Cursor = crHandPoint
    Hint = ''
    Caption = 'http://www.falconsistemas.com.br'
    ParentFont = False
    Font.Color = clBlue
    Font.Style = [fsUnderline]
    TabOrder = 1
    OnClick = lblFalconSistemasClick
  end
end
