object frmRoute: TfrmRoute
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'frmRoute'
  TitleButtons = <>
  OnCreate = UnimFormCreate
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object btnCriarRota: TUnimBitBtn
    Left = 0
    Top = 0
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    ScreenMask.Enabled = True
    ScreenMask.WaitData = True
    ScreenMask.Message = 'Processando...'
    Caption = 'Criar Rota'
    OnClick = btnCriarRotaClick
  end
  object map: TUnimFSMap
    Left = 0
    Top = 47
    Width = 320
    Height = 369
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
  object pnlBottom: TUnimPanel
    Left = 0
    Top = 416
    Width = 320
    Height = 64
    Hint = ''
    Align = alBottom
    object lbl1: TUnimLabel
      Left = 13
      Top = 8
      Width = 93
      Height = 23
      Hint = ''
      AutoSize = False
      Caption = 'Distance'
      ParentFont = False
    end
    object lbl2: TUnimLabel
      Left = 13
      Top = 35
      Width = 93
      Height = 23
      Hint = ''
      AutoSize = False
      Caption = 'Duration'
      ParentFont = False
    end
    object lblDistance: TUnimLabel
      Left = 112
      Top = 8
      Width = 161
      Height = 23
      Hint = ''
      AutoSize = False
      Caption = 'Distance'
      ParentFont = False
      Font.Color = clHotLight
    end
    object lblDuration: TUnimLabel
      Left = 112
      Top = 35
      Width = 161
      Height = 23
      Hint = ''
      AutoSize = False
      Caption = 'Duration'
      ParentFont = False
      Font.Color = clHotLight
    end
  end
end
