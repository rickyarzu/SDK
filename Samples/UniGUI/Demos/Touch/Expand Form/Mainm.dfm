object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 539
  ClientWidth = 320
  Caption = 'MainmForm'
  AutoHeight = False
  Scrollable = True
  TitleDocked = True
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 539
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    AlignmentControl = uniAlignmentClient
    ExplicitHeight = 480
    object UnimButton1: TUnimButton
      Left = 0
      Top = 0
      Width = 320
      Height = 47
      Hint = ''
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Load Photo'
      UI = 'confirm'
      OnClick = UnimButton1Click
    end
  end
  object UnimFileUpload1: TUnimFileUpload
    Title = 'Upload'
    Messages.Uploading = 'Uploading...'
    Messages.PleaseWait = 'Please Wait'
    Messages.Cancel = 'Cancel'
    Messages.Processing = 'Processing...'
    Messages.UploadError = 'Upload Error'
    Messages.Upload = 'Upload'
    Messages.NoFileError = 'Please Select a File'
    Messages.BrowseText = 'Browse...'
    Accept = 'image'
    OnCompleted = UnimFileUpload1Completed
    Left = 168
    Top = 128
  end
end
