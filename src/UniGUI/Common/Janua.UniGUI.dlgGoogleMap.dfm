object dlgUniGUIGoogleMap: TdlgUniGUIGoogleMap
  Left = 0
  Top = 0
  ClientHeight = 430
  ClientWidth = 580
  Caption = ''
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  TextHeight = 15
  object pnlBottom: TUniPanel
    Left = 0
    Top = 384
    Width = 580
    Height = 46
    Hint = ''
    Align = alBottom
    TabOrder = 0
    Caption = ''
    ExplicitTop = 383
    ExplicitWidth = 576
    DesignSize = (
      580
      46)
    object btnOK: TUniBitBtn
      Left = 468
      Top = 12
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'OK'
      Anchors = [akTop, akRight]
      TabOrder = 1
      OnClick = btnOKClick
      ExplicitLeft = 464
    end
    object btnTest: TUniButton
      Left = 240
      Top = 12
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Test'
      TabOrder = 2
      OnClick = btnTestClick
    end
  end
  object map: TUniFSMap
    Left = 0
    Top = 0
    Width = 580
    Height = 384
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
    MapControl.ShowAllAddedOverlays = False
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
    ExplicitWidth = 576
    ExplicitHeight = 383
  end
  object UniTimer1: TUniTimer
    Interval = 300
    Enabled = False
    RunOnce = True
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = UniTimer1Timer
    Left = 352
    Top = 112
  end
  object UniTimer2: TUniTimer
    Interval = 3000
    Enabled = False
    RunOnce = True
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = UniTimer2Timer
    Left = 376
    Top = 192
  end
end
