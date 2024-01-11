object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 568
  ClientWidth = 735
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniMemo1: TUniMemo
    Left = 0
    Top = 352
    Width = 735
    Height = 216
    Hint = ''
    Lines.Strings = (
      'UniMemo1')
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 0
  end
  object UniButton1: TUniButton
    Left = 8
    Top = 40
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Images'
    TabOrder = 1
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 8
    Top = 152
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Custom'
    TabOrder = 2
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 8
    Top = 280
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Text'
    TabOrder = 3
    OnClick = UniButton3Click
  end
  object UniImage1: TUniImage
    Left = 208
    Top = 24
    Width = 497
    Height = 305
    Hint = ''
  end
  object UniFileUploadText: TUniFileUpload
    OnCompleted = UniFileUploadTextCompleted
    Filter = '.txt'
    Title = 'Upload'
    Messages.Uploading = 'Uploading...'
    Messages.PleaseWait = 'Please Wait'
    Messages.Cancel = 'Cancel'
    Messages.Processing = 'Processing...'
    Messages.UploadError = 'Upload Error'
    Messages.Upload = 'Upload'
    Messages.NoFileError = 'Please Select a File'
    Messages.BrowseText = 'Browse...'
    Left = 120
    Top = 264
  end
  object UniFileUploadImage: TUniFileUpload
    OnCompleted = UniFileUploadImageCompleted
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
    Left = 120
    Top = 16
  end
  object UniFileUploadCustom: TUniFileUpload
    OnCompleted = UniFileUploadCustomCompleted
    Filter = '.txt,.sql,.json'
    Title = 'Upload'
    Messages.Uploading = 'Uploading...'
    Messages.PleaseWait = 'Please Wait'
    Messages.Cancel = 'Cancel'
    Messages.Processing = 'Processing...'
    Messages.UploadError = 'Upload Error'
    Messages.Upload = 'Upload'
    Messages.NoFileError = 'Please Select a File'
    Messages.BrowseText = 'Browse...'
    Left = 120
    Top = 128
  end
end
