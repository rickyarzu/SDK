object frmMarcadoresSimples: TfrmMarcadoresSimples
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'frmMarcadoresSimples'
  TitleButtons = <>
  OnCreate = UnimFormCreate
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object sgb1: TUnimSegmentedButton
    Left = 0
    Top = 0
    Width = 320
    Height = 47
    Hint = ''
    Items = <
      item
        Caption = 'ROAD'
        ButtonId = 0
      end
      item
        Caption = 'SAT'
        ButtonId = 1
      end
      item
        Caption = 'HYB'
        ButtonId = 2
      end
      item
        Caption = 'TER'
        ButtonId = 3
      end>
    OnClick = sgb1Click
    Align = alTop
    ScreenMask.Enabled = True
    ScreenMask.Message = 'Processando...'
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
      
        'resize=function resize(sender, eOpts)'#13#10'{'#13#10'  ajaxRequest(sender, ' +
        '"fs_map_resize", []);'#13#10'}')
  end
end
