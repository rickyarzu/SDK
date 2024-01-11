object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'MainmForm'
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimBitBtn3: TUnimBitBtn
    Left = 0
    Top = 0
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Show PDF'
    OnClick = UnimBitBtn3Click
    ExplicitLeft = 47
    ExplicitTop = 8
    ExplicitWidth = 225
  end
  object UnimList1: TUnimList
    Left = 0
    Top = 47
    Width = 320
    Height = 386
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
  end
end
