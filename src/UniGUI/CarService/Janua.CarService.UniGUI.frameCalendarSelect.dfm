object frameUNICalendarSelect: TframeUNICalendarSelect
  Left = 0
  Top = 0
  Width = 312
  Height = 348
  Font.Height = -12
  TabOrder = 0
  object lbPickupDate: TUniLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 306
    Height = 25
    Hint = ''
    Margins.Bottom = 0
    Alignment = taCenter
    AutoSize = False
    Caption = 'Data Ritiro'
    Align = alTop
    ParentFont = False
    Font.Height = -19
    ParentColor = False
    Color = clBtnFace
    TabOrder = 0
    ExplicitLeft = -32
    ExplicitTop = 16
    ExplicitWidth = 265
  end
  object lbPickupDateSelect: TUniLabel
    AlignWithMargins = True
    Left = 3
    Top = 33
    Width = 306
    Height = 15
    Hint = ''
    Margins.Top = 5
    Margins.Bottom = 5
    Alignment = taCenter
    AutoSize = False
    Caption = 'Seleziona la data Ritiro Veicolo'
    Align = alTop
    ParentColor = False
    Color = clBtnFace
    TabOrder = 1
    ExplicitLeft = -50
    ExplicitTop = 59
    ExplicitWidth = 283
  end
  object cldPickup1: TUniCalendar
    AlignWithMargins = True
    Left = 3
    Top = 56
    Width = 306
    Height = 160
    Hint = ''
    Date = 44590.000000000000000000
    FirstDayOfWeek = dowMonday
    TabStop = False
    TabOrder = 2
    Align = alTop
    OnClick = cldPickup1Click
    ExplicitLeft = -50
    ExplicitTop = 80
    ExplicitWidth = 381
  end
  object btnCheckPickupDate: TUniButton
    Left = 24
    Top = 272
    Width = 217
    Height = 25
    Hint = ''
    Caption = 'Verifica Disponibilit'#224
    TabOrder = 3
    OnClick = btnCheckPickupDateClick
  end
end
