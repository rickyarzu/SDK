object frameTimeCalendarSelect: TframeTimeCalendarSelect
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  Font.Height = -12
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 480
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    object ulbDate: TUniLabel
      Left = 56
      Top = 4
      Width = 81
      Height = 15
      Hint = ''
      AutoSize = False
      Caption = 'ulbDate'
      ParentFont = False
      Font.Height = -13
      ParentColor = False
      Color = clBtnFace
      TabOrder = 1
    end
    object ulbTime: TUniLabel
      Left = 160
      Top = 4
      Width = 46
      Height = 17
      Hint = ''
      Caption = 'ulbTime'
      ParentFont = False
      Font.Height = -13
      ParentColor = False
      Color = clBtnFace
      TabOrder = 2
    end
    object imgBooked: TUniImage
      Left = 272
      Top = 1
      Width = 35
      Height = 25
      Hint = ''
      Visible = False
      Stretch = True
      ImageIndex = 0
    end
  end
end
