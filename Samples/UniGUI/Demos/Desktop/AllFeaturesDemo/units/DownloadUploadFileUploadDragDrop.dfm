object UniDownloadUploadFileUploadDragDrop: TUniDownloadUploadFileUploadDragDrop
  Left = 0
  Top = 0
  Width = 916
  Height = 598
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 16
    Top = 16
    Width = 889
    Height = 569
    Hint = ''
    ParentColor = False
    TabOrder = 0
    object UniPanel1: TUniPanel
      Left = 0
      Top = 209
      Width = 889
      Height = 360
      Hint = ''
      AutoScroll = True
      Align = alClient
      TabOrder = 1
      ShowCaption = False
      TitleVisible = True
      TitleAlign = taCenter
      Title = 'Images'
      Caption = 'UniPanel1'
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Layout = 'table'
      LayoutAttribs.Columns = 5
      LayoutConfig.BodyPadding = '10px'
      ScrollHeight = 360
      ScrollWidth = 889
    end
    object UniFileUploadButton1: TUniFileUploadButton
      Left = 0
      Top = 0
      Width = 889
      Height = 209
      Hint = ''
      Align = alTop
      Caption = 'Please drop image file(s) or click here (Max 5 MB per file)'
      Filter = 'image/*'
      ImageIndex = 0
      MaxAllowedSize = 5242880
      Messages.Uploading = 'Uploading...'
      Messages.PleaseWait = 'Please Wait'
      Messages.UploadError = 'Upload Error'
      Messages.UploadTimeout = 'Timeout occurred...'
      Messages.MaxSizeError = 'File is bigger than maximum allowed size'
      Messages.MaxFilesError = 'You can upload maximum %d files.'
      AllowDragDrop = True
      ButtonVisible = False
      ShowUploadingMsg = False
      OnMultiCompleted = UniFileUploadButton1MultiCompleted
    end
  end
end
