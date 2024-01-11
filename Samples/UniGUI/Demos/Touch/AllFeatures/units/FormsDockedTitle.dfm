object UniFormsDockedTitle: TUniFormsDockedTitle
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
      Left = 32
      Top = 88
      Width = 265
      Height = 47
      Hint = ''
      Anchors = []
      Caption = 'Docked Title Form'
      OnClick = UnimButton1Click
    end
  end
end
