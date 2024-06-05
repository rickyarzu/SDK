object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Pack Public Picture Upload Demo'
  ClientHeight = 601
  ClientWidth = 749
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 109
    Width = 65
    Height = 13
    Caption = 'Local Pictures'
  end
  object Label2: TLabel
    Left = 375
    Top = 109
    Width = 81
    Height = 13
    Caption = 'Pictures in cloud:'
  end
  object AdvCloudImage1: TAdvCloudImage
    Left = 375
    Top = 342
    Width = 353
    Height = 243
    Async = False
    AutoSize = False
    CheckContentLength = False
    WebPicture.Stretch = False
    PicturePosition = bpShrinkWithAspectRatio
    Version = '1.0.1.1'
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 17
    Width = 185
    Height = 73
    Caption = 'Select Service'
    Items.Strings = (
      'Imgur'
      'CloudInary')
    TabOrder = 0
  end
  object btUpload: TButton
    Left = 16
    Top = 311
    Width = 110
    Height = 25
    Caption = 'Upload Picture'
    TabOrder = 1
    OnClick = btUploadClick
  end
  object lbLocal: TListBox
    Left = 16
    Top = 128
    Width = 353
    Height = 177
    ItemHeight = 13
    TabOrder = 2
  end
  object lbCloud: TListBox
    Left = 375
    Top = 128
    Width = 353
    Height = 177
    ItemHeight = 13
    TabOrder = 3
    OnClick = lbCloudClick
  end
  object btView: TButton
    Left = 375
    Top = 311
    Width = 110
    Height = 25
    Caption = 'View in Browser'
    TabOrder = 4
    OnClick = btViewClick
  end
  object btConnect: TButton
    Left = 207
    Top = 17
    Width = 110
    Height = 25
    Caption = 'Connect'
    TabOrder = 5
    OnClick = btConnectClick
  end
  object btRemove: TButton
    Left = 207
    Top = 48
    Width = 110
    Height = 25
    Caption = 'Remove Access'
    TabOrder = 6
    OnClick = btRemoveClick
  end
  object AdvCloudinary1: TAdvCloudinary
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 520
    Top = 40
  end
  object AdvImgur1: TAdvImgur
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    OnConnected = AdvImgur1Connected
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 616
    Top = 40
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.jpg;*.jpeg;*.gif;*.png;*.t' +
      'if;*.tiff;*.ico;*.emf;*.wmf)|*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.jp' +
      'g;*.jpeg;*.gif;*.png;*.ico|GIF Image (*.gif)|*.gif|Portable Netw' +
      'ork Graphics (*.png)|*.png|JPEG Image File (*.jpg)|*.jpg|JPEG Im' +
      'age File (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|JPEG Images (*.jp' +
      'g)|*.jpg|JPEG Images (*.jpeg)|*.jpeg|GIF Images (*.gif)|*.gif|PN' +
      'G Images (*.png)|*.png|Icons (*.ico)|*.ico'
    Left = 432
    Top = 40
  end
end
