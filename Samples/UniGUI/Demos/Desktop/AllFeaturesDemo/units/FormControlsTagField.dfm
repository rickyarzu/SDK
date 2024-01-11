object UniFormControlsTagField: TUniFormControlsTagField
  Left = 0
  Top = 0
  Width = 657
  Height = 478
  TabOrder = 0
  DesignSize = (
    657
    478)
  object UniContainerPanel1: TUniContainerPanel
    Left = 16
    Top = 16
    Width = 617
    Height = 441
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniTagField1: TUniTagField
      Left = 32
      Top = 32
      Width = 425
      Hint = ''
      Items.Strings = (
        'Orange'
        'Apple'
        'Banana'
        'Coconat'
        'Cherry'
        'Strawberry'
        'Kiwi')
      TabOrder = 1
      FlexWidth = True
      ClearButton = True
      OnChange = UniTagField1Change
    end
    object UniMemo1: TUniMemo
      Left = 32
      Top = 60
      Width = 425
      Height = 181
      Hint = ''
      TabOrder = 2
    end
    object UniButton1: TUniButton
      Left = 32
      Top = 247
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Set'
      TabOrder = 3
      OnClick = UniButton1Click
    end
  end
end
