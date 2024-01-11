object UniFormControlsCalendarDialog: TUniFormControlsCalendarDialog
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    320
    240)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 240
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniButton1: TUniButton
      Left = 95
      Top = 72
      Width = 135
      Height = 25
      Hint = ''
      Caption = 'Open CalendarDialog'
      TabOrder = 0
      OnClick = UniButton1Click
    end
    object UniEdit1: TUniEdit
      Left = 96
      Top = 144
      Width = 121
      Hint = ''
      Alignment = taCenter
      Text = ''
      TabOrder = 1
    end
  end
  object UniCalendarDialog1: TUniCalendarDialog
    Date = 42034.000000000000000000
    OnConfirm = UniCalendarDialog1Confirm
    Caption = 'CalendarDialog'
    Left = 144
    Top = 16
  end
end
