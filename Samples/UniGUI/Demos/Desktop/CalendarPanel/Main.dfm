object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 571
  ClientWidth = 837
  Caption = 'MainForm'
  OnShow = UniFormShow
  Position = poDesktopCenter
  OldCreateOrder = False
  ShowHint = True
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniCalendarPanel1: TUniCalendarPanel
    Left = 185
    Top = 29
    Width = 652
    Height = 523
    Hint = ''
    ShowHint = True
    Align = alClient
    DayText = 'Day'
    MonthText = 'Month'
    TodayText = 'Today'
    WeekText = 'Week'
    Calendars = <
      item
        CalendarId = 1
        Title = 'Calendar-1'
      end
      item
        CalendarId = 2
        Title = 'Calendar-2'
      end
      item
        CalendarId = 3
        Title = 'Calendar-3'
      end
      item
        CalendarId = 4
        Title = 'Calendar-4'
      end>
    StartDate = 40699.000000000000000000
    BorderStyle = ubsFrameLowered
    OnDayClick = UniCalendarPanel1DayClick
    OnDateChange = UniCalendarPanel1DateChange
    OnRangeSelect = UniCalendarPanel1RangeSelect
    OnEventClick = UniCalendarPanel1EventClick
  end
  object UniToolBar1: TUniToolBar
    Left = 0
    Top = 0
    Width = 837
    Height = 29
    Hint = ''
    ShowHint = True
    Images = UniNativeImageList1
    BorderWidth = 1
    TabOrder = 1
    ParentColor = False
    Color = clBtnFace
    object UniToolButton1: TUniToolButton
      Left = 0
      Top = 0
      Hint = 'New'
      ShowHint = True
      ImageIndex = 3
      Caption = 'UniToolButton1'
      TabOrder = 1
      OnClick = UniToolButton1Click
    end
    object UniToolButton2: TUniToolButton
      Left = 23
      Top = 0
      Hint = 'Load'
      ShowHint = True
      ImageIndex = 0
      Caption = 'UniToolButton2'
      TabOrder = 2
      OnClick = UniToolButton2Click
    end
    object UniToolButton3: TUniToolButton
      Left = 46
      Top = 0
      Hint = 'Save'
      ShowHint = True
      ImageIndex = 1
      Caption = 'UniToolButton3'
      TabOrder = 3
      OnClick = UniToolButton3Click
    end
    object UniToolButton4: TUniToolButton
      Left = 69
      Top = 0
      Width = 8
      Hint = ''
      ShowHint = True
      Style = tbsSeparator
      Caption = 'UniToolButton4'
      TabOrder = 4
    end
    object UniToolButton5: TUniToolButton
      Left = 77
      Top = 0
      Hint = 'Exit'
      ShowHint = True
      ImageIndex = 2
      Caption = 'UniToolButton5'
      TabOrder = 5
      OnClick = UniToolButton5Click
    end
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 29
    Width = 185
    Height = 523
    Hint = ''
    ShowHint = True
    Align = alLeft
    TabOrder = 2
    BorderStyle = ubsFrameLowered
    Caption = ''
    object UniCalendar1: TUniCalendar
      Left = 2
      Top = 2
      Width = 181
      Height = 207
      Hint = ''
      ShowHint = True
      Date = 40699.000000000000000000
      FirstDayOfWeek = dowMonday
      TabStop = False
      TabOrder = 1
      Align = alTop
      OnClick = UniCalendar1Click
    end
  end
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 552
    Width = 837
    Height = 19
    Hint = ''
    ShowHint = True
    Panels = <
      item
        Alignment = taCenter
        Width = 150
      end
      item
        Width = 150
      end>
    SizeGrip = True
    Align = alBottom
    ParentColor = False
    Color = clBtnFace
  end
  object UniTimer1: TUniTimer
    Interval = 15000
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      '   '
      '}')
    OnTimer = UniTimer1Timer
    Left = 72
    Top = 304
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 368
    Top = 115
    Images = {
      04000000FFFFFF1F042601000089504E470D0A1A0A0000000D49484452000000
      100000001008060000001FF3FF61000000097048597300000EC300000EC301C7
      6FA864000000D849444154388D63601868C04848C1AB434D060C0C0CFB191818
      0490841788D9D5251234FDD5A1A68457879AFE7FBAB9F13F0CFCF9FEFEFFAB43
      4DFF616A585E1D6A3ACFC0C06080CB100E717D065E353F389F994300459E8581
      81C140C83417438258C084CD5452000B32E7C7CB8B0C9F6F6D224A23341C3E30
      210B7E7B748854072C801BF0FBE34386BF3F3E906AC044B801DF9F9E2455F301
      31BBBA074C0C0C0C0C7F7F7C60F8F9F626C9B633304063E1FBB353A46A7E2066
      57B7016EC08F9717493560218CC1C4C0C0C0F0FFCF0F520D3840AA069C000081
      914CB1696CC1670000000049454E44AE426082FFFFFF1F04B600000089504E47
      0D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000000
      097048597300000EC300000EC301C76FA8640000006849444154388D6360A010
      30323030307446AEFE4F8EE6F2E5A18C2CC80265CB4288D2D815B506CE6622C7
      666430DC0C38BAF61A410DE86A58D025893104A70BC8012CE80284D202721AA0
      8A0B701AD015B506C336920C2016C0C2600103034302CC667497D0140000F35B
      1A8471E829520000000049454E44AE426082FFFFFF1F041B01000089504E470D
      0A1A0A0000000D49484452000000100000001008060000001FF3FF6100000009
      7048597300000EC300000EC301C76FA864000000CD49444154388D63FCFFFF3F
      032580055DE0DDC97AA24C14326F646460606060A2C87A9A182064DEC808731E
      31001E06DE759B12181818E63330307C6460607058EC4D8201E89AB736F95D60
      60F083BB025FC0B2206966606060E067606038EF5DB709AE606B931F5EEF901C
      884CEC02A82ED8DAE4B7006A23CC15895B9BFC1660D3CC26A8C1C0A316C9F0E5
      D672B818232C25A2792570B1F7D97C06060607640318993918B8143C19BE3DD8
      CE206852C98862003A7877B2FE3D03038300564906444A243B29C3C0204CCAA4
      0200564F3D7F6040271F0000000049454E44AE426082FFFFFF1F04FF00000089
      504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF61
      000000097048597300000EC300000EC301C76FA864000000B149444154388DED
      92BD09C33010853F190FE0349E231075064156F02852AF22036825436A073247
      AA6CA034BAA05C84C145BA7C8DE0E0BD773F828AC7F592D989A9841658E51D5D
      34DEFBDAF0099C534AF796C1A988053BBA7803C83967801042D3A42BE92BC0E8
      A229F5B535CE3CCF03B078EF8F6F8322B2D528D281D106D3347D99F492A87700
      18695F2863000CC0021C3E1274DB790359705F0BA46D9DBC45A70BEA74FB0DF6
      F237506714AA0FF37B5E3E9E65787CFC26C60000000049454E44AE426082}
  end
end
