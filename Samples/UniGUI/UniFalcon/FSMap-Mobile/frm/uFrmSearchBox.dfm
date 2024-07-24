object frmSearchBox: TfrmSearchBox
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Search Box'
  TitleButtons = <>
  OnCreate = UnimFormCreate
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object pnl1: TUnimPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    object edtSearch: TUnimEdit
      Left = 1
      Top = 1
      Width = 255
      Height = 45
      Hint = ''
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Text = ''
      EmptyText = 'Search Location'
      ExplicitWidth = 232
    end
    object btnSearch: TUnimButton
      Left = 256
      Top = 1
      Width = 63
      Height = 45
      Hint = ''
      Align = alRight
      Anchors = [akTop, akRight, akBottom]
      Caption = ''
      IconCls = 'search'
      OnClick = btnSearchClick
    end
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
    MapControl.OverlayActive = False
    MapControl.DrawingTool = False
    MapControl.FullScreenControl = False
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ClientEvents.ExtEvents.Strings = (
      
        'resize=function resize(sender, eOpts) {   ajaxRequest(sender, "f' +
        's_map_resize", []); } ')
    OnAjaxEvent = mapAjaxEvent
    ExplicitLeft = 1
    ExplicitTop = 52
  end
end
