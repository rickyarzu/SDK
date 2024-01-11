object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 666
  ClientWidth = 795
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 209
    Width = 795
    Height = 457
    Hint = ''
    AutoScroll = True
    Align = alClient
    TabOrder = 0
    ShowCaption = False
    Caption = 'UniPanel1'
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Layout = 'table'
    LayoutAttribs.Columns = 5
    LayoutConfig.BodyPadding = '10px'
    ScrollHeight = 457
    ScrollWidth = 795
  end
  object UniFileUploadButton1: TUniFileUploadButton
    Left = 0
    Top = 0
    Width = 795
    Height = 209
    Hint = ''
    Align = alTop
    Caption = 'Please drop file(s) or click here'
    Filter = 'image/*'
    ImageIndex = 0
    Messages.Uploading = 'Uploading...'
    Messages.PleaseWait = 'Please Wait'
    Messages.UploadError = 'Upload Error'
    Messages.UploadTimeout = 'Timeout occurred...'
    Messages.MaxSizeError = 'File is bigger than maximum allowed size'
    Messages.MaxFilesError = 'You can upload maximum %d files.'
    AllowDragDrop = True
    ButtonVisible = False
    OnMultiCompleted = UniFileUploadButton1MultiCompleted
  end
end
