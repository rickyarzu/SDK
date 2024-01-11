object UniMenuMainMenu: TUniMenuMainMenu
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  TabOrder = 0
  DesignSize = (
    320
    240)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 0
    Width = 314
    Height = 237
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniButton1: TUniButton
      Left = 105
      Top = 104
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Open Form'
      TabOrder = 0
      OnClick = UniButton1Click
    end
  end
end
