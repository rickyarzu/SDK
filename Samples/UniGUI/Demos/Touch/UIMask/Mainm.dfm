object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 593
  ClientWidth = 400
  Caption = 'MainmForm'
  DesignSize = (
    400
    593)
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimButton1: TUnimButton
    Left = 0
    Top = 546
    Width = 400
    Height = 47
    Hint = ''
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'UnimButton1'
    ScreenMask.Enabled = True
    ScreenMask.Message = 'Panel Only'
    ScreenMask.Target = UnimPanel1
    OnClick = UnimButton2Click
    ExplicitLeft = 72
    ExplicitTop = 8
    ExplicitWidth = 225
  end
  object UnimButton2: TUnimButton
    Left = 0
    Top = 0
    Width = 400
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Caption = 'UnimButton2'
    ScreenMask.Enabled = True
    ScreenMask.Message = 'Whole Form'
    ScreenMask.Target = Owner
    OnClick = UnimButton2Click
  end
  object UnimPanel1: TUnimPanel
    Left = 8
    Top = 80
    Width = 385
    Height = 409
    Hint = ''
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clWhite
  end
end
