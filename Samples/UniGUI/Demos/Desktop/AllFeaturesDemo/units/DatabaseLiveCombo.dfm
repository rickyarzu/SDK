object UniDatabaseLiveCombo: TUniDatabaseLiveCombo
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
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
    DesignSize = (
      314
      237)
    object UniComboBox1: TUniComboBox
      Left = 17
      Top = 96
      Width = 281
      Hint = ''
      Text = ''
      Anchors = []
      TabOrder = 0
      MinQueryLength = 2
      RemoteQuery = True
      OnRemoteQuery = UniComboBox1RemoteQuery
    end
    object UniLabel1: TUniLabel
      Left = 32
      Top = 77
      Width = 226
      Height = 13
      Hint = ''
      Caption = 'Type a Country Name: (At least 2 Chars)'
      Anchors = []
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 1
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 131
    Top = 40
  end
end
