object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'MainmForm'
  BorderIcons = []
  TitleButtons = <
    item
      ButtonId = 0
      IconCls = 'home'
    end
    item
      ButtonId = 1
      Separator = True
    end
    item
      ButtonId = 2
      IconCls = 'arrow_right'
      UI = 'confirm'
      ScreenMask.Enabled = True
    end>
  OnTitleButtonClick = UnimFormTitleButtonClick
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimMenu1: TUnimMenu
    Items = <
      item
        Caption = 'Open Form'
        MenuId = 0
        IconCls = 'more'
        UI = 'round'
        ScreenMask.Enabled = True
      end
      item
        Caption = 'Menu B'
        MenuId = 1
        IconCls = 'star'
      end
      item
        Caption = 'Menu C'
        MenuId = 2
        IconCls = 'add'
      end
      item
        Caption = 'Exit'
        MenuId = 3
        IconCls = 'action'
        UI = 'decline'
        ScreenMask.Enabled = True
      end>
    Reveal = False
    Cover = True
    Visible = False
    OnClick = UnimMenu1Click
    Left = 128
    Top = 152
  end
end
