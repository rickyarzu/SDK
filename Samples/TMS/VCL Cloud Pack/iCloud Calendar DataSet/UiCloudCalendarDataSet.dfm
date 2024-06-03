object Form1: TForm1
  Left = 0
  Top = 0
  Anchors = [akTop, akRight]
  Caption = 'iCloud Calendar dataset demo'
  ClientHeight = 473
  ClientWidth = 826
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
    Width = 826
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      826
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
      Left = 720
      Top = 6
      Width = 97
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Login'
      Default = True
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 826
    Height = 199
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VCalendar_Summary'
        ReadOnly = True
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VCalendar_StartDateTime'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VCalendar_EndDateTime'
        ReadOnly = True
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 240
    Width = 826
    Height = 233
    Align = alBottom
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 73
      Width = 48
      Height = 13
      Caption = 'Summary:'
    end
    object Label4: TLabel
      Left = 8
      Top = 154
      Width = 28
      Height = 13
      Caption = 'Start:'
    end
    object Label5: TLabel
      Left = 8
      Top = 181
      Width = 22
      Height = 13
      Caption = 'End:'
    end
    object Label6: TLabel
      Left = 8
      Top = 211
      Width = 38
      Height = 13
      Caption = 'Priority:'
    end
    object Label7: TLabel
      Left = 8
      Top = 100
      Width = 44
      Height = 13
      Caption = 'Location:'
    end
    object Label8: TLabel
      Left = 432
      Top = 51
      Width = 57
      Height = 13
      Caption = 'Description:'
    end
    object Label9: TLabel
      Left = 8
      Top = 126
      Width = 23
      Height = 13
      Caption = 'URL:'
    end
    object Label10: TLabel
      Left = 8
      Top = 44
      Width = 47
      Height = 13
      Caption = 'Calendar:'
    end
    object Button3: TButton
      Left = 254
      Top = 6
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
    object edSummary: TDBEdit
      Left = 75
      Top = 70
      Width = 334
      Height = 21
      DataField = 'VCalendar_Summary'
      DataSource = DataSource1
      TabOrder = 2
    end
    object edStartDate: TDateTimePicker
      Left = 75
      Top = 150
      Width = 94
      Height = 21
      Date = 41417.489827141200000000
      Time = 41417.489827141200000000
      TabOrder = 3
      OnChange = edStartDateChange
    end
    object edStartTime: TDateTimePicker
      Left = 175
      Top = 150
      Width = 73
      Height = 21
      Date = 41417.489827141200000000
      Time = 41417.489827141200000000
      Kind = dtkTime
      TabOrder = 4
      OnChange = edStartDateChange
    end
    object edEndDate: TDateTimePicker
      Left = 75
      Top = 177
      Width = 94
      Height = 21
      Date = 41417.489827141200000000
      Time = 41417.489827141200000000
      TabOrder = 5
      OnChange = edStartDateChange
    end
    object edEndTime: TDateTimePicker
      Left = 175
      Top = 177
      Width = 73
      Height = 21
      Date = 41417.489827141200000000
      Time = 41417.489827141200000000
      Kind = dtkTime
      TabOrder = 6
      OnChange = edStartDateChange
    end
    object edPriority: TSpinEdit
      Left = 75
      Top = 204
      Width = 94
      Height = 22
      MaxValue = 10
      MinValue = 0
      TabOrder = 7
      Value = 0
      OnChange = edStartDateChange
    end
    object edLocation: TDBEdit
      Left = 75
      Top = 97
      Width = 334
      Height = 21
      DataField = 'VCalendar_Location'
      DataSource = DataSource1
      TabOrder = 8
    end
    object DBMemo1: TDBMemo
      Left = 432
      Top = 70
      Width = 385
      Height = 156
      DataField = 'VCalendar_Description'
      DataSource = DataSource1
      TabOrder = 9
    end
    object edURL: TDBEdit
      Left = 75
      Top = 123
      Width = 334
      Height = 21
      DataField = 'VCalendar_Url'
      DataSource = DataSource1
      TabOrder = 10
    end
    object cmbCalendars: TComboBox
      Left = 75
      Top = 41
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 11
    end
  end
  object iCloudCalendar1: TiCloudCalendar
    ForceSynchronize = True
    Synchronizer = AdvWebDavSync1
    Url = 'https://caldav.icloud.com'
    IgnoreCertificateError = True
    Active = False
    Left = 56
    Top = 80
  end
  object AdvWebDavStorage1: TAdvWebDavStorage
    StorageTargets = <
      item
        DBFieldMapping.ItemMapping.ApplyFilterForQueryItems = True
        IsDefault = True
        SupportedComponents = [wdctWebDav, wdctCalDav, wdctCardDav]
        StorageObject = wdssXmlFile
        Location = '.\calendar.xml'
      end
      item
        DBFieldMapping.ItemMapping.ApplyFilterForQueryItems = True
        IsDefault = False
        SupportedComponents = [wdctWebDav, wdctCalDav, wdctCardDav]
        StorageObject = wdssInMemory
      end>
    Left = 56
    Top = 136
  end
  object AdvWebDavSync1: TAdvWebDavSync
    Storage = AdvWebDavStorage1
    Left = 56
    Top = 192
  end
  object AdvWebDavDataSet1: TAdvWebDavDataSet
    DefaultImageFormat = wifJpeg
    InsertAction = iaChooseFolder
    Storage = AdvWebDavStorage1
    Aggregates = <>
    IndexDefs = <>
    Params = <>
    BeforePost = AdvWebDavDataSet1BeforePost
    AfterScroll = AdvWebDavDataSet1AfterScroll
    Left = 200
    Top = 128
    object AdvWebDavDataSet1DisplayText: TWideStringField
      FieldName = 'DisplayText'
      Size = 255
    end
    object AdvWebDavDataSet1Etag: TWideStringField
      FieldName = 'Etag'
      Size = 0
    end
    object AdvWebDavDataSet1ContentType: TWideStringField
      FieldName = 'ContentType'
      Size = 150
    end
    object AdvWebDavDataSet1Data: TWideMemoField
      FieldName = 'Data'
      BlobType = ftWideMemo
    end
    object AdvWebDavDataSet1HRef: TWideMemoField
      FieldName = 'HRef'
      BlobType = ftWideMemo
    end
    object AdvWebDavDataSet1ModifiedDateTime: TDateTimeField
      FieldName = 'ModifiedDateTime'
    end
    object AdvWebDavDataSet1CreationDateTime: TDateTimeField
      FieldName = 'CreationDateTime'
    end
    object AdvWebDavDataSet1ItemState: TWideStringField
      FieldName = 'ItemState'
      Size = 50
    end
    object AdvWebDavDataSet1StoragePath: TWideStringField
      FieldName = 'StoragePath'
      Size = 2048
    end
    object AdvWebDavDataSet1Photo: TBlobField
      FieldName = 'Photo'
    end
    object AdvWebDavDataSet1VCard_FirstName: TWideStringField
      FieldName = 'VCard_FirstName'
      Size = 128
    end
    object AdvWebDavDataSet1VCard_LastName: TWideStringField
      FieldName = 'VCard_LastName'
      Size = 128
    end
    object AdvWebDavDataSet1VCard_FullName: TWideStringField
      FieldName = 'VCard_FullName'
      Size = 128
    end
    object AdvWebDavDataSet1VCard_Address: TWideMemoField
      FieldName = 'VCard_Address'
      BlobType = ftWideMemo
    end
    object AdvWebDavDataSet1VCard_Phone: TWideMemoField
      FieldName = 'VCard_Phone'
      BlobType = ftWideMemo
    end
    object AdvWebDavDataSet1VCard_Nickname: TWideStringField
      FieldName = 'VCard_Nickname'
      Size = 128
    end
    object AdvWebDavDataSet1VCard_Nameprefix: TWideStringField
      FieldName = 'VCard_Nameprefix'
      Size = 128
    end
    object AdvWebDavDataSet1VCard_Namesuffix: TWideStringField
      FieldName = 'VCard_Namesuffix'
      Size = 128
    end
    object AdvWebDavDataSet1VCard_Company: TWideStringField
      FieldName = 'VCard_Company'
      Size = 128
    end
    object AdvWebDavDataSet1VCard_JobTitle: TWideStringField
      FieldName = 'VCard_JobTitle'
      Size = 128
    end
    object AdvWebDavDataSet1VCard_Note: TWideMemoField
      FieldName = 'VCard_Note'
      BlobType = ftWideMemo
    end
    object AdvWebDavDataSet1VCard_Source: TWideStringField
      FieldName = 'VCard_Source'
      Size = 128
    end
    object AdvWebDavDataSet1VCard_Email: TWideMemoField
      FieldName = 'VCard_Email'
      BlobType = ftWideMemo
      Size = 256
    end
    object AdvWebDavDataSet1VCard_WebSiteUrl: TWideStringField
      FieldName = 'VCard_WebSiteUrl'
      Size = 256
    end
    object AdvWebDavDataSet1VCard_Categories: TWideMemoField
      FieldName = 'VCard_Categories'
      BlobType = ftWideMemo
    end
    object AdvWebDavDataSet1VCard_Profession: TWideStringField
      FieldName = 'VCard_Profession'
      Size = 256
    end
    object AdvWebDavDataSet1VCard_Birthday: TDateTimeField
      FieldName = 'VCard_Birthday'
    end
    object AdvWebDavDataSet1VCard_PhotoUrl: TWideStringField
      FieldName = 'VCard_PhotoUrl'
      Size = 256
    end
    object AdvWebDavDataSet1VCalendar_Summary: TWideStringField
      FieldName = 'VCalendar_Summary'
      Size = 256
    end
    object AdvWebDavDataSet1VCalendar_AlarmMessage: TWideStringField
      FieldName = 'VCalendar_AlarmMessage'
      Size = 256
    end
    object AdvWebDavDataSet1VCalendar_EndDateTime: TDateTimeField
      FieldName = 'VCalendar_EndDateTime'
    end
    object AdvWebDavDataSet1VCalendar_StartDateTime: TDateTimeField
      FieldName = 'VCalendar_StartDateTime'
    end
    object AdvWebDavDataSet1VCalendar_Category: TWideStringField
      FieldName = 'VCalendar_Category'
      Size = 50
    end
    object AdvWebDavDataSet1VCalendar_Classification: TWideStringField
      FieldName = 'VCalendar_Classification'
      Size = 50
    end
    object AdvWebDavDataSet1VCalendar_Priority: TWideStringField
      FieldName = 'VCalendar_Priority'
      Size = 50
    end
    object AdvWebDavDataSet1VCalendar_Recurrency: TWideStringField
      FieldName = 'VCalendar_Recurrency'
      Size = 150
    end
    object AdvWebDavDataSet1VCalendar_Status: TWideStringField
      FieldName = 'VCalendar_Status'
      Size = 50
    end
    object AdvWebDavDataSet1VCalendar_Description: TWideMemoField
      FieldName = 'VCalendar_Description'
      BlobType = ftWideMemo
    end
    object AdvWebDavDataSet1VCalendar_Location: TWideStringField
      FieldName = 'VCalendar_Location'
      Size = 255
    end
    object AdvWebDavDataSet1VCalendar_Url: TWideStringField
      FieldName = 'VCalendar_Url'
      Size = 255
    end
    object AdvWebDavDataSet1VCalendar_TimeZone: TWideMemoField
      FieldName = 'VCalendar_TimeZone'
      BlobType = ftWideMemo
    end
  end
  object DataSource1: TDataSource
    DataSet = AdvWebDavDataSet1
    Left = 200
    Top = 184
  end
end
