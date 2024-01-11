object UniTabPageControlTabControl: TUniTabPageControlTabControl
  Left = 0
  Top = 0
  Width = 586
  Height = 419
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    586
    419)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 0
    Width = 580
    Height = 416
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      580
      416)
    object UniTabControl1: TUniTabControl
      Left = 3
      Top = 3
      Width = 574
      Height = 410
      Hint = ''
      TabIndex = 0
      Tabs.Strings = (
        'Tab1'
        'Tab2'
        'Tab3')
      OnChange = UniTabControl1Change
      Anchors = []
      TabOrder = 0
      object UniLabel1: TUniLabel
        Left = 200
        Top = 184
        Width = 116
        Height = 33
        Hint = ''
        Caption = 'UniLabel1'
        ParentFont = False
        Font.Height = -27
        TabOrder = 1
      end
    end
  end
end
