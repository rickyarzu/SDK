object frmFinCapPainelPagamento: TfrmFinCapPainelPagamento
  Left = 0
  Top = 0
  Width = 1053
  Height = 623
  OnCreate = UniFrameCreate
  TabOrder = 0
  object pnl1: TUniPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1047
    Height = 57
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    object btn1: TUniFSButton
      Left = 13
      Top = 10
      Width = 188
      Height = 34
      Hint = ''
      StyleButton = GoogleBlue3
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Nova Despesa'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 1
      OnClick = btn1Click
    end
  end
  object dbg1: TUniDBGrid
    Left = 0
    Top = 63
    Width = 1053
    Height = 560
    Hint = ''
    DataSource = DS
    LoadMask.Message = 'Loading data...'
    Images = dmImagens.imglFA
    RowHeight = 40
    EmptyText = 'Sem lan'#231'amentos informados'
    ForceFit = True
    LayoutConfig.Padding = '0 10 0 10'
    Align = alClient
    TabOrder = 1
    OnCellClick = dbg1CellClick
    Columns = <
      item
        FieldName = 'Ativo'
        Title.Alignment = taCenter
        Title.Caption = '<i class="fa fa-lg fa-chevron-down"></i>'
        Width = 56
      end
      item
        FieldName = 'Documento'
        Title.Caption = 'Documento'
        Width = 89
      end
      item
        FieldName = 'Descricao'
        Title.Caption = 'Descricao'
        Width = 238
      end
      item
        FieldName = 'Fornecedor'
        Title.Caption = 'Fornecedor'
        Width = 266
      end
      item
        FieldName = 'Vencimento'
        Title.Caption = 'Vencimento'
        Width = 112
      end
      item
        FieldName = 'Pago'
        Title.Caption = 'Pago'
        Width = 79
      end
      item
        FieldName = 'Valor'
        Title.Caption = 'Valor'
        Width = 88
      end
      item
        FieldName = 'Editar'
        Title.Alignment = taCenter
        Title.Caption = '<i class="fa fa-lg fa-chevron-down"></i>'
        Width = 44
        Alignment = taCenter
      end
      item
        FieldName = 'Excluir'
        Title.Alignment = taCenter
        Title.Caption = '<i class="fa fa-lg fa-chevron-down"></i>'
        Width = 48
        Alignment = taCenter
      end>
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 520
    Top = 288
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 288
    object strngfldCDSAtivo: TStringField
      Alignment = taCenter
      DisplayWidth = 11
      FieldName = 'Ativo'
      OnGetText = strngfldCDSAtivoGetText
      Size = 10
    end
    object intgrfldCDSDocumento: TIntegerField
      DisplayWidth = 10
      FieldName = 'Documento'
    end
    object strngfldCDSDescricao: TStringField
      DisplayWidth = 37
      FieldName = 'Descricao'
      Size = 100
    end
    object strngfldCDSFornecedor: TStringField
      DisplayWidth = 42
      FieldName = 'Fornecedor'
      Size = 100
    end
    object dtmfldCDSVencimento: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Vencimento'
    end
    object strngfldCDSPago: TStringField
      DisplayWidth = 10
      FieldName = 'Pago'
      Size = 10
    end
    object fltfldCDSValor: TFloatField
      FieldName = 'Valor'
      currency = True
    end
    object strngfldCDSEditar: TStringField
      FieldKind = fkCalculated
      FieldName = 'Editar'
      OnGetText = strngfldCDSEditarGetText
      Calculated = True
    end
    object strngfldCDSExcluir: TStringField
      FieldKind = fkCalculated
      FieldName = 'Excluir'
      OnGetText = strngfldCDSExcluirGetText
      Calculated = True
    end
  end
  object Confirm: TUniFSConfirm
    Theme = modern
    TypeColor = blue
    TypeAnimated = False
    Draggable = False
    EscapeKey = False
    CloseIcon = False
    Icon = 'fa fa-smile-o'
    RTL = False
    boxWidth = '420px'
    BackgroundDismiss = False
    ButtonTextConfirm = 'Confirma'
    ButtonTextCancel = 'Cancela'
    ButtonTextOther = 'Outro'
    ButtonTextOK = 'Ok'
    ButtonEnterConfirm = True
    ScreenMask.Enabled = False
    ScreenMask.Text = 'Processing'
    PromptType.TypePrompt = text
    PromptType.RequiredField = False
    PromptType.TextRequiredField = 'Field riquired'
    PromptType.CharCase = Normal_
    Left = 592
    Top = 288
  end
end
