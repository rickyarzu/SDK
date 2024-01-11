object DisclosureIconForm: TDisclosureIconForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'DisclosureIconForm'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimList1: TUnimList
    Left = 0
    Top = 0
    Width = 320
    Height = 369
    Hint = ''
    Items.Strings = (
      'Alfred'
      'Bruce'
      'Jim'
      'Edward'
      'Selina'
      'Victor'
      'Oswald')
    ItemIndex = -1
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    DisclosureIcon = True
    OnDisclose = UnimList1Disclose
  end
end
