object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Pack: TAdvOutlookContacts Demo'
  ClientHeight = 692
  ClientWidth = 577
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
    Width = 577
    Height = 41
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 10
      Width = 110
      Height = 25
      Hint = 'Connect to Outlook'
      Caption = 'Connect'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object btRemove: TButton
      Left = 132
      Top = 10
      Width = 110
      Height = 25
      Hint = 'Remove access to Outlook account'
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
    Width = 577
    Height = 260
    Align = alClient
    Caption = 'Contacts'
    TabOrder = 1
    DesignSize = (
      577
      260)
    object AdvCloudImage1: TAdvCloudImage
      Left = 16
      Top = 49
      Width = 110
      Height = 110
      Async = False
      AutoSize = False
      CheckContentLength = False
      WebPicture.Stretch = False
      PicturePosition = bpStretched
      Version = '1.0.1.1'
    end
    object ListView1: TListView
      Left = 132
      Top = 17
      Width = 434
      Height = 237
      Anchors = [akLeft, akTop, akRight, akBottom]
      Columns = <
        item
          Caption = 'Name'
          Width = 150
        end
        item
          Caption = 'Email'
          Width = 150
        end>
      ColumnClick = False
      HideSelection = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 2
      ViewStyle = vsReport
      OnSelectItem = ListView1SelectItem
    end
    object btGetContacts: TButton
      Left = 16
      Top = 17
      Width = 110
      Height = 25
      Hint = 'Get all Contacts'
      Caption = 'Get Contacts'
      TabOrder = 0
      OnClick = btGetContactsClick
    end
    object btUpload: TButton
      Left = 16
      Top = 196
      Width = 110
      Height = 25
      Caption = 'Upload'
      TabOrder = 1
      OnClick = btUploadClick
    end
    object btDownload: TButton
      Left = 16
      Top = 165
      Width = 110
      Height = 25
      Caption = 'Download'
      TabOrder = 3
      OnClick = btDownloadClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 301
    Width = 577
    Height = 391
    Align = alBottom
    Caption = 'Contact Details'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 22
      Width = 54
      Height = 13
      Caption = 'First name:'
    end
    object Label2: TLabel
      Left = 16
      Top = 49
      Width = 53
      Height = 13
      Caption = 'Last name:'
    end
    object Label6: TLabel
      Left = 16
      Top = 77
      Width = 44
      Height = 13
      Caption = 'Birthday:'
    end
    object Label4: TLabel
      Left = 16
      Top = 103
      Width = 67
      Height = 13
      Caption = 'Mobile Phone:'
    end
    object Label5: TLabel
      Left = 16
      Top = 130
      Width = 79
      Height = 13
      Caption = 'Company Name:'
    end
    object Label7: TLabel
      Left = 16
      Top = 157
      Width = 44
      Height = 13
      Caption = 'Job Title:'
    end
    object edFirstName: TEdit
      Left = 103
      Top = 19
      Width = 171
      Height = 21
      TabOrder = 0
    end
    object btAdd: TButton
      Left = 132
      Top = 357
      Width = 110
      Height = 25
      Hint = 'Add a new Contact'
      Caption = 'Add'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = btAddClick
    end
    object edLastName: TEdit
      Left = 103
      Top = 46
      Width = 171
      Height = 21
      TabOrder = 1
    end
    object dpBirthDay: TDateTimePicker
      Left = 103
      Top = 73
      Width = 171
      Height = 21
      Date = 0.596355011577543300
      Time = 0.596355011577543300
      TabOrder = 2
    end
    object btUpdate: TButton
      Left = 248
      Top = 357
      Width = 110
      Height = 25
      Hint = 'Update the selected Contact'
      Caption = 'Update'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = btUpdateClick
    end
    object edPhone: TEdit
      Left = 103
      Top = 100
      Width = 171
      Height = 21
      TabOrder = 3
    end
    object btClear: TButton
      Left = 16
      Top = 357
      Width = 110
      Height = 25
      Hint = 'Clear Contact details'
      Caption = 'Clear'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = btClearClick
    end
    object edCompanyName: TEdit
      Left = 103
      Top = 127
      Width = 171
      Height = 21
      TabOrder = 4
    end
    object edJobTitle: TEdit
      Left = 103
      Top = 154
      Width = 171
      Height = 21
      TabOrder = 5
    end
    object GroupBox3: TGroupBox
      Left = 294
      Top = 15
      Width = 272
      Height = 168
      Caption = 'Email Addresses'
      TabOrder = 7
      object edEmail: TEdit
        Left = 15
        Top = 133
        Width = 171
        Height = 21
        TabOrder = 1
      end
      object btAddEmail: TButton
        Left = 192
        Top = 133
        Width = 30
        Height = 25
        Hint = 'Add a new Email'
        Caption = '+'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = btAddEmailClick
      end
      object btDelEmail: TButton
        Left = 228
        Top = 133
        Width = 30
        Height = 25
        Hint = 'Add a new Email'
        Caption = '-'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btDelEmailClick
      end
      object lbEmails: TListBox
        Left = 15
        Top = 22
        Width = 242
        Height = 105
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object GroupBox4: TGroupBox
      Left = 16
      Top = 189
      Width = 272
      Height = 162
      Caption = 'Home Address'
      TabOrder = 6
      object Label3: TLabel
        Left = 13
        Top = 21
        Width = 34
        Height = 13
        Caption = 'Street:'
      end
      object Label8: TLabel
        Left = 13
        Top = 48
        Width = 23
        Height = 13
        Caption = 'City:'
      end
      object Label9: TLabel
        Left = 13
        Top = 75
        Width = 61
        Height = 13
        Caption = 'Postal Code:'
      end
      object Label10: TLabel
        Left = 13
        Top = 102
        Width = 30
        Height = 13
        Caption = 'State:'
      end
      object Label11: TLabel
        Left = 13
        Top = 129
        Width = 43
        Height = 13
        Caption = 'Country:'
      end
      object edHomeStreet: TEdit
        Left = 87
        Top = 18
        Width = 171
        Height = 21
        TabOrder = 0
      end
      object edHomeCity: TEdit
        Left = 87
        Top = 45
        Width = 171
        Height = 21
        TabOrder = 1
      end
      object edHomeCode: TEdit
        Left = 87
        Top = 72
        Width = 171
        Height = 21
        TabOrder = 2
      end
      object edHomeState: TEdit
        Left = 87
        Top = 99
        Width = 171
        Height = 21
        TabOrder = 3
      end
      object edHomeCountry: TEdit
        Left = 87
        Top = 126
        Width = 171
        Height = 21
        TabOrder = 4
      end
    end
    object GroupBox5: TGroupBox
      Left = 294
      Top = 189
      Width = 272
      Height = 162
      Caption = 'Business Address'
      TabOrder = 8
      object Label12: TLabel
        Left = 13
        Top = 21
        Width = 34
        Height = 13
        Caption = 'Street:'
      end
      object Label13: TLabel
        Left = 13
        Top = 48
        Width = 23
        Height = 13
        Caption = 'City:'
      end
      object Label14: TLabel
        Left = 13
        Top = 75
        Width = 61
        Height = 13
        Caption = 'Postal Code:'
      end
      object Label15: TLabel
        Left = 13
        Top = 102
        Width = 30
        Height = 13
        Caption = 'State:'
      end
      object Label16: TLabel
        Left = 13
        Top = 129
        Width = 43
        Height = 13
        Caption = 'Country:'
      end
      object edBusStreet: TEdit
        Left = 87
        Top = 18
        Width = 171
        Height = 21
        TabOrder = 0
      end
      object edBusCity: TEdit
        Left = 87
        Top = 45
        Width = 171
        Height = 21
        TabOrder = 1
      end
      object edBusCode: TEdit
        Left = 87
        Top = 72
        Width = 171
        Height = 21
        TabOrder = 2
      end
      object edBusState: TEdit
        Left = 87
        Top = 99
        Width = 171
        Height = 21
        TabOrder = 3
      end
      object edBusCountry: TEdit
        Left = 87
        Top = 126
        Width = 171
        Height = 21
        TabOrder = 4
      end
    end
    object btDelete: TButton
      Left = 364
      Top = 357
      Width = 110
      Height = 25
      Hint = 'Delete the selected Contact'
      Caption = 'Delete'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = btDeleteClick
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 520
    Top = 8
  end
  object AdvOutlookContacts1: TAdvOutlookContacts
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'https://www.tmssoftware.com/site'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    Scopes.Strings = (
      'https://outlook.office.com/contacts.readwrite'
      'offline_access')
    OnReceivedAccessToken = AdvOutlookContacts1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Items = <>
    Left = 424
    Top = 8
  end
end
