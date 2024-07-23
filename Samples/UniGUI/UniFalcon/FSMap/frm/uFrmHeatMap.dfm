object frmHeatMap: TfrmHeatMap
  Left = 0
  Top = 0
  Width = 959
  Height = 711
  OnCreate = UniFrameCreate
  TabOrder = 0
  object map: TUniFSMap
    Left = 350
    Top = 0
    Width = 609
    Height = 711
    Hint = ''
    MapZoom = 13
    MapLat = '37.78283630963726'
    MapLng = '-122.41950441332999'
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
    APIKeys = UniServerModule.APIKeys
    Align = alClient
    ClientEvents.ExtEvents.Strings = (
      
        'resize=function resize(sender, width, height, oldWidth, oldHeigh' +
        't, eOpts) {   ajaxRequest(sender, "fs_map_resize",    [    '#39'widt' +
        'h='#39' + width,    '#39'height='#39' + height,    '#39'oldWidth='#39' + oldWidth,  ' +
        '  '#39'oldHeight='#39' + oldHeight    ]); } ')
  end
  object pnlControle: TUniPanel
    Left = 0
    Top = 0
    Width = 350
    Height = 711
    Hint = ''
    Align = alLeft
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    object dbg: TUniDBGrid
      Left = 0
      Top = 0
      Width = 350
      Height = 608
      Hint = ''
      DataSource = DS
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      BorderStyle = ubsNone
      Align = alClient
      TabOrder = 0
      Columns = <
        item
          FieldName = 'Latitude'
          Title.Caption = 'Latitude'
          Width = 94
        end
        item
          FieldName = 'Longitude'
          Title.Caption = 'Longitude'
          Width = 91
        end>
    end
    object pnl1: TUniPanel
      Left = 0
      Top = 608
      Width = 350
      Height = 103
      Hint = ''
      Align = alBottom
      TabOrder = 2
      BorderStyle = ubsNone
      Caption = ''
      object btnCriaHeatMap: TUniFSButton
        Left = 56
        Top = 53
        Width = 225
        Height = 30
        Hint = ''
        StyleButton = GoogleBlue
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'CREATE HEATMAP'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        TabOrder = 3
        OnClick = btnCriaHeatMapClick
      end
      object edtOpacity: TUniNumberEdit
        Left = 176
        Top = 13
        Width = 105
        Height = 28
        Hint = '0,1 to 1'
        ShowHint = True
        ParentShowHint = False
        ParentFont = False
        Font.Height = -13
        TabOrder = 1
        Value = 1.000000000000000000
        DecimalSeparator = ','
      end
      object lbl1: TUniLabel
        Left = 123
        Top = 19
        Width = 44
        Height = 17
        Hint = ''
        Caption = 'Opacity'
        ParentFont = False
        Font.Height = -13
        TabOrder = 2
      end
    end
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 128
    object strngfldCDSLat: TStringField
      FieldName = 'Latitude'
      Size = 100
    end
    object strngfldCDSLongitude: TStringField
      FieldName = 'Longitude'
    end
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 192
    Top = 128
  end
end
