object dlgPhoenixVCLEditReportTimetable: TdlgPhoenixVCLEditReportTimetable
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Modifica Scheda Appuntamento'
  ClientHeight = 315
  ClientWidth = 410
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object edDate: TDateTimePicker
    Left = 80
    Top = 40
    Width = 241
    Height = 29
    Date = 45294.000000000000000000
    Time = 0.406526469909295000
    DateFormat = dfLong
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    StyleElements = [seClient, seBorder]
  end
  object edNote: TMemo
    Left = 32
    Top = 136
    Width = 345
    Height = 121
    Lines.Strings = (
      'edNote')
    TabOrder = 1
  end
  object btnCancel: TBitBtn
    Left = 312
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Annulla'
    ModalResult = 2
    TabOrder = 2
  end
  object btnOK: TBitBtn
    Left = 231
    Top = 272
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 3
  end
  object edTime: TTimePicker
    Left = 128
    Top = 88
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 4
    Time = 0.375000000000000000
    TimeFormat = 'hh:nn'
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 65516
    Top = 53
  end
end
