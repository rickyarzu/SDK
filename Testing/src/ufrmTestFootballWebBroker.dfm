object frmTestFootballWebBroker: TfrmTestFootballWebBroker
  Left = 0
  Top = 0
  Caption = 'frmTestFootballWebBroker'
  ClientHeight = 534
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 792
    Height = 493
    ActivePage = tabRanking
    Align = alClient
    TabOrder = 0
    object tabRanking: TTabSheet
      Caption = 'Ranking'
      object WebBrowser1: TWebBrowser
        Left = 0
        Top = 21
        Width = 784
        Height = 444
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 280
        ExplicitTop = 96
        ExplicitWidth = 300
        ExplicitHeight = 150
        ControlData = {
          4C00000007510000E42D00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
      object edRankingUrl: TEdit
        Left = 0
        Top = 0
        Width = 784
        Height = 21
        Align = alTop
        TabOrder = 1
        Text = '75'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'tabMatches'
      ImageIndex = 1
      object edMatches: TEdit
        Left = 0
        Top = 0
        Width = 784
        Height = 21
        Align = alTop
        TabOrder = 0
        Text = '75'
        ExplicitTop = 8
      end
      object WebBrowser2: TWebBrowser
        Left = 0
        Top = 21
        Width = 784
        Height = 444
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 280
        ExplicitTop = 96
        ExplicitWidth = 300
        ExplicitHeight = 150
        ControlData = {
          4C00000007510000E42D00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object tabGoalRankings: TTabSheet
      Caption = 'tabGoalRankings'
      ImageIndex = 2
      ExplicitLeft = 8
      object edGoalRanking: TEdit
        Left = 0
        Top = 0
        Width = 784
        Height = 21
        Align = alTop
        TabOrder = 0
        Text = '75'
        ExplicitTop = 8
      end
      object WebBrowser3: TWebBrowser
        Left = 0
        Top = 21
        Width = 784
        Height = 444
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 280
        ExplicitTop = 96
        ExplicitWidth = 300
        ExplicitHeight = 150
        ControlData = {
          4C00000007510000E42D00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object tabNextMatches: TTabSheet
      Caption = 'tabNextMatches'
      ImageIndex = 3
      ExplicitLeft = 8
      object ednextmatches: TEdit
        Left = 0
        Top = 0
        Width = 784
        Height = 21
        Align = alTop
        TabOrder = 0
        Text = '75'
        ExplicitTop = 8
      end
      object WebBrowser4: TWebBrowser
        Left = 0
        Top = 21
        Width = 784
        Height = 444
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 280
        ExplicitTop = 96
        ExplicitWidth = 300
        ExplicitHeight = 150
        ControlData = {
          4C00000007510000E42D00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 41
    Align = alTop
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 16
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Vedi Sito'
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 127
      Top = 11
      Width = 35
      Height = 13
      Caption = 'Season'
    end
    object Label2: TLabel
      Left = 207
      Top = 11
      Width = 35
      Height = 13
      Caption = 'League'
    end
    object Label3: TLabel
      Left = 294
      Top = 11
      Width = 19
      Height = 13
      Caption = 'Day'
    end
    object edSeason: TEdit
      Left = 168
      Top = 8
      Width = 33
      Height = 21
      Alignment = taRightJustify
      TabOrder = 0
      Text = '75'
    end
    object edLeague: TEdit
      Left = 248
      Top = 8
      Width = 33
      Height = 21
      Alignment = taRightJustify
      TabOrder = 1
      Text = '145'
    end
    object edMatchDay: TEdit
      Left = 319
      Top = 8
      Width = 26
      Height = 21
      Alignment = taRightJustify
      TabOrder = 2
      Text = '2'
    end
  end
end
