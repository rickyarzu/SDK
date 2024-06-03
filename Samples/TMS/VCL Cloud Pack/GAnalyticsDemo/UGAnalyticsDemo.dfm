object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Google Analytics Demo'
  ClientHeight = 961
  ClientWidth = 852
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
    Width = 852
    Height = 41
    Align = alTop
    TabOrder = 0
    object lblMsg: TLabel
      Left = 144
      Top = 13
      Width = 6
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnConnect: TButton
      Left = 10
      Top = 10
      Width = 110
      Height = 25
      Caption = 'Connect'
      TabOrder = 0
      OnClick = btnConnectClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 852
    Height = 920
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet2: TTabSheet
      Caption = 'Realtime Data'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object sgRealtime: TStringGrid
        Left = 0
        Top = 41
        Width = 844
        Height = 851
        Align = alClient
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 844
        Height = 41
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 10
          Top = 12
          Width = 82
          Height = 13
          Caption = 'Time To Refresh:'
        end
        object ProgressBar1: TProgressBar
          Left = 98
          Top = 7
          Width = 735
          Height = 25
          TabOrder = 0
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Report Data'
      object sgReport: TStringGrid
        Left = 0
        Top = 41
        Width = 844
        Height = 851
        Align = alClient
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 844
        Height = 41
        Align = alTop
        TabOrder = 1
        object RadioGroup1: TRadioGroup
          Left = 1
          Top = 1
          Width = 359
          Height = 39
          Align = alClient
          Columns = 4
          ItemIndex = 0
          Items.Strings = (
            'Today'
            'Yesterday'
            '7 Days Ago'
            'Other =>')
          TabOrder = 0
          OnClick = RadioGroup1Click
        end
        object Panel4: TPanel
          Left = 360
          Top = 1
          Width = 483
          Height = 39
          Align = alRight
          TabOrder = 1
          object Label2: TLabel
            Left = 13
            Top = 13
            Width = 28
            Height = 13
            Caption = 'Start:'
          end
          object Label3: TLabel
            Left = 195
            Top = 13
            Width = 22
            Height = 13
            Caption = 'End:'
          end
          object btnAlterSelection: TButton
            Left = 383
            Top = 6
            Width = 97
            Height = 25
            Caption = 'Refresh'
            TabOrder = 0
            OnClick = btnAlterSelectionClick
          end
          object dtEnd: TDateTimePicker
            Left = 223
            Top = 8
            Width = 138
            Height = 21
            Date = 42263.583474050920000000
            Time = 42263.583474050920000000
            TabOrder = 1
          end
          object dtStart: TDateTimePicker
            Left = 48
            Top = 8
            Width = 141
            Height = 21
            Date = 42263.583474050920000000
            Time = 42263.583474050920000000
            TabOrder = 2
          end
        end
      end
    end
  end
  object AdvGAnalytics1: TAdvGAnalytics
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888/'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    Scopes.Strings = (
      'https://www.googleapis.com/auth/userinfo.profile'
      'https://www.googleapis.com/auth/userinfo.email'
      'https://www.googleapis.com/auth/analytics'
      'https://www.googleapis.com/auth/analytics.readonly')
    OnReceivedAccessToken = AdvGAnalytics1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    ErrorMessages.MetricCountMessage = 'Only 10 metrics are allowed in one call'
    ErrorMessages.DimensionCountMessage = 'Only 7 dimensions are allowed in one call'
    Left = 568
    Top = 408
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 712
    Top = 288
  end
end
