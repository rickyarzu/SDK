object frmPolygonDesenharObter: TfrmPolygonDesenharObter
  Left = 0
  Top = 0
  Width = 933
  Height = 622
  OnCreate = UniFrameCreate
  TabOrder = 0
  DesignSize = (
    933
    622)
  object pnlControle: TUniPanel
    Left = 0
    Top = 0
    Width = 209
    Height = 622
    Hint = ''
    Align = alLeft
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    object dbgPolygon: TUniDBGrid
      Left = 0
      Top = 60
      Width = 209
      Height = 562
      Hint = ''
      DataSource = DS
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      Align = alClient
      TabOrder = 2
      OnCellClick = dbgPolygonCellClick
      Columns = <
        item
          FieldName = 'NomePolygon'
          Title.Caption = 'Nome Polygon'
          Width = 188
        end>
    end
    object pnl1: TUniPanel
      Left = 0
      Top = 0
      Width = 209
      Height = 60
      Hint = ''
      Align = alTop
      TabOrder = 1
      BorderStyle = ubsNone
      Caption = ''
      object btnNovoPolygon: TUniFSButton
        Left = 9
        Top = 15
        Width = 192
        Height = 30
        Hint = ''
        StyleButton = GoogleBlue
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'NEW POLYGON'
        ParentFont = False
        Font.Name = 'Roboto'
        TabOrder = 1
        OnClick = btnNovoPolygonClick
      end
    end
  end
  object map: TUniFSMap
    Left = 209
    Top = 0
    Width = 724
    Height = 622
    Hint = ''
    MapLat = '37.62162280929558'
    MapLng = '-122.1352967619896'
    MapType = ROADMAP
    MapControl.SearchBox = False
    MapControl.SearchBoxText = 'Pesquisar'
    MapControl.OverlayActive = False
    MapControl.DrawingTool = True
    MapControl.FullScreenControl = False
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
    OnAjaxEvent = mapAjaxEvent
  end
  object pnlBotoes: TUniPanel
    Left = 568
    Top = 555
    Width = 284
    Height = 46
    Hint = ''
    Anchors = [akRight, akBottom]
    TabOrder = 2
    BorderStyle = ubsNone
    Caption = ''
    Draggable.Enabled = True
    DesignSize = (
      284
      46)
    object btnSalvar: TUniFSButton
      Left = 148
      Top = 8
      Width = 125
      Height = 30
      Hint = 'Salva as informa'#231#245'es'
      StyleButton = GoogleGreen
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'SALVAR'
      Anchors = [akTop, akRight]
      TabOrder = 2
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Processando, por favor aguarde...'
      OnClick = btnSalvarClick
    end
    object btnDeletarDesenho: TUniFSButton
      Left = 11
      Top = 8
      Width = 125
      Height = 30
      Hint = ''
      StyleButton = GoogleDanger
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'DELETAR DESENHO'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Name = 'Roboto'
      TabOrder = 1
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Processando, por favor aguarde...'
      OnClick = btnDeletarDesenhoClick
    end
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 128
    object sfCDSNomePolygon: TStringField
      DisplayLabel = 'Nome Polygon'
      FieldName = 'NomePolygon'
      Size = 100
    end
    object sfCDSPolygon: TStringField
      FieldName = 'Polygon'
      Size = 5000
    end
  end
  object DS: TDataSource
    DataSet = CDS
    OnDataChange = DSDataChange
    Left = 120
    Top = 128
  end
end
