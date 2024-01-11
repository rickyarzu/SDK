object UnimForm1: TUnimForm1
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'UnimForm1'
  BorderIcons = []
  TitleButtons = <
    item
      Caption = 'Back'
      ButtonId = 0
      UI = 'back'
    end>
  ShowAnimation = 'slide'
  OnTitleButtonClick = UnimFormTitleButtonClick
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimList1: TUnimList
    Left = 0
    Top = 0
    Width = 320
    Height = 480
    Hint = ''
    Items.Strings = (
      'Windows '
      'Messages '
      'SysUtils '
      'Variants '
      'Classes '
      'Graphics'
      'Controls '
      'Forms '
      'Dialogs '
      'uniGUITypes '
      'uniGUIAbstractClasses'
      'uniGUIClasses '
      'uniGUIForm '
      'uniGUImForm '
      'uniGUImJSForm')
    ItemIndex = -1
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
  end
end
