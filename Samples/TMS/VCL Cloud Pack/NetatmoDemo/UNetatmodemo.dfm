object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Pack: Netatmo Demo'
  ClientHeight = 603
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 809
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 52
      Height = 13
      Caption = 'Username:'
    end
    object Label2: TLabel
      Left = 237
      Top = 14
      Width = 50
      Height = 13
      Caption = 'Password:'
    end
    object btnConnect: TButton
      Left = 459
      Top = 10
      Width = 110
      Height = 25
      Caption = 'Connect'
      TabOrder = 0
      OnClick = btnConnectClick
    end
    object txtUsername: TEdit
      Left = 66
      Top = 11
      Width = 153
      Height = 21
      TabOrder = 1
    end
    object txtPassword: TEdit
      Left = 293
      Top = 11
      Width = 153
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
    end
    object btDisconnect: TButton
      Left = 575
      Top = 10
      Width = 110
      Height = 25
      Caption = 'Disconnect'
      TabOrder = 3
      OnClick = btDisconnectClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 809
    Height = 176
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 6
      Width = 41
      Height = 13
      Caption = 'Devices:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 273
      Top = 6
      Width = 43
      Height = 13
      Caption = 'Modules:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 84
      Width = 36
      Height = 13
      Caption = 'Details:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 273
      Top = 84
      Width = 36
      Height = 13
      Caption = 'Details:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lstDevices: TListBox
      Left = 55
      Top = 6
      Width = 200
      Height = 72
      ItemHeight = 13
      TabOrder = 0
      OnClick = lstDevicesClick
    end
    object lstModules: TListBox
      Left = 322
      Top = 6
      Width = 200
      Height = 72
      ItemHeight = 13
      TabOrder = 1
      OnClick = lstModulesClick
    end
    object Memo1: TMemo
      Left = 55
      Top = 84
      Width = 200
      Height = 72
      Lines.Strings = (
        '')
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object GroupBox2: TGroupBox
      Left = 536
      Top = 6
      Width = 265
      Height = 155
      Caption = 'Filters'
      TabOrder = 3
      object Label6: TLabel
        Left = 16
        Top = 20
        Width = 53
        Height = 13
        Caption = 'Start date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 45
        Width = 47
        Height = 13
        Caption = 'End date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 16
        Top = 73
        Width = 29
        Height = 13
        Caption = 'Scale:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dpStart: TDateTimePicker
        Left = 139
        Top = 16
        Width = 110
        Height = 21
        Date = 42452.000000000000000000
        Time = 42452.000000000000000000
        TabOrder = 0
      end
      object dpEnd: TDateTimePicker
        Left = 139
        Top = 43
        Width = 110
        Height = 21
        Date = 42452.999988425930000000
        Time = 42452.999988425930000000
        TabOrder = 1
      end
      object cbScale: TComboBox
        Left = 139
        Top = 70
        Width = 110
        Height = 21
        Style = csDropDownList
        ItemIndex = 1
        TabOrder = 2
        Text = 'Hour'
        Items.Strings = (
          'All'
          'Hour'
          'Day'
          'Week'
          'Month')
      end
      object btnGetDeviceMeasurments: TButton
        Left = 11
        Top = 113
        Width = 110
        Height = 25
        Caption = 'Get Device Data'
        TabOrder = 3
        OnClick = btnGetDeviceMeasurmentsClick
      end
      object btnGetModuleMeasurments: TButton
        Left = 139
        Top = 113
        Width = 110
        Height = 25
        Caption = 'Get Module Data'
        TabOrder = 4
        OnClick = btnGetModuleMeasurmentsClick
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 217
    Width = 809
    Height = 386
    Align = alClient
    Caption = 'Measurements'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object StringGrid1: TStringGrid
      Left = 2
      Top = 15
      Width = 805
      Height = 369
      Margins.Top = 5
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Memo2: TMemo
    Left = 322
    Top = 125
    Width = 200
    Height = 72
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object AdvNetatmo1: TAdvNetatmo
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    OnReceivedAccessToken = AdvNetatmo1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 704
    Top = 16
  end
end
