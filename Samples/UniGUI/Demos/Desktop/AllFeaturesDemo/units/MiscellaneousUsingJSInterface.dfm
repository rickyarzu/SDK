object UniMiscellaneousUsingJSInterface: TUniMiscellaneousUsingJSInterface
  Left = 0
  Top = 0
  Width = 926
  Height = 668
  OnCreate = UniFrameCreate
  TabOrder = 0
  DesignSize = (
    926
    668)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 910
    Height = 654
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniButton1: TUniButton
      Left = 64
      Top = 48
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'UniButton1'
      TabOrder = 1
    end
    object UniButton2: TUniButton
      Left = 64
      Top = 88
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'UniButton2'
      TabOrder = 2
    end
    object UniPanel1: TUniPanel
      Left = 64
      Top = 200
      Width = 256
      Height = 128
      Hint = ''
      TabOrder = 3
      Caption = 'UniPanel1'
      object UniButton3: TUniButton
        Left = 72
        Top = 100
        Width = 75
        Height = 25
        Hint = ''
        Caption = 'UniButton3'
        TabOrder = 1
      end
    end
    object UniPanel2: TUniPanel
      Left = 64
      Top = 376
      Width = 537
      Height = 128
      Hint = ''
      TabOrder = 4
      ShowCaption = False
      Caption = 'UniPanel2'
    end
    object UniButton4: TUniButton
      Left = 416
      Top = 80
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'JSCall'
      TabOrder = 5
      OnClick = UniButton4Click
    end
    object UniButton5: TUniButton
      Left = 416
      Top = 120
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'JSCallGlobal'
      TabOrder = 6
      OnClick = UniButton5Click
    end
    object UniButton6: TUniButton
      Left = 64
      Top = 127
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'UniButton6'
      TabOrder = 7
    end
  end
end
