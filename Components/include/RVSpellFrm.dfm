inherited frmRVSpell: TfrmRVSpell
  ActiveControl = cmb
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblCmb: TLabel
    FocusControl = cmb
  end
  inherited btnIgnore: TButton
    TabOrder = 2
  end
  inherited btnIgnoreAll: TButton
    TabOrder = 3
  end
  inherited btnChange: TButton
    TabOrder = 4
  end
  inherited btnChangeAll: TButton
    TabOrder = 5
  end
  inherited btnCancel: TButton
    TabOrder = 7
  end
  inherited btnAdd: TButton
    TabOrder = 6
  end
  object cmb: TComboBox
    Left = 7
    Top = 72
    Width = 210
    Height = 147
    Style = csSimple
    ItemHeight = 13
    TabOrder = 1
    OnDblClick = cmbDblClick
    OnKeyDown = cmbKeyDown
  end
  object txtWrongWord: TEdit
    Left = 7
    Top = 26
    Width = 210
    Height = 21
    TabStop = False
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 0
  end
end
