object frmMultiRoutes: TfrmMultiRoutes
  Left = 0
  Top = 0
  Width = 909
  Height = 625
  OnCreate = UniFrameCreate
  TabOrder = 0
  DesignSize = (
    909
    625)
  object map: TUniFSMap
    Left = 0
    Top = 0
    Width = 909
    Height = 625
    Hint = ''
    MapLat = '37.62162280929558'
    MapLng = '-122.1352967619896'
    MapType = ROADMAP
    MapControl.SearchBox = False
    MapControl.SearchBoxText = 'Pesquisar'
    MapControl.OverlayActive = False
    MapControl.DrawingTool = False
    MapControl.FullScreenControl = False
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
    Top = 69
    Width = 329
    Height = 481
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
    object btnRoute: TUniFSButton
      AlignWithMargins = True
      Left = 3
      Top = 356
      Width = 323
      Height = 30
      Hint = ''
      StyleButton = GoogleBlue
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'MULTI ROUTE'
      Align = alBottom
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 2
      OnClick = btnRouteClick
    end
    object pnlBottom: TUniPanel
      AlignWithMargins = True
      Left = 3
      Top = 392
      Width = 323
      Height = 86
      Hint = ''
      Align = alBottom
      TabOrder = 3
      BorderStyle = ubsNone
      Caption = ''
      object lblObs: TUniLabel
        Left = 6
        Top = 58
        Width = 235
        Height = 17
        Hint = ''
        Caption = 'Note: Maximum waypoints allowed is 25'
        TabOrder = 5
      end
      object lbl1: TUniLabel
        Left = 6
        Top = 14
        Width = 52
        Height = 17
        Hint = ''
        Caption = 'Distance:'
        TabOrder = 1
      end
      object lblDistance: TUniLabel
        Left = 65
        Top = 14
        Width = 30
        Height = 17
        Hint = ''
        Caption = '0 km'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 2
      end
      object lbl2: TUniLabel
        Left = 6
        Top = 36
        Width = 53
        Height = 17
        Hint = ''
        Caption = 'Duration:'
        TabOrder = 3
      end
      object lblDuration: TUniLabel
        Left = 65
        Top = 36
        Width = 25
        Height = 17
        Hint = ''
        Caption = '0 hs'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 4
      end
    end
    object dbg: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 323
      Height = 294
      Hint = ''
      DataSource = DS
      WebOptions.Paged = False
      WebOptions.FetchAll = True
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alTop
      TabOrder = 1
      OnCellClick = dbgCellClick
    end
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 245
    object intgrfldCDSsequence: TIntegerField
      DisplayLabel = 'Sequence'
      FieldName = 'sequence'
    end
    object strngfldCDSlat: TStringField
      DisplayLabel = 'Lat'
      FieldName = 'lat'
    end
    object strngfldCDSlng: TStringField
      DisplayLabel = 'Lng'
      FieldName = 'lng'
    end
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 160
    Top = 245
  end
end
