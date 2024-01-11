object UniUploadDownloadSendFile: TUniUploadDownloadSendFile
  Left = 0
  Top = 0
  Width = 344
  Height = 427
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 344
    Height = 427
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    DesignSize = (
      344
      427)
    object UnimButton1: TUnimButton
      Left = 24
      Top = 24
      Width = 289
      Height = 47
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Send a file'
      UI = 'small action'
      OnClick = UnimButton1Click
    end
    object UnimButton2: TUnimButton
      Left = 24
      Top = 96
      Width = 289
      Height = 47
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Send multiple files'
      UI = 'small action'
      OnClick = UnimButton2Click
    end
    object UnimButton3: TUnimButton
      Left = 24
      Top = 168
      Width = 289
      Height = 47
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Send stream'
      UI = 'small action'
      OnClick = UnimButton3Click
    end
    object UnimButton4: TUnimButton
      Left = 24
      Top = 240
      Width = 289
      Height = 47
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Caption = 'File with non-standart extension'
      UI = 'small action'
      OnClick = UnimButton4Click
    end
    object UnimButton5: TUnimButton
      Left = 24
      Top = 312
      Width = 289
      Height = 47
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Send file as...'
      UI = 'small action'
      OnClick = UnimButton5Click
    end
  end
end
