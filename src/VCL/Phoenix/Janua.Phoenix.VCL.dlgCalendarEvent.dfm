object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 467
  ClientWidth = 843
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object edDate: TDateTimePicker
    Left = 8
    Top = 176
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
    Left = 8
    Top = 224
    Width = 625
    Height = 201
    Lines.Strings = (
      'edNote')
    TabOrder = 1
  end
  object btnCancel: TBitBtn
    Left = 744
    Top = 434
    Width = 75
    Height = 25
    Caption = 'Annulla'
    ModalResult = 2
    TabOrder = 2
  end
  object btnOK: TBitBtn
    Left = 655
    Top = 434
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 3
  end
  object edTime: TTimePicker
    Left = 264
    Top = 176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 4
    Time = 0.375000000000000000
    TimeFormat = 'hh:nn'
  end
end
