object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'TAdvPushOver demo'
  ClientHeight = 235
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 25
    Top = 19
    Width = 22
    Height = 13
    Caption = 'User'
  end
  object edUser: TEdit
    Left = 73
    Top = 16
    Width = 246
    Height = 21
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 9
    Top = 43
    Width = 513
    Height = 182
    Caption = 'Message'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 27
      Width = 20
      Height = 13
      Caption = 'Title'
    end
    object Label2: TLabel
      Left = 16
      Top = 54
      Width = 42
      Height = 13
      Caption = 'Message'
    end
    object Label3: TLabel
      Left = 280
      Top = 27
      Width = 30
      Height = 13
      Caption = 'Sound'
    end
    object Label4: TLabel
      Left = 280
      Top = 54
      Width = 32
      Height = 13
      Caption = 'Device'
    end
    object Label5: TLabel
      Left = 16
      Top = 149
      Width = 19
      Height = 13
      Caption = 'URL'
    end
    object edTitle: TEdit
      Left = 64
      Top = 24
      Width = 185
      Height = 21
      TabOrder = 0
    end
    object edMemo: TMemo
      Left = 64
      Top = 51
      Width = 185
      Height = 89
      TabOrder = 1
    end
    object edSound: TComboBox
      Left = 318
      Top = 24
      Width = 185
      Height = 21
      Style = csDropDownList
      TabOrder = 2
    end
    object edDevice: TEdit
      Left = 318
      Top = 51
      Width = 185
      Height = 21
      TabOrder = 3
    end
    object Button1: TButton
      Left = 334
      Top = 144
      Width = 169
      Height = 25
      Caption = 'Send message'
      TabOrder = 4
      OnClick = Button1Click
    end
    object edURL: TEdit
      Left = 64
      Top = 146
      Width = 185
      Height = 21
      TabOrder = 5
    end
  end
  object AdvPushOver1: TAdvPushOver
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    Logging = False
    Left = 352
    Top = 8
  end
end
