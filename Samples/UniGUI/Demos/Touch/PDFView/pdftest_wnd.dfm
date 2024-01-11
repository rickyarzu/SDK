object wndpdf_test: Twndpdf_test
  Left = 0
  Top = 0
  ClientHeight = 586
  ClientWidth = 320
  Caption = 'wndpdf_test'
  ShowTitle = False
  TitleButtons = <>
  OnBeforeShow = UnimFormBeforeShow
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object UnimToolBar1: TUnimToolBar
    Left = 0
    Top = 0
    Width = 320
    Height = 48
    Hint = ''
    Anchors = [akLeft, akTop, akRight]
    ShowCaptions = True
    Caption = 'UnimToolBar1'
    object UnimToolButton1: TUnimToolButton
      Left = 0
      Top = 0
      Width = 48
      Height = 48
      Hint = ''
      Caption = 'Back'
      UI = 'back'
      OnClick = UnimToolButton1Click
    end
  end
  object UnimPDFFrame1: TUnimPDFFrame
    Left = 0
    Top = 48
    Width = 320
    Height = 538
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    ExplicitLeft = 88
    ExplicitTop = 120
    ExplicitHeight = 240
  end
end
