object UniUploadDownloadAdvancedDownload: TUniUploadDownloadAdvancedDownload
  Left = 0
  Top = 0
  Width = 375
  Height = 499
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 375
    Height = 499
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    DesignSize = (
      375
      499)
    object UnimButton1: TUnimButton
      Left = 24
      Top = 24
      Width = 321
      Height = 47
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Download A File'
      UI = 'small action'
      OnClick = UnimButton1Click
    end
    object UnimButton2: TUnimButton
      Left = 24
      Top = 146
      Width = 321
      Height = 47
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Download Another File'
      UI = 'small action'
      OnClick = UnimButton2Click
    end
    object UnimButton3: TUnimButton
      Left = 24
      Top = 269
      Width = 321
      Height = 47
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Download File As...'
      UI = 'small action'
      OnClick = UnimButton3Click
    end
    object UnimButton4: TUnimButton
      Left = 24
      Top = 392
      Width = 321
      Height = 47
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Download From Stream'
      UI = 'small action'
      OnClick = UnimButton4Click
    end
  end
end
