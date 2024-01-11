object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 560
  ClientWidth = 730
  Caption = 'Calendar '
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  DesignOrientation = True
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimCalendarPanel1: TUnimCalendarPanel
    Left = 0
    Top = 0
    Width = 730
    Height = 560
    Hint = ''
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
    DayTimeRange.TimeStart = 0.000011574074074074
    DayTimeRange.TimeEnd = 0.999305555555555600
    BorderStyle = ubsDefault
    OnDayClick = UnimCalendarPanel1DayClick
    OnRangeSelect = UnimCalendarPanel1RangeSelect
    OnEventClick = UnimCalendarPanel1EventClick
  end
end
