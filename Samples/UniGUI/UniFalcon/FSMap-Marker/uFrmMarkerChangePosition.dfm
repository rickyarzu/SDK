object frmMarkerChangePosition: TfrmMarkerChangePosition
  Left = 0
  Top = 0
  ClientHeight = 576
  ClientWidth = 1012
  Caption = 'frmMarkerChangePosition'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  TextHeight = 13
  object map: TUniFSMap
    Left = 353
    Top = 0
    Width = 659
    Height = 576
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
  end
  object pnl1: TUniPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 576
    Hint = ''
    Align = alLeft
    TabOrder = 1
    Caption = 'pnl1'
    object lbl1: TUniLabel
      Left = 11
      Top = 64
      Width = 173
      Height = 16
      Hint = ''
      Caption = 'Change single marker position'
      ParentFont = False
      Font.Height = -13
      TabOrder = 1
    end
    object dbg: TUniDBGrid
      AlignWithMargins = True
      Left = 11
      Top = 101
      Width = 331
      Height = 469
      Hint = ''
      Margins.Left = 10
      Margins.Top = 100
      Margins.Right = 10
      Margins.Bottom = 5
      Enabled = False
      DataSource = DS
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alClient
      TabOrder = 2
      OnBodyClick = dbgBodyClick
      Columns = <
        item
          FieldName = 'idMarker'
          Title.Caption = 'IdMaker'
          Width = 55
        end
        item
          FieldName = 'Latitude'
          Title.Caption = 'Latitude'
          Width = 128
        end
        item
          FieldName = 'Longitude'
          Title.Caption = 'Longitude'
          Width = 128
        end>
    end
    object btnCriaMarcadores: TUniFSButton
      Left = 61
      Top = 20
      Width = 225
      Height = 30
      Hint = ''
      StyleButton = GoogleBlue
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'CREATE MARKERS FIXED'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      TabOrder = 3
      OnClick = btnCriaMarcadoresClick
    end
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 176
    object intgrfldCDSid: TIntegerField
      FieldName = 'idMarker'
    end
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
    Top = 176
  end
end
