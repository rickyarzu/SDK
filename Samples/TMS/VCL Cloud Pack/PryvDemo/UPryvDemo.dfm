object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Pack: Pryv Demo'
  ClientHeight = 715
  ClientWidth = 766
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
    Top = 41
    Width = 766
    Height = 256
    Align = alTop
    Caption = 'Streams'
    TabOrder = 0
    object Label5: TLabel
      Left = 195
      Top = 50
      Width = 31
      Height = 13
      Caption = 'Name:'
    end
    object btStreams: TButton
      Left = 8
      Top = 16
      Width = 110
      Height = 25
      Caption = 'Get Streams'
      TabOrder = 0
      OnClick = btStreamsClick
    end
    object btDeleteStream: TButton
      Left = 311
      Top = 215
      Width = 110
      Height = 25
      Caption = 'Delete'
      TabOrder = 5
      OnClick = btDeleteStreamClick
    end
    object btAddStream: TButton
      Left = 195
      Top = 215
      Width = 110
      Height = 25
      Caption = 'Add'
      TabOrder = 4
      OnClick = btAddStreamClick
    end
    object edStreamName: TEdit
      Left = 232
      Top = 47
      Width = 201
      Height = 21
      TabOrder = 2
    end
    object btUpdateStream: TButton
      Left = 427
      Top = 215
      Width = 110
      Height = 25
      Caption = 'Update'
      TabOrder = 6
      OnClick = btUpdateStreamClick
    end
    object TreeView1: TTreeView
      Left = 8
      Top = 47
      Width = 181
      Height = 194
      HideSelection = False
      Indent = 19
      TabOrder = 1
      OnChange = TreeView1Change
    end
    object cbSubStream: TCheckBox
      Left = 195
      Top = 192
      Width = 226
      Height = 17
      Caption = 'Add as substream of selected stream'
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      766
      41)
    object Image1: TImage
      Left = 734
      Top = 8
      Width = 24
      Height = 24
      Anchors = [akTop, akRight]
      Picture.Data = {
        07544269746D617076060000424D760600000000000036040000280000001800
        000018000000010008000000000040020000C40E0000C40E0000000100000001
        00001F1BB500211CB500221DB500231DB600231EB500241EB600251FB6002520
        B6002721B7002722B7002822B7002824B7002822B8002923B8002A24B8002E27
        B9002F28B9002E2CB900342FBB003530BC003631BC003632BD003732BC003B36
        BD003E38BE004944C2004A44C2005652C6005852C6005B55C700615CC9006460
        CB006961CB006863CB006964CB006963CC006B66CC006C65CD006C67CD006D67
        CE006D68CD006F6ACE007069CE00706ACE00726DCF00746DCF007671D0007974
        D1007A75D1007D77D300DC00FF00908BD900938EDA009D98DE009F9BDE00B1AD
        E400B3AFE500B5B2E500B7B3E600B8B4E600BBB7E600BCB7E800BFBAE800C0BC
        E900C2BFEA00C9C6EC00CDC9EC00D9D6F200DAD8F200E6E5F600E8E6F700EAE9
        F700EBEAF800ECEBF800EDECF900EFEEF900F0EFF900F1F0FA00F2F1FA00F4F2
        FA00FAFAFD00FBFAFD00FDFDFE00FEFDFE00FEFEFF00FFFEFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000320505050505050505050505050505050505050505050532050505050505
        0505050505050505050505050505050505050505050505050505050505050505
        0505050505050505050505050505050505050505050505050505050505050505
        0505050505050505050505050A11110905050505050505050505050505050505
        050505021D3B3A1C0205050505050505050505050505050505050501294A4924
        0105050505050505050505050505050505050501284948220105050505050505
        0505050505050505050505012649482101050505050505050505050505050505
        05050504304C4B2E020505050505050505050505050505050505021438515137
        1202050505050505050505050505050505050227465455452302050505050505
        05050505050505050504153E54393C543D130405050505050505050505050505
        05002D4E4B1E204E4D2B0005050505050505050505050505010B42553D13163F
        55410801050505050505050505050505052A514C2F0607314E50250305050505
        050505050505030C344F523E1701011840534E330A030505050505050505030E
        3648432C050403062E4447350D03050505050505050505071A1F1B0F03050503
        101C1F1906050505050505050505050504030305050505050503030405050505
        0505050505050505050505050505050505050505050505050505050505050505
        0505050505050505050505050505050505050505050505050505050505050505
        0505050505050505050532050505050505050505050505050505050505050505
        0532}
    end
    object btConnect: TButton
      Left = 8
      Top = 8
      Width = 110
      Height = 25
      Caption = 'Connect'
      TabOrder = 0
      OnClick = btConnectClick
    end
    object btRemove: TButton
      Left = 124
      Top = 8
      Width = 110
      Height = 25
      Caption = 'Remove Access'
      TabOrder = 1
      OnClick = btRemoveClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 297
    Width = 766
    Height = 418
    Align = alClient
    Caption = 'Events'
    TabOrder = 2
    DesignSize = (
      766
      418)
    object Label1: TLabel
      Left = 10
      Top = 270
      Width = 27
      Height = 13
      Caption = 'Tags:'
    end
    object AdvCloudImage1: TAdvCloudImage
      Left = 513
      Top = 235
      Width = 120
      Height = 120
      Async = False
      AutoSize = False
      CheckContentLength = False
      WebPicture.Stretch = False
      PicturePosition = bpShrinkWithAspectRatio
      Version = '1.0.0.1'
    end
    object Label2: TLabel
      Left = 10
      Top = 351
      Width = 19
      Height = 13
      Caption = 'Lat:'
    end
    object Label3: TLabel
      Left = 10
      Top = 324
      Width = 21
      Height = 13
      Caption = 'Lon:'
    end
    object Label4: TLabel
      Left = 263
      Top = 297
      Width = 27
      Height = 13
      Caption = 'Desc:'
    end
    object Label6: TLabel
      Left = 263
      Top = 219
      Width = 30
      Height = 13
      Caption = 'Value:'
    end
    object Label7: TLabel
      Left = 10
      Top = 216
      Width = 28
      Height = 13
      Caption = 'Type:'
    end
    object Label8: TLabel
      Left = 10
      Top = 297
      Width = 23
      Height = 13
      Caption = 'Unit:'
    end
    object Label9: TLabel
      Left = 513
      Top = 216
      Width = 37
      Height = 13
      Caption = 'Picture:'
    end
    object Label10: TLabel
      Left = 10
      Top = 243
      Width = 27
      Height = 13
      Caption = 'Date:'
    end
    object Label11: TLabel
      Left = 124
      Top = 28
      Width = 84
      Height = 13
      Caption = 'Max # of events:'
    end
    object ProgressLabel: TLabel
      Left = 514
      Top = 384
      Width = 67
      Height = 13
      Caption = 'ProgressLabel'
    end
    object btEvents: TButton
      Left = 8
      Top = 16
      Width = 110
      Height = 25
      Caption = 'Get Events'
      TabOrder = 0
      OnClick = btEventsClick
    end
    object edTags: TEdit
      Left = 47
      Top = 267
      Width = 200
      Height = 21
      TabOrder = 5
    end
    object edLatitude: TEdit
      Left = 47
      Top = 348
      Width = 200
      Height = 21
      TabOrder = 8
    end
    object edLongitude: TEdit
      Left = 47
      Top = 321
      Width = 200
      Height = 21
      TabOrder = 7
    end
    object btAddEvent: TButton
      Left = 10
      Top = 375
      Width = 110
      Height = 25
      Caption = 'Add'
      TabOrder = 11
      OnClick = btAddEventClick
    end
    object btDeleteEvent: TButton
      Left = 126
      Top = 375
      Width = 110
      Height = 25
      Caption = 'Delete'
      TabOrder = 12
      OnClick = btDeleteEventClick
    end
    object btUpdateEvent: TButton
      Left = 242
      Top = 375
      Width = 110
      Height = 25
      Caption = 'Update'
      TabOrder = 13
      OnClick = btUpdateEventClick
    end
    object cbEventType: TComboBox
      Left = 48
      Top = 213
      Width = 200
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 3
      Text = 'Text'
      OnChange = cbEventTypeChange
      Items.Strings = (
        'Text'
        'Picture'
        'Position'
        'Value')
    end
    object ListView1: TListView
      Left = 8
      Top = 47
      Width = 746
      Height = 154
      Anchors = [akLeft, akTop, akRight]
      Columns = <
        item
          Caption = 'Value'
          Width = 120
        end
        item
          Caption = 'Type'
          Width = 120
        end
        item
          Caption = 'Description'
          Width = 240
        end
        item
          Caption = 'Date'
          Width = 120
        end
        item
          Caption = 'Stream'
          Width = 120
        end>
      ColumnClick = False
      HideSelection = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 2
      ViewStyle = vsReport
      OnChange = ListView1Change
    end
    object dpDate: TDateTimePicker
      Left = 47
      Top = 240
      Width = 201
      Height = 21
      Date = 41829.417768506940000000
      Time = 41829.417768506940000000
      TabOrder = 4
    end
    object cbStream: TCheckBox
      Left = 263
      Top = 24
      Width = 208
      Height = 17
      Caption = 'Show events for selected stream only'
      TabOrder = 1
    end
    object meValue: TMemo
      Left = 312
      Top = 216
      Width = 185
      Height = 73
      TabOrder = 9
    end
    object meDescription: TMemo
      Left = 312
      Top = 295
      Width = 185
      Height = 73
      Lines.Strings = (
        '')
      TabOrder = 10
    end
    object cbUnit: TComboBox
      Left = 47
      Top = 294
      Width = 200
      Height = 21
      TabOrder = 6
      Items.Strings = (
        'energy/kcal'
        'frequency/khz'
        'length/cm'
        'mass/kg'
        'money/eur'
        'pressure/bar'
        'power/kw'
        'speed/km-h'
        'temperature/c'
        'time/ms'
        'volume/m3'
        'url/http')
    end
    object cbEventCount: TComboBox
      Left = 214
      Top = 20
      Width = 43
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 14
      Text = '25'
      Items.Strings = (
        '25'
        '50'
        '100')
    end
    object ProgressBar1: TProgressBar
      Left = 358
      Top = 382
      Width = 150
      Height = 17
      TabOrder = 15
    end
    object btDownload: TButton
      Left = 639
      Top = 232
      Width = 110
      Height = 25
      Caption = 'Download'
      TabOrder = 16
      OnClick = btDownloadClick
    end
  end
  object AdvPryv1: TAdvPryv
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.01:8888/?pryv'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    Logging = False
    OnUploadProgress = AdvPryv1UploadProgress
    OnDownloadProgress = AdvPryv1DownloadProgress
    OnReceivedAccessToken = AdvPryv1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 432
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 344
    Top = 8
  end
end
