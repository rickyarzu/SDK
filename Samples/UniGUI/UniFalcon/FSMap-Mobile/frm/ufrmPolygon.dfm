object frmPolygon: TfrmPolygon
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'frmPolygon'
  TitleButtons = <>
  OnCreate = UnimFormCreate
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object btnCriarPolygon: TUnimBitBtn
    Left = 0
    Top = 0
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    ScreenMask.Enabled = True
    ScreenMask.Message = 'Processando...'
    Caption = 'Criar Polygon'
    OnClick = btnCriarPolygonClick
  end
  object map: TUnimFSMap
    Left = 0
    Top = 47
    Width = 320
    Height = 433
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
    Align = alClient
    ClientEvents.ExtEvents.Strings = (
      
        'resize=function resize(sender, eOpts) {   ajaxRequest(sender, "f' +
        's_map_resize", []); } ')
  end
  object CDSPolygon: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 148
    Top = 176
  end
end
