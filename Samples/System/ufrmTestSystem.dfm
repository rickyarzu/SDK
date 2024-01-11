object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 463
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 185
    Top = 0
    Width = 625
    Height = 463
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 463
    Align = alLeft
    TabOrder = 1
    object btnCreateVirtualStorage: TButton
      Left = 1
      Top = 34
      Width = 183
      Height = 33
      Align = alTop
      Caption = 'Create System Virtual Storage'
      TabOrder = 0
      OnClick = CreateVirtualStorageClick
    end
    object Button3: TButton
      Left = 1
      Top = 100
      Width = 183
      Height = 33
      Align = alTop
      Caption = 'Virtual Storage Login'
      TabOrder = 1
      OnClick = Button3Click
    end
    object btnVirtualWebBroker: TButton
      Left = 1
      Top = 67
      Width = 183
      Height = 33
      Align = alTop
      Caption = 'Create Virtual WebBroker'
      TabOrder = 2
      OnClick = btnVirtualWebBrokerClick
    end
    object btnSetupVirtualFactory: TButton
      Left = 1
      Top = 1
      Width = 183
      Height = 33
      Align = alTop
      Caption = 'Create Virtual System Factory'
      TabOrder = 3
      OnClick = btnSetupVirtualFactoryClick
    end
    object Button1: TButton
      Left = 1
      Top = 133
      Width = 183
      Height = 33
      Align = alTop
      Caption = 'Session Key Login'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
end
