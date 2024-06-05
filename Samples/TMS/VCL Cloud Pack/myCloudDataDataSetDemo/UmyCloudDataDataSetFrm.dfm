object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'myCloudData DataSet demo'
  ClientHeight = 390
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 6
    Width = 729
    Height = 39
    Caption = 
      'In this demo, TAdvMyCloudDataSet represents the CONTACTS table o' +
      'n the myCloudData cloud service. When the table does not exist y' +
      'et it will create an empty table for it. This CONTACTS table can' +
      ' also be accessed with the regular myCloudData demo. Via the TDB' +
      'Grid, you can read, update, delete and insert records in the clo' +
      'ud CONTACTS table.'
    WordWrap = True
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 115
    Width = 745
    Height = 265
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnConn: TButton
    Left = 8
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 1
    OnClick = btnConnClick
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 84
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 2
  end
  object btnDisConn: TButton
    Left = 104
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Disconnect'
    Enabled = False
    TabOrder = 3
    OnClick = btnDisConnClick
  end
  object AdvMyCloudDataDataSet1: TAdvMyCloudDataDataSet
    App.CallBackURL = 'http://127.0.0.1:8888'
    App.CallBackPort = 8888
    Connection = AdvMyCloudDataConnection1
    Filter = <>
    PersistTokens.Location = plIniFile
    Table = 'CONTACTS'
    TableID = 80
    Left = 408
    Top = 200
    Tokens = ''
  end
  object AdvMyCloudDataConnection1: TAdvMyCloudDataConnection
    Connected = True
    App.CallBackURL = 'http://127.0.0.1:8888'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    OnConnected = AdvMyCloudDataConnection1Connected
    Left = 408
    Top = 144
    Tokens = ''
  end
  object DataSource1: TDataSource
    DataSet = AdvMyCloudDataDataSet1
    Left = 408
    Top = 256
  end
end
