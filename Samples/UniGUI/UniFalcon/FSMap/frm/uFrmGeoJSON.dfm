object frmGeoJSON: TfrmGeoJSON
  Left = 0
  Top = 0
  Width = 800
  Height = 600
  OnCreate = UniFrameCreate
  TabOrder = 0
  DesignSize = (
    800
    600)
  object map: TUniFSMap
    Left = 0
    Top = 0
    Width = 800
    Height = 600
    Hint = ''
    MapLat = '37.62162280929558'
    MapLng = '-122.1352967619896'
    MapType = ROADMAP
    MapControl.SearchBox = False
    MapControl.SearchBoxText = 'Pesquisar'
    MapControl.OverlayActive = False
    MapControl.DrawingTool = False
    MapControl.FullScreenControl = True
    MapControl.HeatMap = False
    MapEvents.Click = True
    MapEvents.RightClick = True
    MapEvents.DblClick = True
    MapEvents.ZoomChanged = True
    MapEvents.DragEnd = False
    Align = alClient
    ClientEvents.ExtEvents.Strings = (
      
        'resize=function resize(sender, width, height, oldWidth, oldHeigh' +
        't, eOpts) {   ajaxRequest(sender, "fs_map_resize",    [    '#39'widt' +
        'h='#39' + width,    '#39'height='#39' + height,    '#39'oldWidth='#39' + oldWidth,  ' +
        '  '#39'oldHeight='#39' + oldHeight    ]); } ')
    OnAjaxEvent = mapAjaxEvent
  end
  object pnl1: TUniPanel
    Left = 0
    Top = 72
    Width = 225
    Height = 499
    Hint = ''
    Anchors = [akLeft, akTop, akBottom]
    ParentFont = False
    Font.Height = -13
    TabOrder = 1
    ClientEvents.ExtEvents.Strings = (
      
        'beforerender=function beforerender(sender, eOpts)'#13#10'{'#13#10'  sender.s' +
        'etBodyStyle("opacity","0.9");'#13#10'}')
    BorderStyle = ubsNone
    TitleVisible = True
    Title = 'Filtros'
    Caption = ''
    Collapsible = True
    CollapseDirection = cdLeft
    Color = clWhite
    object memLog: TUniMemo
      AlignWithMargins = True
      Left = 3
      Top = 276
      Width = 219
      Height = 220
      Hint = ''
      Lines.Strings = (
        '')
      ParentFont = False
      Font.Height = -13
      Align = alBottom
      TabOrder = 7
    end
    object lbl1: TUniLabel
      Left = 0
      Top = 250
      Width = 101
      Height = 17
      Hint = ''
      Caption = 'Ajax Request Log'
      Align = alBottom
      ParentFont = False
      Font.Color = clGray
      Font.Height = -13
      TabOrder = 5
    end
    object splBottom: TUniSplitter
      Left = 0
      Top = 267
      Width = 225
      Height = 6
      Cursor = crVSplit
      Hint = ''
      Align = alBottom
      ParentColor = False
      Color = 16031023
    end
    object btnLoadGeoJSON: TUniFSButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 219
      Height = 30
      Hint = ''
      StyleButton = GoogleBlue
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Load GeoJson US Outline'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 1
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Carregando...'
      OnClick = btnLoadGeoJSONClick
    end
    object btnLoadGeoJson2: TUniFSButton
      AlignWithMargins = True
      Left = 3
      Top = 39
      Width = 219
      Height = 30
      Hint = ''
      StyleButton = GoogleBlue
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Load GeoJson US State'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 2
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Carregando...'
      OnClick = btnLoadGeoJson2Click
    end
    object pnlMap: TUniPanel
      Left = 0
      Top = 210
      Width = 225
      Height = 40
      Hint = ''
      Align = alBottom
      TabOrder = 4
      BorderStyle = ubsNone
      Caption = ''
      object btnMapTerrain: TUniFSButton
        AlignWithMargins = True
        Left = 120
        Top = 3
        Width = 33
        Height = 34
        Hint = ''
        StyleButton = GoogleSilver
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = ''
        Align = alLeft
        TabOrder = 4
        ClientEvents.ExtEvents.Strings = (
          
            'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
            '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   html: "Map' +
            ' Terrain"});'#13#10'}')
        Images = dmImagens.imgl32
        ImageIndex = 6
        LayoutConfig.Padding = '0px 5px 0px 5px'
        OnClick = btnMapTerrainClick
      end
      object btnMapRoadmap: TUniFSButton
        AlignWithMargins = True
        Left = 81
        Top = 3
        Width = 33
        Height = 34
        Hint = ''
        StyleButton = GoogleSilver
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = ''
        Align = alLeft
        TabOrder = 3
        ClientEvents.ExtEvents.Strings = (
          
            'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
            '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   html: "Map' +
            ' Roadmap"});'#13#10'}')
        Images = dmImagens.imgl32
        ImageIndex = 5
        LayoutConfig.Padding = '0px 5px 0px 5px'
        OnClick = btnMapRoadmapClick
      end
      object btnMapSatelite: TUniFSButton
        AlignWithMargins = True
        Left = 42
        Top = 3
        Width = 33
        Height = 34
        Hint = ''
        StyleButton = GoogleSilver
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = ''
        Align = alLeft
        TabOrder = 2
        ClientEvents.ExtEvents.Strings = (
          
            'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
            '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   html: "Map' +
            ' Satellite"});'#13#10'}')
        Images = dmImagens.imgl32
        ImageIndex = 4
        LayoutConfig.Padding = '0px 5px 0px 5px'
        OnClick = btnMapSateliteClick
      end
      object btnMapHybrid: TUniFSButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 33
        Height = 34
        Hint = ''
        StyleButton = GoogleSilver
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = ''
        Align = alLeft
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
            '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   html: "Map' +
            ' Hybrid"});'#13#10'}')
        Images = dmImagens.imgl32
        ImageIndex = 3
        LayoutConfig.Padding = '0px 5px 0px 5px'
        OnClick = btnMapHybridClick
      end
    end
    object btnLoadJsonTurkya: TUniFSButton
      AlignWithMargins = True
      Left = 3
      Top = 75
      Width = 219
      Height = 30
      Hint = ''
      StyleButton = GoogleBlue
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Load GeoJson Turkey Cities'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 3
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Carregando...'
      OnClick = btnLoadJsonTurkyaClick
    end
  end
end
