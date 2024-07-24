object frmMarkerImageIcons: TfrmMarkerImageIcons
  Left = 0
  Top = 0
  ClientHeight = 588
  ClientWidth = 932
  Caption = 'frmMarkerImageIcons'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  TextHeight = 13
  object pnl1: TUniPanel
    Left = 0
    Top = 0
    Width = 280
    Height = 588
    Hint = ''
    Align = alLeft
    TabOrder = 0
    Caption = ''
    object btn1: TUniFSButton
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 258
      Height = 41
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 5
      StyleButton = GoogleBlue
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Create Simple Marker'
      Align = alTop
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -15
      TabOrder = 1
      OnClick = btn1Click
      ExplicitLeft = -4
      ExplicitTop = 2
      ExplicitWidth = 254
    end
    object ListBox: TUniListBox
      AlignWithMargins = True
      Left = 11
      Top = 57
      Width = 258
      Height = 525
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 5
      Items.Strings = (
        'POI.png'
        'POI.shadow.png'
        'arts.png'
        'arts.shadow.png'
        'bar.png'
        'bar.shadow.png'
        'blue-dot.png'
        'blue-pushpin.png'
        'blue.png'
        'bus.png'
        'bus.shadow.png'
        'cabs.png'
        'cabs.shadow.png'
        'camera.png'
        'camera.shadow.png'
        'campfire.png'
        'campfire.shadow.png'
        'campground.png'
        'campground.shadow.png'
        'caution.png'
        'caution.shadow.png'
        'coffeehouse.png'
        'coffeehouse.shadow.png'
        'convienancestore.png'
        'convienancestore.shadow.png'
        'cycling.png'
        'cycling.shadow.png'
        'dollar.png'
        'dollar.shadow.png'
        'drinking_water.png'
        'drinking_water.shadow.png'
        'earthquake.png'
        'earthquake.shadow.png'
        'electronics.png'
        'electronics.shadow.png'
        'euro.png'
        'euro.shadow.png'
        'fallingrocks.png'
        'fallingrocks.shadow.png'
        'ferry.png'
        'ferry.shadow.png'
        'firedept.png'
        'firedept.shadow.png'
        'fishing.png'
        'fishing.shadow.png'
        'flag.png'
        'flag.shadow.png'
        'gas.png'
        'gas.shadow.png'
        'golfer.png'
        'golfer.shadow.png'
        'green-dot.png'
        'green.png'
        'grn-pushpin.png'
        'grocerystore.png'
        'grocerystore.shadow.png'
        'groecerystore.png'
        'groecerystore.shadow.png'
        'helicopter.png'
        'helicopter.shadow.png'
        'hiker.png'
        'hiker.shadow.png'
        'homegardenbusiness.png'
        'homegardenbusiness.shadow.png'
        'horsebackriding.png'
        'horsebackriding.shadow.png'
        'hospitals.png'
        'hospitals.shadow.png'
        'hotsprings.png'
        'hotsprings.shadow.png'
        'info.png'
        'info.shadow.png'
        'info_circle.png'
        'info_circle.shadow.png'
        'landmarks-jp.png'
        'landmarks-jp.shadow.png'
        'lightblue.png'
        'lodging.png'
        'lodging.shadow.png'
        'ltblu-pushpin.png'
        'ltblue-dot.png'
        'man.png'
        'man.shadow.png'
        'marina.png'
        'marina.shadow.png'
        'mechanic.png'
        'mechanic.shadow.png'
        'motorcycling.png'
        'motorcycling.shadow.png'
        'movies.png'
        'movies.shadow.png'
        'msmarker.shadow.png'
        'orange-dot.png'
        'orange.png'
        'parkinglot.png'
        'parkinglot.shadow.png'
        'partly_cloudy.png'
        'partly_cloudy.shadow.png'
        'pharmacy-us.png'
        'pharmacy-us.shadow.png'
        'phone.png'
        'phone.shadow.png'
        'picnic.png'
        'picnic.shadow.png'
        'pink-dot.png'
        'pink-pushpin.png'
        'pink.png'
        'plane.png'
        'plane.shadow.png'
        'police.png'
        'police.shadow.png'
        'postoffice-jp.png'
        'postoffice-jp.shadow.png'
        'postoffice-us.png'
        'postoffice-us.shadow.png'
        'purple-dot.png'
        'purple-pushpin.png'
        'purple.png'
        'pushpin_shadow.png'
        'question.png'
        'question.shadow.png'
        'rail.png'
        'rail.shadow.png'
        'rainy.png'
        'rainy.shadow.png'
        'rangerstation.png'
        'rangerstation.shadow.png'
        'realestate.png'
        'realestate.shadow.png'
        'recycle.png'
        'recycle.shadow.png'
        'red-dot.png'
        'red-pushpin.png'
        'red.png'
        'restaurant.png'
        'restaurant.shadow.png'
        'sailing.png'
        'sailing.shadow.png'
        'salon.png'
        'salon.shadow.png'
        'shopping.png'
        'shopping.shadow.png'
        'ski.png'
        'ski.shadow.png'
        'snack_bar.png'
        'snack_bar.shadow.png'
        'snowflake_simple.png'
        'snowflake_simple.shadow.png'
        'sportvenue.png'
        'sportvenue.shadow.png'
        'subway.png'
        'subway.shadow.png'
        'sunny.png'
        'sunny.shadow.png'
        'swimming.png'
        'swimming.shadow.png'
        'toilets.png'
        'toilets.shadow.png'
        'trail.png'
        'trail.shadow.png'
        'tram.png'
        'tram.shadow.png'
        'tree.png'
        'tree.shadow.png'
        'truck.png'
        'truck.shadow.png'
        'volcano.png'
        'volcano.shadow.png'
        'water.png'
        'water.shadow.png'
        'waterfalls.png'
        'waterfalls.shadow.png'
        'webcam.png'
        'webcam.shadow.png'
        'wheel_chair_accessible.png'
        'wheel_chair_accessible.shadow.png'
        'woman.png'
        'woman.shadow.png'
        'yellow-dot.png'
        'yellow.png'
        'yen.png'
        'yen.shadow.png'
        'ylw-pushpin.png')
      Align = alClient
      TabOrder = 2
      OnChange = ListBoxChange
      ExplicitLeft = 12
    end
  end
  object map: TUniFSMap
    Left = 280
    Top = 0
    Width = 652
    Height = 588
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
    APIKeys = UniServerModule.UniFSKeys
    Align = alClient
    ClientEvents.ExtEvents.Strings = (
      
        'resize=function resize(sender, width, height, oldWidth, oldHeigh' +
        't, eOpts) {   ajaxRequest(sender, "fs_map_resize",    [    '#39'widt' +
        'h='#39' + width,    '#39'height='#39' + height,    '#39'oldWidth='#39' + oldWidth,  ' +
        '  '#39'oldHeight='#39' + oldHeight    ]); } ')
    ExplicitLeft = 392
    ExplicitTop = 184
    ExplicitWidth = 256
    ExplicitHeight = 128
  end
end
