object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Pack: TAdvLiveContacts Demo'
  ClientHeight = 441
  ClientWidth = 380
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
    Width = 380
    Height = 41
    Align = alTop
    TabOrder = 0
    object Image1: TImage
      Left = 345
      Top = 11
      Width = 24
      Height = 24
      Picture.Data = {
        07544269746D617076060000424D760600000000000036040000280000001800
        000018000000010008000000000040020000C40E0000C40E0000000100000001
        00002647D2002748D2002949D2002B4CD3002C4CD3002D4DD3002F4FD400304F
        D4003050D4003352D5003755D6003857D6003A58D6003C5AD7003F5CD700405D
        D800425FD8004360D8004662D9004864D9004965D9004D68DA00526CDB00536E
        DB00556FDB00536DDC005A73DD005B74DD005C75DD005E76DE00627ADE00697F
        E000DC00FF006B81E0006C82E1006F85E1007085E1007086E100758AE200768A
        E200778BE300788DE3007B8FE4007E91E4007F93E4008194E5008799E6008B9D
        E7008FA0E80090A1E80094A4E90097A7E9009CABEA00A0AFEB00A1AFEC00A1B0
        EB00A2B0EC00A6B4ED00A8B5ED00ADB9EE00B0BCEF00B1BDEF00B3BEEF00B7C2
        F000B9C4F100BAC5F100BDC7F100BEC8F200C3CCF300C5CDF300C5CEF300C6CE
        F300C8D1F400CCD3F400CDD5F500D3DAF600D6DCF700D8DEF700DBE0F800DDE2
        F800DFE4F800E2E6F900E3E7F900E9EDFB00EAEDFB00EDF0FB00EEF1FB00F3F5
        FD00F6F8FD00F8F9FE00F9FAFE00FAFAFE00FBFCFE00FCFCFE00FEFEFF00FFFF
        FF00000000000000000000000000000000000000000000000000000000000000
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
        0000200000000000000000000000000000000000000000000020000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000014141414
        14141414141414110000000000000000000000005F5F5F5F5F5F5F5F5F5F5F4E
        0000000000000000000000005A5F5F5F5F5F5F5F5F5F5F4A2B51515151515144
        00000000505F5F5F5F5F5F5F5F5F5F3F385F5F5F5F5F5F4C00000000425F5F5F
        5F5F5F5F5F5F5F31425F5F5F5F5F5F4000000000335F5F5F5F5F5F5F5F5F5A24
        525F5F5F5F5F5F350000000015475A583E2A2D455D573A295F5F5F5F5F5F5E2C
        00000000010E23232E3E3B26271F284D5D51515C5F5F531A0000000000000534
        5F5F5F5B171946491E181D2148482202000000000000154F5F5F5F5F38000A0F
        30505443130C00000000000000001C555F5F5F5F3F0000255F5F5F5F3A040000
        00000000000016515F5F5F5F2F0000395F5F5F5F4B1000000000000000000637
        5F5F5F4B0B0000365F5F5F5F4C12000000000000000000092D3C31120000001B
        595F5F5F3D0800000000000000000000000000000000000032565B4111000000
        00000000000000000000000000000000030C0D07000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000020000000000000000000000000000000000000000000
        0020}
    end
    object Button1: TButton
      Left = 16
      Top = 10
      Width = 110
      Height = 25
      Hint = 'Connect to Windows Live'
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
      Hint = 'Remove access to Live account'
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
    Width = 380
    Height = 236
    Align = alClient
    Caption = 'Contacts'
    TabOrder = 1
    DesignSize = (
      380
      236)
    object ListView1: TListView
      Left = 16
      Top = 24
      Width = 353
      Height = 206
      Anchors = [akLeft, akTop, akRight, akBottom]
      Columns = <
        item
          Caption = 'Name'
          Width = 150
        end
        item
          Caption = 'Birthday'
          Width = 75
        end
        item
          Caption = 'Favorite'
          Width = 60
        end
        item
          Caption = 'Gender'
        end>
      ColumnClick = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 277
    Width = 380
    Height = 164
    Align = alBottom
    Caption = 'New Contact'
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
    object Label3: TLabel
      Left = 15
      Top = 103
      Width = 39
      Height = 13
      Caption = 'Gender:'
    end
    object Label6: TLabel
      Left = 15
      Top = 77
      Width = 44
      Height = 13
      Caption = 'Birthday:'
    end
    object Label4: TLabel
      Left = 268
      Top = 77
      Width = 40
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = '(dd/MM)'
      ParentBiDiMode = False
    end
    object edFirstName: TEdit
      Left = 86
      Top = 19
      Width = 171
      Height = 21
      TabOrder = 0
    end
    object btAdd: TButton
      Left = 86
      Top = 127
      Width = 110
      Height = 25
      Hint = 'Add a new Contact'
      Caption = 'Add'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btAddClick
    end
    object edLastName: TEdit
      Left = 86
      Top = 46
      Width = 171
      Height = 21
      TabOrder = 1
    end
    object cbGender: TComboBox
      Left = 86
      Top = 100
      Width = 171
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 3
      Text = 'Not Specified'
      Items.Strings = (
        'Not Specified'
        'Female'
        'Male')
    end
    object dpBirthDay: TDateTimePicker
      Left = 86
      Top = 73
      Width = 171
      Height = 21
      Date = 41226.596355011580000000
      Format = 'dd/MM'
      Time = 41226.596355011580000000
      DateMode = dmUpDown
      TabOrder = 2
    end
  end
  object AdvLiveContacts1: TAdvLiveContacts
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    Logging = False
    OnReceivedAccessToken = AdvLiveContacts1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Items = <>
    Left = 288
    Top = 8
  end
end
