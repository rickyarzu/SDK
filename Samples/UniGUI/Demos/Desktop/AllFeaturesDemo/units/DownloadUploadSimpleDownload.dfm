object UniDownloadUploadSimpleDownload: TUniDownloadUploadSimpleDownload
  Left = 0
  Top = 0
  Width = 423
  Height = 471
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    423
    471)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 417
    Height = 465
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      417
      465)
    object UniLabel1: TUniLabel
      Left = 56
      Top = 56
      Width = 46
      Height = 13
      Hint = ''
      TextConversion = txtHTML
      Caption = 'UniLabel1'
      Anchors = []
      TabOrder = 0
    end
    object UniButton1: TUniButton
      Left = 56
      Top = 75
      Width = 297
      Height = 25
      Hint = ''
      Caption = 'File in Temp Folder'
      Anchors = []
      TabOrder = 1
      OnClick = UniButton1Click
    end
    object UniMemo1: TUniMemo
      Left = 56
      Top = 168
      Width = 297
      Height = 209
      Hint = ''
      Lines.Strings = (
        'Sample Text!'
        'Sample Text!'
        'Sample Text!'
        'Sample Text!'
        'Sample Text!'
        'Sample Text!'
        'Sample Text!')
      Anchors = []
      TabOrder = 2
    end
    object UniButton2: TUniButton
      Left = 56
      Top = 106
      Width = 297
      Height = 25
      Hint = ''
      Caption = 'File in Local Cache Folder'
      Anchors = []
      TabOrder = 3
      OnClick = UniButton2Click
    end
    object UniButton3: TUniButton
      Left = 56
      Top = 137
      Width = 297
      Height = 25
      Hint = ''
      Caption = 'File in Global Cache Folder'
      Anchors = []
      TabOrder = 4
      OnClick = UniButton3Click
    end
  end
end
