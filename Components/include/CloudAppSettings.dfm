object CloudSettings: TCloudSettings
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Cloud application settings'
  ClientHeight = 193
  ClientWidth = 396
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
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 22
    Height = 13
    Caption = 'Key:'
  end
  object Label2: TLabel
    Left = 16
    Top = 51
    Width = 35
    Height = 13
    Caption = 'Secret:'
  end
  object Label3: TLabel
    Left = 16
    Top = 78
    Width = 65
    Height = 13
    Caption = 'Callback URL:'
  end
  object Label4: TLabel
    Left = 16
    Top = 105
    Width = 66
    Height = 13
    Caption = 'Callback Port:'
  end
  object Label5: TLabel
    Left = 16
    Top = 130
    Width = 93
    Height = 13
    Caption = 'Developer website:'
  end
  object LURL: TLabel
    Left = 115
    Top = 130
    Width = 89
    Height = 13
    Cursor = crHandPoint
    Caption = 'Developer website'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = LURLClick
  end
  object Button1: TButton
    Left = 231
    Top = 159
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 4
  end
  object Button2: TButton
    Left = 312
    Top = 159
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
  end
  object EAppSecret: TEdit
    Left = 87
    Top = 48
    Width = 300
    Height = 21
    TabOrder = 1
  end
  object ECallBackURL: TEdit
    Left = 87
    Top = 75
    Width = 300
    Height = 21
    TabOrder = 2
  end
  object EAppKey: TEdit
    Left = 87
    Top = 21
    Width = 300
    Height = 21
    TabOrder = 0
  end
  object ECallBackPort: TSpinEdit
    Left = 87
    Top = 102
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
end
