object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'iCloud Contacts dataset & sync demo'
  ClientHeight = 574
  ClientWidth = 825
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 825
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      825
      41)
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 52
      Height = 13
      Caption = 'Username:'
    end
    object Label2: TLabel
      Left = 242
      Top = 11
      Width = 50
      Height = 13
      Caption = 'Password:'
    end
    object edUser: TEdit
      Left = 62
      Top = 8
      Width = 174
      Height = 21
      TabOrder = 0
    end
    object edPassword: TEdit
      Left = 296
      Top = 8
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
    object Button1: TButton
      Left = 716
      Top = 9
      Width = 97
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Login'
      Default = True
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Button2: TButton
    Left = 8
    Top = 47
    Width = 89
    Height = 25
    Caption = 'Sync'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 825
    Height = 247
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 823
      Height = 245
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 288
    Width = 825
    Height = 286
    Align = alBottom
    TabOrder = 3
    object Label3: TLabel
      Left = 119
      Top = 43
      Width = 54
      Height = 13
      Caption = 'First name:'
    end
    object Label4: TLabel
      Left = 119
      Top = 70
      Width = 53
      Height = 13
      Caption = 'Last name:'
    end
    object Label5: TLabel
      Left = 119
      Top = 98
      Width = 49
      Height = 13
      Caption = 'Company:'
    end
    object Label6: TLabel
      Left = 119
      Top = 151
      Width = 44
      Height = 13
      Caption = 'Birthday:'
    end
    object Label7: TLabel
      Left = 119
      Top = 125
      Width = 42
      Height = 13
      Caption = 'Job title:'
    end
    object Label8: TLabel
      Left = 8
      Top = 176
      Width = 32
      Height = 13
      Caption = 'Notes:'
    end
    object Button3: TButton
      Left = 254
      Top = 5
      Width = 123
      Height = 25
      Caption = 'Sync changes'
      TabOrder = 0
      OnClick = Button3Click
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 6
      Width = 240
      Height = 25
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 179
      Top = 40
      Width = 200
      Height = 21
      DataField = 'VCard_FirstName'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 179
      Top = 67
      Width = 200
      Height = 21
      DataField = 'VCard_LastName'
      DataSource = DataSource1
      TabOrder = 3
    end
    object PageControl1: TPageControl
      Left = 394
      Top = 40
      Width = 417
      Height = 233
      ActivePage = TabSheet1
      TabOrder = 4
      object TabSheet1: TTabSheet
        Caption = 'Phone'
        object DBGrid3: TDBGrid
          Left = 16
          Top = 24
          Width = 369
          Height = 161
          DataSource = DataSource3
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Email'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid2: TDBGrid
          Left = 16
          Top = 24
          Width = 369
          Height = 161
          DataSource = DataSource2
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Address'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid4: TDBGrid
          Left = 16
          Top = 24
          Width = 369
          Height = 161
          DataSource = DataSource4
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    object DBImage1: TDBImage
      Left = 8
      Top = 43
      Width = 105
      Height = 121
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 179
      Top = 95
      Width = 200
      Height = 21
      DataField = 'VCard_Company'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DateTimePicker1: TDateTimePicker
      Left = 179
      Top = 148
      Width = 150
      Height = 21
      Date = 41417.645556388890000000
      Time = 41417.645556388890000000
      TabOrder = 7
      OnChange = DateTimePicker1Change
    end
    object DBEdit4: TDBEdit
      Left = 179
      Top = 122
      Width = 200
      Height = 21
      DataField = 'VCard_JobTitle'
      DataSource = DataSource1
      TabOrder = 8
    end
    object DBMemo1: TDBMemo
      Left = 8
      Top = 195
      Width = 369
      Height = 78
      DataField = 'VCard_Note'
      DataSource = DataSource1
      TabOrder = 9
    end
  end
  object iCloudContacts1: TiCloudContacts
    Synchronizer = WebDavSync1
    IgnoreCertificateError = True
    Url = 'https://contacts.icloud.com'
    Active = False
    ForceSynchronize = True
    Left = 24
    Top = 88
  end
  object WebDavStorage1: TAdvWebDavStorage
    StorageTargets = <
      item
        DBFieldMapping.ItemMapping.ApplyFilterForQueryItems = True
        IsDefault = True
        SupportedComponents = [wdctWebDav, wdctCalDav, wdctCardDav]
        StorageObject = wdssXmlFile
        Location = '.\contacts.xml'
      end
      item
        DBFieldMapping.ItemMapping.ApplyFilterForQueryItems = True
        IsDefault = False
        SupportedComponents = []
        StorageObject = wdssInMemory
      end>
    Left = 24
    Top = 152
  end
  object WebDavSync1: TAdvWebDavSync
    Storage = WebDavStorage1
    Left = 24
    Top = 216
  end
  object WebDavDataSet1: TAdvWebDavDataSet
    DefaultImageFormat = wifJpeg
    InsertAction = iaChooseDefaultFolder
    QueryComponent = wdctCardDav
    Storage = WebDavStorage1
    Aggregates = <>
    IndexDefs = <>
    Params = <>
    AfterScroll = WebDavDataSet1AfterScroll
    Left = 352
    Top = 208
  end
  object DataSource1: TDataSource
    DataSet = WebDavDataSet1
    Left = 504
    Top = 240
  end
  object EmailDS: TAdvWebDavCollectionFieldDataSet
    WebDavDataSet = WebDavDataSet1
    CollectionField = wdcfEmailAddress
    Active = True
    Aggregates = <>
    IndexDefs = <>
    Params = <>
    Left = 464
    Top = 152
    Data = {
      080300009619E0BD01000000180000001F00000000000300000008030B70686F
      6E656E756D62657202004A000000010005574944544802000200FE0106697374
      6578740200030000000000076973766F69636502000300000000000569736661
      78020003000000000006697363656C6C0200030000000000076973766964656F
      0200030000000000076973706167657202000300000000000B69737465787470
      686F6E6502000300000000000C656D61696C6164647265737302004A00000001
      0005574944544802000200FE0109656D61696C7479706501004A000000010005
      57494454480200020032000673747265657402004A0000000100055749445448
      02000200FE0107636F756E74727901004A000000010005574944544802000200
      8000066E756D62657201004A000000010005574944544802000200800008706F
      7374636F646501004A0000000100055749445448020002008000046369747901
      004A000000010005574944544802000200800006726567696F6E01004A000000
      01000557494454480200020080000B6164647265737374797065010049000000
      01000557494454480200020019000C6D61696C696E676C6162656C04004B0000
      00010007535542545950450200490009005769646554657874000874696D657A
      6F6E650100490000000100055749445448020002001900026964010049000000
      01000557494454480200020019000C646C6F666673657466726F6D0100490000
      00010005574944544802000200190009646C6474737461727408000800000000
      000A646C6F6666736574746F040001000000000006646C6E616D650100490000
      00010005574944544802000200400005646C75726C0200490000000100055749
      44544802000200FF000B736F666673657466726F6D0400010000000000087364
      747374617274040001000000000009736F6666736574746F0400010000000000
      05736E616D650100490000000100055749445448020002004000096669656C64
      7479706501004A00000001000557494454480200020032000970726566657272
      656402000300000000000000}
  end
  object DataSource2: TDataSource
    DataSet = EmailDS
    Left = 472
    Top = 96
  end
  object DataSource3: TDataSource
    DataSet = PhoneDS
    Left = 592
    Top = 96
  end
  object PhoneDS: TAdvWebDavCollectionFieldDataSet
    WebDavDataSet = WebDavDataSet1
    CollectionField = wdcfPhone
    Active = True
    Aggregates = <>
    IndexDefs = <>
    Params = <>
    Left = 592
    Top = 152
    Data = {
      080300009619E0BD01000000180000001F00000000000300000008030B70686F
      6E656E756D62657202004A000000010005574944544802000200FE0106697374
      6578740200030000000000076973766F69636502000300000000000569736661
      78020003000000000006697363656C6C0200030000000000076973766964656F
      0200030000000000076973706167657202000300000000000B69737465787470
      686F6E6502000300000000000C656D61696C6164647265737302004A00000001
      0005574944544802000200FE0109656D61696C7479706501004A000000010005
      57494454480200020032000673747265657402004A0000000100055749445448
      02000200FE0107636F756E74727901004A000000010005574944544802000200
      8000066E756D62657201004A000000010005574944544802000200800008706F
      7374636F646501004A0000000100055749445448020002008000046369747901
      004A000000010005574944544802000200800006726567696F6E01004A000000
      01000557494454480200020080000B6164647265737374797065010049000000
      01000557494454480200020019000C6D61696C696E676C6162656C04004B0000
      00010007535542545950450200490009005769646554657874000874696D657A
      6F6E650100490000000100055749445448020002001900026964010049000000
      01000557494454480200020019000C646C6F666673657466726F6D0100490000
      00010005574944544802000200190009646C6474737461727408000800000000
      000A646C6F6666736574746F040001000000000006646C6E616D650100490000
      00010005574944544802000200400005646C75726C0200490000000100055749
      44544802000200FF000B736F666673657466726F6D0400010000000000087364
      747374617274040001000000000009736F6666736574746F0400010000000000
      05736E616D650100490000000100055749445448020002004000096669656C64
      7479706501004A00000001000557494454480200020032000970726566657272
      656402000300000000000000}
  end
  object AddressDS: TAdvWebDavCollectionFieldDataSet
    WebDavDataSet = WebDavDataSet1
    CollectionField = wdcfAddress
    Active = True
    Aggregates = <>
    IndexDefs = <>
    Params = <>
    Left = 664
    Top = 152
    Data = {
      080300009619E0BD01000000180000001F00000000000300000008030B70686F
      6E656E756D62657202004A000000010005574944544802000200FE0106697374
      6578740200030000000000076973766F69636502000300000000000569736661
      78020003000000000006697363656C6C0200030000000000076973766964656F
      0200030000000000076973706167657202000300000000000B69737465787470
      686F6E6502000300000000000C656D61696C6164647265737302004A00000001
      0005574944544802000200FE0109656D61696C7479706501004A000000010005
      57494454480200020032000673747265657402004A0000000100055749445448
      02000200FE0107636F756E74727901004A000000010005574944544802000200
      8000066E756D62657201004A000000010005574944544802000200800008706F
      7374636F646501004A0000000100055749445448020002008000046369747901
      004A000000010005574944544802000200800006726567696F6E01004A000000
      01000557494454480200020080000B6164647265737374797065010049000000
      01000557494454480200020019000C6D61696C696E676C6162656C04004B0000
      00010007535542545950450200490009005769646554657874000874696D657A
      6F6E650100490000000100055749445448020002001900026964010049000000
      01000557494454480200020019000C646C6F666673657466726F6D0100490000
      00010005574944544802000200190009646C6474737461727408000800000000
      000A646C6F6666736574746F040001000000000006646C6E616D650100490000
      00010005574944544802000200400005646C75726C0200490000000100055749
      44544802000200FF000B736F666673657466726F6D0400010000000000087364
      747374617274040001000000000009736F6666736574746F0400010000000000
      05736E616D650100490000000100055749445448020002004000096669656C64
      7479706501004A00000001000557494454480200020032000970726566657272
      656402000300000000000000}
  end
  object DataSource4: TDataSource
    DataSet = AddressDS
    Left = 672
    Top = 96
  end
end
