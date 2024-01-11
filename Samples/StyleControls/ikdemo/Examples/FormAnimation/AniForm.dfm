object AnimatedForm: TAnimatedForm
  Left = 462
  Top = 244
  Caption = 'Form Animation'
  ClientHeight = 382
  ClientWidth = 602
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DurationLabel: TLabel
    Left = 14
    Top = 18
    Width = 83
    Height = 13
    Caption = 'Duration (500ms):'
  end
  object Button1: TButton
    Left = 12
    Top = 58
    Width = 141
    Height = 27
    Caption = 'Change height'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Duration: TTrackBar
    Left = 110
    Top = 12
    Width = 150
    Height = 23
    Max = 1000
    Position = 500
    TabOrder = 1
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = DurationChange
  end
end
