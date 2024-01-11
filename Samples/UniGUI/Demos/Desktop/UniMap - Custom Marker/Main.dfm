object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 649
  ClientWidth = 889
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel2: TUniPanel
    Left = 305
    Top = 0
    Width = 584
    Height = 649
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = 'UniPanel2'
    object UniMap1: TUniMap
      Left = 1
      Top = 1
      Width = 582
      Height = 387
      Hint = ''
      DefaultLat = 39.164141000000000000
      DefaultLong = 35.068359000000000000
      DefaultZoom = 6
      MapLayers = <
        item
          Subdomains = 'abc'
          Attribution = 
            '<b>uniMAP</b> <a target="_blank" href="http://www.unigui.com">Un' +
            'iGUI</a>'
          Bounds.Corner1Lat = 44.985151000000000000
          Bounds.Corner1Long = 23.207760000000000000
          Bounds.Corner2Lat = 35.462370000000000000
          Bounds.Corner2Long = 45.892784000000000000
          LayerType = mlGoogle
          Caption = 'Google'
        end
        item
          Subdomains = 'abc'
          Caption = 'Osm'
        end
        item
          Subdomains = 'abc'
          LayerType = mlGoogle
          MapType = mtTraffic
          Caption = 'GoogleTRAFFIC'
        end
        item
          Subdomains = 'abc'
          LayerType = mlYandex
          Caption = 'Yandex'
        end
        item
          Subdomains = 'abc'
          LayerType = mlYandex
          MapType = mtTraffic
          Caption = 'YandexTraffic'
        end
        item
          Subdomains = 'abc'
          LayerType = mlGoogle
          MapType = mtHybrid
          Caption = 'Google Hybrid'
        end
        item
          Subdomains = 'abc'
          LayerType = mlGoogle
          MapType = mtTerrain
          Caption = 'Google Terrain'
        end
        item
          Subdomains = 'abc'
          LayerType = mlYandex
          MapType = mtHybrid
          Caption = 'Yandex Hybrid'
        end
        item
          Subdomains = 'abc'
          LayerType = mlCustom
          Caption = 'Custom Tile Layer'
          OnCustomLayerUrl = UniMap1MapLayers8CustomLayerUrl
        end>
      MapControlOptions.Collapsed = False
      MapControlOptions.SortLayers = True
      OnMapClick = UniMap1MapClick
      OnMapRightClick = UniMap1MapRightClick
      OnLocationFound = UniMap1LocationFound
      OnMarkerClick = UniMap1MarkerClick
      OnVectorClick = UniMap1VectorClick
      Align = alClient
      OnAjaxEvent = UniMap1AjaxEvent
    end
    object UniMemo1: TUniMemo
      Left = 1
      Top = 388
      Width = 582
      Height = 260
      Hint = ''
      ScrollBars = ssBoth
      Align = alBottom
      TabOrder = 2
    end
  end
  object UniPageControl1: TUniPageControl
    Left = 0
    Top = 0
    Width = 305
    Height = 649
    Hint = ''
    ActivePage = UniTabSheet2
    Align = alLeft
    TabOrder = 1
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Map Options'
      object UniPanel1: TUniPanel
        Left = 0
        Top = 0
        Width = 297
        Height = 621
        Hint = ''
        Align = alClient
        TabOrder = 0
        Caption = ''
        object UniButton1: TUniButton
          Left = 171
          Top = 5
          Width = 83
          Height = 22
          Hint = ''
          Caption = 'SetZoom'
          TabOrder = 1
          OnClick = UniButton1Click
        end
        object UniNumberEdit1: TUniNumberEdit
          Left = 3
          Top = 5
          Width = 165
          Hint = ''
          TabOrder = 2
          Value = 8.000000000000000000
          FieldLabel = 'Zoom'
          FieldLabelWidth = 50
          DecimalSeparator = ','
        end
        object UniFormattedNumberEdit1: TUniFormattedNumberEdit
          Left = 3
          Top = 33
          Width = 165
          Hint = ''
          TabOrder = 3
          Value = 43.642752000000000000
          FieldLabel = 'Lat'
          FieldLabelWidth = 50
          DecimalPrecision = 10
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniFormattedNumberEdit2: TUniFormattedNumberEdit
          Left = 3
          Top = 61
          Width = 165
          Hint = ''
          TabOrder = 4
          Value = -79.386938000000000000
          FieldLabel = 'Lng'
          FieldLabelWidth = 50
          DecimalPrecision = 10
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniButton2: TUniButton
          Left = 171
          Top = 33
          Width = 83
          Height = 50
          Hint = ''
          Caption = 'SetView'
          TabOrder = 5
          OnClick = UniButton2Click
        end
        object UniNumberEdit2: TUniNumberEdit
          Left = 3
          Top = 89
          Width = 165
          Hint = ''
          TabOrder = 6
          Value = 2.000000000000000000
          FieldLabel = 'Delta'
          FieldLabelWidth = 50
          DecimalSeparator = ','
        end
        object UniButton3: TUniButton
          Left = 171
          Top = 89
          Width = 83
          Height = 22
          Hint = ''
          Caption = 'Zoom In'
          TabOrder = 7
          OnClick = UniButton3Click
        end
        object UniButton4: TUniButton
          Left = 171
          Top = 117
          Width = 83
          Height = 22
          Hint = ''
          Caption = 'Zoom Out'
          TabOrder = 8
          OnClick = UniButton4Click
        end
        object UniNumberEdit3: TUniNumberEdit
          Left = 3
          Top = 117
          Width = 165
          Hint = ''
          TabOrder = 9
          Value = 2.000000000000000000
          FieldLabel = 'Delta'
          FieldLabelWidth = 50
          DecimalSeparator = ','
        end
        object UniFormattedNumberEdit3: TUniFormattedNumberEdit
          Left = 3
          Top = 145
          Width = 165
          Hint = ''
          TabOrder = 10
          Value = 50.446056000000000000
          FieldLabel = 'Lat'
          FieldLabelWidth = 50
          DecimalPrecision = 10
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniFormattedNumberEdit4: TUniFormattedNumberEdit
          Left = 3
          Top = 173
          Width = 165
          Hint = ''
          TabOrder = 11
          Value = 30.532313000000000000
          FieldLabel = 'Lng'
          FieldLabelWidth = 50
          DecimalPrecision = 10
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniButton5: TUniButton
          Left = 171
          Top = 145
          Width = 83
          Height = 50
          Hint = ''
          Caption = 'FlyTo'
          TabOrder = 12
          OnClick = UniButton5Click
        end
        object UniButton6: TUniButton
          Left = 3
          Top = 201
          Width = 248
          Height = 25
          Hint = ''
          Caption = 'Get User Location'
          TabOrder = 13
          OnClick = UniButton6Click
        end
        object UniDBGrid1: TUniDBGrid
          Left = 3
          Top = 232
          Width = 291
          Height = 353
          Hint = ''
          DataSource = DataSource1
          LoadMask.Message = 'Loading data...'
          TabOrder = 14
          OnCellClick = UniDBGrid1CellClick
        end
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Marker'
      object UniFormattedNumberEdit5: TUniFormattedNumberEdit
        Left = 11
        Top = 17
        Width = 200
        Hint = ''
        TabOrder = 0
        Value = 38.736946065676030000
        FieldLabel = 'Lat'
        FieldLabelWidth = 50
        DecimalPrecision = 10
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object UniFormattedNumberEdit6: TUniFormattedNumberEdit
        Left = 11
        Top = 45
        Width = 200
        Hint = ''
        TabOrder = 1
        Value = 27.598144531250000000
        FieldLabel = 'Lng'
        FieldLabelWidth = 50
        DecimalPrecision = 10
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object UniEdit1: TUniEdit
        Left = 11
        Top = 73
        Width = 200
        Hint = ''
        Text = 'files/images/marker-icon.png'
        TabOrder = 2
        FieldLabel = 'iconUrl'
        FieldLabelWidth = 50
      end
      object UniButton7: TUniButton
        Left = 11
        Top = 219
        Width = 200
        Height = 25
        Hint = ''
        Caption = 'Add Custom Marker'
        TabOrder = 3
        OnClick = UniButton7Click
      end
      object UniCheckBox2: TUniCheckBox
        Left = 11
        Top = 132
        Width = 97
        Height = 17
        Hint = ''
        Caption = 'Draggable'
        TabOrder = 4
      end
      object UniNumberEdit4: TUniNumberEdit
        Left = 11
        Top = 101
        Width = 200
        Hint = ''
        TabOrder = 5
        FieldLabel = 'Id'
        FieldLabelWidth = 50
        DecimalSeparator = ','
      end
      object UniEdit4: TUniEdit
        Left = 11
        Top = 155
        Width = 200
        Hint = ''
        Text = '8'
        TabOrder = 6
        FieldLabel = 'Custom Marker Number'
        FieldLabelWidth = 50
      end
      object UniComboBox1: TUniComboBox
        Left = 11
        Top = 185
        Width = 200
        Hint = ''
        Text = 'UniComboBox1'
        Items.Strings = (
          'blue'
          'red'
          'green')
        ItemIndex = 0
        TabOrder = 7
        FieldLabel = 'Custom Marker Color'
        FieldLabelWidth = 50
        IconItems = <>
      end
    end
    object UniTabSheet3: TUniTabSheet
      Hint = ''
      Caption = 'Vector'
      object UniColorButton1: TUniColorButton
        Left = 3
        Top = 14
        Width = 78
        Height = 25
        Hint = ''
        Color = clBlack
        Caption = 'StrokeColor'
        OnSelect = UniColorButton1Select
      end
      object UniNumberEdit5: TUniNumberEdit
        Left = 3
        Top = 45
        Width = 165
        Hint = ''
        TabOrder = 1
        Value = 3.000000000000000000
        FieldLabel = 'weight'
        FieldLabelWidth = 50
        DecimalSeparator = ','
      end
      object UniNumberEdit6: TUniNumberEdit
        Left = 3
        Top = 73
        Width = 165
        Hint = ''
        TabOrder = 2
        Value = 1.000000000000000000
        FieldLabel = 'opacity'
        FieldLabelWidth = 50
        DecimalSeparator = ','
      end
      object UniColorButton2: TUniColorButton
        Left = 3
        Top = 101
        Width = 78
        Height = 25
        Hint = ''
        Color = clBlack
        Caption = 'FillColor'
        OnSelect = UniColorButton2Select
      end
      object UniNumberEdit7: TUniNumberEdit
        Left = 3
        Top = 132
        Width = 165
        Hint = ''
        TabOrder = 4
        Value = 0.200000000000000000
        FieldLabel = 'fill opacity'
        FieldLabelWidth = 80
        DecimalSeparator = ','
      end
      object UniButton8: TUniButton
        Left = 3
        Top = 188
        Width = 162
        Height = 25
        Hint = ''
        Caption = 'Add Polyline'
        TabOrder = 5
        OnClick = UniButton8Click
      end
      object UniEdit2: TUniEdit
        Left = 80
        Top = 14
        Width = 88
        Height = 25
        Hint = ''
        Text = ''
        TabOrder = 6
      end
      object UniEdit3: TUniEdit
        Left = 80
        Top = 101
        Width = 88
        Height = 25
        Hint = ''
        Text = ''
        TabOrder = 7
      end
      object UniNumberEdit8: TUniNumberEdit
        Left = 3
        Top = 160
        Width = 165
        Hint = ''
        TabOrder = 8
        Value = 50000.000000000000000000
        FieldLabel = 'radius'
        FieldLabelWidth = 50
        DecimalSeparator = ','
      end
      object UniButton9: TUniButton
        Left = 3
        Top = 219
        Width = 162
        Height = 25
        Hint = ''
        Caption = 'Add Polygon'
        TabOrder = 9
        OnClick = UniButton9Click
      end
      object UniButton10: TUniButton
        Left = 3
        Top = 250
        Width = 162
        Height = 25
        Hint = ''
        Caption = 'Add Rectangle'
        TabOrder = 10
        OnClick = UniButton10Click
      end
      object UniButton11: TUniButton
        Left = 3
        Top = 281
        Width = 162
        Height = 25
        Hint = ''
        Caption = 'Add Circle'
        TabOrder = 11
        OnClick = UniButton11Click
      end
      object UniButton12: TUniButton
        Left = 3
        Top = 312
        Width = 162
        Height = 25
        Hint = ''
        Caption = 'Add CircleMarker'
        TabOrder = 12
        OnClick = UniButton12Click
      end
      object UniButton13: TUniButton
        Left = 3
        Top = 380
        Width = 162
        Height = 25
        Hint = ''
        Caption = 'Clear All Polylines'
        TabOrder = 13
        OnClick = UniButton13Click
      end
      object UniButton14: TUniButton
        Left = 3
        Top = 413
        Width = 162
        Height = 25
        Hint = ''
        Caption = 'Clear All Polygons'
        TabOrder = 14
        OnClick = UniButton14Click
      end
      object UniButton15: TUniButton
        Left = 3
        Top = 475
        Width = 162
        Height = 25
        Hint = ''
        Caption = 'Clear All Circles'
        TabOrder = 15
        OnClick = UniButton15Click
      end
      object UniButton16: TUniButton
        Left = 3
        Top = 444
        Width = 162
        Height = 25
        Hint = ''
        Caption = 'Clear All Rectangles'
        TabOrder = 16
        OnClick = UniButton16Click
      end
      object UniButton17: TUniButton
        Left = 3
        Top = 506
        Width = 162
        Height = 25
        Hint = ''
        Caption = 'Clear All CircleMarkers'
        TabOrder = 17
        OnClick = UniButton17Click
      end
    end
  end
  object UniPopupMenu1: TUniPopupMenu
    Left = 736
    Top = 280
    object a1: TUniMenuItem
      Caption = 'Add Marker'
      OnClick = a1Click
    end
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      560000009619E0BD010000001800000003000000000003000000560004436974
      790100490000000100055749445448020002001400094C6F6E67697475646508
      00040000000000086C6174697475646508000400000000000000}
    Active = True
    Aggregates = <>
    IndexFieldNames = 'City'
    Params = <>
    Left = 440
    Top = 152
    object ClientDataSet1City: TStringField
      DisplayWidth = 16
      FieldName = 'City'
    end
    object ClientDataSet1Longitude: TFloatField
      DisplayWidth = 11
      FieldName = 'Longitude'
    end
    object ClientDataSet1latitude: TFloatField
      DisplayWidth = 12
      FieldName = 'latitude'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 456
    Top = 208
  end
end
