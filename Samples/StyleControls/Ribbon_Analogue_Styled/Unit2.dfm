object AppPagerForm: TAppPagerForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'StyleControls VCL - TscAppPager - Demo'
  ClientHeight = 314
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object scAppPager1: TscAppPager
    Left = 0
    Top = 0
    Width = 568
    Height = 314
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabStop = True
    Touch.InteractiveGestures = [igPan, igPressAndTap]
    Touch.InteractiveGestureOptions = [igoPanSingleFingerVertical, igoPanInertia, igoParentPassthrough]
    Caption = 'scAppPager1'
    CaptionHeight = 100
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -19
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = []
    CaptionGlowEffect.Enabled = False
    CaptionGlowEffect.Color = clBtnShadow
    CaptionGlowEffect.AlphaValue = 255
    CaptionGlowEffect.GlowSize = 7
    CaptionGlowEffect.Offset = 2
    CaptionGlowEffect.Intensive = True
    CaptionGlowEffect.StyleColors = True
    ChangePageWithItemSelection = True
    ShowCaption = False
    CaptionImageIndex = 0
    CaptionLayout = blGlyphTop
    ItemGlowEffect.Enabled = False
    ItemGlowEffect.Color = clBlack
    ItemGlowEffect.AlphaValue = 100
    ItemGlowEffect.GlowSize = 7
    ItemGlowEffect.Offset = 0
    ItemGlowEffect.Intensive = True
    ItemGlowEffect.StyleColors = True
    ItemGlowEffect.HotColor = clNone
    ItemGlowEffect.PressedColor = clGray
    ItemGlowEffect.FocusedColor = clNone
    ItemGlowEffect.PressedGlowSize = 7
    ItemGlowEffect.PressedAlphaValue = 255
    ItemGlowEffect.States = [scsHot, scsPressed, scsFocused]
    SelectionStyle = scapsStyled
    Wallpapers = scGPImageCollection2
    WallpaperIndex = 0
    CustomBackgroundImageIndex = -1
    MouseWheelSupport = False
    ItemSpacing = 10
    ItemMargin = 10
    ItemBackgroundColor = clWindow
    ItemFontHotColor = clBtnText
    ItemFontSelectedColor = clHighlightText
    ItemFontSelectedFocusedColor = clHighlightText
    ItemHotColor = clHighlight
    ItemSelectedColor = clHighlight
    ItemSelectedFocusedColor = clHighlight
    ItemHotImageIndex = 3
    ItemSelectedImageIndex = 3
    ItemSelectedFocusedImageIndex = 4
    CustomOverContentImageIndex = -1
    ItemWidth = 200
    ItemHeight = 40
    Items = <
      item
        Page = scAppPagerPage1
        Visible = True
        Enabled = True
        ImageIndex = 0
        Caption = 'Options'
        Divider = False
      end
      item
        Page = scAppPagerPage2
        Visible = True
        Enabled = True
        ImageIndex = 1
        Caption = 'Recent documents'
        Divider = False
      end
      item
        Visible = True
        Enabled = True
        ImageIndex = -1
        Caption = 'TscAppPagerItem2'
        Divider = True
      end
      item
        Page = scAppPagerPage3
        Visible = True
        Enabled = True
        ImageIndex = 2
        Caption = 'TscAppPagerItem5'
        Divider = False
      end
      item
        Page = scAppPagerPage4
        Visible = True
        Enabled = True
        ImageIndex = 3
        Caption = 'TscAppPagerItem6'
        Divider = False
      end
      item
        Visible = True
        Enabled = True
        ImageIndex = -1
        Caption = 'TscAppPagerItem7'
        Divider = True
      end
      item
        Visible = True
        Enabled = True
        ImageIndex = 4
        Caption = 'TscAppPagerItem4'
        Divider = False
        OnClick = scAppPager1Items3Click
      end
      item
        Visible = True
        Enabled = True
        ImageIndex = 5
        Caption = 'Exit'
        Divider = False
        OnClick = scAppPager1Items7Click
      end>
    ActivePage = scAppPagerPage2
    ItemImages = scGPVirtualImageList2
    object scAppPagerPage3: TscAppPagerPage
      Left = 200
      Top = 0
      Width = 368
      Height = 314
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      BorderStyle = bsNone
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      Visible = False
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FullUpdate = True
      BackgroundStyle = scsbsFormBackground
      object scLabel3: TscLabel
        AlignWithMargins = True
        Left = 3
        Top = 10
        Width = 362
        Height = 28
        Margins.Top = 10
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DragForm = False
        GlowEffect.Enabled = False
        GlowEffect.Color = clBtnShadow
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = True
        UseFontColorToStyleColor = False
        Caption = 'Page #3'
      end
    end
    object scAppPagerPage4: TscAppPagerPage
      Left = 200
      Top = 0
      Width = 368
      Height = 314
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      BorderStyle = bsNone
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      Visible = False
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FullUpdate = True
      BackgroundStyle = scsbsFormBackground
      object scLabel4: TscLabel
        AlignWithMargins = True
        Left = 3
        Top = 10
        Width = 362
        Height = 28
        Margins.Top = 10
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DragForm = False
        GlowEffect.Enabled = False
        GlowEffect.Color = clBtnShadow
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = True
        UseFontColorToStyleColor = False
        Caption = 'Page #4'
      end
    end
    object scAppPagerPage1: TscAppPagerPage
      Left = 200
      Top = 0
      Width = 368
      Height = 314
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Visible = False
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FullUpdate = True
      BackgroundStyle = scsbsFormBackground
      object scLabel2: TscLabel
        AlignWithMargins = True
        Left = 3
        Top = 10
        Width = 362
        Height = 28
        Margins.Top = 10
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DragForm = False
        GlowEffect.Enabled = False
        GlowEffect.Color = clBtnShadow
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = True
        UseFontColorToStyleColor = False
        Caption = 'Options'
      end
    end
    object scAppPagerPage2: TscAppPagerPage
      Left = 200
      Top = 0
      Width = 368
      Height = 314
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      BorderStyle = bsNone
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      WallpaperIndex = 2
      CustomBackgroundImageIndex = 1
      FullUpdate = True
      BackgroundStyle = scsbsFormBackground
      object scLabel1: TscLabel
        AlignWithMargins = True
        Left = 3
        Top = 10
        Width = 362
        Height = 28
        Margins.Top = 10
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DragForm = False
        GlowEffect.Enabled = False
        GlowEffect.Color = clBtnShadow
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = True
        UseFontColorToStyleColor = False
        Caption = 'Recent Documents'
      end
      object scAdvancedListBox1: TscAdvancedListBox
        Left = 0
        Top = 41
        Width = 368
        Height = 273
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = True
        Touch.InteractiveGestures = [igPan, igPressAndTap]
        Touch.InteractiveGestureOptions = [igoPanSingleFingerVertical, igoPanInertia, igoParentPassthrough]
        OnDblClick = scAdvancedListBox1DblClick
        CustomBackgroundImageIndex = -1
        CustomOverContentImageIndex = -1
        CustomSelectionImageIndex = -1
        CustomFocusedSelectionImageIndex = -1
        BorderStyle = scbsNone
        BackgroundStyle = scbgsTransparent
        WallpaperIndex = -1
        AutoComplete = True
        CustomCheckedImageIndex = -1
        CustomUnCheckedImageIndex = -1
        CustomCheckedDisabledImageIndex = -1
        CustomUnCheckedDisabledImageIndex = -1
        CustomButtonImageNormalIndex = -1
        CustomButtonImageHotIndex = -1
        CustomButtonImagePressedIndex = -1
        CustomButtonImageDisabledIndex = -1
        CustomHeaderImageIndex = -1
        GroupBackgroundColor = clWindow
        GroupBackgroundCustomImageIndex = -1
        SelectionStyle = scastColor
        SelectionColor = clNone
        SelectionTextColor = clHighlightText
        ShowFocusRect = False
        SelectionGlow.Enabled = True
        SelectionGlow.Color = clHighlight
        SelectionGlow.AlphaValue = 255
        SelectionGlow.GlowSize = 7
        SelectionGlow.Offset = 0
        SelectionGlow.Intensive = True
        SelectionGlow.StyleColors = True
        Style = scalbsPlain
        AlternateRow = False
        ShowCheckBoxes = False
        Items = <
          item
            Button.Enabled = True
            Button.Visible = False
            Button.StyleKind = sclbsPushButton
            Button.Width = 50
            Button.Height = 25
            Button.ImageIndex = -1
            Button.ImageHotIndex = -1
            Button.ImagePressedIndex = -1
            ProgressBar.Min = 0
            ProgressBar.Max = 100
            ProgressBar.Value = 0
            Header = False
            Enabled = True
            Caption = 'Document 1'
            Detail = 'C:\My Documents\Doc1.doc'
            Checked = False
          end
          item
            Button.Enabled = True
            Button.Visible = False
            Button.StyleKind = sclbsPushButton
            Button.Width = 50
            Button.Height = 25
            Button.ImageIndex = -1
            Button.ImageHotIndex = -1
            Button.ImagePressedIndex = -1
            ProgressBar.Min = 0
            ProgressBar.Max = 100
            ProgressBar.Value = 0
            Header = False
            Enabled = True
            Caption = 'Document 2'
            Detail = 'C:\My Documents\Doc2.doc'
            Checked = False
          end
          item
            Button.Enabled = True
            Button.Visible = False
            Button.StyleKind = sclbsPushButton
            Button.Width = 50
            Button.Height = 25
            Button.ImageIndex = -1
            Button.ImageHotIndex = -1
            Button.ImagePressedIndex = -1
            ProgressBar.Min = 0
            ProgressBar.Max = 100
            ProgressBar.Value = 0
            Header = False
            Enabled = True
            Caption = 'Document 3'
            Detail = 'C:\My Documents\Doc3.doc'
            Checked = False
          end
          item
            Button.Enabled = True
            Button.Visible = False
            Button.StyleKind = sclbsPushButton
            Button.Width = 50
            Button.Height = 25
            Button.ImageIndex = -1
            Button.ImageHotIndex = -1
            Button.ImagePressedIndex = -1
            ProgressBar.Min = 0
            ProgressBar.Max = 100
            ProgressBar.Value = 0
            Header = False
            Enabled = True
            Caption = 'Document 4'
            Detail = 'C:\My Documents\Doc4.doc'
            Checked = False
          end
          item
            Button.Enabled = True
            Button.Visible = False
            Button.StyleKind = sclbsPushButton
            Button.Width = 50
            Button.Height = 25
            Button.ImageIndex = -1
            Button.ImageHotIndex = -1
            Button.ImagePressedIndex = -1
            ProgressBar.Min = 0
            ProgressBar.Max = 100
            ProgressBar.Value = 0
            Header = False
            Enabled = True
            Caption = 'Document 5'
            Detail = 'C:\My Documents\Doc5.doc'
            Checked = False
          end>
        ShowItemDetails = True
        ShowItemProgressBars = False
        ItemProgressBarWidth = 0
        ItemProgressBarHeight = 15
        ItemSpacing = 5
        ShowItemTitles = True
        ItemHeight = 40
        HeaderHeight = 20
        IndentMargin = 10
        ItemIndex = 0
        ShowLines = False
        LineColor = clBtnFace
        MouseMoveChangeIndex = False
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        DetailFont.Charset = DEFAULT_CHARSET
        DetailFont.Color = clGrayText
        DetailFont.Height = -11
        DetailFont.Name = 'Tahoma'
        DetailFont.Style = []
        ButtonFont.Charset = DEFAULT_CHARSET
        ButtonFont.Color = clWindowText
        ButtonFont.Height = -11
        ButtonFont.Name = 'Tahoma'
        ButtonFont.Style = []
        HeaderStyle = scahsDefault
        HeaderUseStyleColor = True
        OnKeyDown = scAdvancedListBox1KeyDown
      end
    end
  end
  object scStyledForm1: TscStyledForm
    DWMClientShadow = False
    DropDownForm = True
    DropDownAnimation = True
    StylesMenuSorted = False
    ShowStylesMenu = False
    StylesMenuCaption = 'Styles'
    ClientWidth = 0
    ClientHeight = 0
    ShowHints = True
    Buttons = <>
    ButtonFont.Charset = DEFAULT_CHARSET
    ButtonFont.Color = clWindowText
    ButtonFont.Height = -11
    ButtonFont.Name = 'Tahoma'
    ButtonFont.Style = []
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    CaptionAlignment = taLeftJustify
    InActiveClientColor = clWindow
    InActiveClientColorAlpha = 100
    InActiveClientBlurAmount = 5
    Tabs = <>
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clWindowText
    TabFont.Height = -11
    TabFont.Name = 'Tahoma'
    TabFont.Style = []
    ShowButtons = True
    ShowTabs = True
    TabIndex = 0
    TabsPosition = sctpLeft
    ShowInactiveTab = True
    OnChangeScale = scStyledForm1ChangeScale
    OnCloseUp = scStyledForm1CloseUp
    Left = 248
    Top = 224
  end
  object scGPVirtualImageList2: TscGPVirtualImageList
    PixelOffsetMode = scgppomDefault
    InterpolationMode = scgppimDefault
    Width = 24
    Height = 24
    DefaultWidth = 24
    DefaultHeight = 24
    SourceImageCollection = scGPImageCollection1
    Left = 456
    Top = 224
    Bitmap = {}
  end
  object scGPImageCollection1: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          870000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300000DD700000DD70142289B780000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000005
          7B4944415478DAED596B6C544514FECEF6814023206A77154963245113852AD1
          1F3E10932A2581BE4B9014304A892F106B88406C01A3C4A4D10AA2B102765B4C
          B0DDB650490D253E302646A42A60C4841F80DA6E6DA31593765DD9EDF8DD3EF7
          71F76EBBBD77D3269ECD9D3BAF3373BE3367CE9CB92B4A294C6692FF01C44275
          92805E9C636E5EB034388DD56AC1C40770501CF0A35DA7C58F8B484699EA9BD8
          009C7237D353BA6D36A4A248754E0C007592020F3290804FB14AFD1D006003D3
          B7F4254236CDE8C870B95A66337D1097D18CE79437BE009CF20ED3A7F868C257
          52B80628BCC4FC72032E4DA01AA6EFB2FF6AE6D7F299CAA70C6BD4CEF8013820
          F3A9F956E6124C1AD143F3BA95E6F54B7C0038E504B4A537976AB90A2BAC0750
          2D2B680287A2F46AA18954A00FDFF7976C4827CFF3CC3D62C865C3435C8513D6
          02A892BD14EE69831E5BA9C95DBA2D4ED9C2F4B5889C0AA558AB5EB11680E67D
          7AB19BB9C7755A5B28FCA386FC4E3986F09550FCBD89E9D88202F5AFB50086A8
          5AF239695D509D6029DDE42751F832C9D71C50E3657919357F3CB4ABF5079953
          8227507050900E439E2AB113A83BA0C6C3559BA6D7351E007A31E0C72721802A
          C9A0201F33376564C6184D08282488A6F800A89364F4601785DDD42F7230C5BA
          89B591EAE8763704AEA0556EF4654EB6D3A047EC6E143849DE7BAD0550238BA8
          A92FA2F48AED200379D6A84DE302D05D28337C811B93E4E98577EE51D51DA0C9
          8FA0D9ADB9D4C5DD300FC5EA72CC003A72244D09CE329B12D274850EF37E7BA3
          3AD95FAA91B9D4EECF08013A2E12ACA303D81754355600EDD9B24C6C688AD05C
          EC6850EF0F979C52CA74073437C89D4113A9A6105A785D84F0CD1D48A7D8BA99
          0A58C8F746966FE4D3CADBDA3DA1B7B5B1AF40AE3C438EB72368689BA35E8D6C
          C03D320533E836812FA9B93F86EBAB258B600E4798623F052D1E16B4529278C9
          5CC23DF21DC7680B9B72CC00F2E475B26C8ED0BC9B2BB031A866BD245DECC4F4
          B446F5D7705D8D5C4FEDFE1E618C27B949F78F561E5D00EEE5722D12A185AC6D
          D454B9A351B5FC5428C9B37C788175DB106EFF43C4BD8DBD5E85ED3E2F3C2953
          F1C420583B9F74823BD7DF6B078D300D5A40167ED919CD411715409EBC47C18B
          47C6C41926D3D8F596518EDB3508C61150779C00465CA453BE627A5F085F37B9
          D209FB52CC0028FC5D14FE5B689ED96C52C8E16A1E1EFF40460072753563D26C
          B8E0BD1AB7A77DA0FEB10400B5FF18B5F4E128F85AE8F32B1292064E51FF15A4
          F36C18CD29AA51094DE90D4B00D0C394B0586EC8A1B09566A01BC7B87318C788
          611CD347E02B79D8D55A020022D2918312D6BCCA52B24EFF166ACF3092A409EA
          4792C0AF740645F686910BB9F90006A93D5FD2A50F2E666F0EEE8CA5D49EA18B
          63A89149736A0E9E05DF78FBB024E82CB012C0A0260FF2B52AB02E31118EEB6A
          8D6F535D8562F7F9826E539A1B3E44CDAF345BF86800343B2D989C007852BA4F
          E3287399C19D63332102F85A7A90917A4CF5580E80D1E64D3CE86B985DA4D37F
          3C9BF8ACCD87ACD42675C13200EE6C790003A1F2CC881CE373A37FFA6D583CC7
          A5CE580280A172A91A88DFA351EC0799C27A2AA0D212006DB9329B01D0796667
          993541085DF227E2B639B5CA6309008DDA73E45911ECB1427A8E5B60AF572E53
          C70CF3428592E0F6F59BC61D26CBFF391DC0C3A62B45CF8D32265ACCEACF98D5
          AE754778B92BB7256226DF1508FD6B349C7ED03E3E291BAEA2FB7C1103FB827B
          170B521BD48F7101A091E69168AF1DF418E787EAB45BD9357EB894F6A5586F30
          E0807D3ED6055EBC7FCB973B79ED4A76B894FEBF9256018844ED79B29D1EA84C
          B7D1640F630900A3AF1274A55937D4ABA6310D186F003C6973F9AAD76D5458C8
          15689DD000B43B833B9B51AA847D99E8A4976988A7F0B1019860F41FCCF08ABF
          3143EA290000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          870000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300000DD700000DD70142289B780000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000003
          864944415478DAEDD86D4813711C07F0DF992EB7D526861A5A69594E0C2A342D
          DAAB5E6868508ECAA207D140B05EF4602FA4379A542FEC5D44FA2274209BE503
          698AE60311A5054D457AF22975F321F109CDE5367736EDFF3F326CBAF3D4BBED
          16FBC2D8EDB8FBEFFFB9FBFD6E7723E6E7E7C19943B8002E000780874D246B2A
          347CD68D28C11DA704883C0830CECE738AE014702CC41D1AB4164E119C02147B
          3DA8C97389E01C80C325C22E002E1176037085B02B800B84DD016C231C02B046
          5C8F1410BC04308D0BE002FCAF000B3903C6E11E308EE9C038DA07A6B13E6ABD
          D0271044BEE8E51304A2ADC1902697F00F30A5FD08836FD5F0CBA8A7DDCE5D24
          C1DBC4E7E7E7BFE01C905DDA493B58D80E09C4ED97C2F7C62298ECFA40AD13FB
          ED824DDB42D1110FA28E3C0E3E13C6511D4C0F768061A477617795D96CBEA656
          AB271D0208F415C1A9486FE82EBD0FE4F4046C1008C15F7E06BC438FD04E60A2
          E33D0CBD2B41E566C21FFB11E2C06A10AC9650FF2B2575E4C5A8AE036352C043
          ECC568BF59C30FE8AB7B0206D42F282A544E97EC0EC035AFABC9A58E7CC8D94C
          286F9D06ED88C1E6F6E9A7654B109DCFB216CE04E39E587709893DDD21353A00
          7D7906D5B0DB8F2642AB7937347FA3AF026B000E2EA781D7057871982449994A
          A5A2BF02B001080FF682C35BC6A1B7EA11D5B07EB169905BDD032BFDD9B11C00
          A7FBF903AAB1D1BC62954A650DAB005B1969A982614D25F845C441EF6639347C
          1D5F711F5B80614D051AAF1A0882C8C8CBCBBB6B1780F6650EE8759F6067EC55
          9004ED5BCDAE4B82C7C1E3A154A03E38C92A60B912BA19BF07BA0B6FA3269C82
          B0C46C74E591AE0B80C7692B48C78B430810E0023089D39490AD2C6E629D440E
          6FBEF0B489995C46FD8FDF829CAA1EB0CCD11F03875C4699FE90B5CFC9A0B18D
          FE2C38E4878C2E8B6F2564E732A1BE7D063EEBA61803EC722BB15258BA99AB44
          933FC1F43B590558CC46E82ABEB7E6DB69349749D4BC52F49E82EA3FDFEE8005
          C41A1F68EAD12BFACFF21C53046F1E29D1642B9293931FA35557F09C0626A6C1
          CD0D9ED695959C77080067B50FF5A87C88A4A4CB39FD13FA54837996DA5622F4
          A045F0F26F95684542CB4F1319BEF0592A1414D696155F701A004E8C22A1596F
          2223FE223C37AA6BCB8B2E3202F025D608544E2A544EFF3C2FF31A4021E2139A
          F433E4415B08DE03AC11A81F34A81F0E39158042281234F8BDAEAC386AF17AA7
          01D88AD3037E03ECAE71CE4F253B4A0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          870000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300000DD700000DD70142289B780000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000002
          044944415478DAEDD83D4BC3401807F0E712C55A05A110E8287550E8D0499CEC
          8B22A28860B599EBECEE2638FB19FC025650101B0515ABDFA1931FA0A20EEAA0
          626B1EEF0A8512CC4B936BAEC1FB43E8E5E592FBA57F3A942022443944022440
          0224A0EFC9178D83DAC9EA6EE400BA7EAC3EFD8C1D0242990248A40085ED5A0C
          DF3E8F00709DED470AB0A45F4F345BDF677498ED1CEB0B205FAC9610C88E82E6
          FEEDE95A8DC7E20BBA91C4165CD261A6FB38774056BFD09416D6E95063FBF42E
          774121F35BD5946A922B3A4C59CF7107E48B1715BAEC92F5B85FC842F13C6382
          C2DE7CF2AFF35C01AC3A746AC5E99A5E20B94D234B1058E727ECAEE106B056C7
          2D6E90DC66759D20A1BF361073BA0F37805D75FC400A1B4619091CD2A1EA369F
          0BC04B75BC429028B374F7C0EBBCC0805EABC32BE61081875C021A3B73C1007E
          AB13241F8961A82F6BED4F5C4CFB07F0A84EAF799C196FBF79F60DB0F806845D
          9D4E6518A03BBE016156A7BB32D6F80284591D6B650203C2AA8E5D650203DCAA
          832A7DF07C029EA7E230FAD6A45BABBDC55F3BE3260C7D998E8B72AA0C078061
          DBADEFB80AF5150DDE93238E0F65003BDCCB64DCB1327D03B045B3C5334498E1
          0268A4C7DBB561F5093B81009DBE3380A8F80678EDFB400244F59D0B607AEF1E
          45F59D0B80DCD407EAFF1609101D09101D09101D09109DFF07884A2440742440
          74220FF805C8E4C7B0604621680000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          870000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300000DD700000DD70142289B780000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000001
          B14944415478DAEDD8BF4BC3401407F04B0A6E259383A9B83A5A07F7424AC0C5
          C94527D3FC015D0ABA956E0A5DFC039238D9C5C9450809747750475731E9D029
          74139AFA120CD4981F62E35D52DE17C285D0E17D78EFE0AEDC62B120550E8700
          0450045C3F7E50D1760F363804200001085823802449E18F8E2E1F68D44FEE2F
          0EC3D5B6ED5C08024A0950555584EF43785A1CC76D51A93A2550C3046A18C3D3
          D334CDCD057C15FF0CAF9B2C0B4FC81410CD38E207A0D3E9DCC272C2BADA948C
          745D3FCD04288AE2B21E9B28E69910AEF28D17AEC1381986216602A003A5395F
          C70141A003DF3676A901494100EB2080757201D1B1A1AC891F2F1080001A80D9
          6C463CCF23BEEF532992E779220802A9D7EBC5001CC721F3F99CEC0C5EA800DE
          FA7BA456AB9146A3510C20EAC076FF890AE07DB05F6C07A2D0BE91252517D06E
          B75DF896789C660D8063FEC4B2ACECE3347420F5429304B8BA7B5DB9E0F3E3DD
          5F012023E840F68546966511366CE2959231600A1BBB699A66F6957209318496
          B596C789C508056303358CA1F85EBCF854405A2AFBCF5C16E02F23141F1904AC
          02F88F20606D01650C02580701AC5379C027D86798B00FD5D4B4000000004945
          4E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          870000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300000DD700000DD70142289B780000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000002
          EA4944415478DAED99416813411486DFDB4D6B351B4F15A4826863A8D88A9EBC
          4811D4ABF5201E84AA88200D2AA29756A43D2862BD28A2922288A8010FE2C17A
          554182174F8AAD5862DA2258047B321B8D6D76C7B7D9449A64B39BBA3349A7F4
          BF646797CC7BDFEEBC376F66903106320B5700960B40E4AEDE69AAEC0075D7C9
          00DB106003DD6E2B3C9E212BDF10D80C228C2B06BE489ED6C61B0E10BE93D96E
          06CC13C0B0871C0E2FE6BF643545D647959CF2207526F8B1AE00E17BD98DCC98
          BF427FEFA5A6E2E3055A3209278E6AD360EA54CB57A1005D4FA1F9F76CE63203
          768E9A2D3E1D2F5716016FAD6E0D0E8D1D8639EE0091DBFA3A2300CFE8B29BB3
          E3E54AA83938943CABFDE006608D75A6C2287DEA4D829D2FBA358D06F4D4121B
          9E00B6F3EC2D5D86EAE3FC3FA5D1C0DD5E10AE00F6B0C177F57BF315EE4DAB39
          B6CB6D385505B002F6D7ACFE12C48F792F25D6B46AFBAB05765580702C334CD9
          A6BFC1CEDB4E025E4F4583033503D8793E3701FC53E5FF2A8B6AA0C3699E7004
          688FA51FD2A3637E2C1E8C04E0E48EE6FCF5FD0F73F03C99F3C9C01E4D4643C7
          3D010A59E73DF89861D76B0889DE20A868B70D32D11DCFC077DD57DD655256DA
          599E952A00368FA46F20C3F37E2C1DD9D60457F7AC2AB977E9CD1F78F269DE4F
          B75472B19B537DA10BEE0031FDCB620BB37209FA02F902702AAA6DA90A6095C4
          860263BEAC14C43F066CA926742D2CC54B00C223E901C6F01A174B8284C82EA6
          FA42C38E00947D1E174AE4252C16A76C74D41180C6FF2B1AB67B1BEDA2ABFB00
          AF290EF63902B4C7F4CFF4D3C1C3D064542B6953DFBC1826A8EFADD5007E02A7
          AA5320409AFA5EBB6C01E41E423C835814804710F34BA3E2BE804B1AE5399189
          02709DC8789612A2005C4B094B3C8A3951009EC55C1E8043392D0CA096729AC7
          824610406D0B1ADB98FF25257FD5B8A4B424FDA23E0F21F3B68A25E937B62C49
          BDB55894D49BBBA510926EAF1725F5014751521F312D94B4877C1520B21EB33A
          49CA83EEA5A0158046EB2F8DD436BFAAE800BE0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000320000003208060000001E3F88
          B10000000473424954080808087C086488000000097048597300000E6B00000E
          6B0154FE0D060000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A000006B64944415478DAED9A096C54451880FFD9B7
          57F71068A1A2104134DC96A3745B40A0E996232012B1722B1249010553445140
          E548AC582368B84488A40AA15014915004764B2B29B0BBB42058219C150820A4
          5868B7DDEBEDF8BF2D6CBBDDF7DE5E050AF227E5BD9D37F3CF7CF3FFF3BF7FE6
          41E01111F2A007F018E431481052A54F7C1208D503A5DD8190F6E08658904073
          CF433754E0FD754AE10221504A25528376EFC1EB4D06E446FFFE5A95D2398112
          9802147421E84426382C217483D5A5DE1C5B5050F540406EA6C6379351E91C42
          E84C046811E17CDCC48958E190916531BB4DB7EF1B48554AE21474A1A5781B1B
          214043B9867F1F698CE6EC7B0AC259414199F5E812698D0CD040684E8D4D9EDE
          AAA8A8B2D1416A52FAB56381FD0D2DD1F9DE4278E52443D8615186E28B8D0652
          959CD09A32A4082B77B84F107707778E02E9AF319AFE8918840E89535BDDCA42
          5CD0F1218D42AE00F9E0977D8A1CFB7EC57FECA1F258D42A3699EC2CAE8E08C4
          9AAADB8A71F2B5507B276A2DA8162EF729AB5E3C1BA83568B7AFAF6D0B5A655C
          D82055FA8489586563183D3732087A0690F15AA329276490CA21FD6209EB3A89
          B7D14D0104A59CCA9D5DB4BB8FDE0809A44AAFCBC2CB07629AA54983C0652902
          605D9181305290F6E9072ED3EFE228942CD5E49BE6050DF26F72CFE63246CE85
          3DAD904E59CA70900F1B0DAEE347C0BEE93BECC41D1E08918062623A48E3FA80
          23EF677016E489A1DC7210B65DB4A1F8565020F8E6CEC0F7C572216D4C878EA0
          9CF6BE67109C388D3BC1B167475820F2A1A340A61F7967C6DD605B93056CD959
          11A3C0BB5A8379457020A9BA2382E116071F356B0148DAB6AB2B73BBA13A6B1E
          D09BE5218190E896A09A9B092091D4A9BA74016A5666D6A694BCFD8349633027
          0504A94EE9DBC64DD8CB423322ED99008A09D37CCA1C3B72C0596408CB22B201
          A9201FE91B59ED1BD7A2CB5A048D022C7D5A5360B9260A52A94F1C47806E16D2
          A29C3A1B988EDDEA66F0EF7350B3EA73FF890B7A8D10887A673E489E79D65BC4
          9E3A01B6EFBF111A0267AC31DA7C73AE2808BAD55264FE904F015144E1E096A1
          5964DE32DB0FAB81FDB3247C1014695C3C2826CDA82B7039B16E06503B7F1680
          4E97A9359A1788825853127FA2848EE653C074EA0ECAB732EA0A30DDB06287E0
          744604023239A817A10564F52668DD3260CFFCC50B8246CC551BCC63C42DA2D7
          71C17C009F02A96E0028D2267B7FB36567C0B6FA0BFECED41A50CDCFF205C99C
          8B20FC1BC1A8999C7BD5E5A4F6DC0DB5EF287E93146AF2CDC98140383FE9C5D7
          5E963A12E44346797FBB8E17E3C25C038D218AD7DF06E90BBDBDBFB970CE8575
          0192128DD1E21355F9408EE2A5272F0866B3F533DA7B0AB217410C918114E265
          205F737FD73A8BAEB5B45140FC5C6B5B36B8CC0784AAEFC7ED708A288858DAEE
          B7D89D0EB02ECAF05C2311A25080EAD3AF7D17FBFAE5C09E2E15684173D022E3
          4541F03DB204DF239FF077A8AC8D44F5C22FE75A9C8B4522D21E3A4FBEE59540
          E197C0624C531605024943905C1010E59BB380E9DAC3FBDB7DE32AD47CB5D093
          A68425989E44CD59029256ADBD456CE931B065AF146E4261B42ADFBC5D14E4D6
          D0BED18C8BE5727E099F122E4B554C9AEE53E6D8B9059C07F685C5211B3414E4
          237C3DD9FEE36A709D28116AC262061CD33003E64D1A2BF5BA43F82089570D97
          52CCFAD82F69B465AF02F6E41F21417096554E9EE9D1E955152069249414A9F3
          4D2FFA95F355B6A6E8A6A31F0AC655E6B9CEA04C7FCF9BC6DF8571E46D43CB18
          FCF626FEA391806CE060900F4FF381E0066F5BFB25B0E74F0B3725345D6DB0AC
          0B0AE4CEC6AA0C6F9B092994250FAB1D4803715FB904CEFC5DE0C2C4AFE18909
          179D984E71F8627D0924ADDBF8B575ECCA0567E11EB129A840B76A1FF4C68A13
          74AFCFF0E17C31AD8A57DF0069E240FE871879DC572F03BD5DDB2779A219489E
          6AEB13F17CAA1F2A00FB76F1730E0A7489D66859C8F74C10843B658F523AB9C3
          873620221C88E295493E9BA3908465C1FECBA6C0FB758032B58AED2674BE257E
          1C94AA9B80D3B029500FCCF35D707334B676C64310F7958B18F1B6027BEE54C0
          BA98918FD51A2C5B859E073CA043175B8795A606EC0917B0B47722487B2579F6
          F4422EC4B91CB7985D2587C175D41438307820E05B7C01CE10AB13DC9129ABDC
          8FB709C1CCB247E4B8A871C7475AC480A4798CA7C85D51EED9D3B317CF8794D2
          701F83342A561FF1912927B793E35B4A18864B26BB063D82C69152B4D7A0278C
          E6F2401583FEACC085642923CFC3067DEF07015AE2A08B758C685170AC2298FA
          FFBF0F3DF5E5A1FFF4565F1E898FA1F5E5A1FF3CCD270FF57F18682AF218A4A9
          C92303F21F8D46F151F2E08B620000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end>
    Left = 456
    Top = 152
  end
  object scGPImageCollection2: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000190000000E508060000007D27A1
          0A000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB00004DD74944415478DAEDBD699064
          D7752676CECBBDF6AEEEAEDE37341A400320004A80289200898514E9012951A4
          244B96E461B414139CF931318ED08C2386F3C33F1CFEE1F08CFDC3F60FD27678
          14926571460B47E410144102A22892204800C4DA007ADFBBBABBF6CACAEDBD33
          E7DC7B5FE6CBECCAEA5A72799979BEEEAACA7C99F9F2EEDF3DF76CF8E517AE03
          1181BFB20C981B8160791E2008A067C065F7323948E486CDE38E021182C20AF8
          C53C78A3DB80B80D13D91CA0E7B9B2015456965CBB2E00F815007E6D7862177C
          EDADFF0C4F1FF930645219F8C6C9E7E1B78F3F0BF3131E2CEFCCC0DED7E7E1DA
          BDA3902EF830395D809F5EBB09F7EC9884A15402BC8531A88CCF0116D2902867
          21185D80F9A00249F060041250488D01CC5D060CCA52C0AE758B373201545C81
          442A0D984CD9C6E0F2F8F92580EC100432DE208024BFAFBEDFA8BEDCF23020D3
          D6E45E42778DF8412E99851F5E7819DEBCB1089FFFE06761287F1D8AFC751EDF
          3B954E99CF20B74B10F8FC97CCEDA57F888738F28F97E06E29E481A48C953224
          1249C074062ADC5F542EB92FDB22648C0E8F01F93E787C3F2F93B17546698F65
          001E035429F1F71521C5E3A82FC1F52D2FCC000E8D703F70EFE4175AD3B61D2A
          3BF298E5719C42BF72DCCB64EFE16B5C112CF01839CB43F10D7E9C3773BCB14E
          FC3C21631C3DC88D4DC07FFA1FBF04A33BF780CF63A1FC89A700975760CFA1BB
          60CF43C7E1FCB7DF810F4C1E024810CCE566612CB91B0AC525A8F0FCDE999A80
          F9E22224D37CBF2C427AA108C5B46786914F1E243D30EB383FE38F7B7C0DF92B
          79C4975678C9F1C04B378C397E6EC6378FB9A41973745BB9C3BFC4F3A2B238CF
          737A9C3F53E639C3EB503A6DDB4509640B5002690A2590689594406E27105E67
          BA383E375A76CC0EA713D9A1A7B8CB0EF93EAF97D2A75CFCA48C258499A054FC
          5B9EE30BAB1288F4A912484CA104A204A204127F34100815966CE3F7028890A5
          8EC7BC74F611DF0F6024E3C18E5C02168A01CCACF0829DF064913DCF6BE8F3DC
          A77EDD67A5BF79FE2B81C4154A204A204A20F1478440A40F3C69139E2B1D9FB3
          9BC32877D6E77C0A72139904FCC6F13138BA2D0537F23EFC87B717E0E2028F1B
          4F46137C8B7F2E573FE5C62C99C1A604124F288128812881C41FB71148D04B04
          322504B25221F8F8C11CFCEA3DA361F7C1CB5757E0CFDF5A846C52C609BDC8BF
          DE332FB8C16A08C40E3A25905842094409440924FEB8038198AE952621AA5BCA
          50DADFDB781F04B0FE350CE98EF7DFC1EFFA7CD127F885DD59F89D07C6AA2F7C
          EF5C1EBE756A09324220043FE102BF662AA204D223500251025102893FD62090
          B0C72B29EE970859986EF6036EA3B22592F57C0DFFE3E512B25E0AD6B31A98EF
          E081E07B8159F79B20E3A1F769FEBB2BC11FF8D8A12178782A03E7E7CBF0DCE9
          65582953384C8A7CC78B7CA3D7B95E3795407A014A204A204A20F1C75A1288F4
          2BEFE0CF3F3A092B391EE3EE23F277E9F2225CFECB7778C15A9FC2DDE7FB6E4B
          8EC03313C7F9F19DDFCFBC01B323F3706BF4163FF66E7B3DE0C2A57894ECA2DC
          27B9EF0E0666C126D38FB26E0AB1DD2620C940233AC50F4EF25BAE2A81C4194A
          204A204A20F1C77A08E417994086EA09645908E4AF364E204F8F6F9D40C291B8
          03B34F6529798C569769A40633FC3E5E5145D95E8732BF78913FF73A0FBA6925
          903842094409440924FEE8310271432DB903731FCB51E2EEA0B6C0CEF24F81CB
          9DE137F08486397EDF82DC8AD7EC71229CC2DB894496DAB3D9F16D6FFDC5977F
          FFEAC4BEC366CD2D7FE2692590AE43094409440924FEE8210271EA6F64F2782A
          47C92A79F088BBC5EF38CF0F2BD15B406DC0CAC2C9CB3F8CF3DF9D7C8BB1E850
          F652A960FAD45BE7AFBEFBDA9BB3D397AFAE3CF504CFF1B2124857A104A204A2
          04127FF4088154250FC83E9183E4B1AAE441748BBB4BC82380B52716B9F7F040
          C231AEDE143F1E0BDB20C5EB5429BF18944AC58B6FCE9EF9F9CDC5996B078E1C
          837D0F3FA004D215288128812881C41F3D4020C80422C38BC9E3C93AF2303A0E
          3A0777268F4604D6ED1EC679A9DD2992897CD85894F14F3691865337CE9E4B4D
          4DBE9D3C3A75E9C2B7DF8587B71F5602E928944094409440E28F9813C84D2690
          44E0259CE4714F481EDCFB33B039F2A82B16FF24F8D32C91E02EB03A1214A57C
          DA4B4105039FB9EBCA7BD76EFDFCDEECDE6BC48D333734A304D2112881288128
          81C41F31269099913998199DF1A682E18FF34A72ACC5E4516D01F3C3EB3A1771
          82C7EE0E7E3E8191573D71322925CF57203839975A3C3FAE04D2012881288128
          81C41F312690D9E1050FC6969E1809D2F746ADAD78BC9C85D6904723E49E1ED9
          185BA14462AB6DE4121EAE44572839FA7AB194BF526601654A09A44D50025102
          5102893FE24820763C79FEF8FCC72853BA27320CE71C79F8D0BE494461097819
          E6494B534438515DB7DD9B4A015DE0429C1C4D4C9C5B282E2881B4BE1B944094
          409440628FB811887BADB26DFEE39429DE0B41D8CF247E1DED268F468412C908
          2FC9BBD05A6D9966A815207165A51CBC9E48E1A5440E83F4BC12486BA004A204
          A204127FC48940ECBE3F5199987F22C814EFC19AFF87913CD0FA7978EBFAC216
          B650B564F6484B22008FD7CAE17C513CBC4209EF8DF472E902130829816CB9D9
          954094409440628FB810881B4395F1F98F3379DC1B46E2E5CBF39E3DB6AA4037
          278E85D1BBF0F2CC8D0553BC3E6FC3683449D37E74A5ECD15BDC7CE72AE4514A
          096493500251025102893FE24020E6B9481E0B56F2A885719FE7B17106BA2379
          AC8590486471DBC50F271ACBC7CD77AD0CF43A8FAB8BFCC45702D92894409440
          9440E28F381008DC2E79F0772F2056C9A3DB9247D3D6B3BF582221D8C90F27C5
          1C387C114DBDE10A41703280E054F28E04C273309D5502B14DAB04A204A20412
          7B749D40C8AB8C2F3C41D9C2BD500B9AB8E0248F32C44BF268066B528C302C41
          1BF9B14824750DC3559E86C07FDD27EF22134899CA85ACE7251EF052A9233600
          242EF09A759292E9D33CDE820D1348C5CF79092FBC1F2A816C054A204DA10412
          AD92124897090479CE7C2CC8B2E4119207114B1ED04BE451D79A26E38807A324
          311FC94824D53A3889E42ABFED3C22DECDCF77F881CD6D9270F94BF8E9499E83
          3F804A31488E4EC21D096481D79C91F1719ECF9F44A2493FB0FE2A4A205B8112
          4853288144ABA404D23D023192C7E39429DCC70F6D518016F851AF9247144E47
          0243FC27944892B7B509CF95B14C02722984B94200929A37C12CC2E3FE874C0E
          6F2687C7604D02E175CBE7F990C88D3D8BC9E43E9FD9C8DDAFA204B215288134
          851248B44A4A209D269067C68E43854748C5380916EF0DC983B1C84BEE695E75
          7B9D3CEA5AD7B6300C4BD046141D893BDA12C963FF58127EE3F828EC1A4EC2CF
          AF17E06FDE5F827C3990B12893F075AB7C6F40FDB897FBF302070F0A191D9A48
          C117EE1B83C95C4209644B5002690A259068959440BA402058189F7B82B2C5FB
          6A3A0F62F200218F382BCCB78230EC4A9689643FFF9D2854087EEF0363F0C8AE
          6C75667DEDED05F8C9950264931B6F02915EBEF8D0383CC0EB144F4125902D41
          09A4299440A2555202E914815478ED1A4F0E794F1D3AF4783993BF0F430F7364
          C903E00C1295A07F248F6628739BEEE5F971B0C80422D2C787F6E5AA2FFEC91B
          F3F0F3E92264129B2390DFBE7F0C7E718F212425902D4109A4299440A2555202
          E90481046E1C3DBA6FE713BBC7868E4796B125EEFBD3FC7710C8C33685098782
          C7F8813791F5E0B3C74660EF68127E76B5002F9ECF1BFD100256006941E2373A
          650A99F9C62C0BD6CC996A16C4C8930926E5C6DB731E7CE6D8284C0DEB11D6D6
          A004D2144A20D12A2981B49B40843CC4F3E1D103538FEF1B1DBAAFE457D7B025
          5E0FCFF08B45180CF2B0E0459DE7C7211E643B7D197F3CD6E4C4AAEC9A452CB1
          5CBBDC5C57BB184EF18EF0A3ED723FB1E662014609644B5002690A2590689594
          40DA4920A1E4F14BFB773DBE676CE8FEB2230FBEBAEC214B1E64248F7ED479AC
          05D3AA4CAB4C22B0CDC911E1709606BAC2F3E1DA06DA456E91E2FB1D8CDC4FCD
          78B7042590A6500289564909A45D04124A1E8FED9FFAE8DEB1E1E325BF6A50B4
          8C963C064BF2A88734AE8442D966C2A010258D2446709387DED226DA257ABF6D
          421C4A205B81124853288144ABA404D20E02B1E401F0D881A927F68C0E1F2FD7
          8EADF2FC738AFB7B90C9230A69E1E8A22E6DB295811D460EF69540B6022590A6
          500289564909A4D504E2C8C37B74FFD447F68D8DDC1F913C943C3A03E3F0AE04
          B215288134851248B44A4A20AD249050E7F1D8FEA927E4D8AA2679501E014FF3
          DF022879B41B4A205B86124853288144ABA404D22A0271E4814EE711519853DE
          53F2E8249440B60C2590A6500289564909A41504D28C3CF8D20ADF448EAD943C
          3A0725902D4309A4299440A2555202D92A8140CA5E7D94C963FFD8F003A19F07
          21AD20E02924258F0E430964CB5002690A259068959440B6422017FFF26D48A4
          934E613E747FC449708589E33477EC0A2879741A4A205B86124853288144ABA4
          04B2590259BCB40097FFF21DF8A5BBF67C84258F074B41D54970C54338CD9F57
          F2E80E9440B60C2590A650028956490964330422285C5FF2A6FEE1C6470EEE1C
          8B4A1E05ABF33026BBEB8BB2A868359440B60C2590A650028956490964A30412
          8E88FD6F2D7C647CBAF46005AB6324240F953CBA0B25902D4309A4299440A255
          5202D9088198160F08F7BDBDF0E1F1AB8507FD5495270A2EAA2E379A4A1E5D86
          12C896A104D2144A20D12A2981AC9740F24E02D9F7E6C247C6983C8254D8FE54
          E4E63AC5EF95632B953CBA0F25902D4309A4299440A2555202590F819C7B6C12
          0A9904EE7F4B248F95A8E451E4CE13535D258FF8400964CB5002690A25906895
          9440EE48202C699C7B7412769C59FEC8F8E57AF24082D38024D163F5D82A3E50
          02D93294409A4209245A25472041E031811CF5D2E9A37C2DC3F75EF457F22721
          99BE32580482D23F47BC4CF6185FCF719F2C07E9C4C94AC6DB979D2F3F1CD452
          AD969CC25C741E2A79C40B4A205B86124853288144AB44BC708E66BD54FAE33C
          320E859B6EB935FF97A2BC1614F23F6502A1BE2790DC70CA4B671FE77638D6D0
          0EDC1FDCA79E6D6FBE5E421B5557258FF8A12E9CFBD34C2033BC137A873BB7A8
          04B20128813445CF13487EB1A504921C1AFD18A6D2F7F95C6E399D49F14259F0
          C9948FC512DEC0E55F0C2AC5F752D21EFD082190C55999A78F31817C50DA4152
          ACA659DA28723B042EEDAA43913F70869F6D26E991A27D882494826D2623E1BF
          7E61FA9F48B7098970277E3FC82F4C2B81AC134A204DD1DB0492AE9DCD372BD7
          C6B09B0BFD8F64CD9CCC79F06BF78CC2FED124BC76BD087F7B66094ABEB9F302
          FF7A85DF5BE95AA7B51D94E39A3ECA4D9B19497BF0D97B46E0EE6D2978E75609
          BEF9FE12AC94C9F62DD2295EA56640258F38C1983AD4A5C80593D276FA04EF06
          9209CF4CAF057F69EEEB14042BDD2EEDFAABA504A204D21E02A92B89F9A82C70
          CDDB14F95F926F580E6EE380FBF9D5C78B1582CFDF370A1FDE9FABBEF0E76F2F
          C0CB570A904D0E4ECAEE02B7C3A78F0EC3278E0C57AF7D8309E4C5F379D30EDC
          4FEFF2A5795002890F48F2D77A87F9D10E9FAC58C8D3A8829717CA27BE737639
          79F2561112669206AFF23C79B9DBE55D2FCCB4436CCD51C386BF5C09A419FA85
          402411E832FFA41686E13B57FF33FCDA079E820A4BE855EF04734F995108257E
          F3DCD21CEC1ED961F48A1118029185F3B7EE1F835FDA9BADD6F23FBCB3083FBE
          BCC2F5181C0259E176F8CCB11178EAD050B51DBE757A199E3FBB6CDA81FBE93D
          BE34074A207101CF361CE7BFC7E48148D19FB97B14A6861315E4817EE2D68A9F
          FC3F7F3A6B3AD643BAC66FFC4FDD2EF1FAD0E549A704D214FD44204BFC939E1F
          816F5CFA6BF8AD0F7E1ACADC8F68FE11BF1C70B756580A4EC255C8C3DFBDF622
          7CF1839F87A25FE632A02112DE94EDF33CEFD35CE4044F3A9642C660DF48025E
          9F2EC2374F2D41BE2CF3AE6B5DD57148774E64A51D46E0C8440ADEBB5582BF7E
          6F09168B81F46D45241017E74AF51FF180CF437D1FCFB77DA2AFFAAF7913F4E8
          9EAC5CB704B25C0E92FFDB4B33B06C06324DF30B7FDDED12AF0F4A204A209D23
          906F5EFE3AFCE6239F6A4A20D761057EF0C6DFC3EF3EF4AB8E403C218F0405C1
          E35EC2BB474A2FCAE35CCA3347354BA580A51923BC004F44EE34B809FDBDEB96
          9EDCC3B5DD29ED904D7A3CA691D79DC028D213A663E92AFFBE0C5D9FDC8A0884
          40F6F37CDB2BFDF4C587C6E1015EA7B80B2B982F0727BE7B7639F9C34B796B05
          41F4267FE08775DD179DDFEEBA9D98F64C582C2824004122936DFB5152403E54
          4A45337DBB0E2590A650023104221E834FF0CF5DD1B609A8EA4768C8831F4EF3
          88B9D879255EC721B54E71731EE66A4FACD20E33DC0EE7AC65731C26B8C24166
          CB24F7CF113F00EFF04412BEC052F4B65CA282FFCB8F6E9D9829F8C9EABC25F8
          11F7E81BC013CE47268680A7493261671BBF2728577802F00E2AEBF1EE690CA6
          CB3761777A37FCC3D86978FB9F7E09E0C6745B6BB2E7D8C3F0F9FFE1FF86D2CA
          52B71B5509640D288194731EE0C7F946072375CBF33DE7F993A37C7FFE2228F1
          2D6E723566618B665E3D04A9A7C7BFB67375B7BB7690C17A8B2B3F635B7C20DA
          A19720D34848E07E7E9C11E9713C9B107D5505FFFBEF5EFF83848755DF4F3283
          1ABFCF0472464228271D8190E708A4583604921B126B9349B854BC0A87B207E0
          9B936FC26B4FF27CB939D3D69AECBDEF17E04B7FFC23288ABF4AB7A104D21483
          4A20DF7FFDFBF0FB0F7F6EB454293DC3C59B8AD46A898B7DD6E5ED6EEC98415B
          30D792B406AD2DE20E33EBACD4C884EF202412880EE4CBDFBBFE7B3C110B28E7
          5C003BDDEB65A2E0850AD0B9B509641B5C2E5E83834C20CF6D7B0B7EF6A95F01
          B872A5ADB539F8D087E10FFFAF17984016BADDB04A206B605009E4276FBF34F1
          9B0F7CFA99B25FDE1EA9144B1D705E22CA822A8615BD0322A3D5C02368244677
          4DE293012F39803EFE9B17AE7F10DC8C25C0FD204E4FF67DE50AD17799372E80
          12C8EA5002698A4123104C27B9ED717BAE089F4CA23756AB11CDF0DBCE4BDCC4
          AE768842B13138C9030F47C903AC7F4E189BAC121288587E98B3477EC7012692
          2937D28BE407DF6509E49212C82A5002698A81221079EE797B52C9CC33FC4543
          616D90E806BFE922E8B9BEA2B760063F93C7119E62DBED05833917D812DD4F1D
          818401B224D68928FEDC71161603A0EF5082AE2881344009A429068940020A0E
          2430F534172753AB065D43C44B6EEA2979287A0521071C86BA632B12E38F903C
          009A10487803B1926012C11DF6D3B44249FC0EFFBDA60412811248530C0A81F0
          BFBB10BD8FF13BD3D50A205DE61978ADAB1DA0506C1C36B002E21180A8E44173
          0DE401B00681849FF308E130DF6DD25D2AF848CFF9A5CA342981B82654026986
          012190E3FCEBF188F3931C555DE0EB37A026E62B14BD80F54A1E21D62490F086
          BC12E21192D0BDF6CA72D92F7D3B08BC9B4A20A004B206FA9F40E0612EC863E8
          ACAAA4ABF9FEE7F9F92DE86F6F7245FFC18C76160C589A062330B8D13FD7843C
          00D64120E0AE25989544A49970375EAE9483E73239EF961288124833F4318120
          13C86388F8482D522F95F9E667D15AA8A899AEA297602645807804A9E6E741AB
          1F5B45B12E021188582E71E0251CC3B8F9A44F8B94F39EF32BE3B34A204A20AB
          A11F09E4EB17FFC2FB9D5F78F6A37EE01FAF9696A08068921F69DA5545AFC192
          07AFED4C16565581CE5497602DF200D80081B82F8224CF59167170CC5CF170C1
          F7479EBBE4DF983B9451025102A947BF11487669D4CB27AF3D39313A7277B5B8
          0479B0E421F973943C14BD8430E3CD11887898F324995B0779006C904004328D
          7946E251FEE8A8F934C1DC8DA0F0DCAED481856F4F2A812881D4D04F04B21C60
          3687F86426E51DAC047E58CC45913CF85109943C14BD05C932803C7F9A3909AE
          67E1D83081D82F4148F1AFA3FC6844EEE0933F9B4CEEFEF637B6BFBDF0EA273F
          A904A204626009A4808954EA1813C8416E0C097D30E3E797DF856C6E3EC60472
          3713C841FE609ADF3ACBB7B9401E7E907B747FA490737CA37368D3CFAAA595A2
          9740263E0942D554D75EE5318DEB260F804D128840925265B8182C89E0B0B8AE
          2747876F7DB3F4CE732FFFC6B3CB70F57A5B6BAF04D22304323C36EC79898F21
          E281AA67B669135AE13DFC8F82FCD2A958114822994D245352DEC3D1F21AB3F8
          4881F8C14DBE7401D4BB5CD17BB09207B0E48111C983689E27D546C803600B04
          620B8298E6D2DC8D804349F4609ECA37FFEC5FFCEADF5EFFF9CB6D8DB3BEF7DE
          47E04B7FF2121497341A6F8C09041323139FF23CEFA0E44F4EB845BF1290C939
          C38B74A5B2BCF00D5EC5A75B41207F7FFE2578FDFA02FCD6A3BF0EC3F96B9B22
          1096929EF692E9BB7DB2D9013D535E7B368518168BAEB9644783127A5DD13F10
          C9039DE431E9AEC8EFB94D9007C0160944107001B2017A77F34773995416E6A6
          2F4F7FFD7FFA67DF0EFCCA4AED6BB0EAA2125D27CC9CC4FA6F95E45414506883
          6C0273A1940CD32625D6124FF4A34C209FF997FF2B940BCBDDEE90D81248AAB2
          CC8B63A59B2D7317D7F313B2EEEF1E4EC0B3C746605B36013FB898879F5C29B8
          E1105CE6072F816DAB487884EADA8CE115260B8C10083A0291335CC824D2F0D6
          F4BB70762E8F4FDCFD612F5B9CF54A49B92B61329940CB079E175060F216991C
          68CC624C201E1A3E33D9CBC7F9A6F709D9EDC825E0B35CDE9D4309F8F19515F8
          E1C515276AD00A7FFE2480064554F41CEC3E0AF030449D0459F2C0CD9107400B
          084420732BCB73F298FCF5124948E586AFF3ECFC0E4FD3BCFD1ACFBECB0BC0EC
          EECC228012680E485E0AC0C41392E2A430C38B71114AA6BA016465BD1DF60053
          C3200756AF9D3B0B8F6CDB0E29BFB8A9C2B61C7125103F6F09A47BCBDC87F9CB
          3F2012C73F7E78028E6FB7513E6447FF955766E1FC7C195249B4168491D6844D
          945896FF248F3B49875AF6CB4649D7B02F59374ACC20FFCD83E3F0C82E1BD24A
          08F0FF796D0EDE9B2941DA135379906C9DA5CD9453A1E812E4D4CA86DC094D75
          B74E1E002D2210014B2290E342DECDB7CCBAE25DE1C5F5797E54301288211032
          A96FB181402842204996348252A94A2019596F87844076C122CFDB372EBC070F
          4FEE84A14CCA2C1C5D478C09048232CC72B36E4F6037C8F6A3DC380F08817CE9
          17B7C1E1F15455AEF8CAAB73704A16E444FCD66021903F786402EE65C20BCBFB
          EFB92FDE9C2EB2A4634ECCDE00251045EF6075C9C3E6A7D90A7900B49040042C
          D6E330974C48248C487A897FBEC78B6C4109A43B0472837B652AE955BBB6AA43
          70650BE3C462A429C363C530BA931B81F67089AAD5AE0D963A0DB9BD17FFBF87
          77371FF703C0FB76A4E1735C9731DEC2CB91D0B74F2FF1426D740C25FECCAA96
          10EDEA5A5BECDBE68C7C9BE42E1F9723ACBB2652F085FB46613297809F5D2DC0
          374F2D41A122E75EB0E201BD0B6A79A5E80D98B16E7DF7C2F024D654B705E401
          D0620211084D0C1B49A41699F402CFBCEFF22B652590CE13C84D5EA877328104
          AEAD3CB7F29B7E48D83E10C6A0A8CEDA914C3D59D8F71952717AAAA85992FD80
          D31458767A88DFFDCB6650F08D26B209DEC123DC5AF1AD62DA90169DE1B7DF84
          EEFB5048F5122C5EDCC38F47844426321E649308B3DCFE8EECA4BCE7B8BC3762
          505E85E24E3027B944781822A6BA549FCF63AB6839810864D3294E8647212411
          C473CC0F2F3281949440068240EE437384550B285809AC5984E8293C5B84ABBC
          9BBF1CBD439721351A1601840B935DA5BCD35CDE8BDD2EA442B10E8451756BD6
          56565538C7C359F4D2AD9A6F6D211081E81E47B9C0471131658B8FA79940FE8E
          17AE8A12485F13C83DFCF00908C983E09A73A2D826A13E7997BF2259FAF816B3
          100FE28842AA99E6324E81040E254A7009C5642C2CAF9AEE2AE20EB1D415A5E7
          61689DB55533B48D40043EAF31621A299248D2AE42F43E2F5C7F6FBC779540FA
          9140EEE5D7843CC2239EABFCD64B60DC5EABD7E4AE01C4F718281C548DE5D5DC
          1E8AB8C3AC9A3CDB24AA6E55F2001335A1A5924788B6128840ACF7C799202400
          63D2D6064F12053FE0E78112485F11C8317E839047D25DBCC62D730974D15528
          3A0132EB214AC4F42A79C8C5B936481E21DA4E2002596A26F8CE47F8EB92E68C
          9C82935CD17FE0C5CB5702E90B0211E573E4D88AAEF1B54BA15156B7BB48A1E8
          7358C90358F268AD9FC77AD0760211B02482DB0C89B84586979F3790821F3381
          9012484F1388986D4B3E702779D075BE7E119438148A4EC0491E9EE46A8A1E5B
          6D24AAEEC6BF1428C3AB41966FEF77824004A2589F24C22362D8E2AAFE3A13C8
          4B4C20A404D2930472CC9187B3B63271A22E85B7E976D728147D8E55250F682F
          79C83D251FD4907BDC310211884E643B58DBE4308FF4AB4C042F2B81F41C811C
          E53F1F8750F240963C02963C6AD1AB140A45FB201A6463AADB401EED52983B13
          4462F2C091C0AD21D0A123AC2864EFBA83BFE870CD219A5EF129F8A91248CF10
          C8517EB1461E00D368C39B0328792814ED462879F01A8A9B4D06B5F12F054ACB
          F7C9D231CC8F7EE5C808EC1A49749C400442223BF9CB0EBAE8A8E043F032F3E9
          AB4A20B12790BB40240F02E3DFC3EF99E66B17B01A1445A150B4113273250BC1
          11AF833A0F30A6EC92CA9CC6245EDCAFF3DAF4E1FD39B9DE1502B10D210E5B04
          07C3E701930862EA355202892B8188FEEA29A8973C2E823AD829149D00AF9166
          36468FADE4F21C4FBF765B5B5509A42801471F1E87FB76644412E81A819842F1
          22B58BDBE4005443FC793F0ECAA5D795406247203268E5D82AEDC232B2E48117
          9054F250283A00776C253A8F4878121BDBAA2D3A8FC6EF07AB38DF261EE2F7EE
          48C317EE1D83D18CD75502718D80BBA19A6F1A03DFAFFCB0ECD3DB4A20312110
          0F0EF16744F270B1CDE006BF780155F250283A01390090E46987A12E243BCD63
          FB258F5A190052926F4DD40E66E73F9C849174F70944204AFDBDDC0E7BC3C660
          02F981EF97DECEF8A804D25D0211638727F9B98BAE4C37ACC21C953C148AF6C3
          9207882376C4DA0A618E7F7742F2B0DF27C7D604DB6AEB00AFD10175FD082B5A
          4059C4F6F2AFBDF6120665BFF4FD4491DE4B0C2B817489400EF2DFA710AAF95D
          6EF23BCF834A1E0A453B40911F7457BC3AF240E33838C733B763E44192285682
          8BD6527448F97C136C14D010C8436009A49B01EEC81616E5286B4FF56AD17F11
          B3F49E1248C709E410FF7932240F7E7CD353F25028DA059957B2684846573152
          91B43465FEBB0F22A6BA3C4FE7B0B392871C5B6D936CE3D56B44052E87245593
          4C0725FCF2F7AE3FCB0B61092998B516625D5B20AC24624944F422B298558254
          F062C2DB79A68708E40813C84EB026CAB798404E3381043D4420FBF9F9D36807
          B30C865BFCA673A0E4A150B403E2D62036B172FA223B7D9342540804C35D3F39
          F2E88CC2DC7D23A60949C823B4BA14BD4B012CB185D1A999405E98FE4357E805
          E71056E85021572DB84BA97A908B3065AEF01A9DC0B1EFCDA7E0CC9BE7DF8D2F
          818C4C0C73237E94C9E350B4FD2808AE06803F08F20BB33D40200744618ED5DC
          F67013D18C896E6E2C148A7E851857657972DD1D26322B0792C88C9923519D6E
          325DE75B9C0CEA0E6532270FDBA096144E74312B4C28D174CE9294A384FFEAF9
          EB273C0F9309BBB6E43D0ADEE597BA99F7D9BA1D787810C4CC1784DDB0B29C4A
          3CFFEA858B173EB83D86045258F6926393CF22E21E913D83A0B660273CD3AEB3
          95C5B9BFF1243F3C5FCB8DED881D81A058C2213EC50D9BB39D00335CF4B3B54C
          EA0A85A2D50833078A79EC81B114DC3D9986EBCB1578E766C99C11F11B2ABC70
          DF4430A743ED2F0E4186D703913C2C79C8A9941C5B01F90DEF457384F5D674E1
          C48BE7F3C98B8B6593C293718597946EE7AA362B5E807808C904EF9285B8F2C6
          F5D9178E4C8CDE1C4AC784404C49B96903FF082692BF2C8360CF480A9E393204
          29EE7D6E57383B5F32ED9AC90DFDEC477FF6BFFF6CDBBE23F0E093BF0E7FFAB3
          FF182702D9CFCF9EE6275957A9197EE73950C943A1681764526679261E2F0794
          38309A82DF79700CB6E7122605F45F9C5C8457AE1620652511C988D96E09C494
          07ACE411C62AE4F96F8EAD56132890D7E632AF2174E2CA5225F9D55766A1E45B
          5A892B4CB6C6B810477DC14CB964C7F0878F4CC0A171AB73BA91F7E12BDCAECB
          658291891D33DFF89FFFF97F9C3AFA007CF8F3FF04FEF8A5FF1F9EB9EB23DD27
          9000F7F1E3A7B8FC43AE36335C9973225C81928742D12EC8FC1A21C2E3799FE0
          C98343F0ABF78C189F065947DE982EC2BFE775209B34EA86799EB84BD0BEF928
          0B448E7F4D601D79C08ACB55BD1AEC11961048A142C97FFBE35B66A1F374C9D8
          148CBD1B2FCA7FF4CB93E2606373A172D3FFBB976EC1CC4A00A9548A662F9FB9
          91CC0ECD4F4EEDBFF2576F3D77F989438F1552C954E5AFDF7A0E7EFFC1CF7583
          40C474FA191E96395787190F8DC25CC943A1682FDCA28DC74B0179774FA4E177
          3F3006C3297BF0F337EF2DC1DF5FCC87BA1089B2DB2EA741D9FBE67869D816B9
          BFEF14E6FE1ADF29AB4919FD804E7CFF423EF9FCD965EB2F6F4DB44A6D2AECA6
          2B09D61A201DB926151456EE767E6DE3E64F3218F8D7538786E09923C386887F
          786905BE756AC9EC2A24E060229D11A53A047ED9ACE3BC84CF9783CAD557AFBE
          7DF5237B1E5E9A9F4CDE5A9ECA56F6BD36D70902D98B013CCD051B7295109DC7
          39B7E38853DF2B14FD0863BACB335192414D981021DB33F0C0CE345C5EACC04F
          AF16C2F7C9622E3A107FF35FD5BC0CBC140CF1B220D65FA1EF894F68248F3B1D
          F55802F9EA2BB3272E2E9493A2FDE7DDA72875B8B050B8E357771EA2D4119674
          E7F450E01DF429AEF622D4AC05BA81801B6D94108FF318F078BD868363294830
          839C9F2F996341CFAEDBDC2990C686B24AAFA5122928554A253F9D98AB64BCD9
          E199D28DE9BB462EA50AFED2E48D42F0D2D51B70DFCEEDBC3B691981ECF63CFC
          04D8F836823926B8B3B0F68E43A1E815980300F7D804D9EB76819A2030F93500
          8E8AE155A31596B35E6995F4112504AB9E2718E647E3B57B6385202834BCB719
          2C81FCD1F3D74FA43D4C3ADDC702D85D7D3C2146BE9E498F1B9248999BF9B42B
          7757498489572CC6F68B2AA4E4ACB04491EE8E04C530E11A59296A180847DDB1
          9198CB55A52A74EE94C41FE29F0ADF759989E8DAA99B7397F68F8D2E6692DE82
          373F5EA84CCC6E854076F3373DC35F36EC1A75962F9FE5EB2A7928FA0132FBB2
          CE09169D3F45DEBD16C7F12D27DDBC76E0C186C2C94990ACC5F9CDDC340299FC
          B236CADA23442AF3BCC4ABCC10124E445A84C9430487752B992D817CF9851B5F
          746BC7524C258F46482388241286D828719D4F63F7251161F4F10071374B46B2
          384B00B4BC4734CD9D74ABE1BD81AB87904816D01B62597204E47388B7ED9644
          9A0902120BE1192CA56E06E9E22C16D3579840668440E6984052EB2310F1ADF9
          240889D9228B73924A1E8A7E807344861D12A03574849560106E177F99B765A1
          135C9C20F3FA6E0843B4132DF31A5004EBB0D70A770A6987518878939398DFDA
          8DABBB3739F2D850382B51A20B814C3F0B76E1ED994584175B0F8CAD3286A136
          8A2289A015F5BA29AE0A3108D38744266D5A59A34CA1A88DEE3349269D21BE3C
          CA57854CA493D3759F406B7ACB9FE401E62D33B5DC5C82F2850478B343FCBC90
          1A2FA4FCE5D50864177FEA19441C7177D2632B453F414E01F69209FFC12B64C5
          6E8BE528C8F9B82D7AF6B4A29B3E6E8D106D6492CB76DC494C62363B2D4749B0
          F5752CD4CD6E332EE33E19A6121D7D326229C56BA9105561132D522590FF0AEC
          A21743FBD835212E7ACCDA6691959E28F0DEFD34EFFEF310031F9608D6DB35D1
          CF85120AEF1E90078138F7A1480DA2B348C22A5F40F6FF8CEF65A713416996C8
          9FBEE1C3F494104840539EE77D825FB7E48138CFC4734614661B289F421157C8
          1689E706DE27AADC142F6D8FECCE186B483187BDB15C31523CBFED2ACFA52BD0
          E1318FD65377B5F55514D653FCFA615309A4157EE36C8BBE3581146C072128FE
          E607A732B06B3801276F95E0C27CD9908849060BF29D9B5AFBC323AC9E251029
          B027A21F3745DA3DCFF3E3336815D671559C6DB08A5509C54836648EBD7094FF
          8EB85D4BEAF68F98F9219B8E256E0439DADB89356BAB5927ADF9B00A1929143D
          081EEA28D94D778B22FA53778DC05387AD7DC8C58532FCE99B0B305FF0854444
          C358EA74E1B0395F85D6A5E13C0CA0A6FCDF2A64FDF3CADC321FDA9783CFDD3B
          6AF4B1B7567CF8FFB83D2E2D1A121189270F9B24103905E9690231205E541126
          C388912C92AD704389A8DA2F2452AB69FD63990D69EEC6112BA5187DCA502472
          662899D420FE8E81F1325FE2C772CE2A7AAF50A4C7C8C7148A5E82CF73E128EF
          89B78B39ECBFF8D0A44978146EA5C499F7D46C391A5F6A6050A810FCC123E370
          DCA6A03524F2572717E10797562027965E4872ECBF19D2EAF923AC28920D6187
          97597C3BED9451FD44228DA8E61070165E69EED434C95115E12460D55A6D3588
          F82C9EA405BEC3923DD632C1D27CA8E945A2C4A250C415651EFF8778A8EE1109
          E433C746E0F1035602B9B654813F7E631E66577C778CD5B21D7EAB105D9F5ABD
          06A348208F1F1C82CF1EB3A7D70BC500FEE4CD79386F8FB1C849209B2290FE90
          402C8C28C8BFB687E187591259769248DC9C22DBD90602B1A81803EBA0145AA2
          88D5850C1221D8D52DD58C1D3715B9DD963CC0457E5CB24782D5F6533251C411
          4C199421F20EF1101E975D768677D68FEDCDC258C68357AE15E0EA62A803C125
          7EAF98FC6F721CAFBE44E26AF19FEEBC247391690209EDD1B26CE4AC9558F4C6
          5B6917AE31E6242995D4F617766761F74812DEBA5184D3B3A55091CE6B85D181
          6C067D4520E0CA9FE26A4DF2A3A4BBB0E87422B208F6B32412422C5186C93A26
          590B358422EF33443117B5106329C53835A6D6681779BF98F6B1144712A66001
          AD4427D743AF58F9AC928AA21B70D2374EF280DC1FC99C695E58C50A4B365133
          10130984C4A70D71A7DBF0CA09C2F2067C30D6F51568E6396657B3C2B2913068
          8536DF1EC29B7D4520A6D1985153686DAA43496411514804E36803DE4AC8E66B
          5842238436F0E6088F28248F6A1B55DBC1A4CCA4345A73E1503A5955B1EE8C87
          E5A86089774D0B8041110DB9547D87944C149D82E1061EF07B79ECEE8C5EE7F1
          2F26FD3296AB89906C445914C9A31DE14036032993588D6DB3CFA862C387B41E
          769368E67774A35831A70D5B23D3DEB7C26A02A947DAE944424964C1634904E2
          6503DE4A58C98358F2C0702726D2C26DE4B1569B85965E721498748E468D03AF
          F1330509D162ACDE98A80129EFF2168463498FBD14AD84D5F7218EF3A303600D
          47EC0BE2CF60F47866531312888C3D218D8E5B5EDDA91E2EF2EDB0ABD4EDC757
          AD6D3399C309D71ED11384ADA06F0904A046229361EC29C9EAE5A1719CEB3712
          31924783CE43A403218FCDF87984E3C04914647630548BE3D5CCF4370009C419
          503EF0B8ADC9108B4CDC12D4FC5AFAA9DD159D858CF3142F5B128A6797CB5D2A
          90F12A964412F6233ADE1B633FC509328F24D779D2A6AB359650ED5E7F5BDD1E
          7D7984158549CDC8FD231EEBA1E258421A9CC1FE89381B3813DEA3500B32290B
          76ABCF7AC3B121E3C4ECEECCD19725965533003891A660AC3C10F35C1A89AFB2
          8458CDAC164A3DFDD00F8AF6C1F842F106709C258FFD580DC36320BB76F17392
          E39F5E194764AC23C910489871B02DC7576D465F4B2021C2FCBEA2137189526C
          B63DECFD9C1752FE21170E3A4C435B8A481EED428384628EBC32EEC82B09CD25
          0D29AF0B9B400B7C9745E78352868D9B0D47A3AD46CBA2E82F88D421CEB3BB78
          B3B207EA8F53F372348D3D188AC71D5F593B6349178B3D69293A100402B65E24
          8CBF2D0C54C81D36E39139CEEAD57CDF41209EE5018ACEA36AAA0BC6CBBC6B8A
          C230EA67DAEA50482C408C621E9B7F40CEAB97255A2A92588490482815F77233
          C746210ED914C839780A6CFE1A5190F69BE3E820C34A1D92B10FF000DA608021
          2AD630067B71D76EE29A10E1943B0E165D487E8DAC7F7146DF1F6145211D95E3
          4E93C4296E9191242D701E7A8F440217CE448EAD3A2979AC175105BAEC1E1336
          D48C39EE4AE17A241493BED3383686D2499554784111D15F02E665229F95F75D
          451388AEA7FA52713B641CC8B8D90956EA88EADC843464B3D0B37A4CDE246531
          8CBC8B860C7B930807480209711B89F0732691E09C8B55D30B035226572E60F2
          C07892C76AA812B4895D46948A980D47E300ADF241925C0E72C62D4A469650CC
          E70E4968BA32D3A8EF92EF249D8C638F26E906A824D2AB709B233800D6D22A84
          2F89E378B1CD634F4CD3A6A8B3BE0263C5D836EBAB7663E008045C1D658046F2
          FF9A5DEB85302557B70BB80644919823EC29F26886905412FC3BC1D34A8EBBD2
          3C2253C673B6B9846274249287F3D13D39B87F671ACECC55E08797F2A10B9698
          2EBFE74C39E3DC978A7AB85C1EB843C2B1637D8050F13312A9A31FFCB8646CEF
          00AB3724E3A0DBBBEBEE40128880D71F1AE25D70350F304130ED015E081BA6DB
          055C056667E69C04C334B46509DFEE7207C4B1CCEB45A3636312D14B0BA9F0D5
          DB2414F1A87D782A03BFFDE07855B9F2F5F716E11F2EAE18AF63B4FE3E37A1BB
          C9C514EB076F7E30C7BBA37D3C272723D765C3B4C8ABD472B70BD822849BD7B0
          8E5B092312070C2C8108C4637D98979B6A3E6026956B8874116D009A382DC8E2
          2498E5621DE542BA90EC72B463F206F4C3AE6C35D424146B322CE353CE8E332B
          3CED7EE5AE61F814FF84D1455FBABC025F7B671172494320621C71039440E20E
          235192900635EAB4B02831ABB0EFE2D891C4A833510DC978C7F774FD064A89BE
          1A44841407BC2A8920C1353224129B337493DFD992474DF2B0393DFA963C1A11
          461C960566472520DC379A84DF7E601C760E2560A114C0D7DE5E80533326401C
          31819C02EBEF13973E54DC0E19D7A2CFDA07E8ED88848012521187C030C4783F
          8D6FD9DD4C49FA09B01BD8CD46C18D0B069E40C0D5597604E3B50B74957B9A49
          84BABD8365119E250F20C9731039B6827E963CEE009A10C74909D9BD67240942
          24D7977DB8B4500E33CEC9AE55086410C7722FC06C0602A383344E81D9C80BA2
          CF135D475FEAAF2462305A0B4293A7DD8551EFE57A4AD92B834E200272D9FD6A
          24427405912E7387776B172B3B932C17EC2E268FD06263C0C9C320E1C2D3A484
          44CA810DDA954AA00DF688F03E12CD834A1F71840D45C2DCCF637A0AEA438E2C
          914D6ED66F524708A9A318EE841BC15EB6BE0AA10412818894A34C1863D50B40
          977915BA0C9D3F4B67C98332CC5D774375C049B44E9C41AAFA430C3212AEAF24
          5FBC28DD232B115DE53EBB08AAFF8813A483843C2658A2DE1F310211949D37B9
          E803FA913842C88646A48F941DADC166B300C6097284A5041281D45F3C5EC76A
          57E81237D255E8DC8E5614E6192690A358933C843424B6D5204B1EABC1441765
          D248A0CDBE286D536659E45D50AFF4B840CCCB5301C26EEEA35D50DF274B707B
          00C47E449DF515C926B037635F3542259046887D2FFF19E3B56814AA8E21243B
          5A219176EF6A03EE810C7946613EEC0A24790266062097C966E1FC074CC04C67
          A106D73CDB674A20DD43986679847F0EF06668A4B6BA102FA0B8002603DF400C
          695956C64D1BD846915870BD6C7D154209A419B8214623F17724E0F2459644AE
          41FB4844A82BCD134B02238EB86B2A79AC1FE278264704421AB2A37D9B89BF2F
          95B13D0013BA9F25E95D3C8FF660FD9C11C5B14416E875DFA58D4052CAEE7059
          52FBC1FA2A84F83B2881AC069B7D8FC6439B6DB0CFC5D1F03AB49E444C1A6751
          9887BB14B001E366F8B992C7FA4036BB5BD54F669A99E41CA82EA4D3F08DD441
          B09FC7EE58DD759B12B9D72D8F36017188AD9A2AF7BAF360142A81DC09DCD972
          9C152EEAB26BB8E002F6B56A6122B2292725306254F2106BAB7E10733B06921D
          1E82E49836031B2838E922B6EA5156FB61A50EC29DDCFA120031128A0425CAF2
          E200F92D4521361E135CEB30F3A084DAE917C95809E48E90E5DDEEA4AA24C204
          22117C2554C6561726431E920C2A42524C1EE261DE1767A4DD809862DBC94A74
          9D65EC8BA8EDD86E846176F6F3389E882C23BE0BBB2E5247AF45BC6E09CCEA81
          28D287215492B02CD493A1DB578312C8062071B342F343890C7A0E896EC1E625
          11B23B6614535D17DA007D34B1AD54F2D8244C1A63087521880106C1DBDC92FD
          6E22DA2D580306C4ED2E14493AF25A3F0540DC2C44FAC871EDADF595D1CD19FD
          47BF40096483A892880C066EBDB3BCE0CB51D34625117B6C4578177741A8A817
          C5AF92C7D6216358FA2994426E7808121B4B7521AD85D1DB19E240EB5D1D5EE7
          9F45B249C2061D32CFC7B1BA4134B1AF7ADD79300A25900D427C0E26584CB7A1
          D4112B2C858424B2DE054AAC309204DED1D0CA8B2FF88846E7D12F67A3DD868C
          6509992DC45EE135ED5DEEB33CA82EA4156041D944D3975DB5481DD9C86B327E
          45EAD04D904535743BD4ACAFFAC9E74509641340A714CBB9E7A2AC3D8388EB09
          9F4136AAAC98EA562D5464402979B4186EE7173A62DEE04E3B074A205B858CD5
          4C00B817EDC258178AC4FDF46B28920D83E77ADAEA3FCCD37EB2BE0AA104B229
          904822B00D3DCC1A4A2028B30471861729D97D79707B3B9AD805A2480B44F2A8
          3FB652F2683DC40A5B4246EC40631924125E7092A51099C0DACE1B870D804830
          CED2C70194CD532D69B1481B0BFC5CC77003EA3631DC3E847D637D154209640B
          F05C6A4A23C2DB48A274C645130D53B50A84244A81498EE4493228953C3A84E8
          04669ABFC9CC2EBA10954236069128924CC67BB83DA722690EC8E939062114C9
          8661E2B3114EB98468D256791B84B8AFA004B22520F2EE96AA24224970788CDC
          206462B1A14824594E1E896EF2701AE79D5B18ED57C9A32330C7854617C23358
          CCAF4F721F0CA023DBA6206B411080913AF623558F03E595B249F684A8D66DAB
          83C04A6961DA6C9FFACBFA2A8412480B203B321928D56C6AB2DD2805B629531E
          9A8C7911C82E44ACAD943CDA0F51F64E20562DB26E1ACB395429E40E90319AE0
          557037FF950088C640C43A72E0B2F5ED50A9630DD4C7BE3226CD3D1FBA7D3528
          81B400D26632C1C42A252DBC91E4E5E9C844DAE4EB3E3B578622EF3F1C89881E
          648677744A1E1D02398B2C7BF4826287FF1E4B2272ECA224B23A2414C9A8247B
          825A2C3881444790E3D942B70BD803A8866EB73637B4DC87C75702259016C124
          8BE15F43227D3C7364189E3E3464228D49AEEE6F9C5A32670126B81FA278B02B
          79740E62763ACEC41D7AFADF7239D3B50FEA614391D894AB7BB8799291D70631
          00E26641C6FACA867491D1572134FE1FFDB8B62A81B40812B16087248192CC78
          FFF297276138ED550F91FFDD4BB76066C58784E7491ACBE96E1776E040241EFF
          D62F84C4018EDEF5D0E4DCD6C5D0822563CC3179EC77862121E4984A88A31FCF
          EFDB0782311E59E1F1553FC5BE6A8412488B20EDB69D7F65E5A8EAC4C3137064
          C2C692937CDD5F7D7516F265738C25E7A037BA5DD80184E842C488212A859C01
          3DC622C901CCA377278F5DF1ED880440D450249B810C34849AF595248E1233F2
          6E97AB4D5002691578573B2481E47C1E2DBB8692F0D4E16148F1F2F47717F270
          61A10C093467A18BFC9EC56E97752041909048BD6049432CB2DE03BBBB1E5412
          F1ED912BEE4517ABC92170EDB2DCED02F6244C2A6A1BDAA50F635F354209A4C5
          9081939199E93B2BAC048B1D09B3C99354AB20C117FB5199D60B8858C6307D20
          CD7864A49041DB5D9B811900316978FBD0590FDAA0D35034E6B9801A8A647390
          B92D71D8ACA48B54E4762D75BB506D8412488BC1BB5993842A577F59CE404DA8
          934AB70B38E090312E249F3009C36CBE9041D285D8502404FBD0EA8442900BBB
          2E6DA1A148360F91668D35A65D48296CCF7E851248ABE1064E16C1B3F1FF2190
          FC1E05D4B68D03C44178BCA6E0A4599EF1A7A0FF8FB1C25024127E673F3FAB06
          40B43B64E314D8AF8ADE4E4148381312B33BBE5A81FE9EF755027916AC2F43DC
          9C83C224349EFB6B0C9BBA5DA875963B5AFE38B5E940833B444E14ABBA10BEF2
          3E3F17E9B05FC3BD072EE3A564099C0237166DCA665C02EB13A352476B300A61
          846D6B79D5EFA41C12C88D2F921D434B182F47A11477C4080FF48CCDDF4EA25E
          C8A355F0F533B32BDA071937128F2C0CA53FEB219D86FE9BE8E28F20DE4713CE
          297028F29A58560969F6FB02D769C8C6444E1EC845DEED57EBAB109640FEE8F9
          EB27D21E26D10E2531DD5BEA76C9C09E234E8A0771D937C6FB904C5415D27224
          24B1A49444149B41BD2E04E05D04EA278B2C59B852CC1EBB79F3B5ABA15EB2F9
          5A84F89D36F434781CA5D18E291C00EBAB109640BEFACAEC898B0BE56499479C
          87268EE4CD6E4A2224C5006236C79410C7DED1248CA63DB8B2588185A26F2C9B
          F8F222DA89A0506C1062AD0F63BCB886A13AE67844892EA41F16D4800847B826
          07B88E23910A85A14834A47DEBD19079D0380FF6B3F555084B207E4027BE7F21
          9F7CFEEC7268CE2783AD5BA67C616CA94C85D9E3819D19F8C27DA33094F2E0FD
          9932FCC5C90598171241896B649CF27A4127A2881F3CB0613B425DC8291EEC73
          D0BBBA9080103D9EC0BBC10641ACD683E9328F88421E2A75B407D2A6227DA4C9
          A6FEE977EBAB68BD252B2B9D285428F96F7F7C0B96CBD4183DB66B9020847FF8
          C804DCBB3D1D121BFCD95BF3F0B3AB45C8264DDEA6EBD0FFE78C8AF6A05E1702
          38E74170BADB85DA24640E8CB0E4B19FA7F458E4BA6C04454AEFB74C7871828C
          23F1A519B4E32B418D40AE2C55925F7D65164ABE5DA8E3801213C8AFDD33021F
          3D30547DFEFFBE3E07A75812495965C82C4A9C1ED45D956253905DFA0E0877EB
          44EFF1D85F4F6AE2B82010098A508E7BBDBDE0929891D50CAE204A864CD40088
          ED8598EF8EB2846788BBCF635F35C212C85BD385132F9ECF272F2EDA901B8C12
          D933BCAE3402F3814CE0AC849591A3AB4F1C1982DD234978F94A015EBD568812
          9C1C6617F8B928FDFB31DEBEA2BDA8934278342DF058921027BD30F945EA180A
          08F6F3E23511B92E4727725C3528BBE06E0379DCECE0456990ACAF6A751702F9
          57CF5F3FE17928464E029FBAEF002336EAE2EC64F26BF836EFB8395A1305FA2A
          B39BACD8E8895DBBEEB8141B00499E1031BF341659FCF7940724167E71D585D8
          502464F2BDEFE5919EAEBE4026719138056A00C4CE418863A77944BC54E1C01C
          5F09AA8E8427C08ABF15E70013070590081A3C3930DD705D149E25B2728898CE
          55278A700DDAF001799B3C482791E28E9005592490F008621EAD423D74028D13
          643F95E1EDD53E2ED9F64805026B868C1A00B1B3909DADA4FC0DA33CCBC9CD20
          A5F97504F2BDE9DFE3871EC52FEDA248224993CFC104C033E421128625389213
          37233AA6204A24C4EF41E3149987782E048A78A1AA0B31FA038FDEE7C9205248
          1801A1DB303238CF85EDFC80C9033391D764C32747561A00B10BE0FED8814E0A
          24E363D39799079BC112C8BF7EE1FA6F82F3A0EC76899A205AAED5264982F98F
          3B91920DD74B2E485C11944814CD5127858009BB0FA145561800B35B6347A22F
          64F8670FDAA3B6B01C52E625F713D779DBCF10A2906376637D05F138FAEF34AA
          04F25BD007C114798225B806197E50777E4D882B4826E68FEED2144D60742122
          85849B9050DA9DE30123E6E29DB6AC317391E58E31163D0EF01747233C97F8C5
          05D45024DD82B4B96CB887DCCFA0595F45DBA17F0824522FEE5C4A3B6BAE1062
          F2B8C2CBC41292E67656DC068F07BF28A69392CBA5E2A22E266DD403099D730A
          3B77BECD25E0CD10D03EA7E0AF8E6396A89758A296CD90EAF83A0FE7F34163B7
          EB66A9488347E8FD4A20B6724C1429675E574F2456EC17FD884E428501018DF3
          866358C8633C9B80A9A104CC1502B891AF18CB3F63DD64C29D60BBE788CFE431
          CE0512A7C0E1DA65B1AC12BF0E1824256DDC90E2CEDF2EF1F9244A86847E924D
          463A81EE7C9C5668B072FEF43581008461510853C6A2AB7EDA49470B91C8B9A5
          86B31E6CC8D8DFE11379DBB349F88DFB47E1F0780A66567CF8DA3B0B707EAE2C
          24422E5E56BB4C7C650C8A127F370BCEBBED915AD52970195103207619122570
          9BB817C826E3D8F634DCC73F97162BF0F36BC5D0378D5FA1D0706710D0F70412
          4542C44EAC9D711B90D18B985CE5AA681F4C84A12876AC54089E3C9483CF1E1B
          AD86CE79F9CA0AFCF9DB8B904D8AFF119D03AB0F496EE91B6F8710C36840B89F
          BF7334723D0C8018A7140B830A39C9D851E64E3ABA2D0DBFFBE0380CF3B654EC
          AAFFEADD45F8C9E515131DC329D207C50F67A00824A487A4F32FA9ED22D1A46B
          0B3DDA8BF109E6A2E8006454C879F64E89BDF6C15D59F89D07C7AAB3FF3B6797
          E16F4F2F4326698EB1AEF2BB2F23DEB6D1D8EC7811A9C3E335698AEF29099FAA
          C4C40496775287EAEBBA0F37467067BE12C0338787E0D9BB470C79C8E9E6ABD7
          0BF0A76F2C984D86F3031914639D0123100B37F9DDB156BD7E445E1311548844
          27EEE0407CA0B6A31D13F0D1033978685706CECD56E0F973CB26A8A71B08B266
          9478612FF0D2BF68245734BB4DF9098F41D71B472B20A21CA077801F8F87174D
          303E1352053500627C5035D91509448E37450219CB78C07C622284BF72B5A012
          080C06818490C427121825C5CD709BA2DD39052DA37AB40F02C4512FC77D3D49
          2E744E088F19A259746AF32EA422102EF2D29147134A84371F58DD7C849FC4C6
          8FF100DB69439118238FB0102BFC757264A59B97784002257ABC32E478240C61
          40468F2A0AF4BBB6A5E1D864CAE4287AEB46291C23AA03E97689BA00A3687716
          5BF5A679B21004C40B02AAA27D3030E44C34EBA45292C8B6A24345CA48F40368
          3E0E648C14F9D515307E4762B965A2E1D6A22700E4F846FBF8EF64F473CEAF63
          90E228C519261E01FF61A9C384294935BE41ADB00C94401ADA23E1F423C986A6
          2839FB7BD961AAA2BD7F2192488A17FD9CD59191EC280BFCDC669733D116F975
          D96888D44A66619179B3FA7830B985A84028120A4B2626F4BA78944374A35270
          E43128C71E71860D644390E58E188E06AA742FFAFCAB82D651396A48E13B3F90
          4189C21B4209647560C2C4B7A1066B1B39FB363B4B1C847495830C82DA46019B
          BC2E300B093F111B2D09A59376D7D645046E53228AF268FC242591CEC3851A33
          D2E17003C183DD48C89CAFC6E1933E0AFB99DCB5415C3B9540D60212A6785889
          E96F9D6294AC6E44229FEAAE5111CE19433664E2B1996087A2909745A62ED067
          C327037E456228959C19B9EC602B50F3F7D0B1D55E849B842CF7C108367897DB
          E8DE50264B1CD4E4F30083DB4F4A2077803B0B95C5C00CAEE840115DAB644364
          3251072F451D420B4F49F42431ACCCD858C7D9A7EC642B24965D046524120FB5
          F05864D017AB56A24A1CFC70D8117EED453211754BCE1842759FCDA104B24E38
          22318E88F5A1E365C758D38F28912864AC64F9F798B3EE0BE19B5849286A16D1
          B119FDAB6C4ED632FB0D786CF9E44191A56139360DA593F0C84BC7DAC650230E
          A29146A319B2ED1A1E55E95A786728816C10D23ED24E29E7471245895F5D327A
          1255B40F22AC021660843B5E2C77AA5207D845A904F5F32B946EF9C71385BDE7
          8EBCD62614A8FA9D94DDD1D7A0296E37033B1FD110BBC417CBD4BF4AC6BF4725
          8E0D4309640B5835340A48D809824540CDD13E40109F2251A28F4777B53653A0
          5859D19D16F988C21E25FE6FC2454AB8B38462A412C9D0C9528A251395506A08
          DB35E3741C9986D7C599538963F35002D91250BC03280564CC3A6B13DD987B8A
          923D58D6FCD4FD0DB342118E700F8F540320DA5F651E1145B0E7E99BED7FC41A
          9148AE1B8FAF784DA729DA9D340FC5320441C57ACD63B713627513725435C46D
          966DB82EC60B65EE99B2B4D980B64D2BA004D2025415ED4E22890E46D9E10889
          88C596EA47FA0BA2CC909C3392C530BAB30D9C4F402B1DCAC29DB407E44C48D1
          F82CDDC96458C2A2844AF9822393D0EC14A0FFC6A3E573EE0F96E246603589C3
          A6ED8E869E516C1E4A202D840D8D8226B56EA3E9A64CE26524E369AC03B70F40
          D6D16C14A9EE8849F412628EDBA13E96A09FF6B82BA2906F7AE4C56593233539
          B229B1D42C64220B693F492892FA57FC386E9338A8AA3B5289A3855002691312
          4EC95E1F02814C944E09D4580054457B0F42622349C89BB186454AAE17BBA8F7
          AA492836919AF8A224088D3E65AD3156311647729C4358C45AC8955E311976CA
          714AB33818EA38EA4E00F82D655289A35D5002692FC2D028AB28DA2D91A8477B
          6F41F25F4BBE8E6A2A0032B1AE82D009300E0B546D63C20C821E4942B5A842DE
          6BF62110A53F518929A71889E1154709A5A61C271AC6D5741C354B35258EF641
          09A443B0F193E8B6D0F112A4310C1DAF8827C8A4474718E31E1BAA5D353A906E
          4A1D1BAA03D42414AB90B7E17A127798F115B77BAFA0399A33062161981780CE
          2FCCAE1E2C71008AB9749DC461BB4414E36663A6C4D17E2881740E2879889264
          15ED5522B1CE4B26348AE847348C77BC20F361887F8F4A22B2C8655E5825F408
          C545EAD8689D2261528C74129289B7467D88059A0002F167A1A253C8FBD6E9CE
          7C642BED70A7D86321D22C718CAC267158A2233DAAEA2C94403A0C6BB14526BE
          56BA9AF8D08664930929D65AAA68EF3E4C887FFE356AA2B2D62ECAF5D029B09F
          10B1F2A2041A53614C90F5965F0B657E7F193C94BF2527A134DE73CD2F9590E9
          089E0B13149499980B581F5C126C904A947EC8D6DD934CE29632A9C4D12D2881
          74119E8BAFD5A068E7096923B4AA477BF720793FC6A35207B990DDD0FF52624D
          1220119B4D6E94904CD69450F89FEF8EF40A500BBB123A51367ECE338E972674
          7EDD6DF8F3380F563F9876B1AAB2D0A81CB7E6C98DDEFD8ACE42092406902304
          9383249C21AE130AA88AF64EC2669F036F9405C36170D64BD6299077D79E0955
          33D8F38342FD89716894F02B096C1668D8D250198DB48615F1F8764EB5F2921C
          E74E0A3104910C9072A7A44DEDE7C81AAB8128EDD71B2F187B5445B1315A1864
          2881C4074C206876BE3545BB49B10C2B3CBF965CEE6D9D30ED819047C699E746
          03EC897EAA30808982D6425457812E7B63181C722D1D861C31493B9625DA2D93
          C9884497DC914BC0AFDC350CA36984EF5F588193B78A268D70E3773638002AE2
          012590184132DA7836399159C4EA15ED0479445A066B5EA944D22A90C9E16142
          9120D4AD5C25B2BA0E3D5B5F0F0CADA087440932F1BC8CA49258ABE57C163FFE
          F1C31370DF76CBD98BA500BEF2CA1CDC58AE40D26A5F28E200A81247FCA00412
          43D442C79B3CEDF53948F865C988B802F1F13BE85588D421860CE38D5287730A
          54D3EACD212AA118B36134C75DFC435427A1C8F1D57FF7A149D83994A87EE8FF
          F8E92C5C982F0B81C889556850A288279440620C39EF1527B0300749E4052A5B
          FD882112C5264088C3BC5B16A7C088A42767F4410743910C1C8CFE84F744329E
          1322817C685F0EFED1DD23906689E3A7570BF08DF797A0E48BF6DE6C96F2DD2E
          B0624D2881F408560D1D6F1214112C62CD1A4517BDB52167E9E2D4294E81355F
          02E2CD309AE3AA5E700AEC7518099B496498DC78DD3F9A840C13C8A5C50A142A
          81D181703F892597F647BCA104D2630853EB36E668CFF375B1D85245FBDA1872
          990223ED27B1928C53A04A1D1D84DD0C615648A4EC5BF3B614D38A284FC8FADA
          14BB5D46C51DA104D263081D119392B808EB89C428DA8D8EC4E6D1D6C5D04274
          1D49676155F539704E8145E7BDACE80E12664344362C3DD963ABD0DA4A117F28
          81F42E8CC5D06A39DA7DB4A97555D10EA6F6392375D40540345168E3140071D0
          11ED035D837A074A207D009142D2FC2785F5DD57228265B4443268FA11D17524
          9CAEA31A0051A50E85A2A55002E92334CBD15E24A2255E4C65C73D0844224756
          397764156D0B3F9229B0DFDB40A1E8049440FA0AD6992B74444CD4BD84900791
          486C68947E5C4045139BE05FA32026BAF5AD12660A542814AD8312481FA29AA3
          DDD9DBD729DAC9A6D595A3AD7EDA898BD491755247D567866C4EF0D029B05FEA
          AA50C4054A207D0C927CDD84789BA21DACF2380C1DDFCB8A6443966473930F43
          BD314118765DCD73158AF64009640040D64C12D3DCDDA98695B4ECF423BDA868
          27939C8B48C2AED7429158A74039AE529F1885A2BD5002192C98EC73758A76D7
          E145173ABE67F40426331DE0687DAC302A31A9945C30718542D15E28810C2892
          CE622BD1707D85D75E71448CABA23D0C8038E6F261DB8BF698AA68D3AB2A148A
          0E4109648061F2F7AC121A45B6EF62AD253A9278299F25D193E427AF96D7C44C
          2A3BA740D57528149D8512C880A31A3A1E8CD556A3A21D9701836520ECE6E26C
          0320028A37793500A2CD914225974255A150741E4A200A0732694A6F0B1D2F26
          B024117F6D9EEB2E10090D119823AB6882AD0A5AA7C05EB62053287A1D4A208A
          06202490D0E468AF0E073236C145246089040B1D2885588E25F9D7187F5F2EAA
          25770E812A752814DD871288E23684E6BC49C46AA4D41AD0E5686FDF222E29B3
          7380DE5883B558C539056A863A85221E500251AC05748AF6DB72B44B1A87655E
          CB5B99A35D94F709FECA51A460B87A4B1442314E8165D0F1A950C4094A208A75
          019DB5D66D1EEDE43CDA716BFA08710ACC3AA7C05A0044E2FB5BA7C078598329
          140A81128862DD2074117FE1B61CEDA2D4368E887968EED11E1D5B18B9260110
          47907024F2298A640AEC76BD150AC5EA5002516C0A2191241B98A2E41C1145D1
          6E88C40E281A42F0DC31981003ACA00DA392714E81D55024CE29903F4F7EB72B
          A95028D6841288622BB83D74BC153F68056C8E7626031A97DCD7F59F63722028
          8A851544941D361489064054287A044A208A2D210C1DBF9A477B60D2EB02A444
          51222F884ADEE7AB9E5717C02A740A0CC3AE2B148ADE801288A22520E38828F1
          B5B05ED12E2C32359480678F8DC0B66C027E70310F2F5FB5AE2446E6D0B0EB0A
          45AF420944D15218A5B80BD46814ED156690FFF6A109B87F875573949926BEF2
          CA2C5C982F43CA4322A465D071A750F4229440146D01A1E83708524220FFF4D1
          6D70682C5535CFFAEAAB73F0FE4C09D24A200A452F430944D11690D389647D96
          38EEDF99865FBB7714C6D21EBC746505BE756A094A3E8087E2474261322B8542
          D15B500251B40DE27C38C47F3D49C43E994B4226817073A502654B1EA2381165
          485C738F28148AB5A104A2681F9CE3A198F07A72946514244C2B963C8CF2BC67
          32202A148ADBA004A2683B3C739C452464828412F2C4C4B552935D85A2B7A104
          A2E8289CE5AE42A1E803288128140A85625350025128140AC5A6A004A2502814
          8A4D410944A15028149B82128842A15028360525108542A1506C0A4A200A8542
          A1D8149440140A8542B129D4118884DF56025128140AC57A2004521602F93C58
          0944A15028148AF5A2F25F0090C37B203E6990D00000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsBottomStretch
        VirtualWidth = 200
        VirtualHeight = 115
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Description = 'Chart wallpaper'
        Scaled = True
      end>
    Left = 464
    Top = 64
  end
end
