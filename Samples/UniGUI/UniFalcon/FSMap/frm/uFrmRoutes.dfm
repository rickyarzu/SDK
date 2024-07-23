object frmRoutes: TfrmRoutes
  Left = 0
  Top = 0
  Width = 878
  Height = 596
  OnCreate = UniFrameCreate
  TabOrder = 0
  DesignSize = (
    878
    596)
  object map: TUniFSMap
    Left = 0
    Top = 0
    Width = 878
    Height = 386
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
    APIKeys = UniServerModule.APIKeys
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
    Height = 185
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
      Top = 71
      Width = 267
      Height = 30
      Hint = ''
      StyleButton = GoogleBlue
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'ROUTE'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 3
      OnClick = btnRouteClick
    end
    object cmbOrigin: TUniFSComboBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 267
      Height = 28
      Hint = ''
      Text = ''
      Items.Strings = (
        'Nova Mutum, MT'
        'Cuiaba, MT')
      Align = alTop
      TabOrder = 1
      EmptyText = 'Origin'
      AnyMatch = True
      MatchFieldWidth = False
      IconItems = <>
      Value = '-1'
    end
    object cmbDestination: TUniFSComboBox
      AlignWithMargins = True
      Left = 3
      Top = 37
      Width = 267
      Height = 28
      Hint = ''
      Text = ''
      Items.Strings = (
        'S'#227'o Paulo, SP'
        'Rio de Janeiro, RJ'
        'Parana, PR')
      Align = alTop
      TabOrder = 2
      EmptyText = 'Destination'
      AnyMatch = True
      MatchFieldWidth = False
      IconItems = <>
      Value = '-1'
    end
    object lbl1: TUniLabel
      Left = 6
      Top = 120
      Width = 52
      Height = 17
      Hint = ''
      Caption = 'Distance:'
      TabOrder = 4
    end
    object lblDistance: TUniLabel
      Left = 65
      Top = 120
      Width = 30
      Height = 17
      Hint = ''
      Caption = '0 km'
      ParentFont = False
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 5
    end
    object lbl2: TUniLabel
      Left = 6
      Top = 147
      Width = 53
      Height = 17
      Hint = ''
      Caption = 'Duration:'
      TabOrder = 6
    end
    object lblDuration: TUniLabel
      Left = 65
      Top = 147
      Width = 25
      Height = 17
      Hint = ''
      Caption = '0 hs'
      ParentFont = False
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 7
    end
  end
  object pnlDirections: TUniPanel
    Left = 0
    Top = 392
    Width = 878
    Height = 204
    Hint = ''
    Align = alBottom
    TabOrder = 3
    BorderStyle = ubsNone
    Caption = 'pnlDirections'
    object dbgDirections: TUniDBGrid
      Left = 0
      Top = 0
      Width = 878
      Height = 204
      Hint = ''
      DataSource = DS
      Options = [dgTitles, dgColumnResize, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
      WebOptions.Paged = False
      WebOptions.FetchAll = True
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      LayoutConfig.Padding = '10px'
      BorderStyle = ubsNone
      Align = alClient
      TabOrder = 1
      OnCellClick = dbgDirectionsCellClick
    end
  end
  object spl1: TUniSplitter
    Left = 0
    Top = 386
    Width = 878
    Height = 6
    Cursor = crVSplit
    Hint = ''
    Align = alBottom
    ParentColor = False
    Color = clBtnFace
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 472
    object intgrfldClientDataSet1aa: TIntegerField
      DisplayLabel = 'Sequence'
      DisplayWidth = 11
      FieldName = 'sequence'
    end
    object CDSinstructions: TWideStringField
      DisplayLabel = 'Instructions'
      DisplayWidth = 37
      FieldName = 'instructions'
      Size = 255
    end
    object intgrfldClientDataSet1distance_value: TIntegerField
      DisplayLabel = 'Distance Value'
      DisplayWidth = 23
      FieldName = 'distance_value'
    end
    object CDSdistance_text: TWideStringField
      DisplayLabel = 'Distance Text'
      DisplayWidth = 23
      FieldName = 'distance_text'
      Size = 32
    end
    object intgrfldClientDataSet1duration_value: TIntegerField
      DisplayLabel = 'Duration Value'
      DisplayWidth = 25
      FieldName = 'duration_value'
    end
    object CDSduration_text: TWideStringField
      DisplayLabel = 'Duration Text'
      DisplayWidth = 22
      FieldName = 'duration_text'
      Size = 50
    end
    object fltfldClientDataSet1start_location_Ya: TWideStringField
      DisplayWidth = 21
      FieldName = 'startlocation_lat'
      Visible = False
    end
    object fltfldClientDataSet1start_location_Za: TWideStringField
      DisplayWidth = 21
      FieldName = 'startlocation_lng'
      Visible = False
    end
    object fltfldClientDataSet1end_location_Ya: TWideStringField
      DisplayWidth = 19
      FieldName = 'endlocation_lat'
      Visible = False
    end
    object fltfldClientDataSet1end_location_Za: TWideStringField
      DisplayWidth = 19
      FieldName = 'endlocation_lng'
      Visible = False
    end
    object mfldClientDataSet1enc_lat_lngs: TMemoField
      FieldName = 'enc_lat_lngs'
      Visible = False
      BlobType = ftMemo
    end
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 432
    Top = 472
  end
end
