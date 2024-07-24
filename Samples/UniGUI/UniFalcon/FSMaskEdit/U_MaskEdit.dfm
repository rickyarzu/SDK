object frmMask: TfrmMask
  Left = 0
  Top = 0
  Width = 414
  Height = 362
  TabOrder = 0
  object btnResult: TUniBitBtn
    Left = 153
    Top = 284
    Width = 113
    Height = 28
    Hint = ''
    Caption = 'Apresentar'
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -13
    TabOrder = 0
    OnClick = btnResultClick
  end
  object edtResult: TUniFSMaskEdit
    Left = 110
    Top = 215
    Width = 201
    Height = 28
    Hint = ''
    Mask = '999.999.999-99'
    MaskUnMask = False
    Alignment = taCenter
    Text = ''
    ParentFont = False
    Font.Height = -16
    TabOrder = 1
  end
  object grpMask: TUniRadioGroup
    Left = 24
    Top = 27
    Width = 361
    Height = 150
    Hint = ''
    Items.Strings = (
      'Mascara CPF'
      'Mascara CNPJ'
      'Mascara CEP'
      'Mascara IP'
      'Sem Mascara')
    ItemIndex = 0
    Caption = 'Mascara em tempo de execu'#231#227'o'
    TabOrder = 2
    ParentFont = False
    Font.Height = -13
    OnClick = grpMaskClick
  end
  object chkMskUnMask: TUniCheckBox
    Left = 164
    Top = 255
    Width = 97
    Height = 17
    Hint = ''
    Caption = 'MakUnMask'
    ParentFont = False
    Font.Height = -13
    TabOrder = 3
    OnClick = chkMskUnMaskClick
  end
  object edtMask: TUniEdit
    Left = 169
    Top = 99
    Width = 200
    Hint = ''
    Text = '999.999.999-99'
    TabOrder = 4
    OnChange = edtMaskChange
    OnChangeValue = edtMaskChangeValue
  end
  object lbl1: TUniLabel
    Left = 169
    Top = 84
    Width = 24
    Height = 13
    Hint = ''
    Caption = 'Mask'
    TabOrder = 5
  end
end
