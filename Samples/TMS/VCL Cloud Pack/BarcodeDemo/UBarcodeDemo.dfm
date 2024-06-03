object Form7: TForm7
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'TMS Cloud Barcode demo'
  ClientHeight = 654
  ClientWidth = 456
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
    Left = 20
    Top = 59
    Width = 30
    Height = 13
    Caption = 'Value:'
  end
  object Label2: TLabel
    Left = 20
    Top = 86
    Width = 38
    Height = 13
    Caption = 'Format:'
  end
  object Label3: TLabel
    Left = 20
    Top = 343
    Width = 34
    Height = 13
    Caption = 'Result:'
  end
  object Label5: TLabel
    Left = 20
    Top = 24
    Width = 100
    Height = 13
    Caption = 'Generate a Barcode:'
  end
  object Edit1: TEdit
    Left = 73
    Top = 59
    Width = 145
    Height = 21
    TabOrder = 0
    Text = '12345'
  end
  object cbCodeType: TComboBox
    Left = 73
    Top = 86
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 1
    Text = 'Barcode'
    OnChange = cbCodeTypeChange
    Items.Strings = (
      'Barcode'
      'QR code')
  end
  object Button1: TButton
    Left = 73
    Top = 303
    Width = 145
    Height = 25
    Caption = 'Get barcode'
    TabOrder = 2
    OnClick = Button1Click
  end
  object gbBarcode: TGroupBox
    Left = 73
    Top = 113
    Width = 200
    Height = 128
    Caption = 'Barcode options'
    TabOrder = 3
    object Label8: TLabel
      Left = 11
      Top = 50
      Width = 32
      Height = 13
      Caption = 'Width:'
    end
    object Label9: TLabel
      Left = 11
      Top = 77
      Width = 35
      Height = 13
      Caption = 'Height:'
    end
    object Label4: TLabel
      Left = 11
      Top = 23
      Width = 28
      Height = 13
      Caption = 'Type:'
    end
    object cbShowText: TCheckBox
      Left = 64
      Top = 101
      Width = 97
      Height = 17
      Caption = 'Show text '
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object edWidth: TEdit
      Left = 64
      Top = 47
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '250'
    end
    object edHeight: TEdit
      Left = 64
      Top = 74
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '100'
    end
    object cbType: TComboBox
      Left = 64
      Top = 20
      Width = 121
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 3
      Text = 'Code 39'
      Items.Strings = (
        'Code 39'
        'Code 128a'
        'Code 128b'
        'Code 128c'
        '2 of 5 Interleaved')
    end
  end
  object gbQRcode: TGroupBox
    Left = 73
    Top = 247
    Width = 200
    Height = 50
    Caption = 'QR code options'
    TabOrder = 4
    object Label7: TLabel
      Left = 11
      Top = 20
      Width = 23
      Height = 13
      Caption = 'Size:'
    end
    object cbSize: TComboBox
      Left = 64
      Top = 18
      Width = 121
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 0
      Text = '105x105'
      Items.Strings = (
        '42x42'
        '105x105'
        '210x210')
    end
  end
  object Panel1: TPanel
    Left = 72
    Top = 343
    Width = 350
    Height = 250
    TabOrder = 5
    object AdvCloudImage1: TAdvCloudImage
      Left = 1
      Top = 1
      Width = 348
      Height = 248
      Async = False
      AutoSize = False
      CheckContentLength = False
      WebPicture.Stretch = False
      PicturePosition = bpTopLeft
      Align = alClient
      Version = '1.0.1.0'
      ExplicitTop = -23
    end
  end
  object Button2: TButton
    Left = 73
    Top = 608
    Width = 145
    Height = 25
    Caption = 'Save to file'
    TabOrder = 6
    OnClick = Button2Click
  end
  object AdvBarcode1: TAdvBarcode
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    Logging = False
    Left = 304
    Top = 24
  end
  object SaveDialog1: TSaveDialog
    Filter = 'PNG files|*.png'
    Left = 304
    Top = 80
  end
end
