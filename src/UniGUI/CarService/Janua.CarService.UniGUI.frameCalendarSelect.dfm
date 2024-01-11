object frameUNICalendarSelect: TframeUNICalendarSelect
  Left = 0
  Top = 0
  ClientHeight = 319
  ClientWidth = 268
  Caption = ''
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Font.Height = -12
  DesignSize = (
    268
    319)
  TextHeight = 15
  object cldPickup1: TUniCalendar
    Left = 3
    Top = 59
    Width = 278
    Height = 160
    Hint = ''
    Date = 44590.000000000000000000
    FirstDayOfWeek = dowMonday
    TabStop = False
    TabOrder = 0
    Anchors = [akLeft, akTop, akRight]
    OnClick = cldPickup1Click
  end
  object lbPickupDate: TUniLabel
    Left = 3
    Top = 16
    Width = 260
    Height = 25
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Data Ritiro'
    Anchors = [akLeft, akTop, akRight]
    ParentFont = False
    Font.Height = -19
    ParentColor = False
    Color = clBtnFace
    TabOrder = 1
  end
  object lbPickupDateSelect: TUniLabel
    Left = 3
    Top = 59
    Width = 278
    Height = 15
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Seleziona la data Ritiro Veicolo'
    Anchors = [akLeft, akTop, akRight]
    ParentColor = False
    Color = clBtnFace
    TabOrder = 2
  end
  object btnCheckPickupDate: TUniButton
    Left = 32
    Top = 272
    Width = 217
    Height = 25
    Hint = ''
    Caption = 'Verifica Disponibilit'#224
    TabOrder = 3
    OnClick = btnCheckPickupDateClick
  end
end
