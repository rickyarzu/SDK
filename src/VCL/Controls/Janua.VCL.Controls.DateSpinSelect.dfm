inherited JanuaVCLFrameDateSpinSelect: TJanuaVCLFrameDateSpinSelect
  Width = 175
  Height = 44
  ExplicitWidth = 175
  ExplicitHeight = 44
  inherited lbDisplayText: TLabel
    AlignWithMargins = False
    Left = 0
    Top = 0
    Width = 175
    ExplicitLeft = 0
    ExplicitTop = 0
  end
  object edDate: TDatePicker
    Left = 0
    Top = 20
    Width = 131
    Height = 24
    Align = alLeft
    Date = 44343.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 0
    OnChange = edDateChange
    OnCloseUp = edDateCloseUp
  end
  object tsDate: TToggleSwitch
    Left = 131
    Top = 20
    Width = 44
    Height = 24
    Align = alClient
    ShowStateCaption = False
    TabOrder = 1
    OnClick = tsDateClick
    ExplicitWidth = 50
    ExplicitHeight = 20
  end
end
