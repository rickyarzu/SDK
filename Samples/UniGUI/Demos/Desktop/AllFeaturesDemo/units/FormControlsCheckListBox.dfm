object UniFormControlsCheckListBox: TUniFormControlsCheckListBox
  Left = 0
  Top = 0
  Width = 826
  Height = 583
  OnCreate = UniFrameCreate
  TabOrder = 0
  DesignSize = (
    826
    583)
  object UniContainerPanel1: TUniContainerPanel
    Left = 10
    Top = 3
    Width = 799
    Height = 566
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniListBox1: TUniListBox
      Left = 80
      Top = 32
      Width = 233
      Height = 337
      Hint = ''
      TabOrder = 1
      MultiSelect = True
      ShowCheckBoxes = True
    end
    object UniButton1: TUniButton
      Left = 344
      Top = 32
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Get Selected'
      TabOrder = 2
      OnClick = UniButton1Click
    end
    object UniMemo1: TUniMemo
      Left = 344
      Top = 160
      Width = 385
      Height = 209
      Hint = ''
      Lines.Strings = (
        'UniMemo1')
      TabOrder = 3
    end
    object UniButton2: TUniButton
      Left = 344
      Top = 63
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Set Selected'
      TabOrder = 4
      OnClick = UniButton2Click
    end
    object UniCheckBox1: TUniCheckBox
      Left = 80
      Top = 376
      Width = 233
      Height = 17
      Hint = ''
      Caption = 'Check Boxes Only'
      TabOrder = 5
      OnChange = UniCheckBox1Change
    end
  end
end
