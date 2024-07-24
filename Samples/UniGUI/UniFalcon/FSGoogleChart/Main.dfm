object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 616
  ClientWidth = 1000
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  TextHeight = 15
  object pgcMaster: TUniPageControl
    Left = 250
    Top = 0
    Width = 750
    Height = 616
    Hint = ''
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 220
    ExplicitWidth = 780
  end
  object pnlMenu: TUniPanel
    Left = 0
    Top = 0
    Width = 250
    Height = 616
    Hint = ''
    Align = alLeft
    TabOrder = 0
    TitleVisible = True
    Title = 'Exemplos'
    Caption = ''
    Collapsible = True
    CollapseDirection = cdLeft
    DesignSize = (
      250
      616)
    object btnGeoChart: TUniFSButton
      AlignWithMargins = True
      Left = 16
      Top = 4
      Width = 218
      Height = 30
      Hint = ''
      Margins.Left = 15
      Margins.Right = 15
      StyleButton = GoogleBlue
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Geo Charts'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      TabOrder = 1
      OnClick = btnGeoChartClick
      ExplicitLeft = 11
      ExplicitWidth = 198
    end
    object btnPieChart: TUniFSButton
      AlignWithMargins = True
      Left = 16
      Top = 40
      Width = 218
      Height = 30
      Hint = ''
      Margins.Left = 15
      Margins.Right = 15
      StyleButton = GoogleBlue
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
      TabOrder = 2
      OnClick = btnGeoChartClick
      ExplicitLeft = 11
      ExplicitWidth = 198
    end
    object btnGauge: TUniFSButton
      AlignWithMargins = True
      Left = 16
      Top = 76
      Width = 218
      Height = 30
      Hint = ''
      Margins.Left = 15
      Margins.Right = 15
      StyleButton = GoogleBlue
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Gauge'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      TabOrder = 3
      OnClick = btnGeoChartClick
      ExplicitLeft = 11
      ExplicitWidth = 198
    end
    object btnAreaChart: TUniFSButton
      AlignWithMargins = True
      Left = 16
      Top = 112
      Width = 218
      Height = 30
      Hint = ''
      Margins.Left = 15
      Margins.Right = 15
      StyleButton = GoogleBlue
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
      OnClick = btnGeoChartClick
      ExplicitLeft = 11
      ExplicitWidth = 198
    end
    object btnBarChart: TUniFSButton
      AlignWithMargins = True
      Left = 16
      Top = 148
      Width = 218
      Height = 30
      Hint = ''
      Margins.Left = 15
      Margins.Right = 15
      StyleButton = GoogleBlue
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
      TabOrder = 5
      OnClick = btnGeoChartClick
      ExplicitLeft = 11
      ExplicitWidth = 198
    end
    object btnBubbleChart: TUniFSButton
      AlignWithMargins = True
      Left = 16
      Top = 184
      Width = 218
      Height = 30
      Hint = ''
      Margins.Left = 15
      Margins.Right = 15
      StyleButton = GoogleBlue
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Bubble Charts'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      TabOrder = 6
      OnClick = btnGeoChartClick
      ExplicitLeft = 11
      ExplicitWidth = 198
    end
    object btnLineChart: TUniFSButton
      AlignWithMargins = True
      Left = 16
      Top = 220
      Width = 218
      Height = 30
      Hint = ''
      Margins.Left = 15
      Margins.Right = 15
      StyleButton = GoogleBlue
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
      TabOrder = 7
      OnClick = btnGeoChartClick
      ExplicitLeft = 11
      ExplicitWidth = 198
    end
    object btnLineChartValuesCurrency: TUniFSButton
      AlignWithMargins = True
      Left = 16
      Top = 256
      Width = 218
      Height = 30
      Hint = ''
      Margins.Left = 15
      Margins.Right = 15
      StyleButton = GoogleBlue
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Line Charts Values Currency'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      TabOrder = 8
      OnClick = btnGeoChartClick
      ExplicitLeft = 11
      ExplicitWidth = 198
    end
    object lbl1: TUniLabel
      Left = 16
      Top = 467
      Width = 83
      Height = 19
      Cursor = crHandPoint
      Hint = ''
      Caption = 'Get API Key'
      Anchors = [akLeft, akBottom]
      ParentFont = False
      Font.Color = 15628652
      Font.Height = -16
      Font.Name = 'Roboto'
      ClientEvents.ExtEvents.Strings = (
        
          'click=function click(sender, eOpts)'#13#10'{'#13#10'  window.open("https://d' +
          'evelopers.google.com/maps/documentation/embed/get-api-key")'#13#10'}')
      TabOrder = 9
    end
    object imgFalconSistemas: TUniImage
      Left = 16
      Top = 501
      Width = 150
      Height = 39
      Cursor = crHandPoint
      Hint = 'https://store.falconsistemas.com.br'
      ShowHint = True
      ParentShowHint = False
      AutoSize = True
      Url = 
        'https://store.falconsistemas.com.br/imagens/sistema/falcon_siste' +
        'mas_store.png'
      Anchors = [akLeft, akBottom]
      ClientEvents.ExtEvents.Strings = (
        
          'click=function click(sender, eOpts)'#13#10'{'#13#10'  window.open("https://s' +
          'tore.falconsistemas.com.br");'#13#10'}')
    end
    object lblVersion: TUniLabel
      Left = 16
      Top = 547
      Width = 71
      Height = 19
      Hint = ''
      Caption = 'lblVersion'
      Anchors = [akLeft, akBottom]
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Roboto'
      ParentColor = False
      Color = 328965
      TabOrder = 11
    end
  end
end
