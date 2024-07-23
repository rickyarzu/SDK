object frmPixVCL: TfrmPixVCL
  Left = 0
  Top = 0
  Caption = 'Gerador de Pix VCL'
  ClientHeight = 468
  ClientWidth = 1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  
  TextHeight = 13
  object lbl12: TLabel
    Left = 37
    Top = 79
    Width = 58
    Height = 16
    Caption = 'Chave PIX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 37
    Top = 23
    Width = 25
    Height = 16
    Caption = 'Tipo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 37
    Top = 144
    Width = 235
    Height = 16
    Caption = 'Nome do benefici'#225'rio (at'#233' 25 caracteres)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 37
    Top = 273
    Width = 91
    Height = 16
    Caption = 'Valor (opcional)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 37
    Top = 339
    Width = 310
    Height = 16
    Caption = 'C'#243'digo da transfer'#234'ncia (opcional - at'#233' 20 caracteres)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 37
    Top = 207
    Width = 241
    Height = 16
    Caption = 'Cidade do benefici'#225'rio (at'#233' 15 caracteres)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object imgPix: TImage
    Left = 387
    Top = 99
    Width = 284
    Height = 284
  end
  object lbl6: TLabel
    Left = 699
    Top = 23
    Width = 47
    Height = 16
    Caption = 'PayLoad'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 699
    Top = 224
    Width = 81
    Height = 16
    Caption = 'Image Base64'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnGenerate: TButton
    Left = 37
    Top = 406
    Width = 189
    Height = 32
    Caption = 'Gerar PIX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btnGenerateClick
  end
  object cmbTipo: TComboBox
    Left = 37
    Top = 43
    Width = 320
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 4
    ParentFont = False
    TabOrder = 0
    Text = 'Outro'
    Items.Strings = (
      'Telefone'
      'Email'
      'CPF'
      'CNPJ'
      'Outro')
  end
  object btnBaixar: TButton
    Left = 234
    Top = 406
    Width = 123
    Height = 32
    Caption = 'Baixar Imagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = btnBaixarClick
  end
  object edtBeneficiario: TEdit
    Left = 37
    Top = 163
    Width = 320
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 25
    ParentFont = False
    TabOrder = 3
    Text = 'Marlon Nardi'
  end
  object edtValor: TEdit
    Left = 37
    Top = 293
    Width = 320
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object edtIdentificador: TEdit
    Left = 37
    Top = 359
    Width = 320
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 20
    ParentFont = False
    TabOrder = 7
    Text = 'PIX0123'
  end
  object edtChave: TEdit
    Left = 37
    Top = 99
    Width = 320
    Height = 21
    TabOrder = 2
    Text = '42d6ff15-3391-4c6c-aff1-600c4612ce48'
  end
  object edtCidade: TEdit
    Left = 37
    Top = 227
    Width = 320
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 15
    ParentFont = False
    TabOrder = 4
    Text = 'Nova Mutum'
  end
  object memPayLoad: TMemo
    Left = 699
    Top = 43
    Width = 350
    Height = 166
    Lines.Strings = (
      'memPayLoad')
    TabOrder = 1
  end
  object memImageBase64: TMemo
    Left = 699
    Top = 244
    Width = 350
    Height = 194
    Lines.Strings = (
      'memPayLoad')
    TabOrder = 5
  end
end
