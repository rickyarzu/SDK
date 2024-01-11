object WebGMapsDialogForm: TWebGMapsDialogForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Marker Editor'
  ClientHeight = 584
  ClientWidth = 709
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object WebGMaps: TWebGMaps
    Left = 0
    Top = 129
    Width = 709
    Height = 403
    Align = alClient
    Clusters = <>
    Markers = <>
    Polylines = <>
    Polygons = <>
    Directions = <>
    MapOptions.DefaultLatitude = 48.859040000000000000
    MapOptions.DefaultLongitude = 2.294297000000000000
    StreetViewOptions.DefaultLatitude = 48.859040000000000000
    StreetViewOptions.DefaultLongitude = 2.294297000000000000
    MapPersist.Location = mplInifile
    MapPersist.Key = 'WebGMaps'
    MapPersist.Section = 'MapBounds'
    TabOrder = 0
    Version = '2.6.0.0'
    OnMarkerClick = WebGMapsMarkerClick
    OnMapClick = WebGMapsMapClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 709
    Height = 129
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 212
      Height = 13
      Caption = 'Click anywhere on the map to add a marker.'
    end
    object gbImportExport: TGroupBox
      Left = 335
      Top = 27
      Width = 130
      Height = 89
      Caption = 'Import / Export'
      TabOrder = 0
      object btLoadPOI: TButton
        Left = 13
        Top = 17
        Width = 100
        Height = 25
        Caption = 'Load POI File'
        TabOrder = 0
        OnClick = btLoadPOIClick
      end
      object btSavePOI: TButton
        Left = 13
        Top = 48
        Width = 100
        Height = 25
        Caption = 'Save POI File'
        TabOrder = 1
        OnClick = btSavePOIClick
      end
    end
    object gbMarkers: TGroupBox
      Left = 8
      Top = 27
      Width = 321
      Height = 89
      Caption = 'Markers'
      TabOrder = 1
      object lbMarkers: TLabel
        Left = 7
        Top = 22
        Width = 33
        Height = 13
        Caption = 'Select:'
      end
      object Label1: TLabel
        Left = 7
        Top = 49
        Width = 29
        Height = 13
        Caption = 'Color:'
      end
      object btRemoveMarker: TButton
        Left = 210
        Top = 17
        Width = 100
        Height = 25
        Caption = 'Remove marker'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btRemoveMarkerClick
      end
      object btClear: TButton
        Left = 210
        Top = 48
        Width = 100
        Height = 25
        Caption = 'Clear all markers'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btClearClick
      end
      object cbMarkerColor: TComboBox
        Left = 46
        Top = 46
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 2
        TabOrder = 2
        Text = 'Red'
        OnChange = cbMarkerColorChange
        Items.Strings = (
          'Blue'
          'Green'
          'Red'
          'Purple')
      end
      object cbMarkers: TComboBox
        Left = 46
        Top = 19
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 3
        OnChange = cbMarkersChange
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 532
    Width = 709
    Height = 52
    Align = alBottom
    TabOrder = 2
    object btOK: TButton
      Left = 495
      Top = 14
      Width = 100
      Height = 25
      Caption = 'Ok'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
      OnClick = btOKClick
    end
    object btCancel: TButton
      Left = 601
      Top = 14
      Width = 100
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      OnClick = btCancelClick
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'POI File (*.poi)|*.poi'
    Left = 488
    Top = 56
  end
  object SaveDialog1: TSaveDialog
    FileName = 'markers.poi'
    Filter = 'POI File (*.poi)|*.poi'
    Left = 568
    Top = 56
  end
end
