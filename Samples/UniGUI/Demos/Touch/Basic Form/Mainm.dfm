object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 539
  ClientWidth = 320
  Caption = 'Mobile Main Form'
  TitleButtons = <>
  DesignSize = (
    320
    539)
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimButton1: TUnimButton
    Left = 0
    Top = 0
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Tap me!'
    UI = 'normal'
    OnClick = UnimButton1Click
  end
  object UnimLabel1: TUnimLabel
    Left = 0
    Top = 47
    Width = 320
    Height = 23
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'UnimLabel1'
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
  end
  object UnimButton2: TUnimButton
    Left = 48
    Top = 76
    Width = 225
    Height = 47
    Hint = ''
    Anchors = [akTop]
    Caption = 'Show Form 1'
    UI = 'normal'
    ScreenMask.Enabled = True
    OnClick = UnimButton2Click
  end
  object UnimButton3: TUnimButton
    Left = 48
    Top = 129
    Width = 225
    Height = 47
    Hint = ''
    Anchors = [akTop]
    Caption = 'Show Form2'
    UI = 'normal'
    OnClick = UnimButton3Click
  end
  object UnimButton4: TUnimButton
    Left = 48
    Top = 182
    Width = 225
    Height = 47
    Hint = ''
    Anchors = [akTop]
    Caption = 'Form Scrollable'
    UI = 'normal'
    OnClick = UnimButton4Click
  end
end
