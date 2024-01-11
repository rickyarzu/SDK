inherited JanuaVCLFrameDateSelect: TJanuaVCLFrameDateSelect
  Width = 156
  Height = 56
  ExplicitWidth = 156
  ExplicitHeight = 56
  inherited pnlFrameSelector: TPanel
    Width = 115
    Height = 56
    Align = alClient
    ExplicitWidth = 142
    ExplicitHeight = 56
    inherited lbDisplayText: TLabel
      Left = 2
      Width = 111
      Margins.Left = 2
      Margins.Right = 2
      Margins.Bottom = 2
      ExplicitLeft = 2
    end
    object edDate: TDateTimePicker
      Left = 0
      Top = 25
      Width = 115
      Height = 31
      Align = alClient
      Date = 44394.000000000000000000
      Time = 0.352676620372221800
      TabOrder = 0
      OnCloseUp = edDateCloseUp
      OnChange = edDateChange
      ExplicitWidth = 142
    end
  end
  object pnlCheck: TPanel
    Left = 115
    Top = 0
    Width = 41
    Height = 56
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 142
    object tsDate: TToggleSwitch
      AlignWithMargins = True
      Left = 2
      Top = 10
      Width = 37
      Height = 36
      Margins.Left = 2
      Margins.Top = 10
      Margins.Right = 2
      Margins.Bottom = 10
      Align = alClient
      ShowStateCaption = False
      TabOrder = 0
      OnClick = tsDateClick
      ExplicitTop = 8
      ExplicitWidth = 50
      ExplicitHeight = 20
    end
  end
end
