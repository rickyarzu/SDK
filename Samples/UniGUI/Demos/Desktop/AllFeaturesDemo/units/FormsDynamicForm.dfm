object UniFormsDynamicForm: TUniFormsDynamicForm
  Left = 0
  Top = 0
  Width = 321
  Height = 261
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    321
    261)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 3
    Width = 321
    Height = 255
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniButton1: TUniButton
      Left = 120
      Top = 112
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Open Form'
      TabOrder = 0
      OnClick = UniButton1Click
    end
  end
end
