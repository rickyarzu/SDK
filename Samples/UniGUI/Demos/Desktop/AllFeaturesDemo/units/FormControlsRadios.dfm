object UniFormControlsRadios: TUniFormControlsRadios
  Left = 0
  Top = 0
  Width = 600
  Height = 445
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    600
    445)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 594
    Height = 439
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniRadioButton1: TUniRadioButton
      Left = 16
      Top = 32
      Width = 113
      Height = 17
      Hint = ''
      Caption = 'UniRadioButton1'
      TabOrder = 0
      OnClick = UniRadioButton1Click
    end
    object UniRadioGroup1: TUniRadioGroup
      Left = 16
      Top = 111
      Width = 185
      Height = 105
      Hint = ''
      Items.Strings = (
        'Radio 1'
        'Radio 2'
        'Radio 3')
      Caption = 'UniRadioGroup1'
      TabOrder = 1
      Columns = 1
      OnClick = UniRadioGroup1Click
    end
    object UniMemo1: TUniMemo
      Left = 240
      Top = 24
      Width = 337
      Height = 321
      Hint = ''
      TabOrder = 2
    end
    object UniRadioButton2: TUniRadioButton
      Left = 16
      Top = 55
      Width = 113
      Height = 17
      Hint = ''
      Caption = 'UniRadioButton2'
      TabOrder = 3
      OnClick = UniRadioButton1Click
    end
  end
end
