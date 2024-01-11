object UniSendFileAs: TUniSendFileAs
  Left = 0
  Top = 0
  ClientHeight = 147
  ClientWidth = 320
  Caption = 'Send File As'
  AutoHeight = False
  FullScreen = False
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimButton1: TUnimButton
    Left = 0
    Top = 94
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Download'
    OnClick = UnimButton1Click
    ExplicitLeft = 168
    ExplicitTop = 80
    ExplicitWidth = 225
  end
  object UnimEdit1: TUnimEdit
    Left = 0
    Top = 0
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'File Name:'
    FieldLabelWidth = 40
    ExplicitLeft = 32
    ExplicitWidth = 225
  end
  object UnimSelect1: TUnimSelect
    Left = 0
    Top = 47
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Items.Strings = (
      'doc'
      'txt'
      'pdf')
    ExplicitLeft = -8
    ExplicitTop = 41
  end
end
