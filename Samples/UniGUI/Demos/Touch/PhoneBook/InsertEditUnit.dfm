object UnimForm1: TUnimForm1
  Left = 0
  Top = 0
  ClientHeight = 142
  ClientWidth = 320
  Caption = 'UnimForm1'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimEdit1: TUnimEdit
    Left = 0
    Top = 0
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Name:'
    ExplicitLeft = 72
    ExplicitTop = 64
    ExplicitWidth = 225
  end
  object UnimButton1: TUnimButton
    Left = 0
    Top = 94
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Caption = 'UnimButton1'
    OnClick = UnimButton1Click
    ExplicitLeft = 112
    ExplicitTop = 304
    ExplicitWidth = 225
  end
  object UnimEdit2: TUnimEdit
    Left = 0
    Top = 47
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Phone Number:'
    ExplicitTop = 8
  end
end
