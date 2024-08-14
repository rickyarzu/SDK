object Form1: TForm1
  Left = 271
  Top = 114
  Caption = 'Form1'
  ClientHeight = 235
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object Label1: TLabel
    Left = 135
    Top = 12
    Width = 20
    Height = 13
    Caption = 'Port'
  end
  object ButtonStart: TButton
    Left = 0
    Top = 8
    Width = 57
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = ButtonStartClick
  end
  object ButtonStop: TButton
    Left = 63
    Top = 8
    Width = 66
    Height = 25
    Caption = 'Stop'
    TabOrder = 1
    OnClick = ButtonStopClick
  end
  object ButtonOpenBrowser: TButton
    Left = 239
    Top = 8
    Width = 91
    Height = 25
    Caption = 'Open Browser'
    TabOrder = 2
    OnClick = ButtonOpenBrowserClick
  end
  object edPort: TSpinEdit
    Left = 161
    Top = 8
    Width = 72
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 8097
  end
  object ApplicationEvents1: TApplicationEvents
    Left = 280
    Top = 128
  end
end
