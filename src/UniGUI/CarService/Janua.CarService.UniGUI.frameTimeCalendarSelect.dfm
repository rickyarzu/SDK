object frameTimeCalendarSelect: TframeTimeCalendarSelect
  Left = 0
  Top = 0
  ClientHeight = 28
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object UniContainerPanel1: TUniContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 288
    Height = 28
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 294
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
