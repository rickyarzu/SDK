object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 585
  ClientWidth = 698
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 32
    Top = 24
    Width = 256
    Height = 64
    Hint = ''
    TabOrder = 0
    ShowCaption = False
    Caption = 'UniPanel1'
    object UniButton1: TUniButton
      Left = 72
      Top = 24
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'ShowModal()'
      TabOrder = 1
      OnClick = UniButton1Click
    end
  end
  object UniPanel2: TUniPanel
    Left = 384
    Top = 24
    Width = 256
    Height = 64
    Hint = ''
    TabOrder = 1
    Caption = 'UniPanel2'
    object UniButton2: TUniButton
      Left = 80
      Top = 24
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'MessageDlg()'
      TabOrder = 1
      OnClick = UniButton2Click
    end
  end
  object UniPanel3: TUniPanel
    Left = 32
    Top = 104
    Width = 256
    Height = 64
    Hint = ''
    TabOrder = 2
    Caption = 'UniPanel3'
    object UniButton3: TUniButton
      Left = 72
      Top = 24
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Prompt()'
      TabOrder = 1
      OnClick = UniButton3Click
    end
  end
  object UniPanel4: TUniPanel
    Left = 384
    Top = 104
    Width = 256
    Height = 64
    Hint = ''
    TabOrder = 3
    Caption = 'UniPanel2'
    object UniButton4: TUniButton
      Left = 80
      Top = 24
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Nested Calls'
      TabOrder = 1
      OnClick = UniButton4Click
    end
  end
  object UniLabel1: TUniLabel
    Left = 112
    Top = 544
    Width = 401
    Height = 13
    Hint = ''
    Caption = 
      'In MainModule "EnableSynchronousOperations" property must be Tru' +
      'e'
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 4
  end
  object UniPanel5: TUniPanel
    Left = 32
    Top = 192
    Width = 256
    Height = 64
    Hint = ''
    TabOrder = 5
    Caption = 'UniPanel2'
    object UniButton5: TUniButton
      Left = 80
      Top = 24
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Nested Forms'
      TabOrder = 1
      OnClick = UniButton5Click
    end
  end
  object UniPanel6: TUniPanel
    Left = 384
    Top = 192
    Width = 256
    Height = 64
    Hint = ''
    TabOrder = 6
    Caption = 'UniPanel2'
    object UniButton6: TUniButton
      Left = 80
      Top = 24
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Nested Forms-2'
      TabOrder = 1
      OnClick = UniButton6Click
    end
  end
  object UniPanel7: TUniPanel
    Left = 217
    Top = 320
    Width = 256
    Height = 64
    Hint = ''
    TabOrder = 7
    Caption = 'UniPanel2'
    object UniButton7: TUniButton
      Left = 80
      Top = 24
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'File Upload'
      TabOrder = 1
      OnClick = UniButton7Click
    end
  end
  object UniFileUpload1: TUniFileUpload
    Title = 'Upload'
    Messages.Uploading = 'Uploading...'
    Messages.PleaseWait = 'Please Wait'
    Messages.Cancel = 'Cancel'
    Messages.Processing = 'Processing...'
    Messages.UploadError = 'Upload Error'
    Messages.Upload = 'Upload'
    Messages.NoFileError = 'Please Select a File'
    Messages.BrowseText = 'Browse...'
    Left = 104
    Top = 296
  end
end
