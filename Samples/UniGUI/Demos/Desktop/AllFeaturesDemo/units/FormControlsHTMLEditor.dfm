object UniFormControlsHTMLEditor: TUniFormControlsHTMLEditor
  Left = 0
  Top = 0
  Width = 639
  Height = 637
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    639
    637)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 633
    Height = 614
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      633
      614)
    object UniMemo1: TUniMemo
      Left = 24
      Top = 336
      Width = 563
      Height = 254
      Hint = ''
      Anchors = []
      TabOrder = 0
    end
    object UniButton1: TUniButton
      Left = 24
      Top = 10
      Width = 125
      Height = 25
      Hint = ''
      Caption = 'Show/Hide Toolbar'
      Anchors = []
      TabOrder = 1
      OnClick = UniButton1Click
    end
    object UniButton2: TUniButton
      Left = 188
      Top = 292
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Get HTML'
      Anchors = []
      TabOrder = 2
      OnClick = UniButton2Click
    end
    object UniButton3: TUniButton
      Left = 331
      Top = 292
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Set HTML'
      Anchors = []
      TabOrder = 3
      OnClick = UniButton3Click
    end
    object UniHTMLMemo1: TUniHTMLMemo
      Left = 24
      Top = 41
      Width = 563
      Height = 232
      Hint = ''
      Lines.Strings = (
        'UniHTMLMemo1')
      Anchors = []
      Color = clWindow
      TabOrder = 4
    end
  end
end
