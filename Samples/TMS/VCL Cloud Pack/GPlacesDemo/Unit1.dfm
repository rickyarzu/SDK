object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Google Places Demo'
  ClientHeight = 796
  ClientWidth = 938
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  DesignSize = (
    938
    796)
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 37
    Height = 13
    Caption = 'Search:'
  end
  object lblAutocomplete: TLabel
    Left = 565
    Top = 13
    Width = 80
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Did you mean:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    ExplicitLeft = 451
  end
  object lblAutocompleteText: TLabel
    Left = 648
    Top = 13
    Width = 56
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'lorem ipsum'
    Visible = False
    WordWrap = True
    ExplicitLeft = 534
  end
  object Label8: TLabel
    Left = 8
    Top = 516
    Width = 33
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Photos'
    ExplicitTop = 489
  end
  object Label12: TLabel
    Left = 8
    Top = 38
    Width = 28
    Height = 13
    Caption = 'Type:'
  end
  object btnSearchNearby: TButton
    Left = 489
    Top = 4
    Width = 65
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Nearby'
    TabOrder = 3
    OnClick = btnSearchNearbyClick
    ExplicitLeft = 376
  end
  object lstPlaces: TListView
    Left = 8
    Top = 62
    Width = 459
    Height = 450
    Anchors = [akLeft, akTop, akBottom]
    Columns = <
      item
        AutoSize = True
        Caption = 'Name'
      end>
    RowSelect = True
    TabOrder = 6
    ViewStyle = vsReport
    OnChange = lstPlacesChange
    OnClick = lstPlacesClick
    ExplicitHeight = 411
  end
  object Button1: TButton
    Left = 400
    Top = 4
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Search'
    TabOrder = 2
    OnClick = Button1Click
    ExplicitLeft = 287
  end
  object edSearch: TEdit
    Left = 48
    Top = 10
    Width = 347
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    TextHint = 'Search...'
    ExplicitWidth = 233
  end
  object GroupBox1: TGroupBox
    Left = 473
    Top = 56
    Width = 442
    Height = 456
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Place Detail'
    TabOrder = 7
    ExplicitWidth = 354
    ExplicitHeight = 417
    DesignSize = (
      442
      456)
    object lblRating: TLabel
      Left = 259
      Top = 228
      Width = 3
      Height = 13
    end
    object Label2: TLabel
      Left = 12
      Top = 225
      Width = 31
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Name:'
      ExplicitTop = 186
    end
    object Label3: TLabel
      Left = 223
      Top = 372
      Width = 43
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Latitude:'
      ExplicitTop = 333
    end
    object Label4: TLabel
      Left = 223
      Top = 413
      Width = 51
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Longitude:'
      ExplicitTop = 374
    end
    object Label5: TLabel
      Left = 12
      Top = 330
      Width = 33
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Vicinity'
      ExplicitTop = 291
    end
    object Label6: TLabel
      Left = 191
      Top = 330
      Width = 35
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Rating:'
      ExplicitTop = 291
    end
    object ciIcon: TAdvCloudImage
      Left = 12
      Top = 30
      Width = 237
      Height = 178
      Async = False
      AutoSize = False
      CheckContentLength = False
      WebPicture.Stretch = False
      PicturePosition = bpStretched
      Anchors = [akLeft, akTop, akRight, akBottom]
      Version = '1.0.1.1'
      ExplicitWidth = 149
      ExplicitHeight = 139
    end
    object lblNameTitle: TLabel
      Left = 79
      Top = 30
      Width = 6
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label7: TLabel
      Left = 12
      Top = 376
      Width = 29
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Types'
      ExplicitTop = 337
    end
    object Label10: TLabel
      Left = 12
      Top = 279
      Width = 34
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Phone:'
      ExplicitTop = 240
    end
    object Label9: TLabel
      Left = 12
      Top = 252
      Width = 43
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Address:'
      ExplicitTop = 213
    end
    object Label11: TLabel
      Left = 12
      Top = 306
      Width = 43
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Website:'
      ExplicitTop = 267
    end
    object edName: TEdit
      Left = 80
      Top = 222
      Width = 241
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 0
      ExplicitTop = 183
    end
    object edLat: TEdit
      Left = 223
      Top = 391
      Width = 121
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 7
      ExplicitTop = 352
    end
    object edLong: TEdit
      Left = 223
      Top = 432
      Width = 121
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 8
      ExplicitTop = 393
    end
    object edVicinity: TEdit
      Left = 80
      Top = 327
      Width = 105
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 4
      ExplicitTop = 288
    end
    object cbOpen: TCheckBox
      Left = 80
      Top = 354
      Width = 97
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'Now Open'
      TabOrder = 5
      ExplicitTop = 315
    end
    object lstTypes: TListBox
      Left = 80
      Top = 376
      Width = 137
      Height = 77
      Anchors = [akLeft, akBottom]
      ItemHeight = 13
      TabOrder = 6
      ExplicitTop = 337
    end
    object edPhone: TEdit
      Left = 80
      Top = 276
      Width = 241
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 2
      ExplicitTop = 237
    end
    object edAddress: TEdit
      Left = 80
      Top = 249
      Width = 241
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 1
      ExplicitTop = 210
    end
    object edWebsie: TEdit
      Left = 80
      Top = 303
      Width = 241
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 3
      ExplicitTop = 264
    end
  end
  object btnNextPage: TButton
    Left = 489
    Top = 31
    Width = 65
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Next Page'
    TabOrder = 5
    OnClick = btnNextPageClick
    ExplicitLeft = 376
  end
  object ScrollBox1: TScrollBox
    Left = 8
    Top = 535
    Width = 907
    Height = 241
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 8
    ExplicitTop = 508
  end
  object btnAutocomplete: TButton
    Left = 840
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Yes'
    TabOrder = 4
    Visible = False
    OnClick = btnAutocompleteClick
    ExplicitLeft = 726
  end
  object edType: TEdit
    Left = 48
    Top = 35
    Width = 428
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    TextHint = 'Type..'
    ExplicitWidth = 314
  end
  object AdvGPlaces1: TAdvGPlaces
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888/'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    Scopes.Strings = (
      'https://www.googleapis.com/auth/userinfo.profile'
      'https://www.googleapis.com/auth/userinfo.email')
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Items = <>
    Left = 696
    Top = 56
  end
  object AdvIPLocation1: TAdvIPLocation
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    Left = 776
    Top = 120
  end
end
