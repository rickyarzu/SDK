object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Pack Microsoft Computer Vision/Emotion Demo'
  ClientHeight = 514
  ClientWidth = 831
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
  object Label4: TLabel
    Left = 493
    Top = 13
    Width = 39
    Height = 13
    Caption = 'Results:'
  end
  object Memo1: TMemo
    Left = 493
    Top = 32
    Width = 330
    Height = 469
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 473
    Height = 497
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Sample Images'
      object ciOCR: TAdvCloudImage
        Left = 3
        Top = 11
        Width = 446
        Height = 100
        Async = False
        AutoSize = False
        CheckContentLength = False
        WebPicture.Stretch = False
        PicturePosition = bpShrinkWithAspectRatio
        Version = '1.0.1.1'
      end
      object ciAnalyze: TAdvCloudImage
        Left = 3
        Top = 165
        Width = 200
        Height = 200
        Async = False
        AutoSize = False
        CheckContentLength = False
        WebPicture.Stretch = False
        PicturePosition = bpShrinkWithAspectRatio
        Version = '1.0.1.1'
      end
      object ciEmotion: TAdvCloudImage
        Left = 249
        Top = 165
        Width = 200
        Height = 200
        Async = False
        AutoSize = False
        CheckContentLength = False
        WebPicture.Stretch = False
        PicturePosition = bpShrinkWithAspectRatio
        Version = '1.0.1.1'
      end
      object btOCR: TButton
        Left = 3
        Top = 117
        Width = 75
        Height = 25
        Caption = 'OCR'
        TabOrder = 0
        OnClick = btOCRClick
      end
      object btAnalyze: TButton
        Left = 3
        Top = 371
        Width = 75
        Height = 25
        Caption = 'Analysis'
        TabOrder = 1
        OnClick = btAnalyzeClick
      end
      object btEmotion: TButton
        Left = 249
        Top = 371
        Width = 75
        Height = 25
        Caption = 'Emotion'
        TabOrder = 2
        OnClick = btEmotionClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Custom Images'
      ImageIndex = 1
      object Label3: TLabel
        Left = 8
        Top = 6
        Width = 28
        Height = 13
        Caption = 'Type:'
      end
      object Label1: TLabel
        Left = 8
        Top = 33
        Width = 23
        Height = 13
        Caption = 'URL:'
      end
      object Label2: TLabel
        Left = 8
        Top = 126
        Width = 34
        Height = 13
        Caption = 'Image:'
      end
      object AdvCloudImage1: TAdvCloudImage
        Left = 8
        Top = 153
        Width = 449
        Height = 305
        Async = False
        AutoSize = False
        CheckContentLength = False
        WebPicture.Stretch = False
        PicturePosition = bpShrinkWithAspectRatio
        Version = '1.0.1.1'
      end
      object cbCognitiveType: TComboBox
        Left = 50
        Top = 3
        Width = 150
        Height = 21
        Style = csDropDownList
        TabOrder = 0
      end
      object edURL: TEdit
        Left = 50
        Top = 30
        Width = 305
        Height = 21
        TabOrder = 1
      end
      object btProcessURL: TButton
        Left = 50
        Top = 57
        Width = 150
        Height = 25
        Caption = 'Process Image URL'
        TabOrder = 2
        OnClick = btProcessURLClick
      end
      object btProcessFile: TButton
        Left = 50
        Top = 88
        Width = 150
        Height = 25
        Caption = 'Process Local Image File'
        TabOrder = 3
        OnClick = btProcessFileClick
      end
    end
  end
  object AdvMSEmotion1: TAdvMSEmotion
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    App.Location = calWestEurope
    PersistTokens.Location = plIniFile
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 560
    Top = 16
  end
  object AdvMSComputerVision1: TAdvMSComputerVision
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    App.Location = calWestEurope
    PersistTokens.Location = plIniFile
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 640
    Top = 16
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
    Left = 744
    Top = 16
  end
end
