object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 437
  ClientWidth = 675
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  DesignSize = (
    675
    437)
  PixelsPerInch = 96
  TextHeight = 13
  object UniGroupBox1: TUniGroupBox
    Left = 16
    Top = 8
    Width = 641
    Height = 393
    Hint = ''
    Caption = 'Image'
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object UniImage1: TUniImage
      Left = 2
      Top = 15
      Width = 637
      Height = 376
      Hint = ''
      Center = True
      Stretch = True
      Proportional = True
      Align = alClient
      Transparent = True
    end
  end
  object UniFileUploadButton1: TUniFileUploadButton
    Left = 18
    Top = 407
    Width = 137
    Height = 25
    Hint = ''
    Anchors = [akLeft, akBottom]
    Caption = 'Choose an Image...'
    Filter = 'image/*'
    Images = UniNativeImageList1
    ImageIndex = 0
    Messages.Uploading = 'Uploading...'
    Messages.PleaseWait = 'Please Wait'
    Messages.UploadError = 'Upload Error'
    OnCompleted = UniFileUploadButton1Completed
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 224
    Top = 272
    Images = {0100000000000000061000000066696C652D696D6167652D6F3B66613B}
  end
end
