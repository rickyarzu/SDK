object Form66: TForm66
  Left = 0
  Top = 0
  Caption = 'DataSnap Client'
  ClientHeight = 123
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 67
    Width = 121
    Height = 25
    Caption = 'Reverse'
    Enabled = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object txtText: TEdit
    Left = 167
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'A B C'
  end
  object Button2: TButton
    Left = 24
    Top = 24
    Width = 121
    Height = 25
    Caption = 'Connect'
    TabOrder = 2
    OnClick = Button2Click
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DataSnap'
      'HostName=localhost'
      'port=211')
    AfterConnect = SQLConnection1AfterConnect
    AfterDisconnect = SQLConnection1AfterDisconnect
    Left = 240
    Top = 8
    UniqueId = '{0C35B5F6-49C4-47CC-9CF3-F2D7E52A2004}'
  end
end
