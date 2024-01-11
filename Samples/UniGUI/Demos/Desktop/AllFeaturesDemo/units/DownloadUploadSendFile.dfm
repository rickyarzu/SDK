object UniDownloadUploadSendFile: TUniDownloadUploadSendFile
  Left = 0
  Top = 0
  Width = 257
  Height = 299
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    257
    299)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 256
    Height = 296
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniButton1: TUniButton
      Left = 18
      Top = 48
      Width = 200
      Height = 25
      Hint = ''
      Caption = 'Send a file'
      TabOrder = 0
      OnClick = UniButton1Click
    end
    object UniButton2: TUniButton
      Left = 18
      Top = 91
      Width = 200
      Height = 25
      Hint = ''
      Caption = 'Send multiple files'
      TabOrder = 1
      OnClick = UniButton2Click
    end
    object UniButton3: TUniButton
      Left = 18
      Top = 134
      Width = 200
      Height = 25
      Hint = ''
      Caption = 'Send Stream'
      TabOrder = 2
      OnClick = UniButton3Click
    end
    object UniButton4: TUniButton
      Left = 18
      Top = 177
      Width = 200
      Height = 25
      Hint = ''
      Caption = 'File with non-standard extension'
      TabOrder = 3
      OnClick = UniButton4Click
    end
    object UniButton5: TUniButton
      Left = 18
      Top = 220
      Width = 200
      Height = 25
      Hint = ''
      Caption = 'Send file as...'
      TabOrder = 4
      OnClick = UniButton5Click
    end
  end
end
