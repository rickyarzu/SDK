object UniDownloadUploadAdvancedDownload: TUniDownloadUploadAdvancedDownload
  Left = 0
  Top = 0
  Width = 569
  Height = 454
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    569
    454)
  object UniContainerPanel1: TUniContainerPanel
    Left = 172
    Top = 83
    Width = 230
    Height = 288
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    ExplicitLeft = 5
    ExplicitTop = 3
    DesignSize = (
      230
      288)
    object UniButton1: TUniButton
      Left = 41
      Top = 48
      Width = 145
      Height = 25
      Hint = ''
      Caption = 'Download A File'
      Anchors = []
      TabOrder = 0
      OnClick = UniButton1Click
    end
    object UniButton2: TUniButton
      Left = 41
      Top = 96
      Width = 145
      Height = 25
      Hint = ''
      Caption = 'Download Another File'
      Anchors = []
      TabOrder = 1
      OnClick = UniButton2Click
    end
    object UniButton3: TUniButton
      Left = 41
      Top = 192
      Width = 145
      Height = 25
      Hint = ''
      Caption = 'Download From Stream'
      Anchors = []
      TabOrder = 2
      OnClick = UniButton3Click
    end
    object UniButton4: TUniButton
      Left = 41
      Top = 144
      Width = 145
      Height = 25
      Hint = ''
      Caption = 'Download File As...'
      Anchors = []
      TabOrder = 3
      OnClick = UniButton4Click
    end
  end
end
