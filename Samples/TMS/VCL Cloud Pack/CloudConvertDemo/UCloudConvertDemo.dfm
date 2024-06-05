object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'CloudConvert Demo'
  ClientHeight = 448
  ClientWidth = 564
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 200
    Width = 564
    Height = 105
    Align = alBottom
    Caption = 'Conversion Status'
    TabOrder = 0
    object ProgressLabel: TLabel
      Left = 16
      Top = 32
      Width = 67
      Height = 13
      Caption = 'ProgressLabel'
    end
    object ProgressBar1: TProgressBar
      Left = 16
      Top = 61
      Width = 410
      Height = 17
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 305
    Width = 564
    Height = 143
    Align = alBottom
    Caption = 'Conversion Results'
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 24
      Width = 107
      Height = 13
      Caption = 'Conversion start time:'
    end
    object Label5: TLabel
      Left = 16
      Top = 119
      Width = 142
      Height = 13
      Caption = 'Output file download expires:'
    end
    object Label6: TLabel
      Left = 16
      Top = 43
      Width = 102
      Height = 13
      Caption = 'Conversion end time:'
    end
    object Label7: TLabel
      Left = 16
      Top = 62
      Width = 68
      Height = 13
      Caption = 'Input file size:'
    end
    object Label8: TLabel
      Left = 16
      Top = 81
      Width = 76
      Height = 13
      Caption = 'Output file size:'
    end
    object Label9: TLabel
      Left = 16
      Top = 100
      Width = 84
      Height = 13
      Caption = 'Output file name:'
    end
    object labelCStart: TLabel
      Left = 164
      Top = 25
      Width = 53
      Height = 13
      Caption = 'labelCStart'
    end
    object labelCEnd: TLabel
      Left = 164
      Top = 44
      Width = 47
      Height = 13
      Caption = 'labelCEnd'
    end
    object labelCInputSize: TLabel
      Left = 164
      Top = 63
      Width = 74
      Height = 13
      Caption = 'labelCInputSize'
    end
    object labelCOutputSize: TLabel
      Left = 164
      Top = 82
      Width = 82
      Height = 13
      Caption = 'labelCOutputSize'
    end
    object labelCOutputFile: TLabel
      Left = 164
      Top = 101
      Width = 79
      Height = 13
      Caption = 'labelCOutputFile'
    end
    object labelCExpires: TLabel
      Left = 164
      Top = 120
      Width = 64
      Height = 13
      Caption = 'labelCExpires'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 564
    Height = 200
    Align = alClient
    TabOrder = 2
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 256
      Height = 198
      Align = alLeft
      Caption = 'Input'
      TabOrder = 0
      object Label1: TLabel
        Left = 15
        Top = 24
        Width = 82
        Height = 13
        Caption = 'Convert PDF file:'
      end
      object LabelInputFile: TLabel
        Left = 15
        Top = 43
        Width = 129
        Height = 13
        Caption = 'OrderTMScomponents.PDF'
      end
      object btOpenInput: TButton
        Left = 15
        Top = 152
        Width = 155
        Height = 25
        Caption = 'Open File'
        TabOrder = 0
        OnClick = btOpenInputClick
      end
    end
    object GroupBox4: TGroupBox
      Left = 257
      Top = 1
      Width = 306
      Height = 198
      Align = alClient
      Caption = 'Output'
      TabOrder = 1
      object Label2: TLabel
        Left = 24
        Top = 24
        Width = 73
        Height = 13
        Caption = 'Convert file to:'
      end
      object Label3: TLabel
        Left = 24
        Top = 101
        Width = 217
        Height = 36
        AutoSize = False
        Caption = 
          'PNG conversion returns ZIP file that contains a PNG file for eac' +
          'h page in the PDF file.'
        WordWrap = True
      end
      object ComboOutput: TComboBox
        Left = 24
        Top = 43
        Width = 155
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        Items.Strings = (
          'DOC'
          'HTML'
          'PNG'
          'TXT')
      end
      object btConvert: TButton
        Left = 24
        Top = 70
        Width = 155
        Height = 25
        Caption = 'Convert'
        TabOrder = 1
        OnClick = btConvertClick
      end
      object btOpenOutput: TButton
        Left = 24
        Top = 152
        Width = 155
        Height = 25
        Caption = 'Open File'
        TabOrder = 2
        OnClick = btOpenOutputClick
      end
    end
  end
  object AdvCloudConvert1: TAdvCloudConvert
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    Logging = False
    OnUploadProgress = AdvCloudConvert1UploadProgress
    OnDownloadProgress = AdvCloudConvert1DownloadProgress
    Left = 472
    Top = 8
  end
end
