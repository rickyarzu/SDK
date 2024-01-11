object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'MainmForm'
  TitleButtons = <
    item
      ButtonId = 0
      IconCls = 'add'
    end
    item
      ButtonId = 1
      IconCls = 'download'
    end
    item
      ButtonId = 2
      Separator = True
    end
    item
      ButtonId = 3
      IconCls = 'star'
    end>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimSegmentedButton1: TUnimSegmentedButton
    Left = 56
    Top = 64
    Width = 225
    Height = 47
    Hint = ''
    Items = <
      item
        ButtonId = 0
        IconCls = 'maps'
      end
      item
        ButtonId = 1
        Pressed = True
        IconCls = 'favorites'
      end
      item
        ButtonId = 2
        IconCls = 'refresh'
      end>
  end
  object UnimToolBar1: TUnimToolBar
    Left = 0
    Top = 0
    Width = 320
    Height = 48
    Hint = ''
    Anchors = [akLeft, akTop, akRight]
    Caption = 'UnimToolBar1'
    ExplicitLeft = 56
    ExplicitTop = 8
    ExplicitWidth = 240
    object UnimToolButton1: TUnimToolButton
      Left = 0
      Top = 0
      Width = 48
      Height = 48
      Hint = ''
      Caption = 'UnimToolButton1'
      IconCls = 'action'
    end
    object UnimToolButton2: TUnimToolButton
      Left = 48
      Top = 0
      Width = 48
      Height = 48
      Hint = ''
      Caption = 'UnimToolButton2'
      IconCls = 'delete'
    end
    object UnimToolButton3: TUnimToolButton
      Left = 96
      Top = 0
      Width = 48
      Height = 48
      Hint = ''
      Caption = 'UnimToolButton3'
      IconCls = 'settings'
    end
    object UnimToolButton4: TUnimToolButton
      Left = 144
      Top = 0
      Width = 8
      Height = 48
      Hint = ''
      Style = tbsSeparator
      Caption = 'UnimToolButton4'
    end
    object UnimToolButton5: TUnimToolButton
      Left = 152
      Top = 0
      Width = 48
      Height = 48
      Hint = ''
      Caption = 'UnimToolButton5'
      IconCls = 'reply'
    end
    object UnimToolButton6: TUnimToolButton
      Left = 200
      Top = 0
      Width = 48
      Height = 48
      Hint = ''
      Caption = 'UnimToolButton6'
      IconCls = 'team'
    end
  end
  object UnimButton1: TUnimButton
    Left = 56
    Top = 176
    Width = 225
    Height = 47
    Hint = ''
    Caption = 'UnimButton1'
    IconCls = 'trash'
  end
  object UnimButton2: TUnimButton
    Left = 56
    Top = 229
    Width = 225
    Height = 47
    Hint = ''
    Caption = 'UnimButton2'
    IconCls = 'more'
  end
end
