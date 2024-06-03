object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Pack: TAdvYouTube Demo'
  ClientHeight = 452
  ClientWidth = 810
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
    Width = 810
    Height = 41
    Align = alTop
    TabOrder = 0
    object Image1: TImage
      Left = 776
      Top = 11
      Width = 25
      Height = 24
      Picture.Data = {
        07544269746D617076060000424D760600000000000036040000280000001800
        000018000000010008000000000040020000C40E0000C40E0000000100000001
        0000424EE100434FE1004450E1004753E2004854E2004D58E3004E5AE300505B
        E300525DE400535EE4005560E4005660E4005762E4005862E4005B66E5005D67
        E5005F69E600606BE600616BE600626CE600636CE6006F78E800707AE800727B
        E900767EE900DC00FF008088EB00949AEE00979DEE00A5ABF100A8ADF100A9AF
        F100AAB0F200ABB0F200AEB3F200AFB4F200B7BCF400BDC1F500BEC2F500BFC3
        F500C2C6F500C7CAF600D7DAF900D8DAF900DADCF900DBDDF900DDDFFA00E2E4
        FB00E6E7FB00E6E8FB00EFF0FC00F0F1FD00F1F2FD00F3F3FD00F4F5FD00F5F5
        FD00F6F6FE00F7F8FE00F8F8FE00F9FAFE00FAFAFE00FBFBFE00FCFCFF00FDFD
        FF00FEFEFF00FFFFFF0000000000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000190000000000000000000000000000000000000000000019000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000104
        05080B0D0D0D0C0C0C0A0805030000000000000000011D313235373838383838
        383635322F1C00000000000000164041414141414141414141414141413E1300
        00000000001F414141414140394141414141414141411B000000000000294141
        4141413D18263E41414141414141220000000000012B41414141413D10021A30
        414141414141250000000000012D41414141413D10000009223E414141412800
        00000000012C41414141413D10000005203F41414141280000000000012A4141
        4141413D1001152E414141414141270000000000002941414141413D15203A41
        4141414141412300000000000021414141414140334141414141414141411B00
        0000000000174141414141414141414141414141414014000000000000012434
        3A3C3C3D3D3D3D3D3D3C3B3A321E000000000000000002070B0F121414141414
        13110E0B06010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000019000000000000000000000000000000000000000000
        0019}
    end
    object btConnect: TButton
      Left = 13
      Top = 10
      Width = 110
      Height = 25
      Hint = 'Connect to Facebook account'
      Caption = 'Connect'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btConnectClick
    end
    object btRemove: TButton
      Left = 129
      Top = 10
      Width = 110
      Height = 25
      Hint = 'Remove access to Facebook account'
      Caption = 'Remove access'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btRemoveClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 810
    Height = 306
    Align = alTop
    Caption = 'Videos'
    TabOrder = 1
    object Label2: TLabel
      Left = 15
      Top = 198
      Width = 22
      Height = 13
      Caption = 'Link:'
    end
    object Label1: TLabel
      Left = 246
      Top = 27
      Width = 49
      Height = 13
      Caption = 'Page size:'
    end
    object Label5: TLabel
      Left = 15
      Top = 225
      Width = 35
      Height = 13
      Caption = 'Rating:'
    end
    object lbLink: TLabel
      Left = 54
      Top = 198
      Width = 26
      Height = 13
      Cursor = crHandPoint
      Caption = 'lbLink'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = lbLinkClick
    end
    object btGetVideos: TButton
      Left = 13
      Top = 22
      Width = 110
      Height = 25
      Caption = 'First Page'
      TabOrder = 0
      OnClick = btGetVideosClick
    end
    object cbRating: TComboBox
      Left = 54
      Top = 222
      Width = 186
      Height = 21
      Style = csDropDownList
      ItemIndex = 3
      TabOrder = 4
      Text = 'Unspecified'
      Items.Strings = (
        'Dislike'
        'Like'
        'None'
        'Unspecified')
    end
    object GroupBox2: TGroupBox
      Left = 648
      Top = 53
      Width = 153
      Height = 136
      Caption = 'Preview'
      TabOrder = 7
      object AdvCloudImage1: TAdvCloudImage
        Left = 13
        Top = 28
        Width = 130
        Height = 90
        Async = False
        AutoSize = False
        CheckContentLength = False
        WebPicture.Stretch = False
        PicturePosition = bpTopLeft
        Version = '1.0.0.1'
      end
    end
    object btDelete: TButton
      Left = 15
      Top = 249
      Width = 110
      Height = 25
      Caption = 'Delete'
      TabOrder = 6
      OnClick = btDeleteClick
    end
    object btSetRating: TButton
      Left = 246
      Top = 220
      Width = 110
      Height = 25
      Caption = 'Set Rating'
      TabOrder = 5
      OnClick = btSetRatingClick
    end
    object lvVideos: TListView
      Left = 14
      Top = 53
      Width = 628
      Height = 136
      Columns = <
        item
          Caption = '#'
          Width = 40
        end
        item
          Caption = 'Title'
          Width = 120
        end
        item
          Caption = 'Description'
          Width = 320
        end
        item
          Caption = 'Date'
          Width = 120
        end>
      ColumnClick = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 3
      ViewStyle = vsReport
      OnChange = lvVideosChange
    end
    object btNext: TButton
      Tag = 1
      Left = 129
      Top = 22
      Width = 110
      Height = 25
      Hint = 'Next Page'
      Caption = 'Next Page'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btGetVideosClick
    end
    object cbPageSize: TComboBox
      Left = 301
      Top = 24
      Width = 49
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = '5'
      OnChange = cbPageSizeChange
      Items.Strings = (
        '5'
        '10'
        '20')
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 347
    Width = 810
    Height = 104
    Align = alTop
    Caption = 'Upload / Update'
    TabOrder = 2
    object Label3: TLabel
      Left = 14
      Top = 17
      Width = 24
      Height = 13
      Caption = 'Title:'
    end
    object Label4: TLabel
      Left = 13
      Top = 44
      Width = 57
      Height = 13
      Caption = 'Description:'
    end
    object edTitle: TEdit
      Left = 76
      Top = 14
      Width = 316
      Height = 21
      TabOrder = 0
      Text = 'Title'
    end
    object edDescription: TEdit
      Left = 76
      Top = 41
      Width = 316
      Height = 21
      TabOrder = 1
      Text = 'Description'
    end
    object btUpload: TButton
      Left = 13
      Top = 68
      Width = 99
      Height = 25
      Caption = 'Upload'
      TabOrder = 2
      OnClick = btUploadClick
    end
    object ProgressBar1: TProgressBar
      Left = 223
      Top = 68
      Width = 169
      Height = 17
      TabOrder = 3
    end
    object btUpdate: TButton
      Left = 118
      Top = 68
      Width = 99
      Height = 25
      Caption = 'Update'
      TabOrder = 4
      OnClick = btUpdateClick
    end
  end
  object AdvYouTube1: TAdvYouTube
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888/'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    Logging = False
    OnUploadProgress = AdvYouTube1UploadProgress
    OnReceivedAccessToken = AdvYouTube1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Scopes.Strings = (
      'https://www.googleapis.com/auth/userinfo.profile'
      'https://www.googleapis.com/auth/userinfo.email'
      'https://www.googleapis.com/auth/youtube.upload'
      'https://www.googleapis.com/auth/youtube'
      'https://www.googleapis.com/auth/youtubepartner'
      'https://www.googleapis.com/auth/plus.login')
    OnAfterAddVideo = AdvYouTube1AfterAddVideo
    Left = 600
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 712
    Top = 8
  end
end
