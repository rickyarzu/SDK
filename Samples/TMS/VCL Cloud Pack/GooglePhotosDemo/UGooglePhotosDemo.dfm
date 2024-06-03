object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Pack: TAdvGooglePhotos Demo'
  ClientHeight = 705
  ClientWidth = 665
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
    Width = 665
    Height = 41
    Align = alTop
    TabOrder = 0
    object btConnect: TButton
      Left = 13
      Top = 10
      Width = 100
      Height = 25
      Hint = 'Connect to Google account'
      Caption = 'Connect'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btConnectClick
    end
    object btRemove: TButton
      Left = 119
      Top = 10
      Width = 100
      Height = 25
      Hint = 'Remove access to Twitter account'
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
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 392
    Width = 665
    Height = 313
    Align = alBottom
    Caption = 'Photos'
    TabOrder = 2
    object Label1: TLabel
      Left = 13
      Top = 56
      Width = 57
      Height = 13
      Caption = 'Description:'
    end
    object AdvCloudImage2: TAdvCloudImage
      Left = 443
      Top = 103
      Width = 200
      Height = 200
      Async = False
      AutoSize = False
      CheckContentLength = False
      WebPicture.Stretch = False
      PicturePosition = bpStretchedWithAspectRatio
      Version = '1.0.1.1'
    end
    object Label5: TLabel
      Left = 443
      Top = 84
      Width = 52
      Height = 13
      Caption = 'Thumbnail:'
    end
    object edPhotoDescription: TEdit
      Left = 78
      Top = 53
      Width = 247
      Height = 21
      TabOrder = 2
      Text = 'Uploaded with TMS Cloud Pack'
    end
    object btUpload: TButton
      Left = 13
      Top = 15
      Width = 100
      Height = 25
      Hint = 'Upload a Photo to the currently selected Album'
      Caption = 'Upload Photo'
      TabOrder = 0
      OnClick = btUploadClick
    end
    object lvPhotos: TListView
      Left = 13
      Top = 87
      Width = 422
      Height = 215
      Columns = <
        item
          Caption = 'FileName'
          Width = 200
        end
        item
          Caption = 'Description'
          Width = 200
        end>
      ReadOnly = True
      RowSelect = True
      TabOrder = 3
      ViewStyle = vsReport
      OnClick = lvPhotosClick
    end
    object btDownload: TButton
      Left = 119
      Top = 15
      Width = 100
      Height = 25
      Caption = 'Download Photo'
      TabOrder = 1
      OnClick = btDownloadClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 41
    Width = 665
    Height = 351
    Align = alClient
    Caption = 'Albums'
    TabOrder = 1
    object Label2: TLabel
      Left = 15
      Top = 61
      Width = 24
      Height = 13
      Caption = 'Title:'
    end
    object AdvCloudImage1: TAdvCloudImage
      Left = 443
      Top = 142
      Width = 200
      Height = 200
      Async = False
      AutoSize = False
      CheckContentLength = False
      WebPicture.Stretch = False
      PicturePosition = bpShrinkWithAspectRatio
      Version = '1.0.1.1'
    end
    object Label3: TLabel
      Left = 443
      Top = 123
      Width = 94
      Height = 13
      Caption = 'Album cover photo:'
    end
    object lvAlbums: TListView
      Left = 15
      Top = 123
      Width = 422
      Height = 222
      Columns = <
        item
          Caption = 'Title'
          Width = 200
        end
        item
          Caption = 'Description'
          Width = 200
        end>
      ReadOnly = True
      RowSelect = True
      TabOrder = 4
      ViewStyle = vsReport
      OnClick = lvAlbumsClick
    end
    object btAlbums: TButton
      Left = 13
      Top = 19
      Width = 100
      Height = 25
      Hint = 'Retrieve Picasa albums'
      Caption = 'Get Albums'
      TabOrder = 0
      OnClick = btAlbumsClick
    end
    object btDownloadAlbum: TButton
      Left = 119
      Top = 19
      Width = 100
      Height = 25
      Caption = 'Download Album'
      TabOrder = 1
      OnClick = btDownloadAlbumClick
    end
    object btUploadFolder: TButton
      Left = 225
      Top = 19
      Width = 100
      Height = 25
      Caption = 'Upload Folder'
      TabOrder = 2
      OnClick = btUploadFolderClick
    end
    object edAlbumTitle: TEdit
      Left = 80
      Top = 58
      Width = 247
      Height = 21
      TabOrder = 3
      Text = 'New Album Title'
    end
    object btCreateAlbum: TButton
      Left = 13
      Top = 85
      Width = 100
      Height = 25
      Caption = 'Create Album'
      TabOrder = 5
      OnClick = btCreateAlbumClick
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 264
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    Left = 336
    Top = 8
  end
  object AdvGooglePhotos1: TAdvGooglePhotos
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8889'
    App.CallBackPort = 8889
    PersistTokens.Location = plIniFile
    Scopes.Strings = (
      'https://www.googleapis.com/auth/userinfo.profile'
      'https://www.googleapis.com/auth/userinfo.email'
      'https://www.googleapis.com/auth/gmail.send'
      'https://www.googleapis.com/auth/photoslibrary')
    OnConnected = AdvGooglePhotos1Connected
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 400
    Top = 8
  end
end
