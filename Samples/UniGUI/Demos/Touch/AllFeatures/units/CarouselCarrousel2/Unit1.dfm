object UnimCarouselSubForm1: TUnimCarouselSubForm1
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'New Form'
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
    Text = 'UnimEdit1'
    FieldLabel = 'Label1'
  end
  object UnimButton1: TUnimButton
    Left = 0
    Top = 47
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Another Form'
    OnClick = UnimButton1Click
  end
end
