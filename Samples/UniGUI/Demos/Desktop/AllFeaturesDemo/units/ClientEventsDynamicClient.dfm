object UniClientEventsDynamicClient: TUniClientEventsDynamicClient
  Left = 0
  Top = 0
  Width = 653
  Height = 472
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 653
    Height = 472
    Hint = ''
    ParentColor = False
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    DesignSize = (
      653
      472)
    object UniButton1: TUniButton
      Left = 264
      Top = 152
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'UniButton1'
      Anchors = []
      TabOrder = 0
    end
    object UniEdit1: TUniEdit
      Left = 248
      Top = 208
      Width = 121
      Hint = ''
      Text = 'UniEdit1'
      Anchors = []
      TabOrder = 1
    end
    object UniEdit2: TUniEdit
      Left = 248
      Top = 256
      Width = 121
      Hint = ''
      Text = 'UniEdit2'
      Anchors = []
      TabOrder = 2
    end
  end
end
