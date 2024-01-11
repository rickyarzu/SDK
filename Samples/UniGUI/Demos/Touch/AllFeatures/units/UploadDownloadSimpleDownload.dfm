object UniUploadDownloadSimpleDownload: TUniUploadDownloadSimpleDownload
  Left = 0
  Top = 0
  Width = 411
  Height = 510
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 411
    Height = 510
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    DesignSize = (
      411
      510)
    object UnimButton1: TUnimButton
      Left = 56
      Top = 56
      Width = 305
      Height = 47
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Caption = 'File in Temp Folder'
      UI = 'small action'
      OnClick = UnimButton1Click
    end
    object UnimButton2: TUnimButton
      Left = 56
      Top = 109
      Width = 305
      Height = 47
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Caption = 'File in Local Cache Folder'
      UI = 'small action'
      OnClick = UnimButton2Click
    end
    object UnimButton3: TUnimButton
      Left = 56
      Top = 162
      Width = 305
      Height = 47
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Caption = 'File in Global Cache Folder'
      UI = 'small action'
      OnClick = UnimButton3Click
    end
    object UnimMemo1: TUnimMemo
      Left = 56
      Top = 224
      Width = 305
      Height = 265
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Lines.Strings = (
        'Sample Text!'
        'Sample Text!'
        'Sample Text!'
        'Sample Text!'
        'Sample Text!'
        'Sample Text!'
        'Sample Text!')
    end
    object UnimLabel1: TUnimLabel
      Left = 0
      Top = 28
      Width = 411
      Height = 23
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'UnimLabel1'
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
    end
    object UnimContainerPanel2: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 411
      Height = 28
      Hint = ''
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
    end
  end
end
