object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Form9'
  ClientHeight = 411
  ClientWidth = 852
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 852
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnConnect: TButton
      Left = 8
      Top = 9
      Width = 89
      Height = 25
      Caption = 'Connect'
      TabOrder = 0
      OnClick = btnConnectClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 852
    Height = 370
    Align = alClient
    TabOrder = 1
    object btnAddOrder: TButton
      Left = 8
      Top = 336
      Width = 97
      Height = 25
      Caption = 'Add order'
      TabOrder = 0
      OnClick = btnAddOrderClick
    end
    object btnGetProducts: TButton
      Left = 8
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Get Products'
      TabOrder = 1
      OnClick = btnGetProductsClick
    end
    object lstProducts: TListBox
      Left = 8
      Top = 39
      Width = 825
      Height = 291
      ItemHeight = 13
      TabOrder = 2
      OnClick = lstProductsClick
    end
  end
  object AdvStripe1: TAdvStripe
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    OnReceivedAccessToken = AdvStripe1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 800
  end
end
