object Form1: TForm1
  Left = 271
  Top = 114
  Caption = 'Form1'
  ClientHeight = 539
  ClientWidth = 907
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    907
    539)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 192
    Top = 8
    Width = 20
    Height = 13
    Caption = 'Port'
  end
  object ButtonStart: TButton
    Left = 24
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = ButtonStartClick
  end
  object ButtonStop: TButton
    Left = 105
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 1
    OnClick = ButtonStopClick
  end
  object EditPort: TEdit
    Left = 218
    Top = 8
    Width = 49
    Height = 21
    TabOrder = 2
    Text = '8081'
  end
  object ButtonOpenBrowser: TButton
    Left = 281
    Top = 8
    Width = 107
    Height = 25
    Caption = 'Open Browser'
    TabOrder = 3
    OnClick = ButtonOpenBrowserClick
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 39
    Width = 891
    Height = 492
    ActivePage = tabHomePage
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    object tabHomePage: TTabSheet
      Caption = 'Home Page'
      DesignSize = (
        883
        464)
      object edUrl: TEdit
        Left = 64
        Top = 3
        Width = 745
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        TextHint = 'Server Url'
      end
      object WebBrowser1: TWebBrowser
        Left = 3
        Top = 30
        Width = 877
        Height = 431
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        ControlData = {
          4C000000A45A00008C2C00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
      object Button1: TButton
        Left = 815
        Top = 3
        Width = 50
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Go'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 744
    Top = 8
  end
end
