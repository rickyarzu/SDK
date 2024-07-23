object frmSearchBox: TfrmSearchBox
  Left = 0
  Top = 0
  Width = 940
  Height = 665
  OnCreate = UniFrameCreate
  TabOrder = 0
  object map: TUniFSMap
    Left = 0
    Top = 0
    Width = 940
    Height = 665
    Hint = ''
    MapLat = '37.62162280929558'
    MapLng = '-122.1352967619896'
    MapType = ROADMAP
    MapControl.SearchBox = True
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
  end
end
