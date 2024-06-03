object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Google Places Demo'
  ClientHeight = 681
  ClientWidth = 718
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
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 37
    Height = 13
    Caption = 'Search:'
  end
  object lblAutocomplete: TLabel
    Left = 347
    Top = 13
    Width = 80
    Height = 13
    Caption = 'Did you mean:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblAutocompleteText: TLabel
    Left = 430
    Top = 13
    Width = 56
    Height = 13
    Caption = 'lorem ipsum'
    Visible = False
    WordWrap = True
  end
  object Label8: TLabel
    Left = 8
    Top = 416
    Width = 33
    Height = 13
    Caption = 'Photos'
  end
  object Label12: TLabel
    Left = 8
    Top = 38
    Width = 28
    Height = 13
    Caption = 'Type:'
  end
  object btnSearchNearby: TButton
    Left = 272
    Top = 8
    Width = 65
    Height = 25
    Caption = 'Nearby'
    TabOrder = 3
    OnClick = btnSearchNearbyClick
  end
  object lstPlaces: TListView
    Left = 8
    Top = 62
    Width = 329
    Height = 348
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
  end
  object Button1: TButton
    Left = 191
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 2
    OnClick = Button1Click
  end
  object edSearch: TEdit
    Left = 48
    Top = 10
    Width = 137
    Height = 21
    TabOrder = 0
    TextHint = 'Search...'
  end
  object GroupBox1: TGroupBox
    Left = 343
    Top = 56
    Width = 354
    Height = 354
    Caption = 'Place Detail'
    TabOrder = 7
    object lblRating: TLabel
      Left = 259
      Top = 228
      Width = 3
      Height = 13
    end
    object Label2: TLabel
      Left = 12
      Top = 123
      Width = 31
      Height = 13
      Caption = 'Name:'
    end
    object Label3: TLabel
      Left = 223
      Top = 270
      Width = 43
      Height = 13
      Caption = 'Latitude:'
    end
    object Label4: TLabel
      Left = 223
      Top = 311
      Width = 51
      Height = 13
      Caption = 'Longitude:'
    end
    object Label5: TLabel
      Left = 12
      Top = 228
      Width = 33
      Height = 13
      Caption = 'Vicinity'
    end
    object Label6: TLabel
      Left = 191
      Top = 228
      Width = 35
      Height = 13
      Caption = 'Rating:'
    end
    object ciIcon: TAdvCloudImage
      Left = 12
      Top = 30
      Width = 61
      Height = 59
      Async = False
      AutoSize = False
      CheckContentLength = False
      WebPicture.Stretch = False
      PicturePosition = bpStretched
      Version = '1.0.1.0'
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
      Top = 274
      Width = 29
      Height = 13
      Caption = 'Types'
    end
    object Label10: TLabel
      Left = 12
      Top = 177
      Width = 34
      Height = 13
      Caption = 'Phone:'
    end
    object Label9: TLabel
      Left = 12
      Top = 150
      Width = 43
      Height = 13
      Caption = 'Address:'
    end
    object Label11: TLabel
      Left = 12
      Top = 204
      Width = 43
      Height = 13
      Caption = 'Website:'
    end
    object edName: TEdit
      Left = 80
      Top = 120
      Width = 241
      Height = 21
      TabOrder = 0
    end
    object edLat: TEdit
      Left = 223
      Top = 289
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object edLong: TEdit
      Left = 223
      Top = 330
      Width = 121
      Height = 21
      TabOrder = 8
    end
    object edVicinity: TEdit
      Left = 80
      Top = 225
      Width = 105
      Height = 21
      TabOrder = 4
    end
    object cbOpen: TCheckBox
      Left = 80
      Top = 252
      Width = 97
      Height = 17
      Caption = 'Now Open'
      TabOrder = 5
    end
    object lstTypes: TListBox
      Left = 80
      Top = 274
      Width = 137
      Height = 77
      ItemHeight = 13
      TabOrder = 6
    end
    object edPhone: TEdit
      Left = 80
      Top = 174
      Width = 241
      Height = 21
      TabOrder = 2
    end
    object edAddress: TEdit
      Left = 80
      Top = 147
      Width = 241
      Height = 21
      TabOrder = 1
    end
    object edWebsie: TEdit
      Left = 80
      Top = 201
      Width = 241
      Height = 21
      TabOrder = 3
    end
  end
  object btnNextPage: TButton
    Left = 272
    Top = 35
    Width = 65
    Height = 25
    Caption = 'Next Page'
    TabOrder = 5
    OnClick = btnNextPageClick
  end
  object ScrollBox1: TScrollBox
    Left = 8
    Top = 432
    Width = 689
    Height = 241
    TabOrder = 8
  end
  object btnAutocomplete: TButton
    Left = 622
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Yes'
    TabOrder = 4
    Visible = False
    OnClick = btnAutocompleteClick
  end
  object edType: TEdit
    Left = 48
    Top = 35
    Width = 137
    Height = 21
    TabOrder = 1
    TextHint = 'Type..'
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
    Left = 656
    Top = 40
  end
  object AdvIPLocation1: TAdvIPLocation
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    Left = 592
    Top = 40
  end
end
