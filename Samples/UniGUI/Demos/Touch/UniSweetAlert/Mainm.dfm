object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'MainmForm'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimButton2: TUnimButton
    Left = 48
    Top = 32
    Width = 225
    Height = 47
    Hint = ''
    Caption = 'Show Warning!'
    OnClick = UnimButton2Click
  end
  object UnimButton1: TUnimButton
    Left = 48
    Top = 152
    Width = 225
    Height = 47
    Hint = ''
    Caption = 'Prompt Input'
    OnClick = UnimButton1Click
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    ImageIndex = 0
    InputType = ItText
    Padding = 20
    OnDismiss = UniSweetAlert1Dismiss
    OnConfirm = UniSweetAlert1Confirm
    Left = 160
    Top = 96
  end
end
