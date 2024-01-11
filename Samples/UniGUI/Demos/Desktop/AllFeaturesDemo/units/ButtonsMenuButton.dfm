object UniButtonsMenuButton: TUniButtonsMenuButton
  Left = 0
  Top = 0
  Width = 266
  Height = 278
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    266
    278)
  object UniContainerPanel1: TUniContainerPanel
    Left = 7
    Top = 0
    Width = 256
    Height = 265
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      256
      265)
    object UniMenuButton1: TUniMenuButton
      Left = 72
      Top = 3
      Width = 105
      Height = 25
      Hint = ''
      DropdownMenu = UniPopupMenu1
      Caption = 'Menu'
      Anchors = []
      TabOrder = 0
      OnClick = UniMenuButton1Click
    end
    object UniListBox1: TUniListBox
      Left = 56
      Top = 34
      Width = 137
      Height = 207
      Hint = ''
      Anchors = []
      TabOrder = 1
    end
  end
  object UniPopupMenu1: TUniPopupMenu
    Left = 211
    Top = 43
    object SubMenu11: TUniMenuItem
      Caption = 'SubMenu1'
      OnClick = SubMenu11Click
    end
    object SubMenu21: TUniMenuItem
      Caption = 'SubMenu2'
      OnClick = SubMenu21Click
    end
    object SubMenu31: TUniMenuItem
      Caption = 'SubMenu3'
      OnClick = SubMenu31Click
    end
    object Clear1: TUniMenuItem
      Caption = 'Clear'
      OnClick = Clear1Click
    end
  end
end
