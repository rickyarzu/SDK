object UniFormControlsEditMask: TUniFormControlsEditMask
  Left = 0
  Top = 0
  Width = 704
  Height = 383
  TabOrder = 0
  DesignSize = (
    704
    383)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 698
    Height = 377
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniLabel1: TUniLabel
      Left = 40
      Top = 54
      Width = 41
      Height = 13
      Hint = ''
      Caption = 'Phone #'
      TabOrder = 1
    end
    object UniMemo1: TUniMemo
      Left = 456
      Top = 45
      Width = 185
      Height = 217
      Hint = ''
      TabOrder = 2
    end
    object UniShowMemoButton: TUniButton
      Left = 192
      Top = 288
      Width = 113
      Height = 25
      Hint = ''
      Caption = 'Show in Memo'
      TabOrder = 3
      OnClick = UniShowMemoButtonClick
    end
    object UniEdit1: TUniEdit
      Left = 112
      Top = 45
      Width = 177
      Hint = ''
      Text = ''
      TabOrder = 4
      EmptyText = '+99-(999)-999-9999'
      InputMask.Mask = '+99-(999)-999-9999'
    end
    object UniEdit2: TUniEdit
      Left = 112
      Top = 93
      Width = 177
      Hint = ''
      Text = ''
      TabOrder = 5
      EmptyText = '999.999.999.999'
      InputMask.Mask = '999.999.999.999'
      InputMask.RemoveWhiteSpace = True
    end
    object UniLabel2: TUniLabel
      Left = 40
      Top = 102
      Width = 26
      Height = 13
      Hint = ''
      Caption = 'IPv4:'
      TabOrder = 6
    end
    object UniEdit3: TUniEdit
      Left = 112
      Top = 141
      Width = 249
      Hint = ''
      Text = ''
      TabOrder = 7
      EmptyText = '****:****:****:****:****:****:****:****'
      InputMask.Mask = '****:****:****:****:****:****:****:****'
    end
    object UniLabel3: TUniLabel
      Left = 40
      Top = 150
      Width = 26
      Height = 13
      Hint = ''
      Caption = 'IPv6:'
      TabOrder = 8
    end
    object UniLabel4: TUniLabel
      Left = 40
      Top = 198
      Width = 61
      Height = 13
      Hint = ''
      Caption = 'Postal Code:'
      TabOrder = 9
    end
    object UniEdit4: TUniEdit
      Left = 112
      Top = 189
      Width = 177
      Hint = ''
      Text = ''
      TabOrder = 10
      EmptyText = '999999'
      InputMask.Mask = '999999'
    end
  end
end
