object frmMarcadoresComplexos: TfrmMarcadoresComplexos
  Left = 0
  Top = 0
  Width = 800
  Height = 600
  OnCreate = UniFrameCreate
  TabOrder = 0
  DesignSize = (
    800
    600)
  object map: TUniFSMap
    Left = 0
    Top = 0
    Width = 800
    Height = 600
    Hint = ''
    MapLat = '37.62162280929558'
    MapLng = '-122.1352967619896'
    MapType = ROADMAP
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ClientEvents.ExtEvents.Strings = (
      
        'resize=function resize(sender, width, height, oldWidth, oldHeigh' +
        't, eOpts) {   ajaxRequest(sender, "fs_map_resize",    [    '#39'widt' +
        'h='#39' + width,    '#39'height='#39' + height,    '#39'oldWidth='#39' + oldWidth,  ' +
        '  '#39'oldHeight='#39' + oldHeight    ]); } ')
    OnAjaxEvent = mapAjaxEvent
  end
  object pnl1: TUniPanel
    Left = 0
    Top = 44
    Width = 225
    Height = 527
    Hint = ''
    Anchors = [akLeft, akTop, akBottom]
    ParentFont = False
    Font.Height = -13
    TabOrder = 0
    ClientEvents.ExtEvents.Strings = (
      
        'beforerender=function beforerender(sender, eOpts)'#13#10'{'#13#10'  sender.s' +
        'etBodyStyle("opacity","0.9");'#13#10'}')
    BorderStyle = ubsNone
    TitleVisible = True
    Title = 'Filtros'
    Caption = ''
    Collapsible = True
    CollapseDirection = cdLeft
    Color = clMedGray
    object memLog: TUniMemo
      AlignWithMargins = True
      Left = 3
      Top = 360
      Width = 219
      Height = 164
      Hint = ''
      Lines.Strings = (
        '')
      ParentFont = False
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 1
    end
    object lbl1: TUniLabel
      Left = 0
      Top = 335
      Width = 99
      Height = 16
      Hint = ''
      Caption = 'Ajax Request Log'
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 2
    end
    object rdgAnimation: TUniRadioGroup
      Left = 117
      Top = 51
      Width = 104
      Height = 116
      Hint = ''
      Items.Strings = (
        'None'
        'Drop'
        'Bounce')
      ItemIndex = 1
      Caption = 'Anima'#231#227'o'
      TabOrder = 3
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
    end
    object chkDraggAble: TUniCheckBox
      Left = 7
      Top = 176
      Width = 97
      Height = 17
      Hint = ''
      Caption = 'DraggAble'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 4
    end
    object edtColor: TUniEdit
      Left = 43
      Top = 16
      Width = 121
      Hint = ''
      Text = '#FBBC05'
      TabOrder = 5
    end
    object lbl2: TUniLabel
      Left = 7
      Top = 19
      Width = 30
      Height = 16
      Hint = ''
      Caption = 'Color'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 6
    end
    object btnLimparMarcadores: TUniBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 307
      Width = 219
      Height = 25
      Hint = ''
      Caption = 'Limpar Marcadores'
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 7
      OnClick = btnLimparMarcadoresClick
    end
    object grpTypeMap: TUniRadioGroup
      Left = 7
      Top = 51
      Width = 104
      Height = 116
      Hint = ''
      Items.Strings = (
        'ROADMAP'
        'SATELLITE'
        'HYBRID'
        'TERRAIN')
      ItemIndex = 0
      Caption = 'Type Map'
      TabOrder = 8
      ParentFont = False
      Font.Color = clWhite
      OnClick = grpTypeMapClick
    end
    object splBottom: TUniSplitter
      Left = 0
      Top = 351
      Width = 225
      Height = 6
      Cursor = crVSplit
      Hint = ''
      Align = alBottom
      ParentColor = False
      Color = clActiveCaption
    end
  end
end
