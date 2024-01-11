object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 604
  ClientWidth = 392
  Caption = 'Form Controls'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimEdit1: TUnimEdit
    Left = 0
    Top = 0
    Width = 392
    Height = 47
    Hint = ''
    Align = alTop
    Text = 'UnimEdit1'
    FieldLabel = 'Edit1'
    ParentFont = False
    TabOrder = 0
  end
  object UnimSpinner1: TUnimSpinner
    Left = 0
    Top = 47
    Width = 392
    Height = 47
    Hint = ''
    Align = alTop
    Step = 1.000000000000000000
    FieldLabel = 'Spinner'
    ParentFont = False
    TabOrder = 1
  end
  object UnimEdit2: TUnimEdit
    Left = 0
    Top = 94
    Width = 392
    Height = 47
    Hint = ''
    Align = alTop
    Text = 'UnimEdit2'
    FieldLabel = 'Edit2'
    ParentFont = False
    TabOrder = 2
  end
  object UnimMemo1: TUnimMemo
    Left = 0
    Top = 141
    Width = 392
    Height = 235
    Hint = ''
    Align = alTop
    FieldLabel = 'Memo1'
    TabOrder = 3
  end
  object UnimButton1: TUnimButton
    Left = 0
    Top = 376
    Width = 392
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Show Values!'
    UI = 'normal'
    OnClick = UnimButton1Click
  end
end
