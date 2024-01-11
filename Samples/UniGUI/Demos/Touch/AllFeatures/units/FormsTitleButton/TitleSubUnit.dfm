object SubForm: TSubForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = ''
  TitleButtons = <
    item
      ButtonId = 0
      IconCls = 'info'
    end
    item
      ButtonId = 1
      IconCls = 'maps'
    end
    item
      ButtonId = 2
      IconCls = 'compose'
    end
    item
      Caption = 'Click'
      ButtonId = 3
      UI = 'round'
    end>
  OnTitleButtonClick = UnimFormTitleButtonClick
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
end
