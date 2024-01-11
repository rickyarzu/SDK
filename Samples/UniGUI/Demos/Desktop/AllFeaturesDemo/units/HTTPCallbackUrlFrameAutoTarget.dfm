object UniHTTPCallbackUrlFrameAutoTarget: TUniHTTPCallbackUrlFrameAutoTarget
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  TabOrder = 0
  DesignSize = (
    320
    240)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 240
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniButton1: TUniButton
      Left = 120
      Top = 104
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Show'
      TabOrder = 1
      OnClick = UniButton1Click
    end
  end
end
