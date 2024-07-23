object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 575
  ClientWidth = 1000
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  TextHeight = 15
  object pgcMaster: TUniPageControl
    Left = 241
    Top = 0
    Width = 759
    Height = 575
    Hint = ''
    Align = alClient
    TabOrder = 1
  end
  object pnlMenu: TUniPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 575
    Hint = ''
    Align = alLeft
    TabOrder = 0
    TitleVisible = True
    Title = 'Exemplos'
    Caption = ''
    Collapsible = True
    CollapseDirection = cdLeft
    ScrollDirection = sdVertical
    object ScrollBox: TUniScrollBox
      Left = 1
      Top = 1
      Width = 239
      Height = 498
      Hint = ''
      Align = alClient
      TabOrder = 1
      ScrollHeight = 313
      object btnHCPieChart: TUniFSButton
        AlignWithMargins = True
        Left = 10
        Top = 3
        Width = 217
        Height = 30
        Hint = ''
        Margins.Left = 10
        Margins.Right = 10
        StyleButton = GoogleBlue2
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Pie Charts'
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        TabOrder = 0
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        OnClick = btnHCPieChartClick
      end
      object btnHCBarChart: TUniFSButton
        AlignWithMargins = True
        Left = 10
        Top = 39
        Width = 217
        Height = 30
        Hint = ''
        Margins.Left = 10
        Margins.Right = 10
        StyleButton = GoogleBlue2
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Bar Charts'
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        TabOrder = 1
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        OnClick = btnHCPieChartClick
      end
      object btnHCBarChartCustom: TUniFSButton
        AlignWithMargins = True
        Left = 10
        Top = 75
        Width = 217
        Height = 30
        Hint = ''
        Margins.Left = 10
        Margins.Right = 10
        StyleButton = GoogleBlue2
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Bar Charts - Custom'
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        TabOrder = 2
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        OnClick = btnHCPieChartClick
      end
      object btnHCLineChart: TUniFSButton
        AlignWithMargins = True
        Left = 10
        Top = 111
        Width = 217
        Height = 30
        Hint = ''
        Margins.Left = 10
        Margins.Right = 10
        StyleButton = GoogleBlue2
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Line Charts'
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        TabOrder = 3
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        OnClick = btnHCPieChartClick
      end
      object btnHCAreaChart: TUniFSButton
        AlignWithMargins = True
        Left = 10
        Top = 147
        Width = 217
        Height = 30
        Hint = ''
        Margins.Left = 10
        Margins.Right = 10
        StyleButton = GoogleBlue2
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Area Charts'
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        TabOrder = 4
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        OnClick = btnHCPieChartClick
      end
      object btnHCColumnWithNegative: TUniFSButton
        AlignWithMargins = True
        Left = 10
        Top = 183
        Width = 217
        Height = 30
        Hint = ''
        Margins.Left = 10
        Margins.Right = 10
        StyleButton = GoogleBlue2
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Column With Negative'
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        TabOrder = 5
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        OnClick = btnHCPieChartClick
      end
      object btnHCFunnelChart: TUniFSButton
        AlignWithMargins = True
        Left = 10
        Top = 219
        Width = 217
        Height = 30
        Hint = ''
        Margins.Left = 10
        Margins.Right = 10
        StyleButton = GoogleBlue2
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Funnel Charts'
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        TabOrder = 6
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        OnClick = btnHCPieChartClick
      end
      object btnHCCombineCharts: TUniFSButton
        AlignWithMargins = True
        Left = 10
        Top = 255
        Width = 217
        Height = 30
        Hint = ''
        Margins.Left = 10
        Margins.Right = 10
        StyleButton = GoogleBlue2
        BadgeText.Text = 'NEW'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        BadgeText.Visible = True
        Caption = 'Combine Charts'
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        TabOrder = 7
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        OnClick = btnHCPieChartClick
        ExplicitTop = 283
      end
    end
    object pnlAbout: TUniPanel
      Left = 1
      Top = 499
      Width = 239
      Height = 75
      Hint = ''
      Align = alBottom
      TabOrder = 2
      Caption = ''
      DesignSize = (
        239
        75)
      object lbl1: TUniLabel
        Left = 10
        Top = 16
        Width = 90
        Height = 19
        Cursor = crHandPoint
        Hint = ''
        Caption = 'Falcon Store'
        Anchors = [akLeft, akBottom]
        ParentFont = False
        Font.Color = 15628652
        Font.Height = -16
        Font.Name = 'Roboto'
        ClientEvents.ExtEvents.Strings = (
          
            'click=function click(sender, eOpts)'#13#10'{'#13#10'  window.open("https://s' +
            'tore.falconsistemas.com.br")'#13#10'}')
        TabOrder = 1
      end
      object lbl: TUniLabel
        Left = 10
        Top = 43
        Width = 121
        Height = 18
        Hint = ''
        Caption = 'UniFSHighCharts:'
        Anchors = [akLeft, akBottom]
        ParentFont = False
        Font.Height = -15
        Font.Name = 'Roboto'
        TabOrder = 2
      end
      object lblVersion: TUniLabel
        Left = 136
        Top = 43
        Width = 51
        Height = 18
        Hint = ''
        Caption = 'Version'
        Anchors = [akLeft, akBottom]
        ParentFont = False
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        TabOrder = 3
      end
    end
  end
end
