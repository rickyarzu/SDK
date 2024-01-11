object UniFormControlsDateTime: TUniFormControlsDateTime
  Left = 0
  Top = 0
  Width = 620
  Height = 445
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    620
    445)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 3
    Width = 617
    Height = 439
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniCalendar1: TUniCalendar
      Left = 32
      Top = 172
      Width = 233
      Height = 264
      Hint = ''
      Date = 42031.000000000000000000
      FirstDayOfWeek = dowMonday
      TabStop = False
      TabOrder = 0
    end
    object UniDateTimePicker1: TUniDateTimePicker
      Left = 32
      Top = 24
      Width = 120
      Hint = ''
      DateTime = 42031.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 1
    end
    object UniDateTimePicker2: TUniDateTimePicker
      Left = 32
      Top = 72
      Width = 233
      Hint = ''
      DateTime = 42031.654810381940000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDateTime
      TabOrder = 2
    end
    object UniDateTimePicker3: TUniDateTimePicker
      Left = 32
      Top = 120
      Width = 120
      Hint = ''
      DateTime = 0.655218518520996600
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniTime
      TabOrder = 3
    end
    object UniMemo1: TUniMemo
      Left = 360
      Top = 24
      Width = 217
      Height = 313
      Hint = ''
      TabOrder = 4
    end
    object UniButton1: TUniButton
      Left = 360
      Top = 376
      Width = 89
      Height = 25
      Hint = ''
      Caption = 'Get Values'
      TabOrder = 5
      OnClick = UniButton1Click
    end
  end
end
