object UniFormControlsGroupBox: TUniFormControlsGroupBox
  Left = 0
  Top = 0
  Width = 485
  Height = 356
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    485
    356)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 3
    Width = 482
    Height = 353
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniGroupBox1: TUniGroupBox
      Left = 32
      Top = 16
      Width = 185
      Height = 105
      Hint = ''
      Caption = 'First Group'
      TabOrder = 0
      object UniButton1: TUniButton
        Left = 24
        Top = 24
        Width = 75
        Height = 25
        Hint = ''
        Caption = 'UniButton1'
        TabOrder = 1
      end
      object UniRadioButton1: TUniRadioButton
        Left = 24
        Top = 64
        Width = 113
        Height = 17
        Hint = ''
        Caption = 'UniRadioButton1'
        TabOrder = 2
      end
    end
    object UniGroupBox2: TUniGroupBox
      Left = 248
      Top = 16
      Width = 185
      Height = 105
      Hint = ''
      Caption = 'SecondGroup'
      TabOrder = 1
      object UniLabel1: TUniLabel
        Left = 32
        Top = 24
        Width = 46
        Height = 13
        Hint = ''
        Caption = 'UniLabel1'
        TabOrder = 1
      end
      object UniEdit1: TUniEdit
        Left = 24
        Top = 59
        Width = 121
        Hint = ''
        Text = 'UniEdit1'
        TabOrder = 2
      end
    end
    object UniGroupBox3: TUniGroupBox
      Left = 248
      Top = 192
      Width = 185
      Height = 105
      Hint = ''
      Visible = False
      Caption = 'Hidden Group'
      TabOrder = 2
      object UniCheckBox1: TUniCheckBox
        Left = 40
        Top = 24
        Width = 97
        Height = 17
        Hint = ''
        Caption = 'UniCheckBox1'
        TabOrder = 1
      end
      object UniComboBox1: TUniComboBox
        Left = 16
        Top = 64
        Width = 145
        Hint = ''
        Text = 'UniComboBox1'
        TabOrder = 2
        IconItems = <>
      end
    end
    object UniButton2: TUniButton
      Left = 56
      Top = 232
      Width = 135
      Height = 25
      Hint = ''
      Caption = 'Show Hidden Group'
      TabOrder = 3
      OnClick = UniButton2Click
    end
  end
end
