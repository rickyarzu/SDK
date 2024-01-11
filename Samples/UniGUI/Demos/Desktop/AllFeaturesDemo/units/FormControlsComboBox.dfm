object UniFormControlsComboBox: TUniFormControlsComboBox
  Left = 0
  Top = 0
  Width = 596
  Height = 382
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    596
    382)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 596
    Height = 379
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      596
      379)
    object UniComboBox1: TUniComboBox
      Left = 51
      Top = 25
      Width = 145
      Hint = ''
      Style = csDropDownList
      Text = ''
      Items.Strings = (
        'First'
        'Second'
        'Third')
      TabOrder = 0
      OnSelect = UniComboBox1Select
    end
    object UniComboBox2: TUniComboBox
      Left = 361
      Top = 25
      Width = 145
      Hint = ''
      Text = 'UniComboBox2'
      TabOrder = 1
    end
    object UniLabel1: TUniLabel
      Left = 171
      Top = 6
      Width = 287
      Height = 13
      Hint = ''
      Caption = 'Click first UniComboBox for add item to other UniComboBox '
      Anchors = []
      TabOrder = 2
    end
    object UniComboBox3: TUniComboBox
      Left = 211
      Top = 96
      Width = 145
      Hint = ''
      Text = ''
      Items.Strings = (
        'First'
        'Second'
        'Third')
      TabOrder = 3
    end
    object UniLabel2: TUniLabel
      Left = 156
      Top = 105
      Width = 39
      Height = 13
      Hint = ''
      Caption = 'Default:'
      TabOrder = 4
    end
    object UniComboBox4: TUniComboBox
      Left = 211
      Top = 124
      Width = 145
      Hint = ''
      Text = ''
      Items.Strings = (
        'First'
        'Second'
        'Third')
      TabOrder = 5
      ClearButton = True
    end
    object UniComboBox5: TUniComboBox
      Left = 211
      Top = 152
      Width = 145
      Hint = ''
      Text = ''
      Items.Strings = (
        'First'
        'Second'
        'Third')
      TabOrder = 6
      Sorted = True
    end
    object UniComboBox6: TUniComboBox
      Left = 211
      Top = 180
      Width = 145
      Hint = ''
      Enabled = False
      Text = ''
      Items.Strings = (
        'First'
        'Second'
        'Third')
      TabOrder = 7
    end
    object UniLabel3: TUniLabel
      Left = 95
      Top = 133
      Width = 100
      Height = 13
      Hint = ''
      Caption = 'Clear Button = True:'
      TabOrder = 8
    end
    object UniLabel4: TUniLabel
      Left = 123
      Top = 161
      Width = 72
      Height = 13
      Hint = ''
      Caption = 'Sorted = True:'
      TabOrder = 9
    end
    object UniLabel5: TUniLabel
      Left = 151
      Top = 189
      Width = 44
      Height = 13
      Hint = ''
      Caption = 'Disabled:'
      TabOrder = 10
    end
    object UniComboBox10: TUniComboBox
      Left = 211
      Top = 208
      Width = 145
      Hint = ''
      Text = ''
      Items.Strings = (
        'First'
        'Second'
        'Third')
      ParentFont = False
      Font.Color = clMaroon
      TabOrder = 11
    end
    object UniLabel9: TUniLabel
      Left = 95
      Top = 217
      Width = 100
      Height = 13
      Hint = ''
      Caption = 'Different Font Color:'
      TabOrder = 12
    end
    object UniComboBox11: TUniComboBox
      Left = 211
      Top = 236
      Width = 145
      Hint = ''
      Style = csDropDownList
      Text = ''
      Items.Strings = (
        'First'
        'Second'
        'Third')
      ParentFont = False
      TabOrder = 13
      Color = clSkyBlue
    end
    object UniLabel10: TUniLabel
      Left = 120
      Top = 245
      Width = 75
      Height = 13
      Hint = ''
      Caption = 'Different Color:'
      TabOrder = 14
    end
    object UniLabel11: TUniLabel
      Left = 98
      Top = 274
      Width = 97
      Height = 13
      Hint = ''
      Caption = 'Style DropDownList:'
      TabOrder = 15
    end
    object UniComboBox13: TUniComboBox
      Left = 211
      Top = 265
      Width = 145
      Hint = ''
      Style = csDropDownList
      Text = ''
      Items.Strings = (
        'First'
        'Second'
        'Third')
      TabOrder = 16
    end
  end
end
