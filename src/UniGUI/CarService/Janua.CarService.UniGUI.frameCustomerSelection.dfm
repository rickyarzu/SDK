object frameUniGUICarServiceCustomerSelection: TframeUniGUICarServiceCustomerSelection
  Left = 0
  Top = 0
  ClientHeight = 400
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object cboAnagraphCustomers: TUniDBLookupComboBox
    AlignWithMargins = True
    Left = 4
    Top = 45
    Width = 369
    Height = 23
    Hint = ''
    Margins.Left = 4
    Margins.Top = 30
    Margins.Right = 4
    Margins.Bottom = 4
    ListField = 'an_last_name; an_name; an_email'
    KeyField = 'anagraph_id'
    ListFieldIndex = 0
    ClearButton = True
    Align = alTop
    EmptyText = 'Nuovo Cliente'
    TabOrder = 0
    Color = clWindow
    FieldLabel = 'Booking'
    FieldLabelAlign = laTop
  end
  object edtFirstName: TUniEdit
    AlignWithMargins = True
    Left = 4
    Top = 96
    Width = 369
    Hint = ''
    Margins.Left = 4
    Margins.Top = 24
    Margins.Right = 4
    Margins.Bottom = 4
    Text = ''
    Align = alTop
    TabOrder = 1
    FieldLabel = 'Nome Cliente'
    FieldLabelAlign = laTop
  end
  object edtEdLastName: TUniEdit
    AlignWithMargins = True
    Left = 4
    Top = 146
    Width = 369
    Hint = ''
    Margins.Left = 4
    Margins.Top = 24
    Margins.Right = 4
    Margins.Bottom = 4
    Text = ''
    Align = alTop
    TabOrder = 2
    FieldLabel = 'Cognome Cliente'
    FieldLabelAlign = laTop
  end
  object unmFullAddress: TUniMemo
    AlignWithMargins = True
    Left = 4
    Top = 196
    Width = 369
    Height = 68
    Hint = ''
    Margins.Left = 4
    Margins.Top = 24
    Margins.Right = 4
    Margins.Bottom = 4
    Lines.Strings = (
      'unmFullAddress')
    Align = alTop
    TabOrder = 3
  end
  object lbCustomerHeading: TUniLabel
    Left = 0
    Top = 0
    Width = 377
    Height = 15
    Hint = ''
    AutoSize = False
    Caption = 'lbCustomerHeading'
    Align = alTop
    TabOrder = 4
  end
end
