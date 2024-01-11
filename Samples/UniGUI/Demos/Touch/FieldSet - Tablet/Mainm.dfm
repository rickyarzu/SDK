object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 553
  ClientWidth = 960
  Caption = 'MainmForm'
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimButton1: TUnimButton
    Left = 0
    Top = 0
    Width = 960
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Tap for the show Fieldset Form'
    ScreenMask.Enabled = True
    OnClick = UnimButton1Click
    ExplicitWidth = 640
  end
  object UnimMemo1: TUnimMemo
    Left = 0
    Top = 47
    Width = 960
    Height = 506
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'UnimMemo1')
    ReadOnly = True
    ExplicitWidth = 640
    ExplicitHeight = 306
  end
end
