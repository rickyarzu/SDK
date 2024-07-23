object frmGeocode: TfrmGeocode
  Left = 0
  Top = 0
  Width = 1014
  Height = 725
  OnCreate = UniFrameCreate
  TabOrder = 0
  object pnlSearch: TUniPanel
    Left = 0
    Top = 0
    Width = 1014
    Height = 167
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    DesignSize = (
      1014
      167)
    object lbl1: TUniLabel
      Left = 16
      Top = 14
      Width = 1263
      Height = 13
      Hint = ''
      TextConversion = txtHTML
      Caption = 
        'Exemplos de Pesquisa: <br><br><b>address=Av. Hist. Rubens de Men' +
        'don'#231'a, 3415, Jardim Aclimacao, Cuiab'#225', MT </b><br> ou <br><b>lat' +
        'lng=-15.5740948,-56.0738311</b> <br> ou <br><b>place_id=ChIJc8Q6' +
        '3gCxnZMRRKQ64nNycWw</b> '
      ParentFont = False
      Font.Height = -12
      TabOrder = 1
    end
    object edtSearch: TUniEdit
      Left = 16
      Top = 124
      Width = 860
      Height = 30
      Hint = ''
      Text = 
        'address=Av. Hist. Rubens de Mendon'#231'a, 3415, Jardim Aclimacao, Cu' +
        'iab'#225', MT'
      ParentFont = False
      Font.Height = -13
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
    end
    object btnSearch: TUniFSButton
      Left = 887
      Top = 124
      Width = 114
      Height = 30
      Hint = ''
      StyleButton = GoogleBlue
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Search'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 3
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Realizando buscas...'
      OnClick = btnSearchClick
    end
  end
  object pgcMaster: TUniPageControl
    Left = 0
    Top = 167
    Width = 1014
    Height = 558
    Hint = ''
    ActivePage = tabMap
    Align = alClient
    TabOrder = 1
    object tabMap: TUniTabSheet
      Hint = ''
      Caption = 'Map'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object map: TUniFSMap
        Left = 0
        Top = 0
        Width = 1006
        Height = 530
        Hint = ''
        MapZoom = 10
        MapLat = '37.62162280929558'
        MapLng = '-122.1352967619896'
        MapType = HYBRID
        MapControl.SearchBox = False
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
    object tabAdress: TUniTabSheet
      Hint = ''
      Caption = 'Adress'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object lbl2: TUniLabel
        Left = 12
        Top = 16
        Width = 89
        Height = 17
        Hint = ''
        Caption = 'Street Number:'
        ParentFont = False
        Font.Height = -13
        TabOrder = 0
      end
      object lblStreetNumber: TUniLabel
        Left = 204
        Top = 16
        Width = 23
        Height = 17
        Hint = ''
        Caption = 'lbl2'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 1
      end
      object lbl4: TUniLabel
        Left = 12
        Top = 48
        Width = 37
        Height = 17
        Hint = ''
        Caption = 'Route:'
        ParentFont = False
        Font.Height = -13
        TabOrder = 2
      end
      object lbl5: TUniLabel
        Left = 12
        Top = 82
        Width = 46
        Height = 17
        Hint = ''
        Caption = 'Locality:'
        ParentFont = False
        Font.Height = -13
        TabOrder = 4
      end
      object lbl6: TUniLabel
        Left = 12
        Top = 122
        Width = 160
        Height = 17
        Hint = ''
        Caption = 'Administrative Area Level 2:'
        ParentFont = False
        Font.Height = -13
        TabOrder = 6
      end
      object lbl7: TUniLabel
        Left = 12
        Top = 162
        Width = 160
        Height = 17
        Hint = ''
        Caption = 'Administrative Area Level 1:'
        ParentFont = False
        Font.Height = -13
        TabOrder = 8
      end
      object lbl8: TUniLabel
        Left = 12
        Top = 202
        Width = 109
        Height = 17
        Hint = ''
        Caption = 'Sublocality Level 1:'
        ParentFont = False
        Font.Height = -13
        TabOrder = 10
      end
      object lbl9: TUniLabel
        Left = 12
        Top = 241
        Width = 48
        Height = 17
        Hint = ''
        Caption = 'Country:'
        ParentFont = False
        Font.Height = -13
        TabOrder = 12
      end
      object lbl10: TUniLabel
        Left = 12
        Top = 281
        Width = 73
        Height = 17
        Hint = ''
        Caption = 'Postal Code:'
        ParentFont = False
        Font.Height = -13
        TabOrder = 14
      end
      object lbl11: TUniLabel
        Left = 12
        Top = 321
        Width = 20
        Height = 17
        Hint = ''
        Caption = 'Lat:'
        ParentFont = False
        Font.Height = -13
        TabOrder = 16
      end
      object lbl12: TUniLabel
        Left = 12
        Top = 361
        Width = 24
        Height = 17
        Hint = ''
        Caption = 'Lng:'
        ParentFont = False
        Font.Height = -13
        TabOrder = 18
      end
      object lbl13: TUniLabel
        Left = 12
        Top = 401
        Width = 49
        Height = 17
        Hint = ''
        Caption = 'Place ID:'
        ParentFont = False
        Font.Height = -13
        TabOrder = 20
      end
      object lblRoute: TUniLabel
        Left = 204
        Top = 48
        Width = 23
        Height = 17
        Hint = ''
        Caption = 'lbl2'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 3
      end
      object lblLocality: TUniLabel
        Left = 204
        Top = 82
        Width = 23
        Height = 17
        Hint = ''
        Caption = 'lbl2'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 5
      end
      object lblAdministrativeLvl1: TUniLabel
        Left = 204
        Top = 162
        Width = 23
        Height = 17
        Hint = ''
        Caption = 'lbl2'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 9
      end
      object lblAdministrativeLvl2: TUniLabel
        Left = 204
        Top = 122
        Width = 23
        Height = 17
        Hint = ''
        Caption = 'lbl2'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 7
      end
      object lblSublocality1: TUniLabel
        Left = 204
        Top = 202
        Width = 23
        Height = 17
        Hint = ''
        Caption = 'lbl2'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 11
      end
      object lblCountry: TUniLabel
        Left = 204
        Top = 241
        Width = 23
        Height = 17
        Hint = ''
        Caption = 'lbl2'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 13
      end
      object lblPostalCode: TUniLabel
        Left = 204
        Top = 281
        Width = 23
        Height = 17
        Hint = ''
        Caption = 'lbl2'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 15
      end
      object lblLat: TUniLabel
        Left = 204
        Top = 321
        Width = 23
        Height = 17
        Hint = ''
        Caption = 'lbl2'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 17
      end
      object lblLng: TUniLabel
        Left = 204
        Top = 361
        Width = 23
        Height = 17
        Hint = ''
        Caption = 'lbl2'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 19
      end
      object lblPlaceId: TUniLabel
        Left = 204
        Top = 401
        Width = 23
        Height = 17
        Hint = ''
        Caption = 'lbl2'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 21
      end
      object lbl3: TUniLabel
        Left = 12
        Top = 435
        Width = 112
        Height = 17
        Hint = ''
        Caption = 'Formatted Address'
        ParentFont = False
        Font.Height = -13
        TabOrder = 22
      end
      object lblFormattedAddress: TUniLabel
        Left = 204
        Top = 435
        Width = 23
        Height = 17
        Hint = ''
        Caption = 'lbl2'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 23
      end
    end
    object tabJson: TUniTabSheet
      Hint = ''
      Caption = 'JSON'
      object memSyn: TUniMemo
        Left = 0
        Top = 0
        Width = 1006
        Height = 528
        Hint = ''
        Align = alClient
        TabOrder = 0
      end
    end
  end
end
