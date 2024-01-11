object UniThemesChangeTheme: TUniThemesChangeTheme
  Left = 0
  Top = 0
  Width = 216
  Height = 305
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 216
    Height = 305
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimList1: TUnimList
      Left = 0
      Top = 0
      Width = 216
      Height = 305
      Hint = ''
      Items.Strings = (
        'triton'
        'ios'
        'material'
        'neptune')
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      OnSelect = UnimList1Select
    end
  end
end
