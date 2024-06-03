object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Pack MS Bing Speech Demo'
  ClientHeight = 365
  ClientWidth = 512
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
    Left = 337
    Top = 65
    Width = 65
    Height = 13
    Caption = 'Download as:'
  end
  object Label2: TLabel
    Left = 34
    Top = 65
    Width = 26
    Height = 13
    Caption = 'Text:'
  end
  object btSynthesize: TButton
    Left = 337
    Top = 113
    Width = 110
    Height = 25
    Caption = 'Text To Speech'
    TabOrder = 0
    OnClick = btSynthesizeClick
  end
  object Memo1: TMemo
    Left = 34
    Top = 84
    Width = 297
    Height = 248
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 512
    Height = 49
    Align = alTop
    TabOrder = 2
    object btConnect: TButton
      Left = 34
      Top = 9
      Width = 110
      Height = 25
      Caption = 'Connect'
      TabOrder = 0
      OnClick = btConnectClick
    end
    object btRemove: TButton
      Left = 150
      Top = 9
      Width = 110
      Height = 25
      Caption = 'Remove Access'
      TabOrder = 1
      OnClick = btRemoveClick
    end
  end
  object cbType: TComboBox
    Left = 337
    Top = 86
    Width = 110
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 3
    Text = 'Stream'
    Items.Strings = (
      'Stream'
      'File')
  end
  object AdvMSBingSpeech1: TAdvMSBingSpeech
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    Scopes.Strings = (
      'https://speech.platform.bing.com')
    OnConnected = AdvMSBingSpeech1Connected
    Left = 384
    Top = 256
  end
end
