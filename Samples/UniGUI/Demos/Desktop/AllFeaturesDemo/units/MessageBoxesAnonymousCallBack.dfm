object UniMessageBoxesAnonymousCallBack: TUniMessageBoxesAnonymousCallBack
  Left = 0
  Top = 0
  Width = 623
  Height = 515
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    623
    515)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 617
    Height = 509
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      617
      509)
    object UniButton1: TUniButton
      Left = 8
      Top = 72
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'ShowMessage'
      Anchors = []
      TabOrder = 0
      OnClick = UniButton1Click
    end
    object UniButton2: TUniButton
      Left = 8
      Top = 103
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'ShowMessage Callback'
      Anchors = []
      TabOrder = 1
      OnClick = UniButton2Click
    end
    object UniMemo1: TUniMemo
      Left = 168
      Top = 40
      Width = 443
      Height = 441
      Hint = ''
      Anchors = []
      TabOrder = 2
    end
    object UniButton3: TUniButton
      Left = 8
      Top = 134
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'Nested ShowMessages'
      Anchors = []
      TabOrder = 3
      OnClick = UniButton3Click
    end
    object UniButton4: TUniButton
      Left = 8
      Top = 201
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'Dialog'
      Anchors = []
      TabOrder = 4
      OnClick = UniButton4Click
    end
    object UniButton5: TUniButton
      Left = 8
      Top = 232
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'Confirm'
      Anchors = []
      TabOrder = 5
      OnClick = UniButton5Click
    end
    object UniButton6: TUniButton
      Left = 8
      Top = 263
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'Nested Dialogs'
      Anchors = []
      TabOrder = 6
      OnClick = UniButton6Click
    end
    object UniButton7: TUniButton
      Left = 8
      Top = 352
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'mbYesNo'
      Anchors = []
      TabOrder = 7
      OnClick = UniButton7Click
    end
    object UniButton8: TUniButton
      Left = 8
      Top = 383
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'mbYesNoCancel'
      Anchors = []
      TabOrder = 8
      OnClick = UniButton8Click
    end
    object UniButton9: TUniButton
      Left = 8
      Top = 414
      Width = 155
      Height = 25
      Hint = ''
      Caption = 'mbOKCancel'
      Anchors = []
      TabOrder = 9
      OnClick = UniButton9Click
    end
  end
end
