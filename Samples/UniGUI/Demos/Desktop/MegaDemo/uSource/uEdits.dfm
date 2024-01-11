object uEditsFrame: TuEditsFrame
  Left = 0
  Top = 0
  Width = 493
  Height = 483
  Align = alNone
  Anchors = [akLeft, akTop]
  ShowHint = False
  Visible = True
  TabStop = True
  TabOrder = 0
  ParentFont = True
  ParentRTL = False
  RTL = False
  object UniEdit1: TUniEdit
    Left = 32
    Top = 24
    Width = 201
    Hint = ''
    Text = 'UniEdit1'
    ParentFont = False
    Font.Color = clBlue
    Font.Style = [fsBold]
    TabOrder = 0
    Color = 16766935
  end
  object UniEdit2: TUniEdit
    Left = 32
    Top = 64
    Width = 201
    Hint = ''
    PasswordChar = '*'
    Text = 'UniEdit2'
    ParentFont = False
    TabOrder = 1
  end
  object UniSpinEdit1: TUniSpinEdit
    Left = 32
    Top = 104
    Width = 201
    Height = 22
    Hint = ''
    MaxValue = 100
    TabOrder = 2
    ParentFont = False
    Font.Color = clMaroon
    Font.Style = [fsBold]
  end
  object UniDateTimePicker1: TUniDateTimePicker
    Left = 32
    Top = 144
    Width = 120
    Hint = ''
    DateTime = 41939.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    FirstDayOfWeek = dowLocaleDefault
    TabOrder = 3
    ParentFont = False
  end
  object UniDateTimePicker2: TUniDateTimePicker
    Left = 32
    Top = 184
    Width = 120
    Hint = ''
    DateTime = 0.807508136575052000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    Kind = tUniTime
    FirstDayOfWeek = dowLocaleDefault
    TabOrder = 4
  end
  object UniDateTimePicker3: TUniDateTimePicker
    Left = 32
    Top = 224
    Width = 201
    Hint = ''
    DateTime = 41939.807508136580000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    Kind = tUniDateTime
    FirstDayOfWeek = dowLocaleDefault
    TabOrder = 5
    ParentFont = False
  end
  object UniComboBox1: TUniComboBox
    Left = 32
    Top = 264
    Width = 201
    Hint = ''
    Text = 'UniComboBox1'
    Items.Strings = (
      'Item0'
      'Item1'
      'Item2'
      'Item3'
      'Item4'
      'Item5'
      'Item6')
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 6
  end
  object UniMemo1: TUniMemo
    Left = 256
    Top = 24
    Width = 185
    Height = 261
    Hint = ''
    ParentFont = False
    TabOrder = 7
  end
  object UniButton1: TUniButton
    Left = 366
    Top = 291
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Get Values'
    ParentFont = False
    TabOrder = 8
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 256
    Top = 291
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Clear'
    ParentFont = False
    TabOrder = 9
    OnClick = UniButton2Click
  end
  object UniCalendar1: TUniCalendar
    Left = 32
    Top = 299
    Width = 162
    Height = 154
    Hint = ''
    Date = 41939.000000000000000000
    FirstDayOfWeek = dowMonday
    TabStop = False
    TabOrder = 10
  end
end
