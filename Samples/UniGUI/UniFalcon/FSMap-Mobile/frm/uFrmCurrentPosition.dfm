object frmCurrentPosition: TfrmCurrentPosition
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Current Position'
  TitleButtons = <>
  OnCreate = UnimFormCreate
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object btnGetCurrentPosition: TUnimButton
    Left = 0
    Top = 0
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Get Position'
    ScreenMask.Enabled = True
    ScreenMask.WaitData = True
    ScreenMask.Message = 'Processando...'
    OnClick = btnGetCurrentPositionClick
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
    OnAjaxEvent = mapAjaxEvent
  end
end
