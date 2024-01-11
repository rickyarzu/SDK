object UniMessageBoxesDialogs: TUniMessageBoxesDialogs
  Left = 0
  Top = 0
  Width = 677
  Height = 519
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    677
    519)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 4
    Width = 674
    Height = 512
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      674
      512)
    object UniButton1: TUniButton
      Left = 16
      Top = 27
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'ShowMessage'
      Anchors = []
      TabOrder = 0
      OnClick = UniButton1Click
    end
    object UniButton2: TUniButton
      Left = 16
      Top = 58
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'ShowMessage Callback'
      Anchors = []
      TabOrder = 1
      OnClick = UniButton2Click
    end
    object UniMemo1: TUniMemo
      Left = 211
      Top = 29
      Width = 452
      Height = 457
      Hint = ''
      Anchors = []
      TabOrder = 2
    end
    object UniButton3: TUniButton
      Left = 16
      Top = 89
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'Nested ShowMessages'
      Anchors = []
      TabOrder = 3
      OnClick = UniButton3Click
    end
    object UniButton4: TUniButton
      Left = 16
      Top = 156
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'Dialog'
      Anchors = []
      TabOrder = 4
      OnClick = UniButton4Click
    end
    object UniButton5: TUniButton
      Left = 16
      Top = 187
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'Confirm'
      Anchors = []
      TabOrder = 5
      OnClick = UniButton5Click
    end
    object UniButton6: TUniButton
      Left = 16
      Top = 218
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'Nested Dialogs'
      Anchors = []
      TabOrder = 6
      OnClick = UniButton6Click
    end
    object UniButton7: TUniButton
      Left = 16
      Top = 307
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'mbYesNo'
      Anchors = []
      TabOrder = 7
      OnClick = UniButton7Click
    end
    object UniButton8: TUniButton
      Left = 16
      Top = 338
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'mbYesNoCancel'
      Anchors = []
      TabOrder = 8
      OnClick = UniButton8Click
    end
    object UniButton9: TUniButton
      Left = 16
      Top = 369
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'mbOKCancel'
      Anchors = []
      TabOrder = 9
      OnClick = UniButton9Click
    end
    object UniButton11: TUniButton
      Left = 16
      Top = 249
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'Error'
      Anchors = []
      TabOrder = 10
      OnClick = UniButton11Click
    end
    object UniButton10: TUniButton
      Left = 16
      Top = 419
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'Dialog - Mask'
      Anchors = []
      TabOrder = 11
      OnClick = UniButton10Click
    end
    object UniButton12: TUniButton
      Left = 16
      Top = 450
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'mbYesNo - Mask'
      Anchors = []
      TabOrder = 12
      OnClick = UniButton12Click
    end
  end
end
