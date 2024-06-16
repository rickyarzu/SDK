object Form92: TForm92
  Left = 0
  Top = 0
  Caption = 'PlannerRangeSelector Demo'
  ClientHeight = 324
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  DesignSize = (
    448
    324)
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 303
    Width = 134
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Selected timespan: 1 day(s)'
  end
  object Label2: TLabel
    Left = 247
    Top = 46
    Width = 185
    Height = 39
    Caption = 
      'Drag select to select range of dates or left click on start date' +
      ' and right-click on end date.'
    WordWrap = True
  end
  object PlannerRangeSelector1: TPlannerRangeSelector
    Left = 8
    Top = 14
    Width = 233
    Height = 21
    Color = clWindow
    DefaultHandling = True
    Enabled = True
    EditMask = ''
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '25/02/2014'
    Visible = True
    AutoFocus = False
    Flat = False
    FlatLineColor = clBlack
    FlatParentColor = True
    ShowModified = False
    FocusColor = clWindow
    FocusBorder = False
    FocusFontColor = clBlack
    LabelAlwaysEnabled = False
    LabelPosition = lpLeftTop
    LabelTransparent = False
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    ModifiedColor = clRed
    SelectFirstChar = False
    Version = '1.0.1.0'
    OnChange = PlannerRangeSelector1Change
    OnClick = PlannerRangeSelector1Click
    ButtonStyle = bsButton
    ButtonWidth = 16
    Etched = False
    Glyph.Data = {
      DA020000424DDA0200000000000036000000280000000D0000000D0000000100
      200000000000A402000000000000000000000000000000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000000000000000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
    OnClickBtn = PlannerRangeSelector1ClickBtn
    Calendar = mcal1_.Owner
    DateStart = 41695.000000000000000000
    DateEnd = 45457.000000000000000000
    HideCalendarAfterSelection = False
    OnRangeSelect = PlannerRangeSelector1RangeSelect
    object mcal1_: TPlannerCalendar
      Left = 0
      Top = 0
      Width = 180
      Height = 180
      EventDayColor = clBlack
      EventFont.Charset = DEFAULT_CHARSET
      EventFont.Color = clWindowText
      EventFont.Height = -11
      EventFont.Name = 'Tahoma'
      EventFont.Style = [fsBold]
      EventMarkerColor = clYellow
      EventMarkerShape = evsCircle
      BackgroundPosition = bpTiled
      BorderWidth = 1
      CaptionColor = clNone
      CaptionTextColor = clBlack
      DateDownColor = clNone
      DateHoverColor = clNone
      DateSelectColor = 15917525
      DateSelectBorderColor = 15917525
      DayFont.Charset = DEFAULT_CHARSET
      DayFont.Color = clWindowText
      DayFont.Height = -11
      DayFont.Name = 'Tahoma'
      DayFont.Style = []
      FocusColor = clHighlight
      HeaderColor = clNone
      InActiveColor = clGray
      InversColor = clTeal
      LineColor = clGray
      Line3D = True
      Look = lookFlat
      NameOfDays.Monday = 'lun'
      NameOfDays.Tuesday = 'mar'
      NameOfDays.Wednesday = 'mer'
      NameOfDays.Thursday = 'gio'
      NameOfDays.Friday = 'ven'
      NameOfDays.Saturday = 'sab'
      NameOfDays.Sunday = 'dom'
      NameOfMonths.January = 'gen'
      NameOfMonths.February = 'feb'
      NameOfMonths.March = 'mar'
      NameOfMonths.April = 'apr'
      NameOfMonths.May = 'mag'
      NameOfMonths.June = 'giu'
      NameOfMonths.July = 'lug'
      NameOfMonths.August = 'ago'
      NameOfMonths.September = 'set'
      NameOfMonths.October = 'ott'
      NameOfMonths.November = 'nov'
      NameOfMonths.December = 'dic'
      NameOfMonths.UseIntlNames = True
      WeekFont.Charset = DEFAULT_CHARSET
      WeekFont.Color = clWindowText
      WeekFont.Height = -11
      WeekFont.Name = 'Tahoma'
      WeekFont.Style = []
      WeekName = 'Wk'
      SelectColor = clTeal
      SelectFontColor = clWhite
      StartDay = 7
      TextColor = clBlack
      TodayFormat = '"Today" DDD/mm, YYYY'
      WeekendColor = clRed
      Day = 25
      Month = 2
      Year = 2014
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      GradientStartColor = clWhite
      GradientEndColor = clBtnFace
      GradientDirection = gdVertical
      MonthGradientStartColor = clNone
      MonthGradientEndColor = clNone
      MonthGradientDirection = gdHorizontal
      HintPrevYear = 'Previous Year'
      HintPrevMonth = 'Previous Month'
      HintNextMonth = 'Next Month'
      HintNextYear = 'Next Year'
      Version = '2.4.4.1'
      TMSStyle = 8
    end
  end
  object btnEnd5Days: TButton
    Left = 8
    Top = 41
    Width = 129
    Height = 25
    Caption = 'End 5 days from start'
    TabOrder = 1
    OnClick = btnEnd5DaysClick
  end
  object ListBox1: TListBox
    Left = 8
    Top = 96
    Width = 424
    Height = 198
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 13
    PopupMenu = PopupMenu1
    TabOrder = 2
  end
  object CheckBox1: TCheckBox
    Left = 247
    Top = 16
    Width = 201
    Height = 17
    Caption = 'Auto hide calendar after selection'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = CheckBox1Click
  end
  object PopupMenu1: TPopupMenu
    Left = 168
    Top = 168
    object Clear1: TMenuItem
      Caption = '&Clear'
      OnClick = Clear1Click
    end
  end
end
