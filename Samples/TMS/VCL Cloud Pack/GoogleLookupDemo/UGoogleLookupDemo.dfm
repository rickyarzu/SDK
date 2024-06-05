object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 
    'TMS Cloud Pack: TAdvGoogleLookupProvider / TAdvGoogleLocationLoo' +
    'kupProvider'
  ClientHeight = 362
  ClientWidth = 713
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 697
    Height = 211
    Caption = 'Google search lookup'
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 295
      Top = 32
      Width = 23
      Height = 22
      Hint = 'Lookup matching search entries'
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333300003333333333333333333300003333373333333333333300003333
        07733333333333330000333000773333333333330000330F0007733333333333
        00003330F000777777733333000033330F000000007733330000333330F00788
        87077333000033333300788FF870773300003333330788888F87073300003333
        3308888888F80733000033333307888888F807330000333333078FF888880733
        0000333333777FF8888773330000333333307788887033330000333333330777
        7703333300003333333337000733333300003333333333333333333300003333
        33333333333333330000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Edit1: TEdit
      Left = 16
      Top = 33
      Width = 273
      Height = 21
      TabOrder = 0
    end
    object ListBox1: TListBox
      Left = 16
      Top = 60
      Width = 665
      Height = 138
      ItemHeight = 13
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 224
    Width = 697
    Height = 129
    Caption = 'Edit control with lookup provider'
    TabOrder = 1
    object RadioGroup1: TRadioGroup
      Left = 24
      Top = 24
      Width = 337
      Height = 41
      Caption = 'Lookup Provider'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Google location lookup'
        'Google search lookup')
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object AdvCloudLookupEdit1: TAdvCloudLookupEdit
      Left = 24
      Top = 88
      Width = 337
      Height = 21
      EmptyTextStyle = []
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.DisplayCount = 8
      Lookup.Enabled = True
      Lookup.NumChars = 3
      Lookup.Provider = AdvGoogleLocationLookupProvider1
      Color = clWindow
      TabOrder = 1
      Visible = True
      Version = '1.0.0.0'
    end
  end
  object AdvGoogleLookupProvider1: TAdvGoogleLookupProvider
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    Logging = False
    Left = 592
    Top = 24
  end
  object AdvGoogleLocationLookupProvider1: TAdvGoogleLocationLookupProvider
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    Logging = False
    Language = 'en'
    Left = 424
    Top = 24
  end
end
