object dlgPhoenixVCLEditReportTimetable: TdlgPhoenixVCLEditReportTimetable
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Modifica Scheda Appuntamento'
  ClientHeight = 333
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object edDate: TDateTimePicker
    Left = 96
    Top = 29
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
    Left = 40
    Top = 173
    Width = 345
    Height = 121
    Lines.Strings = (
      'edNote')
    TabOrder = 1
  end
  object btnCancel: TBitBtn
    Left = 327
    Top = 300
    Width = 75
    Height = 25
    Caption = 'Annulla'
    ModalResult = 2
    TabOrder = 2
  end
  object btnOK: TBitBtn
    Left = 246
    Top = 300
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 3
  end
  object edTime: TTimePicker
    Left = 136
    Top = 72
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 4
    Time = 0.375000000000000000
    TimeFormat = 'hh:nn'
  end
  object edRagioneSociale: TEdit
    Left = 40
    Top = 136
    Width = 345
    Height = 23
    TabOrder = 5
  end
end
