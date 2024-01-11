object UniFormsTitleButton: TUniFormsTitleButton
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 240
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    DesignSize = (
      320
      240)
    object UnimButton1: TUnimButton
      Left = 24
      Top = 88
      Width = 257
      Height = 47
      Hint = ''
      Anchors = []
      Caption = 'Title Buttons Form'
      OnClick = UnimButton1Click
    end
  end
end
