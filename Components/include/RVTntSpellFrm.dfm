inherited frmRVTntSpell: TfrmRVTntSpell
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnIgnore: TTntButton
    TabOrder = 3
  end
  inherited btnIgnoreAll: TTntButton
    TabOrder = 4
  end
  inherited btnChange: TTntButton
    TabOrder = 5
  end
  inherited btnChangeAll: TTntButton
    TabOrder = 6
  end
  inherited btnCancel: TTntButton
    TabOrder = 8
  end
  inherited btnAdd: TTntButton
    TabOrder = 7
  end
  object txtWrongWord: TTntEdit
    Left = 7
    Top = 27
    Width = 210
    Height = 21
    TabStop = False
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 0
  end
  object lst: TTntListBox
    Left = 7
    Top = 102
    Width = 210
    Height = 110
    ItemHeight = 13
    TabOrder = 2
    OnClick = lstClick
    OnDblClick = cmbDblClick
  end
  object txtChangeTo: TTntEdit
    Left = 7
    Top = 72
    Width = 210
    Height = 21
    TabOrder = 1
    Text = 'txtChangeTo'
    OnChange = txtChangeToChange
  end
end
