object frmMarcadores: TfrmMarcadores
  Left = 0
  Top = 0
  Width = 1004
  Height = 693
  OnCreate = UniFrameCreate
  TabOrder = 0
  object map: TUniFSMap
    Left = 350
    Top = 0
    Width = 654
    Height = 693
    Hint = ''
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
    Height = 693
    Hint = ''
    Align = alLeft
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    object dbgPolygon: TUniDBGrid
      Left = 0
      Top = 0
      Width = 350
      Height = 633
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
          FieldName = 'id'
          Title.Caption = 'id'
          Width = 64
          Visible = False
        end
        item
          FieldName = 'Nome'
          Title.Caption = 'Nome'
          Width = 147
        end
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
      Top = 633
      Width = 350
      Height = 60
      Hint = ''
      Align = alBottom
      TabOrder = 2
      BorderStyle = ubsNone
      Caption = ''
      object btnCriaMarcadores: TUniFSButton
        Left = 56
        Top = 6
        Width = 225
        Height = 30
        Hint = ''
        StyleButton = GoogleBlue
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'CREATE MARKERS'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        TabOrder = 1
        OnClick = btnCriaMarcadoresClick
      end
    end
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 128
    object intgrfldCDSid: TIntegerField
      FieldName = 'id'
    end
    object strngfldCDSNome: TStringField
      FieldName = 'Nome'
    end
    object dtfldCDSCriacao: TDateField
      FieldName = 'Criacao'
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
    Top = 128
  end
end
