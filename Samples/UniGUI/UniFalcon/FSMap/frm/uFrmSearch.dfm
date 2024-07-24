object frmSearch: TfrmSearch
  Left = 0
  Top = 0
  Width = 800
  Height = 600
  OnCreate = UniFrameCreate
  Font.Name = 'Roboto'
  TabOrder = 0
  ParentFont = False
  object pnlTop: TUniPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 65
    Hint = ''
    Align = alTop
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    DesignSize = (
      800
      65)
    object pnlCenter: TUniPanel
      Left = 137
      Top = 11
      Width = 552
      Height = 48
      Hint = ''
      Anchors = []
      TabOrder = 1
      BorderStyle = ubsNone
      Caption = ''
      DesignSize = (
        552
        48)
      object edtSearch: TUniEdit
        Left = 14
        Top = 8
        Width = 417
        Height = 30
        Hint = ''
        Text = ''
        ParentFont = False
        Font.Height = -20
        Font.Name = 'Roboto'
        Anchors = []
        TabOrder = 1
        EmptyText = 'Ex: Tour Eiffel'
        OnKeyPress = edtSearchKeyPress
      end
      object btnSearch: TUniFSButton
        Left = 440
        Top = 8
        Width = 98
        Height = 30
        Hint = ''
        StyleButton = GoogleBlue
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Search'
        Anchors = []
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        TabOrder = 2
        OnClick = btnSearchClick
      end
    end
  end
  object map: TUniFSMap
    Left = 0
    Top = 65
    Width = 800
    Height = 535
    Hint = ''
    MapLat = '37.62162280929558'
    MapLng = '-122.1352967619896'
    MapType = SATELLITE
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
end
