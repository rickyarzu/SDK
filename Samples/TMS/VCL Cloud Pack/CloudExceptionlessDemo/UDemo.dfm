object Form132: TForm132
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'TMS Cloud Exceptionless Demo'
  ClientHeight = 304
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    ExplicitTop = 8
    ExplicitWidth = 589
    object Label1: TLabel
      Left = 16
      Top = 13
      Width = 52
      Height = 13
      Caption = 'Username:'
    end
    object Label2: TLabel
      Left = 16
      Top = 38
      Width = 50
      Height = 13
      Caption = 'Password:'
    end
    object Edit1: TEdit
      Left = 112
      Top = 11
      Width = 193
      Height = 19
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 112
      Top = 36
      Width = 193
      Height = 19
      PasswordChar = '*'
      TabOrder = 1
    end
    object Button1: TButton
      Left = 112
      Top = 61
      Width = 75
      Height = 25
      Caption = 'Connect'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 97
    Width = 645
    Height = 207
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 1
    ExplicitLeft = -56
    ExplicitTop = 62
    ExplicitWidth = 589
    ExplicitHeight = 359
    object Label3: TLabel
      Left = 16
      Top = 17
      Width = 43
      Height = 13
      Caption = 'Projects:'
    end
    object ComboBox1: TComboBox
      Left = 112
      Top = 14
      Width = 193
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 48
      Width = 305
      Height = 145
      Caption = 'Log Messages'
      Enabled = False
      TabOrder = 1
      object Label5: TLabel
        Left = 18
        Top = 28
        Width = 49
        Height = 13
        Caption = 'Log Level:'
      end
      object Label4: TLabel
        Left = 18
        Top = 54
        Width = 46
        Height = 13
        Caption = 'Message:'
      end
      object Label6: TLabel
        Left = 18
        Top = 79
        Width = 37
        Height = 13
        Caption = 'Source:'
      end
      object ComboBox2: TComboBox
        Left = 96
        Top = 25
        Width = 193
        Height = 21
        Style = csDropDownList
        TabOrder = 0
      end
      object Edit3: TEdit
        Left = 96
        Top = 52
        Width = 193
        Height = 19
        TabOrder = 1
      end
      object Edit4: TEdit
        Left = 96
        Top = 77
        Width = 193
        Height = 19
        TabOrder = 2
      end
      object Button2: TButton
        Left = 96
        Top = 102
        Width = 75
        Height = 25
        Caption = 'Send'
        TabOrder = 3
        OnClick = Button2Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 327
      Top = 48
      Width = 305
      Height = 145
      Caption = 'Exceptions'
      Enabled = False
      TabOrder = 2
      object Label8: TLabel
        Left = 18
        Top = 28
        Width = 46
        Height = 13
        Caption = 'Message:'
      end
      object Label9: TLabel
        Left = 18
        Top = 53
        Width = 28
        Height = 13
        Caption = 'Type:'
      end
      object Label7: TLabel
        Left = 18
        Top = 78
        Width = 55
        Height = 13
        Caption = 'Stacktrace:'
      end
      object Edit5: TEdit
        Left = 96
        Top = 26
        Width = 193
        Height = 19
        TabOrder = 0
      end
      object Edit6: TEdit
        Left = 96
        Top = 51
        Width = 193
        Height = 19
        TabOrder = 1
      end
      object Button3: TButton
        Left = 96
        Top = 102
        Width = 75
        Height = 25
        Caption = 'Send'
        TabOrder = 2
        OnClick = Button3Click
      end
      object Edit7: TEdit
        Left = 96
        Top = 76
        Width = 193
        Height = 19
        TabOrder = 3
      end
      object Button4: TButton
        Left = 177
        Top = 101
        Width = 112
        Height = 25
        Caption = 'Generate Exception'
        TabOrder = 4
        OnClick = Button4Click
      end
    end
  end
  object AdvExceptionLess1: TAdvExceptionLess
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    OnReceivedAccessToken = AdvExceptionLess1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 520
    Top = 8
  end
end
