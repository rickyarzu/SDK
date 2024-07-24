object frmMarcadoresComplexos: TfrmMarcadoresComplexos
  Left = 0
  Top = 0
  Width = 800
  Height = 629
  OnCreate = UniFrameCreate
  TabOrder = 0
  DesignSize = (
    800
    629)
  object map: TUniFSMap
    Left = 0
    Top = 0
    Width = 800
    Height = 629
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
    Height = 528
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
      Top = 361
      Width = 219
      Height = 164
      Hint = ''
      Lines.Strings = (
        '')
      ParentFont = False
      Align = alBottom
      TabOrder = 11
    end
    object lbl1: TUniLabel
      Left = 0
      Top = 335
      Width = 101
      Height = 17
      Hint = ''
      Caption = 'Ajax Request Log'
      Align = alBottom
      ParentFont = False
      Font.Color = clGray
      Font.Height = -13
      TabOrder = 9
    end
    object rdgAnimation: TUniRadioGroup
      Left = 117
      Top = 51
      Width = 104
      Height = 125
      Hint = ''
      Items.Strings = (
        'None'
        'Drop'
        'Bounce')
      ItemIndex = 1
      Caption = 'Anima'#231#227'o'
      TabOrder = 4
      ParentFont = False
      Font.Color = clBtnText
      Font.Height = -13
    end
    object chkDraggAble: TUniCheckBox
      Left = 7
      Top = 185
      Width = 97
      Height = 17
      Hint = ''
      Caption = 'DraggAble'
      ParentFont = False
      Font.Color = clBtnText
      Font.Height = -13
      TabOrder = 5
    end
    object edtColor: TUniEdit
      Left = 43
      Top = 16
      Width = 121
      Hint = ''
      Text = '#FBBC05'
      TabOrder = 1
    end
    object lbl2: TUniLabel
      Left = 7
      Top = 19
      Width = 32
      Height = 17
      Hint = ''
      Caption = 'Color'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 2
    end
    object btnLimparMarcadores: TUniFSButton
      AlignWithMargins = True
      Left = 3
      Top = 256
      Width = 219
      Height = 36
      Hint = ''
      StyleButton = GoogleSilver
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'CLEAN MARKERS'
      Align = alBottom
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -13
      TabOrder = 7
      OnClick = btnLimparMarcadoresClick
    end
    object grpTypeMap: TUniRadioGroup
      Left = 7
      Top = 51
      Width = 104
      Height = 125
      Hint = ''
      Items.Strings = (
        'ROADMAP'
        'SATELLITE'
        'HYBRID'
        'TERRAIN')
      ItemIndex = 0
      Caption = 'Type Map'
      TabOrder = 3
      ParentFont = False
      Font.Color = clBtnText
      OnClick = grpTypeMapClick
    end
    object splBottom: TUniSplitter
      Left = 0
      Top = 352
      Width = 225
      Height = 6
      Cursor = crVSplit
      Hint = ''
      Align = alBottom
      ParentColor = False
      Color = 16031023
    end
    object pnlMap: TUniPanel
      Left = 0
      Top = 295
      Width = 225
      Height = 40
      Hint = ''
      Align = alBottom
      TabOrder = 8
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
    object lbl3: TUniLabel
      Left = 51
      Top = 224
      Width = 115
      Height = 17
      Hint = ''
      Caption = 'CLICK ON THE MAP'
      TabOrder = 6
    end
  end
end
