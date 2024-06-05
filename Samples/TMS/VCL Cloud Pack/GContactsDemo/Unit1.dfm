object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Pack: TAdvGContacts Demo'
  ClientHeight = 697
  ClientWidth = 904
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 41
    Width = 904
    Height = 128
    Align = alTop
    Caption = 'Groups'
    TabOrder = 1
    DesignSize = (
      904
      128)
    object Button6: TButton
      Left = 10
      Top = 22
      Width = 110
      Height = 25
      Caption = 'Load Groups'
      TabOrder = 0
      OnClick = Button6Click
    end
    object lbGroups: TListBox
      Left = 10
      Top = 54
      Width = 331
      Height = 71
      Anchors = [akLeft, akTop, akRight, akBottom]
      ItemHeight = 13
      TabOrder = 1
      OnClick = lbGroupsClick
    end
    object GroupBox4: TGroupBox
      Left = 347
      Top = 15
      Width = 555
      Height = 111
      Align = alRight
      Caption = 'Group details'
      TabOrder = 2
      object Label19: TLabel
        Left = 13
        Top = 22
        Width = 31
        Height = 13
        Caption = 'Name:'
      end
      object edGroupName: TEdit
        Left = 56
        Top = 19
        Width = 209
        Height = 21
        TabOrder = 0
        Text = 'new group'
      end
      object Panel3: TPanel
        Left = 2
        Top = 68
        Width = 551
        Height = 41
        Align = alBottom
        TabOrder = 1
        object btGroupAdd: TButton
          Left = 8
          Top = 8
          Width = 110
          Height = 25
          Caption = 'Add '
          TabOrder = 0
          OnClick = btGroupAddClick
        end
        object btGroupUpdate: TButton
          Left = 124
          Top = 8
          Width = 110
          Height = 25
          Caption = 'Update'
          TabOrder = 1
          OnClick = btGroupUpdateClick
        end
        object btGroupDelete: TButton
          Left = 240
          Top = 8
          Width = 110
          Height = 25
          Caption = 'Delete'
          TabOrder = 2
          OnClick = btGroupDeleteClick
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 904
    Height = 41
    Align = alTop
    TabOrder = 0
    object Image1: TImage
      Left = 875
      Top = 11
      Width = 24
      Height = 24
      Picture.Data = {
        07544269746D617076060000424D760600000000000036040000280000001800
        000018000000010008000000000040020000C40E0000C40E0000000100000001
        00001931A5001D37B2001934B6001531B9001632BA001733BA001734BC001A35
        B8001834BD001935BE001936BF00253BA800273EA9002840B3003449B000364D
        BE003E53B7004557B1005465BA005E6EB9006675BE00707DBE001A37C1001B38
        C1001E3AC2001D3AC4001E3BC6001F3CC800203CC200213ECA00223FCA000000
        FF002540C4002944C3002643CB002441CD002541CE002542CF002844CD002A46
        CD002C48CD00304AC800314BC800314CCE003A52C5002644D1002745D3002946
        D0002B47D2002846D4002A47D6002B48D0002D4AD3002F4BD3002A48D6002B49
        D9002C4ADA002D4BDB00304EDB003752D3003753DC003F5ADA00435CD200415A
        D6004A60CC004C62CD004E64CD005569C6004D64D100556BD700596FD700596F
        DA006677C7006A7AC7006D7DC900677AD300DC00FF007783C0007685CB006F80
        D4007D8CD1007E8DD5006E83E6007286E500768AE6008692CE008794D5008C98
        D2008493DB008E9AD900939ED1009CA5CF009CA5D1009FAADE00A7AFD800A2AC
        DC00AEB6DD00B1B9DC008394E5008C9BE40093A0E10092A0E6009EABE800A0AC
        E300ABB5E500A6B3EF00A9B4EA00AEB9EE00B2BAE200B0B9E700B2BCEC00B8C1
        EB00C4C8DF00C0C6E200C4C9E200CBCEE200C9D0ED00D0D6EF00DADDEF00C1C9
        F000CDD3F200CFD6F300C9D1F600D7DBF100D7DCF200D7DCF500DFE1EC00DBE0
        F700DEE2F900DFE4FA00E1E3EF00E5E6EF00E4E7F300E2E5F400E6E9F700EDED
        F100E8EAF500EEEFF600E0E4FA00E4E7F800E4E8F900E6EAFA00EFF1F800F0F1
        F500F1F2F600F2F2F600F3F4F700F2F3F800F5F5F800F5F6FA00F7F7F900F7F8
        FB00F7F8FD00F8F9FA00F9F9FA00F8F9FE00F9FAFD00FAFAFC00FCFCFD00FDFD
        FE00FEFEFF00FFFFFF0000000000000000000000000000000000000000000000
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
        00004C030303030303030303077287490303030303030303034C030303030303
        0303030310838F59030303030303030303030404040404040404040E73919151
        040404040404040404041501050606060602137E9292842C0606060606060606
        060690704D110C000B5B8F9494914F090808080808080808080840586D747B89
        96969696884B0A0A0A0A0A0A0A0A0A0A0A0A1616161C0F829A9A997C4117A1A1
        A1A1A1A1A1A1A1A1A1A117171717569D9D9D6F2A1717A1A1A1A1A1A1A1A1A1A1
        A1A119191919689E9E8529191919A1A1A1A1A1A1A1A1A1A1A1A1180D12145E9F
        9F76211A1A1A1FA1A1A1A1A1A1A1A1A1A11F5C93A09C79778B9F551C1B1B1B1B
        1FA1A1A1A1A1A11F1B1BA1A18C46221D2B66975A201D1D1D1D1D1D1E1E1E1D1D
        1D1DA198451E1E1E1E2678A0571E1E1E1E1E1E2323231E1E1E1EA16A23232323
        232365A19542232323231FA1A11F232323239F4725252525252563A1A1642524
        231FA1A1A1A11F232323863B2D2D2D2D2D2D67A1A16E2D2D2DA1A1A1A1A1A12D
        2D2D7D342E2E2E2E2E2F75A1A16B2E2E2EA1A1A1A1A1A12E2E2E7C3531313131
        314495A1A1623131311FA1A1A1A11F3131318E3E32323232306CA1A18D3D3232
        32321FA1A11F323232329E5F28363633509EA19B533636363636363636363636
        36365480714E4A619DA1A0604843273737373737373737373737383C52697A81
        8A8A8A8A8A7F5D3F383838383838383838383A39393939393939393939393939
        3939393939393939393A4C393939393939393939393939393939393939393939
        394C}
    end
    object Button1: TButton
      Left = 10
      Top = 10
      Width = 110
      Height = 25
      Caption = 'Connect'
      TabOrder = 0
      OnClick = Button1Click
    end
    object btRemove: TButton
      Left = 126
      Top = 9
      Width = 110
      Height = 25
      Caption = 'Remove access'
      TabOrder = 1
      OnClick = btRemoveClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 169
    Width = 904
    Height = 528
    Align = alClient
    Caption = 'Contacts'
    TabOrder = 2
    DesignSize = (
      904
      528)
    object ListBox1: TListBox
      Left = 10
      Top = 52
      Width = 329
      Height = 473
      Anchors = [akLeft, akTop, akRight, akBottom]
      ItemHeight = 13
      TabOrder = 0
      OnClick = ListBox1Click
    end
    object Button2: TButton
      Left = 10
      Top = 20
      Width = 110
      Height = 25
      Caption = 'Load Contacts'
      TabOrder = 1
      OnClick = Button2Click
    end
    object GroupBox1: TGroupBox
      Left = 345
      Top = 15
      Width = 557
      Height = 511
      Align = alRight
      Caption = 'Contact details'
      TabOrder = 2
      DesignSize = (
        557
        511)
      object Label1: TLabel
        Left = 16
        Top = 96
        Width = 55
        Height = 13
        Caption = 'First Name:'
      end
      object Label3: TLabel
        Left = 287
        Top = 150
        Width = 32
        Height = 13
        Caption = 'Notes:'
      end
      object Label4: TLabel
        Left = 287
        Top = 96
        Width = 49
        Height = 13
        Caption = 'Company:'
      end
      object Label5: TLabel
        Left = 287
        Top = 123
        Width = 42
        Height = 13
        Caption = 'Job title:'
      end
      object AdvCloudImage1: TAdvCloudImage
        Left = 72
        Top = 22
        Width = 57
        Height = 59
        Async = False
        AutoSize = False
        CheckContentLength = False
        WebPicture.Stretch = False
        PicturePosition = bpShrinkWithAspectRatio
        Version = '1.0.1.1'
      end
      object Label9: TLabel
        Left = 16
        Top = 177
        Width = 44
        Height = 13
        Caption = 'Birthday:'
      end
      object Label10: TLabel
        Left = 16
        Top = 150
        Width = 49
        Height = 13
        Caption = 'Nickname:'
      end
      object Label17: TLabel
        Left = 16
        Top = 123
        Width = 54
        Height = 13
        Caption = 'Last Name:'
      end
      object Label31: TLabel
        Left = 16
        Top = 27
        Width = 34
        Height = 13
        Caption = 'Image:'
      end
      object lbUpdated: TLabel
        Left = 297
        Top = 27
        Width = 68
        Height = 13
        Caption = 'Last Updated:'
      end
      object edFirstName: TEdit
        Left = 72
        Top = 93
        Width = 209
        Height = 21
        TabOrder = 2
      end
      object edCompany: TEdit
        Left = 343
        Top = 93
        Width = 209
        Height = 21
        TabOrder = 6
      end
      object edJob: TEdit
        Left = 343
        Top = 120
        Width = 209
        Height = 21
        TabOrder = 7
      end
      object dpBirthDay: TDateTimePicker
        Left = 72
        Top = 174
        Width = 209
        Height = 21
        Date = 41259.923897442130000000
        Time = 41259.923897442130000000
        TabOrder = 5
      end
      object edNickName: TEdit
        Left = 72
        Top = 147
        Width = 209
        Height = 21
        TabOrder = 4
      end
      object edLastName: TEdit
        Left = 72
        Top = 120
        Width = 209
        Height = 21
        TabOrder = 3
      end
      object meNotes: TMemo
        Left = 343
        Top = 147
        Width = 209
        Height = 48
        TabOrder = 8
      end
      object PageControl1: TPageControl
        Left = 16
        Top = 213
        Width = 538
        Height = 249
        ActivePage = TabSheet2
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 9
        object TabSheet1: TTabSheet
          Caption = 'Emails'
          DesignSize = (
            530
            221)
          object Label2: TLabel
            Left = 278
            Top = 6
            Width = 28
            Height = 13
            Caption = 'Email:'
          end
          object Label6: TLabel
            Left = 278
            Top = 33
            Width = 28
            Height = 13
            Caption = 'Type:'
          end
          object Label7: TLabel
            Left = 278
            Top = 60
            Width = 40
            Height = 13
            Caption = 'Custom:'
          end
          object lvEmail: TListView
            Left = 3
            Top = 3
            Width = 269
            Height = 215
            Anchors = [akLeft, akTop, akBottom]
            Columns = <
              item
                Caption = 'Email'
                Width = 145
              end
              item
                Caption = 'Type'
              end
              item
                Caption = 'Primary'
              end>
            ReadOnly = True
            RowSelect = True
            TabOrder = 0
            ViewStyle = vsReport
            OnChange = lvEmailChange
          end
          object cbEmailType: TComboBox
            Left = 318
            Top = 30
            Width = 209
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 2
            Text = 'Work'
            Items.Strings = (
              'Work'
              'Home'
              'Custom'
              '')
          end
          object edEmail: TEdit
            Left = 318
            Top = 3
            Width = 209
            Height = 21
            TabOrder = 1
          end
          object edEmailCustom: TEdit
            Left = 318
            Top = 57
            Width = 209
            Height = 21
            TabOrder = 3
          end
          object cbEmailPrimary: TCheckBox
            Left = 321
            Top = 84
            Width = 97
            Height = 17
            Caption = 'Primary'
            Color = clWhite
            ParentColor = False
            TabOrder = 4
          end
          object btAddEmail: TButton
            Left = 278
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Add'
            TabOrder = 5
            OnClick = btAddEmailClick
          end
          object btUpdateEmail: TButton
            Left = 359
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Update'
            TabOrder = 6
            OnClick = btUpdateEmailClick
          end
          object btDeleteEmail: TButton
            Left = 440
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Delete'
            TabOrder = 7
            OnClick = btDeleteEmailClick
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Phones'
          ImageIndex = 1
          DesignSize = (
            530
            221)
          object Label8: TLabel
            Left = 278
            Top = 6
            Width = 34
            Height = 13
            Caption = 'Phone:'
          end
          object Label11: TLabel
            Left = 278
            Top = 33
            Width = 28
            Height = 13
            Caption = 'Type:'
          end
          object Label12: TLabel
            Left = 278
            Top = 60
            Width = 40
            Height = 13
            Caption = 'Custom:'
          end
          object lvPhone: TListView
            Left = 3
            Top = 3
            Width = 269
            Height = 215
            Anchors = [akLeft, akTop, akBottom]
            Columns = <
              item
                Caption = 'Phonenumber'
                Width = 145
              end
              item
                Caption = 'Type'
              end
              item
                Caption = 'Primary'
              end>
            ReadOnly = True
            RowSelect = True
            TabOrder = 0
            ViewStyle = vsReport
            OnChange = lvPhoneChange
          end
          object edPhone: TEdit
            Left = 318
            Top = 3
            Width = 209
            Height = 21
            TabOrder = 1
          end
          object cbPhoneType: TComboBox
            Left = 318
            Top = 30
            Width = 209
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 2
            Text = 'Mobile'
            Items.Strings = (
              'Mobile'
              'Work'
              'Home'
              'Main'
              'Custom'
              'Fax'
              'HomeFax'
              'WorkFax'
              'WorkMobile'
              'Pager')
          end
          object edPhoneCustom: TEdit
            Left = 318
            Top = 57
            Width = 209
            Height = 21
            TabOrder = 3
          end
          object btAddPhone: TButton
            Left = 278
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Add'
            TabOrder = 5
            OnClick = btAddPhoneClick
          end
          object btUpdatePhone: TButton
            Left = 359
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Update'
            TabOrder = 6
            OnClick = btUpdatePhoneClick
          end
          object btDeletePhone: TButton
            Left = 440
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Delete'
            TabOrder = 7
            OnClick = btDeletePhoneClick
          end
          object cbPhonePrimary: TCheckBox
            Left = 321
            Top = 84
            Width = 97
            Height = 17
            Caption = 'Primary'
            Color = clWhite
            ParentColor = False
            TabOrder = 4
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Addresses'
          ImageIndex = 2
          DesignSize = (
            530
            221)
          object Label13: TLabel
            Left = 277
            Top = 146
            Width = 40
            Height = 13
            Caption = 'Custom:'
          end
          object Label14: TLabel
            Left = 277
            Top = 119
            Width = 28
            Height = 13
            Caption = 'Type:'
          end
          object Label15: TLabel
            Left = 278
            Top = 6
            Width = 34
            Height = 13
            Caption = 'Street:'
          end
          object Label16: TLabel
            Left = 278
            Top = 33
            Width = 18
            Height = 13
            Caption = 'Zip:'
          end
          object lbCity: TLabel
            Left = 278
            Top = 60
            Width = 23
            Height = 13
            Caption = 'City:'
          end
          object lbCountry: TLabel
            Left = 278
            Top = 92
            Width = 43
            Height = 13
            Caption = 'Country:'
          end
          object btAddAddress: TButton
            Left = 278
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Add'
            TabOrder = 8
            OnClick = btAddAddressClick
          end
          object btDeleteAddress: TButton
            Left = 440
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Delete'
            TabOrder = 10
            OnClick = btDeleteAddressClick
          end
          object btUpdateAddress: TButton
            Left = 359
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Update'
            TabOrder = 9
            OnClick = btUpdateAddressClick
          end
          object cbAddressPrimary: TCheckBox
            Left = 320
            Top = 170
            Width = 97
            Height = 17
            Caption = 'Primary'
            Color = clWhite
            ParentColor = False
            TabOrder = 7
          end
          object edAddressCustom: TEdit
            Left = 317
            Top = 143
            Width = 209
            Height = 21
            TabOrder = 6
          end
          object cbAddressType: TComboBox
            Left = 317
            Top = 116
            Width = 209
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 5
            Text = 'Work'
            Items.Strings = (
              'Work'
              'Home'
              'Custom'
              '')
          end
          object edStreet: TEdit
            Left = 318
            Top = 3
            Width = 209
            Height = 21
            TabOrder = 1
          end
          object lvAddress: TListView
            Left = 3
            Top = 3
            Width = 269
            Height = 215
            Anchors = [akLeft, akTop, akBottom]
            Columns = <
              item
                Caption = 'Address'
                Width = 145
              end
              item
                Caption = 'Type'
              end
              item
                Caption = 'Primary'
              end>
            ReadOnly = True
            RowSelect = True
            TabOrder = 0
            ViewStyle = vsReport
            OnChange = lvAddressChange
          end
          object edZip: TEdit
            Left = 318
            Top = 30
            Width = 209
            Height = 21
            TabOrder = 2
          end
          object edCity: TEdit
            Left = 318
            Top = 57
            Width = 209
            Height = 21
            TabOrder = 3
          end
          object edCountry: TEdit
            Left = 318
            Top = 89
            Width = 209
            Height = 21
            TabOrder = 4
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Relations'
          ImageIndex = 3
          DesignSize = (
            530
            221)
          object Label18: TLabel
            Left = 278
            Top = 60
            Width = 40
            Height = 13
            Caption = 'Custom:'
          end
          object Label20: TLabel
            Left = 278
            Top = 33
            Width = 43
            Height = 13
            Caption = 'Relation:'
          end
          object Label21: TLabel
            Left = 278
            Top = 6
            Width = 31
            Height = 13
            Caption = 'Name:'
          end
          object lvRelation: TListView
            Left = 3
            Top = 3
            Width = 269
            Height = 215
            Anchors = [akLeft, akTop, akBottom]
            Columns = <
              item
                Caption = 'Name'
                Width = 185
              end
              item
                Caption = 'Relation'
                Width = 60
              end>
            ReadOnly = True
            RowSelect = True
            TabOrder = 0
            ViewStyle = vsReport
            OnChange = lvRelationChange
          end
          object edRelation: TEdit
            Left = 318
            Top = 3
            Width = 209
            Height = 21
            TabOrder = 1
          end
          object cbRelation: TComboBox
            Left = 318
            Top = 30
            Width = 209
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 2
            Text = 'Spouse'
            Items.Strings = (
              'Spouse'
              'Child'
              'Mother'
              'Father'
              'Parent'
              'Brother'
              'Sister'
              'Partner'
              'Custom')
          end
          object edCustomRelation: TEdit
            Left = 318
            Top = 57
            Width = 209
            Height = 21
            TabOrder = 3
          end
          object btAddRelation: TButton
            Left = 278
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Add'
            TabOrder = 4
            OnClick = btAddRelationClick
          end
          object btUpdateRelation: TButton
            Left = 359
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Update'
            TabOrder = 5
            OnClick = btUpdateRelationClick
          end
          object btDeleteRelation: TButton
            Left = 440
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Delete'
            TabOrder = 6
            OnClick = btDeleteRelationClick
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'IM'
          ImageIndex = 4
          DesignSize = (
            530
            221)
          object Label22: TLabel
            Left = 278
            Top = 6
            Width = 15
            Height = 13
            Caption = 'ID:'
          end
          object Label23: TLabel
            Left = 278
            Top = 33
            Width = 43
            Height = 13
            Caption = 'IM Type:'
          end
          object Label24: TLabel
            Left = 278
            Top = 60
            Width = 40
            Height = 13
            Caption = 'Custom:'
          end
          object lvIM: TListView
            Left = 3
            Top = 3
            Width = 269
            Height = 215
            Anchors = [akLeft, akTop, akBottom]
            Columns = <
              item
                Caption = 'ID'
                Width = 165
              end
              item
                Caption = 'Type'
                Width = 80
              end>
            ReadOnly = True
            RowSelect = True
            TabOrder = 0
            ViewStyle = vsReport
            OnChange = lvIMChange
          end
          object edIM: TEdit
            Left = 318
            Top = 3
            Width = 209
            Height = 21
            TabOrder = 1
          end
          object cbIMType: TComboBox
            Left = 318
            Top = 30
            Width = 209
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 2
            Text = 'GoogleTalk'
            Items.Strings = (
              'GoogleTalk'
              'AIM'
              'Yahoo'
              'Skype'
              'GQ'
              'MSN'
              'ICQ'
              'Jabber'
              'Custom')
          end
          object edIMCustom: TEdit
            Left = 318
            Top = 57
            Width = 209
            Height = 21
            TabOrder = 3
          end
          object btAddIM: TButton
            Left = 278
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Add'
            TabOrder = 4
            OnClick = btAddIMClick
          end
          object btUpdateIM: TButton
            Left = 359
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Update'
            TabOrder = 5
            OnClick = btUpdateIMClick
          end
          object btDeleteIM: TButton
            Left = 440
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Delete'
            TabOrder = 6
            OnClick = btDeleteRelationClick
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Custom fields'
          ImageIndex = 5
          DesignSize = (
            530
            221)
          object Label26: TLabel
            Left = 278
            Top = 6
            Width = 22
            Height = 13
            Caption = 'Key:'
          end
          object Label28: TLabel
            Left = 278
            Top = 33
            Width = 30
            Height = 13
            Caption = 'Value:'
          end
          object lvCustom: TListView
            Left = 3
            Top = 3
            Width = 269
            Height = 215
            Anchors = [akLeft, akTop, akBottom]
            Columns = <
              item
                Caption = 'Key'
                Width = 125
              end
              item
                Caption = 'Value'
                Width = 120
              end>
            ReadOnly = True
            RowSelect = True
            TabOrder = 0
            ViewStyle = vsReport
            OnChange = lvCustomChange
          end
          object edCustomKey: TEdit
            Left = 318
            Top = 3
            Width = 209
            Height = 21
            TabOrder = 1
          end
          object btAddCustom: TButton
            Left = 278
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Add'
            TabOrder = 3
            OnClick = btAddCustomClick
          end
          object btUpdateCustom: TButton
            Left = 359
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Update'
            TabOrder = 4
            OnClick = btUpdateCustomClick
          end
          object btDeleteCustom: TButton
            Left = 440
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Delete'
            TabOrder = 5
            OnClick = btDeleteRelationClick
          end
          object edCustomValue: TEdit
            Left = 318
            Top = 30
            Width = 209
            Height = 21
            TabOrder = 2
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Groups'
          ImageIndex = 6
          DesignSize = (
            530
            221)
          object Label30: TLabel
            Left = 278
            Top = 3
            Width = 83
            Height = 13
            Caption = 'Available groups:'
          end
          object lvGroup: TListView
            Left = 3
            Top = 3
            Width = 269
            Height = 215
            Anchors = [akLeft, akTop, akBottom]
            Columns = <
              item
                Caption = 'Group'
                Width = 245
              end>
            ReadOnly = True
            RowSelect = True
            TabOrder = 0
            ViewStyle = vsReport
          end
          object cbGroups: TComboBox
            Left = 278
            Top = 22
            Width = 246
            Height = 21
            Style = csDropDownList
            TabOrder = 1
          end
          object btAddGroup: TButton
            Left = 278
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Add'
            TabOrder = 2
            OnClick = btAddGroupClick
          end
          object btDeleteGroup: TButton
            Left = 359
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Delete'
            TabOrder = 3
            OnClick = btDeleteGroupClick
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Websites'
          ImageIndex = 7
          DesignSize = (
            530
            221)
          object Label25: TLabel
            Left = 278
            Top = 33
            Width = 28
            Height = 13
            Caption = 'Type:'
          end
          object Label27: TLabel
            Left = 278
            Top = 60
            Width = 40
            Height = 13
            Caption = 'Custom:'
          end
          object Label29: TLabel
            Left = 278
            Top = 6
            Width = 23
            Height = 13
            Caption = 'URL:'
          end
          object edWebsite: TEdit
            Left = 318
            Top = 3
            Width = 209
            Height = 21
            TabOrder = 1
          end
          object btDeleteWebsite: TButton
            Left = 440
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Delete'
            TabOrder = 6
            OnClick = btDeleteWebsiteClick
          end
          object btUpdateWebsite: TButton
            Left = 359
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Update'
            TabOrder = 5
            OnClick = btUpdateWebsiteClick
          end
          object btAddWebsite: TButton
            Left = 278
            Top = 193
            Width = 75
            Height = 25
            Caption = 'Add'
            TabOrder = 4
            OnClick = btAddWebsiteClick
          end
          object edCustomWebsite: TEdit
            Left = 318
            Top = 57
            Width = 209
            Height = 21
            TabOrder = 3
          end
          object cbCustomWebsite: TComboBox
            Left = 318
            Top = 30
            Width = 209
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 2
            Text = 'Profile'
            Items.Strings = (
              'Profile'
              'Blog'
              'HomePage'
              'Work'
              'Custom'
              '')
          end
          object lvWebsite: TListView
            Left = 3
            Top = 3
            Width = 269
            Height = 215
            Anchors = [akLeft, akTop, akBottom]
            Columns = <
              item
                Caption = 'URL'
                Width = 165
              end
              item
                Caption = 'Type'
                Width = 80
              end>
            ReadOnly = True
            RowSelect = True
            TabOrder = 0
            ViewStyle = vsReport
            OnChange = lvWebsiteChange
          end
        end
      end
      object Panel2: TPanel
        Left = 2
        Top = 468
        Width = 553
        Height = 41
        Align = alBottom
        TabOrder = 10
        object btAddContact: TButton
          Left = 8
          Top = 8
          Width = 110
          Height = 25
          Caption = 'New'
          TabOrder = 0
          OnClick = btAddContactClick
        end
        object btUpdateContact: TButton
          Left = 124
          Top = 8
          Width = 110
          Height = 25
          Caption = 'Update'
          TabOrder = 1
          OnClick = btUpdateContactClick
        end
        object btDeleteContact: TButton
          Left = 240
          Top = 8
          Width = 110
          Height = 25
          Caption = 'Delete'
          TabOrder = 2
          OnClick = btDeleteContactClick
        end
      end
      object btUpdateImage: TButton
        Left = 135
        Top = 22
        Width = 75
        Height = 25
        Caption = 'Update ...'
        TabOrder = 0
        OnClick = btUpdateImageClick
      end
      object btDeleteImage: TButton
        Left = 216
        Top = 22
        Width = 75
        Height = 25
        Caption = 'Delete'
        TabOrder = 1
        OnClick = btDeleteImageClick
      end
    end
  end
  object AdvGContacts1: TAdvGContacts
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888/'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'contacts'
    PersistTokens.Key = '.\contacts.ini'
    Scopes.Strings = (
      'https://www.google.com/m8/feeds')
    OnReceivedAccessToken = AdvGContacts1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    ExternalBrowser = False
    Left = 296
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 376
    Top = 8
  end
end
