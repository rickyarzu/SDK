object frameUniGUITimeSlotPickup: TframeUniGUITimeSlotPickup
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  OnCreate = FormCreate
  Font.Height = -12
  TabOrder = 0
  DesignSize = (
    640
    480)
  object ulbPickupDate: TUniLabel
    Left = 0
    Top = 0
    Width = 640
    Height = 25
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Seleziona Ora Ritiro'
    Align = alTop
    ParentFont = False
    Font.Height = -19
    ParentColor = False
    Color = clBtnFace
    TabOrder = 0
  end
  object UniDateTimePicker1: TUniDateTimePicker
    Left = 88
    Top = 40
    Width = 120
    Hint = ''
    DateTime = 44679.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 1
  end
  object ulbDate: TUniLabel
    Left = 6
    Top = 83
    Width = 86
    Height = 15
    Hint = ''
    AutoSize = False
    Caption = 'Data'
    ParentColor = False
    Color = clBtnFace
    TabOrder = 2
  end
  object lbPickup: TUniLabel
    Left = 131
    Top = 83
    Width = 27
    Height = 15
    Hint = ''
    AutoSize = False
    Caption = 'Ritiro'
    ParentColor = False
    Color = clBtnFace
    TabOrder = 4
  end
  object lbDelivery: TUniLabel
    Left = 180
    Top = 83
    Width = 62
    Height = 15
    Hint = ''
    AutoSize = False
    Caption = 'Consegna'
    ParentColor = False
    Color = clBtnFace
    TabOrder = 3
  end
  object pnlCarServiceSlotSelection: TUniSimplePanel
    Left = 3
    Top = 104
    Width = 290
    Height = 156
    Hint = ''
    ParentColor = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
  end
end
