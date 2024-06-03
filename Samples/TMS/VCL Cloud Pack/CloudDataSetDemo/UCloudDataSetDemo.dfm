object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Pack DataStore Demo'
  ClientHeight = 540
  ClientWidth = 977
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
    Width = 177
    Height = 540
    Align = alLeft
    TabOrder = 0
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 16
      Width = 145
      Height = 97
      Caption = 'Select Cloud DataStore'
      ItemIndex = 0
      Items.Strings = (
        'myCloudData'
        'Google DataStore'
        'Apple CloudKit')
      TabOrder = 0
    end
    object btConnect: TButton
      Left = 16
      Top = 119
      Width = 145
      Height = 25
      Caption = 'Connect'
      TabOrder = 1
      OnClick = btConnectClick
    end
    object btDisconnect: TButton
      Left = 16
      Top = 150
      Width = 145
      Height = 25
      Caption = 'Disconnect'
      Enabled = False
      TabOrder = 2
      OnClick = btDisconnectClick
    end
  end
  object Panel2: TPanel
    Left = 177
    Top = 0
    Width = 800
    Height = 540
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 798
      Height = 41
      Align = alTop
      TabOrder = 0
      object DBNavigator1: TDBNavigator
        Left = 5
        Top = 10
        Width = 240
        Height = 25
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 42
      Width = 798
      Height = 446
      Align = alClient
      DataSource = DataSource1
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Panel4: TPanel
      Left = 1
      Top = 488
      Width = 798
      Height = 51
      Align = alBottom
      TabOrder = 2
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 796
        Height = 49
        Align = alClient
        AutoSize = False
        Caption = 
          'This demo requires a cloud data table to be present on myCloudDa' +
          'ta and/or Google DataStore and/or Apple CloudKit. For CloudKit, ' +
          'this demo expects a data table with following schema:  Name: str' +
          'ing,  Children: integer,   Salary: float,  Birthday: datetime. F' +
          'or myCloudData or Google DataStore the component can automatical' +
          'ly retrieve the metadata from the respective service.'
        WordWrap = True
        ExplicitLeft = 5
        ExplicitTop = 6
      end
    end
  end
  object AdvCloudKit1: TAdvCloudKit
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'CloudKit'
    PersistTokens.Key = '.\CKTOKENS.INI'
    Logging = True
    LogLevel = llDetail
    OnReceivedAccessToken = AdvGDataStore1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    MetaData = <>
    Left = 48
    Top = 256
  end
  object CloudDataSet1: TCloudDataSet
    Adapter = CloudDataStoreAdapter1
    Left = 48
    Top = 376
  end
  object CloudDataStoreAdapter1: TCloudDataStoreAdapter
    OnMetaDataRetrieved = CloudDataStoreAdapter1MetaDataRetrieved
    Left = 48
    Top = 424
  end
  object DataSource1: TDataSource
    DataSet = CloudDataSet1
    Left = 48
    Top = 480
  end
  object AdvGDataStore1: TAdvGDataStore
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888/'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'GoogleDataStore'
    PersistTokens.Key = '.\DSTOKENS.INI'
    Scopes.Strings = (
      'https://www.googleapis.com/auth/userinfo.profile'
      'https://www.googleapis.com/auth/userinfo.email'
      'https://www.googleapis.com/auth/datastore')
    Logging = True
    LogLevel = llDetail
    OnReceivedAccessToken = AdvGDataStore1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    MetaData = <>
    Left = 48
    Top = 208
  end
  object AdvMyCloudData1: TAdvMyCloudData
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'myCloudData'
    PersistTokens.Key = '.\MCDTOKENS.INI'
    OnReceivedAccessToken = AdvGDataStore1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    MetaData = <>
    Left = 48
    Top = 312
  end
end
