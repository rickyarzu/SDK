object UniFormControlsEditTypes: TUniFormControlsEditTypes
  Left = 0
  Top = 0
  Width = 779
  Height = 499
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    779
    499)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 77
    Width = 776
    Height = 334
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniNumberEdit1: TUniNumberEdit
      Left = 207
      Top = 45
      Width = 121
      Hint = ''
      TabOrder = 0
      ShowTrigger = True
      DecimalSeparator = ','
    end
    object UniNumberEdit2: TUniNumberEdit
      Left = 207
      Top = 73
      Width = 121
      Hint = ''
      TabOrder = 1
      DecimalSeparator = ','
    end
    object UniSpinEdit1: TUniSpinEdit
      Left = 207
      Top = 101
      Width = 121
      Hint = ''
      TabOrder = 2
    end
    object UniLabel1: TUniLabel
      Left = 10
      Top = 49
      Width = 169
      Height = 13
      Hint = ''
      Caption = 'Number Edit (Show Trigger= True):'
      TabOrder = 3
    end
    object UniLabel2: TUniLabel
      Left = 10
      Top = 77
      Width = 172
      Height = 13
      Hint = ''
      Caption = 'Number Edit (Show Trigger= False):'
      TabOrder = 4
    end
    object UniLabel3: TUniLabel
      Left = 134
      Top = 105
      Width = 45
      Height = 13
      Hint = ''
      Caption = 'Spin Edit:'
      TabOrder = 5
    end
    object UniEdit1: TUniEdit
      Left = 207
      Top = 17
      Width = 121
      Hint = ''
      Text = 'UniEdit1'
      TabOrder = 6
    end
    object UniLabel4: TUniLabel
      Left = 157
      Top = 21
      Width = 22
      Height = 13
      Hint = ''
      Caption = 'Edit:'
      TabOrder = 7
    end
    object UniMemo1: TUniMemo
      Left = 376
      Top = 3
      Width = 257
      Height = 253
      Hint = ''
      TabOrder = 8
    end
    object UniButton1: TUniButton
      Left = 224
      Top = 154
      Width = 89
      Height = 25
      Hint = ''
      Caption = 'Get Values'
      TabOrder = 9
      OnClick = UniButton1Click
    end
  end
end
