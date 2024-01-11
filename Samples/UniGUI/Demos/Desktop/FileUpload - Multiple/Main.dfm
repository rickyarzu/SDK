object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 590
  ClientWidth = 839
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  DesignSize = (
    839
    590)
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 8
    Top = 8
    Width = 175
    Height = 25
    Hint = ''
    Caption = 'Upload (OnCompleted event)'
    TabOrder = 0
    ScreenMask.Enabled = True
    OnClick = UniButton1Click
  end
  object UniPanel1: TUniPanel
    Left = 8
    Top = 39
    Width = 825
    Height = 546
    Hint = ''
    AutoScroll = True
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    ShowCaption = False
    Caption = 'UniPanel1'
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Layout = 'table'
    LayoutAttribs.Columns = 5
    LayoutConfig.BodyPadding = '10px'
    ScrollHeight = 546
    ScrollWidth = 825
  end
  object UniButton2: TUniButton
    Left = 280
    Top = 8
    Width = 175
    Height = 25
    Hint = ''
    Caption = 'Upload (OnMultiCompleted event)'
    TabOrder = 2
    ScreenMask.Enabled = True
    OnClick = UniButton2Click
  end
  object UniFileUploadButton1: TUniFileUploadButton
    Left = 536
    Top = 8
    Width = 177
    Height = 25
    Hint = ''
    Caption = 'Upload Button'
    Filter = 'image/*'
    Images = UniNativeImageList1
    ImageIndex = 0
    Messages.Uploading = 'Uploading...'
    Messages.PleaseWait = 'Please Wait'
    Messages.UploadError = 'Upload Error'
    Messages.UploadTimeout = 'Timeout occurred...'
    Messages.MaxSizeError = 'File is bigger than maximum allowed size'
    Messages.MaxFilesError = 'You can upload maximum %d files.'
    MultipleFiles = True
    OnMultiCompleted = UniFileUploadButton1MultiCompleted
  end
  object UniFileUpload1: TUniFileUpload
    Filter = 'image/*'
    Title = 'Upload'
    Messages.Uploading = 'Uploading...'
    Messages.PleaseWait = 'Please Wait'
    Messages.Cancel = 'Cancel'
    Messages.Processing = 'Processing...'
    Messages.UploadError = 'Upload Error'
    Messages.Upload = 'Upload'
    Messages.NoFileError = 'Please Select a File'
    Messages.BrowseText = 'Browse...'
    Messages.UploadTimeout = 'Timeout occurred...'
    Messages.MaxSizeError = 'File is bigger than maximum allowed size'
    Messages.MaxFilesError = 'You can upload maximum %d files.'
    Images = UniNativeImageList1
    ImageIndex = 0
    MultipleFiles = True
    EraseCacheAfterCompleted = True
    OnCompleted = UniFileUpload1Completed
    Left = 144
    Top = 24
  end
  object UniFileUpload2: TUniFileUpload
    Filter = 'image/*'
    Title = 'Upload'
    Messages.Uploading = 'Uploading...'
    Messages.PleaseWait = 'Please Wait'
    Messages.Cancel = 'Cancel'
    Messages.Processing = 'Processing...'
    Messages.UploadError = 'Upload Error'
    Messages.Upload = 'Upload'
    Messages.NoFileError = 'Please Select a File'
    Messages.BrowseText = 'Browse...'
    Messages.UploadTimeout = 'Timeout occurred...'
    Messages.MaxSizeError = 'File is bigger than maximum allowed size'
    Messages.MaxFilesError = 'You can upload maximum %d files.'
    Images = UniNativeImageList1
    ImageIndex = 0
    MultipleFiles = True
    EraseCacheAfterCompleted = True
    OnMultiCompleted = UniFileUpload2MultiCompleted
    Left = 424
    Top = 24
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 328
    Top = 215
    Images = {0100000000000000061000000066696C652D696D6167652D6F3B66613B}
  end
end
