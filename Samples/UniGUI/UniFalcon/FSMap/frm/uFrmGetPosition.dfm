object frmGetPosition: TfrmGetPosition
  Left = 0
  Top = 0
  Width = 817
  Height = 539
  OnCreate = UniFrameCreate
  TabOrder = 0
  DesignSize = (
    817
    539)
  object map: TUniFSMap
    Left = 0
    Top = 0
    Width = 817
    Height = 539
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
    Width = 273
    Height = 425
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
      Top = 154
      Width = 267
      Height = 268
      Hint = ''
      Lines.Strings = (
        '')
      ParentFont = False
      Font.Height = -13
      Align = alBottom
      TabOrder = 4
    end
    object lbl1: TUniLabel
      Left = 0
      Top = 134
      Width = 101
      Height = 17
      Hint = ''
      Caption = 'Ajax Request Log'
      Align = alBottom
      ParentFont = False
      Font.Color = clTeal
      Font.Height = -13
      TabOrder = 3
    end
    object btnGetCurrentPosition: TUniFSButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 267
      Height = 30
      Hint = ''
      StyleButton = GoogleBlue
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'GET CURRENT POSITION'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 1
      OnClick = btnGetCurrentPositionClick
    end
    object pnlMap: TUniPanel
      Left = 0
      Top = 94
      Width = 273
      Height = 40
      Hint = ''
      Align = alBottom
      TabOrder = 2
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
        OnClick = btnMapHybridClick
      end
    end
  end
end
