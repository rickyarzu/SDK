object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Pack: TAdvTwitter Demo'
  ClientHeight = 755
  ClientWidth = 635
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
    Width = 635
    Height = 299
    Align = alTop
    Caption = 'Users'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 5
      Top = 12
      Width = 209
      Height = 281
      HelpType = htKeyword
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Followers'
        object SpeedButton1: TSpeedButton
          Left = 3
          Top = 3
          Width = 117
          Height = 25
          Hint = 'Load Followers'
          Caption = 'Load Followers'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF8FEFDFDFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF5F1E8CFBED6
            AB8CCE9872D3A380E3C5AEF7EEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF0E2D7CA9672B46937B56630B96B33BC7038BF763FCF986EEEDD
            CFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EDE6C68D68AD5F2DB0612DBA
            7240C48456C3804EC0773FC37C45CF996FF1E1D6FFFFFFFFFFFFFFFFFFFFFFFF
            FEFDFDDBB79FAF6334B16535CF9E7CEFDFD3F8F2EDF4E8DFDCB497C5824EC683
            4FDBB293FCF9F7FFFFFFFFFFFFFFFFFFFAF5F1C68E6BAD6032CB9673F7EFEAFF
            FFFFFFFFFFFFFFFFFBF8F5D7AA89C88855D29F76F4E8E0FFFFFFFFFFFFFFFFFF
            F3E7DEBB7950B1683BDCB9A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECD7C8D8AC
            8ADBB192F1E3D9FFFFFFFFFFFFFFFFFFF4E8DFBC7A52B2673ADCB89FFFFFFFFA
            F5F1ECD7C8FBF8F5FFFFFFFEFDFCFCF9F7FCF9F6FDFCFCFFFFFFFFFFFFFFFFFF
            FAF5F2C7906DAE6031C9926EF7EEE8F8EFE9CE9368DDB496F3E6DCFEFEFEFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEDEBCA4B16536B36535D09C79E6
            CAB6C57E4AC67F4AD49D75E8CCB7F9F3EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF8F0EBCC9775B26331B4642FBC6F3BBE7138C1753BC67D46D19466DEB5
            95F1E0D3FDFBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EAE2D1A07FB96E3BBA
            6A32BE7036C1753CC67D46CF9161D7A47BE3C1A6FAF4EFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFBF8F5EBD6C6D8AC8CC0763EC2773FCE8F60D9AA86EAD0
            BDFAF5F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
            EFE8C88554CE9266E2BFA5F5EAE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EFE8D9AB89EEDACCFCFAF8FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
            FBFAFAF4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
        object ListBox1: TListBox
          Left = 4
          Top = 34
          Width = 182
          Height = 213
          ItemHeight = 13
          TabOrder = 0
          OnClick = ListBox1Click
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Following'
        ImageIndex = 1
        object SpeedButton2: TSpeedButton
          Left = 3
          Top = 3
          Width = 117
          Height = 25
          Hint = 'Load Following'
          Caption = 'Load Following'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF8FEFDFDFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF5F1E8CFBED6
            AB8CCE9872D3A380E3C5AEF7EEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF0E2D7CA9672B46937B56630B96B33BC7038BF763FCF986EEEDD
            CFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EDE6C68D68AD5F2DB0612DBA
            7240C48456C3804EC0773FC37C45CF996FF1E1D6FFFFFFFFFFFFFFFFFFFFFFFF
            FEFDFDDBB79FAF6334B16535CF9E7CEFDFD3F8F2EDF4E8DFDCB497C5824EC683
            4FDBB293FCF9F7FFFFFFFFFFFFFFFFFFFAF5F1C68E6BAD6032CB9673F7EFEAFF
            FFFFFFFFFFFFFFFFFBF8F5D7AA89C88855D29F76F4E8E0FFFFFFFFFFFFFFFFFF
            F3E7DEBB7950B1683BDCB9A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECD7C8D8AC
            8ADBB192F1E3D9FFFFFFFFFFFFFFFFFFF4E8DFBC7A52B2673ADCB89FFFFFFFFA
            F5F1ECD7C8FBF8F5FFFFFFFEFDFCFCF9F7FCF9F6FDFCFCFFFFFFFFFFFFFFFFFF
            FAF5F2C7906DAE6031C9926EF7EEE8F8EFE9CE9368DDB496F3E6DCFEFEFEFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEDEBCA4B16536B36535D09C79E6
            CAB6C57E4AC67F4AD49D75E8CCB7F9F3EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF8F0EBCC9775B26331B4642FBC6F3BBE7138C1753BC67D46D19466DEB5
            95F1E0D3FDFBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EAE2D1A07FB96E3BBA
            6A32BE7036C1753CC67D46CF9161D7A47BE3C1A6FAF4EFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFBF8F5EBD6C6D8AC8CC0763EC2773FCE8F60D9AA86EAD0
            BDFAF5F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
            EFE8C88554CE9266E2BFA5F5EAE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EFE8D9AB89EEDACCFCFAF8FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
            FBFAFAF4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton2Click
        end
        object ListBox2: TListBox
          Left = 3
          Top = 34
          Width = 195
          Height = 216
          ItemHeight = 13
          TabOrder = 0
          OnClick = ListBox2Click
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 220
      Top = 16
      Width = 401
      Height = 278
      Caption = 'Details'
      TabOrder = 1
      object AdvCloudImage1: TAdvCloudImage
        Left = 16
        Top = 24
        Width = 65
        Height = 62
        Async = False
        AutoSize = False
        CheckContentLength = False
        WebPicture.Stretch = False
        PicturePosition = bpTopLeft
        Version = '1.0.1.1'
      end
      object Label1: TLabel
        Left = 80
        Top = 100
        Width = 3
        Height = 13
      end
      object Label3: TLabel
        Left = 80
        Top = 119
        Width = 3
        Height = 13
      end
      object Label5: TLabel
        Left = 79
        Top = 138
        Width = 3
        Height = 13
      end
      object Label6: TLabel
        Left = 16
        Top = 100
        Width = 39
        Height = 13
        Caption = 'Friends:'
      end
      object Label7: TLabel
        Left = 16
        Top = 119
        Width = 49
        Height = 13
        Caption = 'Followers:'
      end
      object Label8: TLabel
        Left = 16
        Top = 138
        Width = 44
        Height = 13
        Caption = 'Location:'
      end
      object Label9: TLabel
        Left = 16
        Top = 157
        Width = 57
        Height = 13
        Caption = 'Description:'
      end
      object Label4: TLabel
        Left = 79
        Top = 157
        Width = 160
        Height = 118
        AutoSize = False
        WordWrap = True
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      635
      41)
    object Image1: TImage
      Left = 603
      Top = 11
      Width = 24
      Height = 24
      Anchors = [akTop, akRight]
      Picture.Data = {
        07544269746D617076060000424D760600000000000036040000280000001800
        000018000000010008000000000040020000C40E0000C40E0000000100000001
        0000EDAC0000EDAD0400EDAE0600EEAE0700EEAF0800EEB00B00EEB00D00EEB2
        1200EEB21400EFB31700EFB41A00EFB51C00EFB61E00EFB62000EFB82600F0B8
        2500F0B92A00F0BB2E00F0BC3100F1BF3900F1C03C00F2C13F00F2C24200F2C3
        4600F2C44A00F2C54C00F3C64F00F3C75200F3C85600F3C95900F3CA5D00F4CA
        5E00F4CD6500F5CF6A00F5D27300F5D27400F5D47B00F6D47A00F6D57D00DC00
        FF00F6D78300F7D88800F7DB9000F7DC9300F7DD9400F8DC9400F8DF9B00F8E0
        9F00F8E0A100F9E2A600F9E3A900F9E5AD00F9E6B100FAE7B400FAE8BA00FBEA
        BF00FAEBC000FBEFCF00FCEFCE00FCF0D100FCF1D500FCF3DA00FDF3DB00FDF4
        DB00FEF7E600FDF8E800FEF8EA00FEF9ED00FEFAEF00FEFBF100FEFCF500FFFD
        F900FFFEFB00FFFEFE0000000000000000000000000000000000000000000000
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
        0000270000000000000000000000000000000000000000000027000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000C15202C31322D22190D040000000000000000
        000000091D3540494949494949453726110000000000000000000008131E293A
        49494949494949463A170000000000000000000000000000203D494949494949
        49442607000000000000000000000316303F4949494949494949422300000000
        0000000000011C3C4949494949494949494949421200000000000000000F3646
        494949494949494949494949360A000000000000000F2E414949494949494949
        49494949421F000000000000002A424949494949494949494949494949300800
        000000001C494949494949494949494949494949493E12000000000330434849
        49494949494949494949494949461A0000000004183147494949494949494949
        494949494949210000000000144949494943392F232849494949494949492600
        000000002D4949473420100100164949494949494949360A0000000535494328
        0B010000000D4949494949494949472F0A000002303A18000000000000003047
        4949494949463B1E120000001B17000000000000000011334649494938242B25
        0600000004000000000000000000000C1F2F30230E02060F0400000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000027000000000000000000000000000000000000000000
        0027}
      ExplicitLeft = 600
    end
    object Button1: TButton
      Left = 12
      Top = 10
      Width = 110
      Height = 25
      Hint = 'Connect to Twitter account'
      Caption = 'Connect'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object btRemove: TButton
      Left = 128
      Top = 10
      Width = 110
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
      OnClick = btRemoveClick
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 340
    Width = 635
    Height = 415
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 2
    object TabSheet3: TTabSheet
      Caption = 'Tweets'
      DesignSize = (
        627
        387)
      object TweetSizeLbl: TLabel
        Left = 169
        Top = 9
        Width = 60
        Height = 13
        Caption = 'Characters: '
      end
      object Label2: TLabel
        Left = 2
        Top = 28
        Width = 46
        Height = 13
        Caption = 'Message:'
      end
      object Label10: TLabel
        Left = 3
        Top = 89
        Width = 23
        Height = 13
        Caption = 'URL:'
      end
      object AdvCloudImage2: TAdvCloudImage
        Left = 497
        Top = 28
        Width = 120
        Height = 120
        Async = False
        AutoSize = False
        CheckContentLength = False
        WebPicture.Stretch = False
        PicturePosition = bpShrinkWithAspectRatio
        Version = '1.0.1.1'
      end
      object Label11: TLabel
        Left = 497
        Top = 9
        Width = 73
        Height = 13
        Caption = 'Media Preview:'
      end
      object SpeedButton3: TSpeedButton
        Left = 3
        Top = 181
        Width = 110
        Height = 25
        Hint = 'Load Tweets'
        HelpType = htKeyword
        Caption = 'Load Tweets'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF8FEFDFDFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF5F1E8CFBED6
          AB8CCE9872D3A380E3C5AEF7EEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF0E2D7CA9672B46937B56630B96B33BC7038BF763FCF986EEEDD
          CFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EDE6C68D68AD5F2DB0612DBA
          7240C48456C3804EC0773FC37C45CF996FF1E1D6FFFFFFFFFFFFFFFFFFFFFFFF
          FEFDFDDBB79FAF6334B16535CF9E7CEFDFD3F8F2EDF4E8DFDCB497C5824EC683
          4FDBB293FCF9F7FFFFFFFFFFFFFFFFFFFAF5F1C68E6BAD6032CB9673F7EFEAFF
          FFFFFFFFFFFFFFFFFBF8F5D7AA89C88855D29F76F4E8E0FFFFFFFFFFFFFFFFFF
          F3E7DEBB7950B1683BDCB9A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECD7C8D8AC
          8ADBB192F1E3D9FFFFFFFFFFFFFFFFFFF4E8DFBC7A52B2673ADCB89FFFFFFFFA
          F5F1ECD7C8FBF8F5FFFFFFFEFDFCFCF9F7FCF9F6FDFCFCFFFFFFFFFFFFFFFFFF
          FAF5F2C7906DAE6031C9926EF7EEE8F8EFE9CE9368DDB496F3E6DCFEFEFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEDEBCA4B16536B36535D09C79E6
          CAB6C57E4AC67F4AD49D75E8CCB7F9F3EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF8F0EBCC9775B26331B4642FBC6F3BBE7138C1753BC67D46D19466DEB5
          95F1E0D3FDFBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EAE2D1A07FB96E3BBA
          6A32BE7036C1753CC67D46CF9161D7A47BE3C1A6FAF4EFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFBF8F5EBD6C6D8AC8CC0763EC2773FCE8F60D9AA86EAD0
          BDFAF5F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
          EFE8C88554CE9266E2BFA5F5EAE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EFE8D9AB89EEDACCFCFAF8FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FBFAFAF4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton3Click
      end
      object cbIncludeImage: TCheckBox
        Left = 54
        Top = 8
        Width = 113
        Height = 17
        Caption = 'Include image size'
        TabOrder = 0
        OnClick = cbIncludeImageClick
      end
      object Memo1: TMemo
        Left = 54
        Top = 31
        Width = 415
        Height = 50
        Lines.Strings = (
          'TMS Cloud Pack automated Twitter message')
        TabOrder = 1
        OnChange = Memo1Change
      end
      object edURL: TEdit
        Left = 54
        Top = 87
        Width = 299
        Height = 21
        TabOrder = 2
        Text = 'http://www.tmssoftware.com'
      end
      object btURL: TButton
        Left = 359
        Top = 85
        Width = 110
        Height = 25
        Hint = 'Add shortened URL to Twitter message'
        Caption = 'Add URL'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btURLClick
      end
      object Button5: TButton
        Left = 235
        Top = 181
        Width = 112
        Height = 25
        Hint = 'Retweet currently selected Tweet'
        Caption = 'Retweet'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = Button5Click
      end
      object Button7: TButton
        Left = 119
        Top = 181
        Width = 110
        Height = 25
        Hint = 'Load more Tweets'
        Caption = 'Load more'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = Button7Click
      end
      object Button4: TButton
        Left = 239
        Top = 116
        Width = 230
        Height = 25
        Hint = 'Tweet the mesage content together with an image'
        Caption = 'Tweet with image ...'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = Button4Click
      end
      object Button3: TButton
        Left = 3
        Top = 116
        Width = 230
        Height = 25
        Hint = 'Tweet the Message content'
        Caption = 'Tweet'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = Button3Click
      end
      object ListView1: TListView
        Left = 3
        Top = 212
        Width = 614
        Height = 168
        Anchors = [akLeft, akTop, akRight, akBottom]
        Columns = <
          item
            Caption = 'User'
            Width = 150
          end
          item
            Caption = 'Notes'
            Width = 360
          end
          item
            Caption = 'Date'
          end
          item
            Caption = 'Retweets'
          end
          item
            Caption = 'Favorites'
          end>
        ColumnClick = False
        ReadOnly = True
        RowSelect = True
        TabOrder = 8
        ViewStyle = vsReport
        OnChange = ListView1Change
      end
      object Button2: TButton
        Left = 353
        Top = 181
        Width = 112
        Height = 25
        Hint = 'Retweet currently selected Tweet'
        Caption = 'Delete'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = Button2Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Direct Messages'
      ImageIndex = 1
      DesignSize = (
        627
        387)
      object Label12: TLabel
        Left = 3
        Top = 47
        Width = 46
        Height = 13
        Caption = 'Message:'
      end
      object lbDMSize: TLabel
        Left = 55
        Top = 28
        Width = 60
        Height = 13
        Caption = 'Characters: '
      end
      object Label14: TLabel
        Left = 3
        Top = 9
        Width = 349
        Height = 13
        Caption = 
          'First select the recipient from the list of "Followers" or "Foll' +
          'owing" above.'
      end
      object Memo2: TMemo
        Left = 55
        Top = 47
        Width = 410
        Height = 98
        Lines.Strings = (
          'TMS Cloud Pack automated Twitter message')
        MaxLength = 10000
        TabOrder = 0
      end
      object btSendDM: TButton
        Left = 3
        Top = 151
        Width = 230
        Height = 25
        Hint = 'Send Direct Message to currently selected user'
        Caption = 'Send Direct Message'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btSendDMClick
      end
      object btGetDM: TButton
        Left = 3
        Top = 182
        Width = 231
        Height = 25
        Hint = 'Load more Tweets'
        Caption = 'Load Direct Messages'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = btGetDMClick
      end
      object ListView2: TListView
        Left = 3
        Top = 213
        Width = 614
        Height = 168
        Anchors = [akLeft, akTop, akRight, akBottom]
        Columns = <
          item
            Caption = 'Sender'
            Width = 150
          end
          item
            Caption = 'Text'
            Width = 310
          end
          item
            Caption = 'Date'
            Width = 100
          end>
        ColumnClick = False
        ReadOnly = True
        RowSelect = True
        TabOrder = 3
        ViewStyle = vsReport
      end
      object Edit1: TEdit
        Left = 344
        Top = 20
        Width = 121
        Height = 21
        TabOrder = 4
        Text = 'Edit1'
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 344
  end
  object AdvTwitter1: TAdvTwitter
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    OnReceivedAccessToken = AdvTwitter1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 504
    Top = 8
  end
end
