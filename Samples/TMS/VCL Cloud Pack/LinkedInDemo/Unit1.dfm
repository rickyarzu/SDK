object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Pack: TAdvLinkedIn Demo'
  ClientHeight = 714
  ClientWidth = 702
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
    Top = 466
    Width = 702
    Height = 83
    Align = alBottom
    Caption = 'Activity'
    TabOrder = 0
    object Label2: TLabel
      Left = 14
      Top = 20
      Width = 40
      Height = 13
      Caption = 'Activity:'
    end
    object btPostActivity: TButton
      Left = 14
      Top = 44
      Width = 110
      Height = 25
      Caption = 'Post activity'
      TabOrder = 1
      OnClick = btPostActivityClick
    end
    object edActivity: TEdit
      Left = 78
      Top = 17
      Width = 321
      Height = 21
      TabOrder = 0
      Text = 'Automated LinkedIn message'
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 549
    Width = 702
    Height = 165
    Align = alBottom
    Caption = 'Share'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 24
      Height = 13
      Caption = 'Title:'
    end
    object Label3: TLabel
      Left = 16
      Top = 47
      Width = 31
      Height = 13
      Caption = 'Descr:'
    end
    object Label4: TLabel
      Left = 16
      Top = 74
      Width = 48
      Height = 13
      Caption = 'Hyperlink:'
    end
    object Label5: TLabel
      Left = 16
      Top = 101
      Width = 34
      Height = 13
      Caption = 'Image:'
    end
    object btShare: TButton
      Left = 14
      Top = 125
      Width = 110
      Height = 25
      Caption = 'Post share'
      TabOrder = 4
      OnClick = btShareClick
    end
    object Title: TEdit
      Left = 78
      Top = 17
      Width = 321
      Height = 21
      TabOrder = 0
      Text = 'Automated LinkedIn message'
    end
    object Descr: TEdit
      Left = 78
      Top = 44
      Width = 321
      Height = 21
      TabOrder = 1
      Text = 'Automated LinkedIn message'
    end
    object Hyperlink: TEdit
      Left = 78
      Top = 71
      Width = 321
      Height = 21
      TabOrder = 2
      Text = 'http://www.tmssoftware.com'
    end
    object ImageLink: TEdit
      Left = 78
      Top = 98
      Width = 321
      Height = 21
      TabOrder = 3
      Text = 'http://www.tmssoftware.com/site/img/tmslogo.png'
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 41
    Width = 702
    Height = 251
    Align = alTop
    Caption = 'Lookup'
    TabOrder = 2
    DesignSize = (
      702
      251)
    object pSearch: TPageControl
      Left = 3
      Top = 23
      Width = 696
      Height = 222
      ActivePage = Profiles
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = pSearchChange
      object Profiles: TTabSheet
        Caption = 'Profiles'
        ImageIndex = 3
        DesignSize = (
          688
          194)
        object btConnections: TButton
          Left = 14
          Top = 16
          Width = 139
          Height = 25
          Caption = 'Get my connections'
          TabOrder = 0
          OnClick = btConnectionsClick
        end
        object DefProf: TButton
          Left = 14
          Top = 47
          Width = 139
          Height = 25
          Caption = 'Get my default profile'
          Enabled = False
          TabOrder = 1
          OnClick = DefProfClick
        end
        object lbConnections: TListBox
          Left = 398
          Top = 16
          Width = 287
          Height = 141
          Anchors = [akLeft, akTop, akBottom]
          ItemHeight = 13
          TabOrder = 2
          OnClick = lbConnectionsClick
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'People'
        DesignSize = (
          688
          194)
        object Label6: TLabel
          Left = 14
          Top = 20
          Width = 51
          Height = 13
          Caption = 'Keywords:'
        end
        object Label7: TLabel
          Left = 14
          Top = 47
          Width = 54
          Height = 13
          Caption = 'First name:'
        end
        object Label8: TLabel
          Left = 14
          Top = 73
          Width = 53
          Height = 13
          Caption = 'Last name:'
        end
        object Label9: TLabel
          Left = 14
          Top = 100
          Width = 49
          Height = 13
          Caption = 'Company:'
        end
        object Label10: TLabel
          Left = 14
          Top = 127
          Width = 43
          Height = 13
          Caption = 'Country:'
        end
        object lbTotalPeople: TLabel
          Left = 490
          Top = 175
          Width = 39
          Height = 13
          Caption = 'Results:'
        end
        object edKeywords: TEdit
          Left = 71
          Top = 16
          Width = 321
          Height = 21
          TabOrder = 0
        end
        object edFirstName: TEdit
          Left = 71
          Top = 43
          Width = 321
          Height = 21
          TabOrder = 1
        end
        object edLastName: TEdit
          Left = 71
          Top = 70
          Width = 321
          Height = 21
          TabOrder = 2
        end
        object edCompany: TEdit
          Left = 71
          Top = 97
          Width = 321
          Height = 21
          TabOrder = 3
        end
        object cbCountries: TComboBox
          Left = 71
          Top = 124
          Width = 321
          Height = 21
          Style = csDropDownList
          TabOrder = 4
        end
        object btPeopleSearch: TButton
          Left = 9
          Top = 163
          Width = 110
          Height = 25
          Caption = 'Search'
          TabOrder = 5
          OnClick = btPeopleSearchClick
        end
        object lbPeople: TListBox
          Left = 398
          Top = 16
          Width = 287
          Height = 141
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 6
          OnClick = lbPeopleClick
        end
        object btNextPeople: TButton
          Left = 444
          Top = 163
          Width = 40
          Height = 25
          Caption = 'Next'
          TabOrder = 8
          OnClick = btNextPeopleClick
        end
        object btPrevPeople: TButton
          Left = 398
          Top = 163
          Width = 40
          Height = 25
          Caption = 'Prev'
          TabOrder = 7
          OnClick = btPrevPeopleClick
        end
      end
      object Companies: TTabSheet
        Caption = 'Companies'
        ImageIndex = 1
        DesignSize = (
          688
          194)
        object Label11: TLabel
          Left = 14
          Top = 20
          Width = 51
          Height = 13
          Caption = 'Keywords:'
        end
        object lbTotalCompanies: TLabel
          Left = 490
          Top = 175
          Width = 39
          Height = 13
          Caption = 'Results:'
        end
        object Label16: TLabel
          Left = 14
          Top = 73
          Width = 43
          Height = 13
          Caption = 'Country:'
        end
        object Label17: TLabel
          Left = 14
          Top = 47
          Width = 45
          Height = 13
          Caption = 'Industry:'
        end
        object btSearchCompanies: TButton
          Left = 9
          Top = 163
          Width = 110
          Height = 25
          Caption = 'Search'
          TabOrder = 3
          OnClick = btSearchCompaniesClick
        end
        object edCompKeywords: TEdit
          Left = 71
          Top = 16
          Width = 321
          Height = 21
          TabOrder = 0
        end
        object lbCompanies: TListBox
          Left = 398
          Top = 16
          Width = 287
          Height = 141
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 4
          OnClick = lbCompaniesClick
        end
        object btNextCompanies: TButton
          Left = 444
          Top = 163
          Width = 40
          Height = 25
          Caption = 'Next'
          TabOrder = 6
          OnClick = btNextCompaniesClick
        end
        object btPrevCompanies: TButton
          Left = 398
          Top = 163
          Width = 40
          Height = 25
          Caption = 'Prev'
          TabOrder = 5
          OnClick = btPrevCompaniesClick
        end
        object cbCompanyCountries: TComboBox
          Left = 71
          Top = 70
          Width = 321
          Height = 21
          Style = csDropDownList
          TabOrder = 2
        end
        object cbIndustryCode: TComboBox
          Left = 71
          Top = 43
          Width = 321
          Height = 21
          Style = csDropDownList
          TabOrder = 1
        end
      end
      object Jobs: TTabSheet
        Caption = 'Jobs'
        ImageIndex = 2
        DesignSize = (
          688
          194)
        object Label12: TLabel
          Left = 14
          Top = 20
          Width = 51
          Height = 13
          Caption = 'Keywords:'
        end
        object lbJobResults: TLabel
          Left = 490
          Top = 175
          Width = 39
          Height = 13
          Caption = 'Results:'
        end
        object Label13: TLabel
          Left = 14
          Top = 47
          Width = 42
          Height = 13
          Caption = 'Job title:'
        end
        object Label14: TLabel
          Left = 14
          Top = 73
          Width = 49
          Height = 13
          Caption = 'Company:'
        end
        object Label15: TLabel
          Left = 14
          Top = 100
          Width = 43
          Height = 13
          Caption = 'Country:'
        end
        object edJobKeywords: TEdit
          Left = 71
          Top = 16
          Width = 321
          Height = 21
          TabOrder = 0
        end
        object btSearchJobs: TButton
          Left = 9
          Top = 163
          Width = 110
          Height = 25
          Caption = 'Search'
          TabOrder = 4
          OnClick = btSearchJobsClick
        end
        object lbJobs: TListBox
          Left = 398
          Top = 16
          Width = 287
          Height = 141
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 5
          OnClick = lbJobsClick
        end
        object edJobTitle: TEdit
          Left = 71
          Top = 43
          Width = 321
          Height = 21
          TabOrder = 1
        end
        object edJobCompany: TEdit
          Left = 71
          Top = 70
          Width = 321
          Height = 21
          TabOrder = 2
        end
        object cbJobCountries: TComboBox
          Left = 71
          Top = 97
          Width = 321
          Height = 21
          Style = csDropDownList
          TabOrder = 3
        end
        object btNextJobs: TButton
          Left = 444
          Top = 163
          Width = 40
          Height = 25
          Caption = 'Next'
          TabOrder = 7
          OnClick = btNextJobsClick
        end
        object btPrevJobs: TButton
          Left = 398
          Top = 163
          Width = 40
          Height = 25
          Caption = 'Prev'
          TabOrder = 6
          OnClick = btPrevJobsClick
        end
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 292
    Width = 702
    Height = 174
    Align = alClient
    Caption = 'Details'
    TabOrder = 3
    DesignSize = (
      702
      174)
    object Label18: TLabel
      Left = 575
      Top = 27
      Width = 37
      Height = 13
      Caption = 'Picture:'
    end
    object Memo1: TMemo
      Left = 14
      Top = 22
      Width = 555
      Height = 139
      Anchors = [akLeft, akTop, akBottom]
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 575
      Top = 46
      Width = 115
      Height = 115
      BorderStyle = bsSingle
      TabOrder = 1
      object AdvCloudImage1: TAdvCloudImage
        Left = 1
        Top = 1
        Width = 109
        Height = 109
        Async = False
        AutoSize = False
        CheckContentLength = False
        WebPicture.Stretch = False
        PicturePosition = bpStretchedWithAspectRatio
        Align = alClient
        Version = '1.0.1.0'
        ExplicitLeft = 9
        ExplicitTop = -2
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 702
    Height = 41
    Align = alTop
    TabOrder = 4
    DesignSize = (
      702
      41)
    object Image1: TImage
      Left = 668
      Top = 8
      Width = 24
      Height = 24
      Anchors = [akTop, akRight]
      Picture.Data = {
        07544269746D6170F6060000424DF60600000000000036000000280000001800
        0000180000000100180000000000C0060000C40E0000C40E0000000000000000
        0000CF25B6B3770DB27300B27300B27300B27300B27300B27300B27300B27300
        B27300B27300B27300B27300B27300B27300B27300B27300B27300B27300B273
        00B27300B47A12CF26B9B57709B27300B27300B27300B27300B27300B27300B2
        7300B27300B27300B27300B27300B27300B27300B27300B27300B27300B27300
        B27300B27300B27300B27300B27300BE8729B27300B27300B27300B27300B272
        00B27200B27200B27300B27300B27200B27200B27200B27200B27300B27300B2
        7300B27300B27200B27200B27200B27300B27300B27300B97E16B27300B27300
        B27300BB821FCBA158CBA058CB9F56B77C11B17200C3913ACBA058CBA058C89B
        4CB27300B27300B27300B87E16CBA058CBA058CBA058B97F1AB27300B27300B9
        7E16B27300B27401B27301CCA159FFFFFFFFFFFFFDFBF7C18E32B07000E4CFA8
        FFFFFFFFFFFFF4ECDCB27200B27401B27301C59540FEFEFDFFFFFFFFFFFFC79A
        4AB27301B27401B97E16B27401B37401B27301CCA158FFFFFFFFFFFFFCFAF6C1
        8E31B17100E4CEA7FFFFFFFFFFFFF4EBDAB27300B37401B27401C5953FFEFDFC
        FFFFFFFFFFFFC79949B27301B37401B57B11B37401B37501B37401CCA158FFFF
        FFFFFFFFFCFAF6C28F31B17200E4CEA7FFFFFFFFFFFFF4EBDAB37300B37501B3
        7401C5953FFEFDFCFFFFFFFFFFFFC89A49B37401B37501B37A0EB37502B37503
        B37403CCA259FFFFFFFFFFFFFCFAF6C28F32B27201E4CFA8FFFFFFFFFFFFF4EB
        DAB37401B37503B37502C5963FFEFDFCFFFFFFFFFFFFC89B4AB37503B37503B4
        7A0FB47503B47604B47504CCA359FFFFFFFFFFFFFCFAF6C29033B27302E5CFA8
        FFFFFFFFFFFFF4EBDBB47502B47604B47604C69740FEFDFCFFFFFFFFFFFFC99B
        4AB47604B47604B47A10B47606B57708B57607CDA35AFFFFFFFFFFFFFCFAF6C3
        9136B47405E5CFA9FFFFFFFFFFFFF5ECDDB57606B57708B57707C79843FEFEFC
        FFFFFFFFFFFFC99C4BB57707B57708B47B12B57708B6790CB6780BCEA55BFFFF
        FFFFFFFFFCFAF7C4923AB47607E5D0AAFFFFFFFFFFFFFAF6EFB97E14B67A0CB6
        790ACCA255FFFFFFFFFFFFFFFFFFC99D4CB6790BB6790CB57C14B6790CB77C12
        B77B10CFA75FFFFFFFFFFFFFFCFBF7C5943EB6790CE6D1ACFFFFFFFFFFFFFEFE
        FDD7B67BB77B0FB97E16E7D2AEFFFFFFFFFFFFFEFEFDC69743B77B11B77C12B5
        7D19B67B0EB97F15B87E13D0A861FFFFFFFFFFFFFCFBF7C69741B77B0FE6D2AC
        FFFFFFFFFFFFFFFFFFFFFEFEF8F2E7F9F4EBFFFFFFFFFFFFFFFFFFF8F2E6BF8A
        29B97F14B97F15BB841FB87D10BB8217BA8115D1AB62FFFFFFFFFFFFFDFBF7C7
        9942B97F11E7D3ADFFFFFFFFFFFFF8F3E8FCF9F4FFFFFFFFFFFFFFFFFFFFFFFF
        FFFEFEE3CC9FBB8218BB8217BB8217BD861FB98014BD861DBC851CD0A95FF9F4
        EAF9F4EAF7F0E3C89B44BB8318E4CDA2F9F4EAF9F4EAE8D5B0D1AC63F6EEDFFC
        FAF6FDFBF7FAF6EFE7D4AEC18F2DBD861DBD861DBD861DBE8924BB8318BF8B23
        BF8B23C08D27C2912EC1902DC2912EBF8C25BF8B22C18F2BC2912FC2912FC18F
        2CBE8A21C2912ECCA453CEA759C79A3FBE8A23BF8A23BF8B23BF8B23BF8B23BF
        8C28BC871EC18F2BC18F2BC2912DD1AC62DCC188CDA555C1902BC18F2BC18F2B
        C18F2BC18F2BC18F2BC18F2BC18F2BC18F2BC18F2BC18F2BC18F2BC18F2BC18F
        2BC18F2BC18F2BC18F2DBF8B26C59537C59536D7B674FDFBF7FFFFFFFAF5ECD0
        A95CC59537C59537C59537C59537C59537C59537C59537C59537C59537C59537
        C59537C59537C59537C59537C59537C39234C28E2FC99B44C99B44E9D6B2FFFF
        FFFFFFFFFFFFFFDFC38FC89A42C99B44C99B44C99B44C99B44C99B44C99B44C9
        9B44C99B44C99B44C99B44C99B44C99B44C99B44C99B44C6953CC59439CDA252
        CDA252DFC38FFEFDFBFFFFFFFCFAF5D8B678CDA252CDA252CDA252CDA252CDA2
        52CDA252CDA252CDA252CDA252CDA252CDA252CDA252CDA252CDA252CDA253C8
        9A44C89944D2AA63D2AA63D3AC66E2C798EBD9B8DEC18CD2AB64D2AA63D2AA63
        D2AA63D2AA63D2AA63D2AA63D2AA63D2AA63D2AA63D2AA63D2AA63D2AA63D2AA
        63D2AA63D2AB64CB9F4FCC9F51D7B376D7B476D7B376D7B376D7B375D7B376D7
        B476D7B476D7B476D7B476D7B476D7B476D7B476D7B476D7B476D7B476D7B476
        D7B476D7B476D7B476D7B476D7B477CEA45ACCA157DDBE8BDCBD8ADCBD8ADCBD
        8ADCBD8ADCBD8ADCBD8ADCBD8ADCBD8ADCBD8ADCBD8ADCBD8ADCBD8ADCBD8ADC
        BD8ADCBD8ADCBD8ADCBD8ADCBD8ADCBD8ADCBD8ADDBE8CCDA765D32CC2CEA762
        D3AC6AD3AC6AD3AC6AD3AC6AD3AC6AD3AC6AD3AC6AD3AC6AD3AC6AD3AC6AD3AC
        6AD3AC6AD3AC6AD3AC6AD3AC6AD3AC6AD3AC6AD3AC6AD3AC6AD3AD6ACEA662D2
        2BC1}
      ExplicitLeft = 699
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
      Left = 127
      Top = 8
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
  object AdvLinkedIn1: TAdvLinkedIn
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    Scopes.Strings = (
      'r_basicprofile'
      'r_emailaddress'
      'w_share')
    Logging = False
    OnReceivedAccessToken = AdvLinkedIn1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 600
    Top = 8
  end
end
