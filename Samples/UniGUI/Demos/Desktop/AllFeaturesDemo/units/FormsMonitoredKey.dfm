object UniFormsMonitoredKey: TUniFormsMonitoredKey
  Left = 0
  Top = 0
  Width = 264
  Height = 128
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    264
    128)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 0
    Width = 256
    Height = 128
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniButton1: TUniButton
      Left = 77
      Top = 48
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Show Form'
      TabOrder = 0
      OnClick = UniButton1Click
    end
  end
end
