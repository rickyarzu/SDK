object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'StyleControls VCL - TscAppPager - Demo'
  ClientHeight = 429
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object scAppPager1: TscAppPager
    Left = 0
    Top = 0
    Width = 730
    Height = 429
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
    CaptionHeight = 120
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -19
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = []
    CaptionGlowEffect.Enabled = False
    CaptionGlowEffect.Color = clBtnShadow
    CaptionGlowEffect.AlphaValue = 255
    CaptionGlowEffect.GlowSize = 8
    CaptionGlowEffect.Offset = 2
    CaptionGlowEffect.Intensive = True
    CaptionGlowEffect.StyleColors = True
    ChangePageWithItemSelection = False
    ShowCaption = True
    CaptionImages = scGPVirtualImageList1
    CaptionImageIndex = 0
    CaptionLayout = blGlyphTop
    ItemGlowEffect.Enabled = False
    ItemGlowEffect.Color = clWindowText
    ItemGlowEffect.AlphaValue = 80
    ItemGlowEffect.GlowSize = 10
    ItemGlowEffect.Offset = 0
    ItemGlowEffect.Intensive = True
    ItemGlowEffect.StyleColors = True
    ItemGlowEffect.HotColor = clNone
    ItemGlowEffect.PressedColor = clGray
    ItemGlowEffect.FocusedColor = clNone
    ItemGlowEffect.PressedGlowSize = 7
    ItemGlowEffect.PressedAlphaValue = 255
    ItemGlowEffect.States = [scsFocused]
    SelectionStyle = scapsColor
    Wallpapers = scGPImageCollection1
    WallpaperIndex = 1
    CustomImages = scGPImageCollection1
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
    CustomOverContentImageIndex = 0
    ItemWidth = 200
    ItemHeight = 40
    Items = <
      item
        Page = scAppPagerPage1
        Visible = True
        Enabled = True
        ImageIndex = 1
        Caption = 'Options'
        Divider = False
      end
      item
        Page = scAppPagerPage2
        Visible = True
        Enabled = True
        ImageIndex = 3
        Caption = 'Planner'
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
        Caption = 'Create charts'
        Divider = False
      end
      item
        Page = scAppPagerPage4
        Visible = True
        Enabled = True
        ImageIndex = 4
        Caption = 'Print'
        Divider = False
      end
      item
        Visible = True
        Enabled = True
        ImageIndex = -1
        Caption = 'TscAppPagerItem5'
        Divider = True
      end
      item
        Visible = True
        Enabled = True
        ImageIndex = 5
        Caption = 'About'
        Divider = False
        OnClick = scAppPager1Items3Click
      end
      item
        Visible = True
        Enabled = True
        ImageIndex = 0
        Caption = 'Exit'
        Divider = False
        OnClick = scAppPager1Items7Click
      end>
    ActivePage = scAppPagerPage1
    ItemImages = scGPVirtualImageList2
    OnCaptionClick = scAppPager1CaptionClick
    object scAppPagerPage2: TscAppPagerPage
      Left = 200
      Top = 0
      Width = 530
      Height = 429
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      AutoScroll = False
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
      Visible = False
      WallpaperIndex = 2
      CustomBackgroundImageIndex = 1
      FullUpdate = False
      BackgroundStyle = scsbsFormBackground
      object scLabel2: TscLabel
        Left = 24
        Top = 32
        Width = 71
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
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
        Caption = 'Page #2'
      end
    end
    object scAppPagerPage4: TscAppPagerPage
      Left = 200
      Top = 0
      Width = 530
      Height = 429
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      AutoScroll = False
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
      FullUpdate = False
      BackgroundStyle = scsbsFormBackground
      object scLabel4: TscLabel
        Left = 40
        Top = 48
        Width = 71
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
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
      object scLabel6: TscLabel
        Left = 40
        Top = 112
        Width = 163
        Height = 39
        TabOrder = 1
        DragForm = False
        GlowEffect.Enabled = False
        GlowEffect.Color = clBtnShadow
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = True
        WordWrap = True
        UseFontColorToStyleColor = False
        Caption = 
          'You can use a lot of properties to adjust fonts, colors, styles ' +
          'in all elements for different states!'
      end
    end
    object scAppPagerPage3: TscAppPagerPage
      Left = 200
      Top = 0
      Width = 530
      Height = 429
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      AutoScroll = False
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
      FullUpdate = False
      BackgroundStyle = scsbsFormBackground
      object scLabel3: TscLabel
        Left = 32
        Top = 40
        Width = 71
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
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
    object scAppPagerPage1: TscAppPagerPage
      Left = 200
      Top = 0
      Width = 530
      Height = 429
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      AutoScroll = False
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
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FullUpdate = False
      BackgroundStyle = scsbsFormBackground
      object scCheckBox1: TscCheckBox
        Left = 25
        Top = 122
        Width = 97
        Height = 25
        TabOrder = 0
        TabStop = True
        OnClick = scCheckBox1Click
        CustomCheckedImageIndex = -1
        CustomCheckedImageHotIndex = -1
        CustomCheckedImagePressedIndex = -1
        CustomCheckedImageDisabledIndex = -1
        CustomUnCheckedImageIndex = -1
        CustomUnCheckedImageHotIndex = -1
        CustomUnCheckedImagePressedIndex = -1
        CustomUnCheckedImageDisabledIndex = -1
        CustomGrayedImageIndex = -1
        CustomGrayedImageHotIndex = -1
        CustomGrayedImagePressedIndex = -1
        CustomGrayedImageDisabledIndex = -1
        UseFontColorToStyleColor = False
        Animation = False
        Caption = 'Show caption'
        CanFocused = True
        Spacing = 1
        Layout = blGlyphLeft
        ImageIndex = -1
        GlowEffect.Enabled = False
        GlowEffect.Color = clHighlight
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        GlowEffect.HotColor = clNone
        GlowEffect.PressedColor = clNone
        GlowEffect.FocusedColor = clNone
        GlowEffect.PressedGlowSize = 7
        GlowEffect.PressedAlphaValue = 255
        GlowEffect.States = [scsHot, scsPressed, scsFocused]
        ImageGlow = True
        Checked = True
        State = cbChecked
        ShowFocusRect = True
      end
      object scLabel1: TscLabel
        Left = 25
        Top = 65
        Width = 73
        Height = 13
        TabOrder = 1
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
        Caption = 'Selection style:'
      end
      object scComboBox1: TscComboBox
        Left = 25
        Top = 84
        Width = 186
        Height = 24
        Style = csDropDownList
        ItemIndex = 0
        Items.Strings = (
          'scapsColor'
          'scapsStyled'
          'scapsModern')
        WordBreak = False
        SelectionStyle = scstStyled
        SelectionColor = clNone
        SelectionTextColor = clHighlightText
        ImageIndex = -1
        ItemHeight = 18
        TabOrder = 2
        Text = 'scapsColor'
        StyleKind = scscbDefault
        ShowFocusRect = True
        OnClick = scComboBox1Click
      end
      object scCheckBox4: TscCheckBox
        Left = 24
        Top = 153
        Width = 241
        Height = 25
        TabOrder = 3
        TabStop = True
        OnClick = scCheckBox4Click
        CustomCheckedImageIndex = -1
        CustomCheckedImageHotIndex = -1
        CustomCheckedImagePressedIndex = -1
        CustomCheckedImageDisabledIndex = -1
        CustomUnCheckedImageIndex = -1
        CustomUnCheckedImageHotIndex = -1
        CustomUnCheckedImagePressedIndex = -1
        CustomUnCheckedImageDisabledIndex = -1
        CustomGrayedImageIndex = -1
        CustomGrayedImageHotIndex = -1
        CustomGrayedImagePressedIndex = -1
        CustomGrayedImageDisabledIndex = -1
        UseFontColorToStyleColor = False
        Animation = False
        Caption = 'Item glow effect (you can adjust each state)'
        CanFocused = True
        Spacing = 1
        Layout = blGlyphLeft
        ImageIndex = -1
        GlowEffect.Enabled = False
        GlowEffect.Color = clHighlight
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        GlowEffect.HotColor = clNone
        GlowEffect.PressedColor = clNone
        GlowEffect.FocusedColor = clNone
        GlowEffect.PressedGlowSize = 7
        GlowEffect.PressedAlphaValue = 255
        GlowEffect.States = [scsHot, scsPressed, scsFocused]
        ImageGlow = True
        Checked = False
        ShowFocusRect = True
      end
      object scCheckBox5: TscCheckBox
        Left = 25
        Top = 184
        Width = 137
        Height = 25
        TabOrder = 4
        TabStop = True
        OnClick = scCheckBox5Click
        CustomCheckedImageIndex = -1
        CustomCheckedImageHotIndex = -1
        CustomCheckedImagePressedIndex = -1
        CustomCheckedImageDisabledIndex = -1
        CustomUnCheckedImageIndex = -1
        CustomUnCheckedImageHotIndex = -1
        CustomUnCheckedImagePressedIndex = -1
        CustomUnCheckedImageDisabledIndex = -1
        CustomGrayedImageIndex = -1
        CustomGrayedImageHotIndex = -1
        CustomGrayedImagePressedIndex = -1
        CustomGrayedImageDisabledIndex = -1
        UseFontColorToStyleColor = False
        Animation = False
        Caption = 'Caption glow effect'
        CanFocused = True
        Spacing = 1
        Layout = blGlyphLeft
        ImageIndex = -1
        GlowEffect.Enabled = False
        GlowEffect.Color = clHighlight
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        GlowEffect.HotColor = clNone
        GlowEffect.PressedColor = clNone
        GlowEffect.FocusedColor = clNone
        GlowEffect.PressedGlowSize = 7
        GlowEffect.PressedAlphaValue = 255
        GlowEffect.States = [scsHot, scsPressed, scsFocused]
        ImageGlow = True
        Checked = False
        ShowFocusRect = True
      end
      object scLabel5: TscLabel
        Left = 24
        Top = 16
        Width = 28
        Height = 13
        TabOrder = 5
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
        Caption = 'Style:'
      end
      object scComboBox2: TscComboBox
        Left = 24
        Top = 35
        Width = 177
        Height = 24
        Style = csDropDownList
        ItemIndex = -1
        WordBreak = False
        SelectionStyle = scstStyled
        SelectionColor = clNone
        SelectionTextColor = clHighlightText
        ImageIndex = -1
        ItemHeight = 18
        TabOrder = 6
        StyleKind = scscbDefault
        ShowFocusRect = True
        OnClick = scComboBox2Click
      end
      object scCheckBox7: TscCheckBox
        Left = 25
        Top = 215
        Width = 153
        Height = 25
        TabOrder = 7
        TabStop = True
        OnClick = scCheckBox7Click
        CustomCheckedImageIndex = -1
        CustomCheckedImageHotIndex = -1
        CustomCheckedImagePressedIndex = -1
        CustomCheckedImageDisabledIndex = -1
        CustomUnCheckedImageIndex = -1
        CustomUnCheckedImageHotIndex = -1
        CustomUnCheckedImagePressedIndex = -1
        CustomUnCheckedImageDisabledIndex = -1
        CustomGrayedImageIndex = -1
        CustomGrayedImageHotIndex = -1
        CustomGrayedImagePressedIndex = -1
        CustomGrayedImageDisabledIndex = -1
        UseFontColorToStyleColor = False
        Animation = False
        Caption = 'Some custom adjustment'
        CanFocused = True
        Spacing = 1
        Layout = blGlyphLeft
        ImageIndex = -1
        GlowEffect.Enabled = False
        GlowEffect.Color = clHighlight
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        GlowEffect.HotColor = clNone
        GlowEffect.PressedColor = clNone
        GlowEffect.FocusedColor = clNone
        GlowEffect.PressedGlowSize = 7
        GlowEffect.PressedAlphaValue = 255
        GlowEffect.States = [scsHot, scsPressed, scsFocused]
        ImageGlow = True
        Checked = False
        ShowFocusRect = True
      end
      object scMemo1: TscMemo
        Left = 25
        Top = 246
        Width = 393
        Height = 171
        Lines.Strings = (
          
            'This demo uses TscGPVirtualImageList, TscGPImageCollection compo' +
            'nents to'
          'scale images for items and items wallpaper!'
          ''
          'Use TscStyledForm.OnChangeScale event:'
          ''
          'procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);'
          'begin'
          '  scGPVirtualImageList1.SetScaleFactor(AScaleFactor);'
          '  scGPVirtualImageList2.SetScaleFactor(AScaleFactor);'
          'end;'
          ''
          'scAppPager1.Wallpapers = scGPImageCollection1')
        ReadOnly = True
        TabOrder = 8
        WallpaperIndex = -1
        Transparent = False
        CustomBackgroundImageNormalIndex = -1
        CustomBackgroundImageHotIndex = -1
        CustomBackgroundImageDisabledIndex = -1
        UseFontColorToStyleColor = False
      end
    end
  end
  object scStyledForm1: TscStyledForm
    DWMClientShadow = False
    DropDownForm = False
    DropDownAnimation = False
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
    Left = 472
    Top = 96
  end
  object scStyleManager1: TscStyleManager
    ArrowsType = scsatModern
    MenuHookEnabled = True
    MenuAlphaBlendValue = 255
    MenuWallpaperIndex = -1
    MenuBackgroundIndex = -1
    MenuBackgroundOverContentIndex = -1
    MenuHeadersSupport = True
    MenuSelectionStyle = scmssStyled
    ScaleStyles = True
    ScaleThemes = False
    ScaleResources = True
    ScaleFormBorder = True
    Left = 560
    Top = 96
  end
  object scGPVirtualImageList1: TscGPVirtualImageList
    PixelOffsetMode = scgppomHighQuality
    InterpolationMode = scgppimDefault
    Width = 72
    Height = 72
    DefaultWidth = 72
    DefaultHeight = 72
    SourceImageCollection = scGPImageCollection3
    Left = 472
    Top = 168
    Bitmap = {}
  end
  object scGPVirtualImageList2: TscGPVirtualImageList
    PixelOffsetMode = scgppomDefault
    InterpolationMode = scgppimDefault
    Width = 24
    Height = 24
    DefaultWidth = 24
    DefaultHeight = 24
    SourceImageCollection = scGPImageCollection2
    Left = 584
    Top = 168
    Bitmap = {}
  end
  object scGPImageCollection2: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          380000000473424954080808087C086488000000097048597300001BAF00001B
          AF015E1A911C0000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A00000DD94944415478DAED5D099414C519FEAB7B66
          764E60576E0F40CE8717CADBC10503CBEE022AFA7C2412A322C98B06E4103C10
          39824A6204160F140414CD8B80478226C68B00B3CB82AEB0B32278A072C82186
          1B7665E7D863A62B7FF5026109DDD35DDD333D91F9DEDB9D9EE9EABFFEBFBEEE
          AAFFFFABBA9B4006968258ADC0F98E0C0116234380C5C81060313204588C0C01
          16234380C5486B02AAAFBB2E5BCC6AE82500ED4601BAE14FDD51E3B640C18BDB
          1EDCF6C8052984F17F18BF8770FB209AF52D21B05D02B23D5E6BFBBCC5C71F57
          596D8B12D28A8023FDFAF99CCED81081D2FE94C000FCE972FC130C8A95F0EF4B
          34751DCA5C1F8DB956B52E2B0B596DEB29584E00CDCFB78584C8303C6347E2D7
          41F89795E42AEBB0AE7741A2CBDC926725292B8B5969BF6504D0E1973922C73C
          23F1AC7C181ABB172BB00D1B60AE3B27BC8CACD85A6F8502292780E6E5B9C22E
          693410FA107EBDC80AA3CF817D14E853DE886D09D9B0219ACA8A534A40A8C83F
          1207C9D9B8D92E95F56A07DD0F844CF506824B5355634A088816F4ED1027B1F9
          B87973AA0C3302F4B8DE11453AC1BDBA725FB2EB4A3A01A1C23E13D1A459B8E9
          4A765D26A306F51EEB2DA95C9ECC4A9246C0E1FC7CAFDB165988A7D35DC93420
          E920B02C12738F4D96EB9A14026A06F76D4DA4D887D8F8BD93DB3AA902094AF1
          D8D066659B8E9A2ED96C81270AFDDD30725A859B1D53D13429C4EEB84086345F
          53B1C34CA1A6125053D8A72701690D8A6D9FDAB649197EA04418EC0B6CFCC62C
          81A611F0E3A03E5DC5382D4789ADAC699B94E1801817FABACA36EE3143982904
          A0A7D386002D47F7ADB3A54D932210023B2925D7794B2A0E1996655400BDA14B
          56A83EA71405F54D85F19EE29755F78727DF930A35183EF2E4848B8CA6300C13
          5053E85F8C4246A7CAEA3422001B8F2CF494548C3326C3004285B92350C4B294
          590CE9454023E8080CD65EE33D9A9B8068FEB51DE3A2B405379BA7D2DCB42380
          409508F15EAEC0A6EFF90EE7049EFDABF1F041A9B5360D0968C42A6F49F07A9E
          03B908A829CCBD0DFBBF37ADB0344D09004AC8ADBE40C5DB7A8FD34D809CE311
          235FE3E6C556189AAE0420F67ADCF19EE4BD4D113D07E926205CE09F4E093C61
          4453B15357907EAC027A5C7F6A251904909C9620346B01F13D3B8D98C5F2D853
          BCA5C139BAEAD653F8E4D9BF07372FE0D551ECDC039CBF9D08B4A61AA20B6601
          0D9DD075BCD904106F33708D9F06C4D70C6A5F790EE2BBB6F19AC670C813113B
          E99955D345C0C9DCFE3C5EED840B5A8373C2EF81B8DCF2F7F8EE1D50BBE41980
          58836619A61260B38373D4432076EC227FA59108449F9F8957E6315E13F12220
          E37D25152F682DAF9900FA3808E18FFCEC1AEDC4A599DD01AE09D34168736193
          9FE3DF7E01B57F590020499AC49846802080F337E341EC7165939FA5033FE095
          F9278006ED27C59960690A7720D88DC8136B1ACA6B151C2ACA2DC2A17E0D9756
          08C74DC3C1DE7FC839F735AC5F05F5EFAFD024C72C021C37FD12F5197C6E7DD6
          AE84FA95BA1D9AD3A04418E80B6C2CD352563B0185FE57F163248F42025EE2AE
          3193B136E53556F51FAC808675AB12CA3283007BFEF5E0B8F156E5025482E80B
          B341FA7E178FB90C7FC6B8E06E2D0535117072F03DC8ECD7AD0A5E936C90132E
          56EFB9D8601C993D1599A8532D6798004716B8A7CCC6C1D7A75A4CDAFB1D9230
          4BB7B92771025DD2765A5C524D04848BFADC42297D874713B1C715B2D7A30AEC
          6FA38B8B41DAB73BA13C33AE00E1924EE0BA77B23C08ABA1F6E56721BE7D2B8F
          D9402432D4B3B6E2C384E5B40843DFFF79F4FDEFE351C43976CA692F4309F57F
          5F0E0DDABA4CD3C6007BBF0270DC72876A19D94B5BA4CBADFF2F283C8B31C183
          898A69222054E0FF124B5EAE5707A1ED85E07A70A6BA913BBF81DA979ED62CD3
          342F08BB46E7E849205EDA5DB558F49947413AB85FAFE90C9FE338D02BA11A89
          0A9CC8EFDD5210C5C35ACA9E0DC7CDB781FD672AF93A4A21FA341A78F8806699
          66C60142DBF6E07A60A64C86129863C01C040E48719BD8AAF9AA0DC7D50A256C
          D45061EEF5586C258F06EE697381B4C856DC1FDB520175AF2FD125D3EC4838EB
          CE5160BBCAAFB89F561D83C8AC4778CC4790C1DE920A55D75D03017CD1AFD0AA
          1DB81EFEA36A99E8822775BB7A66132076E80ACE71EA0D1C2D9E06D2D1C37A9B
          805DE0F7F94A830BD4CA24240007E08538008FD15BB9FDDA7C70FC7C84E27EE9
          D861346CBAACA51E989E8CC3EEC7FD08BAA539CAE9ADBAB79742AC62BDDE2660
          A21778024155E725F11550E00F60A942BD95670D1B01B6BC7CC5FD0DE501A8FF
          A7FE29856464431DC3EE047BDE40655D3F590BF5EF70CC3A1258ED0D0487A817
          49008C80BFC28FCBF4D6ED1C851E46971E8AFBEB5E7B09629F0775DB940C026C
          BDFA40D61DBF53DC1FDFF17563D2503FBE404FE82AB5025A08D8831F1DF4D62C
          479B392D15F747E7CD0469BFFED5DFC92040B8F012704D7C54713FEBFFD938C0
          81DD48C0A56A05B410C072B3397A6B763F3E0F88DBABB83FF2D844A0D1308F51
          A68378BCE07E4CD9CFA0E11A88CC7C8047F451244075A5A016025872C6A1B766
          CFACC5E862D814F787A78EC66B3B6EA0D94C04EA29EBAB84580384A7E9F64318
          EA9000A75A012D04B0955FF644E5CE8667D68B6898A8B83FAD08B0D9C1F3E422
          E5FD1613C0D705CD7C0E884B39791A79FC7EA091F4B85D97787CD8053DABB89F
          8643D805DDCF23DA942E680F700DC273547DEBE8BC3FE020CCB596C974081775
          00D784198AFBE598658E55833067222EA11BFA06BAA19BF5BBA1C980ED9A3CC8
          FA95F2FC8901373461422E698158C2E06663999C864E0764DD3A126CFEFECABA
          969760D0F8867EC1660462E122FF7C4A61BCDEBA5914CCA2612518F0ADCD859C
          8A98A51AB3D4BDB5146241FDA9081C3D9EF39654AA0E1E0909A829F08F471DE7
          EBAD5A68D91A5C939F542D135D381B24A38BA10C822D12738E514FC6B16C28CB
          8AEA052574AC2F50B948AD8C966CE82014B59AC738F7F46220CD951DA8D8671B
          A0EECD57389BCE1C64DD3E0A6C57ABA4A38F1F85C8EC295CB2B1E728F495064B
          D5CA24774266E870B00F50E902D984CC538F827444FB848C99D03421C3BF44C5
          9C091906744537E347C2E9B5FF31B00D1AF8D01F54CBC8F3AE8B8B75A7A50D83
          08E01A3F35E16A8DE8DC19BC27C8A7E801E52654438B24F4849EC1925CC910E7
          D84740ECD855B54CDD3F96436C43198F786ED8FB1582E396DB55CBC4776D6F3C
          39F8508C04249C4A4B8F652918EA4717695B966206840E9DC1357A52E26529E8
          FBB3188007A62E4BA1F9F9CEB01861D7610BFD9A10708DC34BFD12D580500EF7
          6B5F2CE65D81A0196C6DAA73EC64D5340983A1252900C73C39E1F65AEEA0D43C
          B0D614FA976061AEBB1F84F62CDF3E4375B0636069DFDA57E681F4C35E5EC3D5
          F5C0FEDE79F744D534B90C496A9CAF38F86FAE7A2881C5BE405053F64E3B0105
          B9FD0921EB788D575B0CDB040D0D50F7FE5F21B6719D790333126FC7C090E990
          A8DB915528FB17D47FF816777512A5FD9A95567EA24935AD42D9F2F4D047FE1D
          78C0A55A8F6902D1865DD114102EEAA8A9385BB0558F83B374C4D8CDE842EB76
          F2E280440BB04E37DEF7BB703C9AC39D2A4FDAF274867081FF5EBCBC16E939A6
          496539ADC075DF7479064A13F00A887D51891ED23AB94F66AB96B55524C811AE
          ADEF40B05D718DEAAAEC26D5856A203AFF09AEA8F774D5848EF2042A352F76D2
          4500EDDDDB1E6E21B2C7B5E84E4F9F82BC3076D4247995B2AEBAAB8F417CDB56
          887FB74DF6CB69F571A091C6294DE2F600C9BE405E8B2476EE0662F7CB5523F0
          73CAAFAB4327602E8E3F7B784D63D8EDA98E77279B3669BEBB437774CB9B1B3A
          1362D79EE0FCF538DD24240BACF1EB96BEC0ED729E02A130C6531A5CACEB18DD
          CAE6E5B942EEF857DC63C149C8EEE03D0FE099AADFB33513B4BAAAD1F33AC4E7
          F19C811D1EC7F12BC8CA9D757A0EE2BA51DB4882AE49E5382638EF1A232F0BB1
          02ACBBA95DBEC8D04D79A721D022EF9ACA12DD6DC05B5FB830F72D0AE4178615
          47B7504EDAE18099284E300D38B837949736BA9A3AEED05496077FF396066FE3
          39346D1ED6C1AE02969B499437320A96DFA97FF74DF3E6A3AD7A58074378609F
          1BA940DF372AE74CB0DC91A3E8E684A90BBD6077C13704DEE3BEE5480112A1D2
          4D9ED24FB996EF33186EB85051EE5C8CBD27996915034B5FD87AE781EDCA5CEE
          819A0DB0721CF1D9C6E4ACC02030C71B08F2CDD69C166110A97864199B5710BB
          F4C4CF76F2DC2DC9CE91F339CCFF9775C07880AD31A255C7E5192CE9D07ED9A5
          D473E70D07D2E391650CC76EE8D32CAB9EB23C91EE499BFF536C8ED6DA07B42A
          2FAF312AC8B4BE3B3CA85F7B2A3594C34FEF81AD6763077534F4F3ADDC7CC40C
          614978702B65B7BBA7CB7B01CCC63E4A842169F9E0D65308E5E7B605113E40D1
          D7A4B66D920C029BD0D9186AC6B3429B8A4D02D8DB8F6C59F56C0AB3BF6161E9
          81B5F5243E2C27B0E947B305272DF4A4C3878BA1AABD330805B6EAD5E89B90AC
          421CA3DCE99ED260B1D6FCBE5E243DF6AF29F0171002AFE3669B64D765320E52
          2077F84A2AD626B392CC2B4CCE819FD42B4CCE444DD1B5F918BAB3C779F54C65
          BD3AB0950A749C6F4D25F7DCB75E645E63D588F3E3355667222D5EE446D93B27
          E953E7D58BDCCE859A81B9971191DC859D2F7B245AB2DF31B607497F15E27485
          6F6DA5A9A9511EA40501A7C0AE8AF071EF00EC9E0A918C02FC890573A241B171
          341383282805412AF16447D65B75B69F0B6945C0D9A8CAEFD5C226665DDDE475
          B640F10A21D9A8790B6CD4EC935654E176357BB80C7E3970E6EB6C63B1DA2DD9
          655BAAADB64509694DC0F9800C0116234380C5C81060313204588C0C01162343
          80C5C8106031FE03958A38ACD28F0D550000000049454E44AE426082}
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
          89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
          B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300002986000029860122ECDF8C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A00000F
          7B4944415478DAED5D09D45645199E71254D70414BD34C0C50084DAD9307CB12
          4D63735F081714CDED68221E534BB1DC020D544C73017152528F424287242DB7
          0CD3C425D253865AA072386A6A6EB9E4DFF3FCF7FB385FBFDF323377EECCDCEF
          9BE79C77BEA3DC99FBCE9DE7BF779677915D5D5D2221C116321128210F128112
          72211128211712811272211128211712817C41C9A3509E0FF98C650B6F41CE10
          E3BAAE0ADD955A2402F98092ABA37C05B27ECE96EE0081F60BDD9D5A2402F980
          929F46B9C2414B0F83403B87EE4E2D12817C40C91D503EE6A0A56520D096A1BB
          538B44201F507204CA050E5A7A1FD20B248A66D012817C40C9A351CE70D45A5F
          10E8D5D05DAA2211C807943C5B642B3017180202FD257497AA4804F20125AF44
          79A2A3D6F60481EE0EDDA52A12817C40C9B9285D2DBFC781403F0FDDA52A1281
          7C40C98750BA5A7E9F09024D09DDA52A12815A41C9C128D7863C8981FBAF45FD
          35513E07D9DC914657438F132CFBD21BE530C14DCD715D0FBA502611A81994BC
          14E584CA7F3D0FB91C32130FFF2D8DBAEBA23C163251B8234F15B7404E871E2F
          68F6632B94A740C643D683F00FE110D49F93579144A04650721794F5FE4ADF80
          5C0BB90203B0BC4E3D89F254C80F201B16A8E1DB908B2053A1C77B0DFA305464
          04DE17B27A8F7FE5CEF800AD3F86264804AA07255743F927C88E4DAEFA10721B
          641A06E1D14ABDCD507282BBBB476D9F1524ECB8AE5F55745803E5012223F157
          5AD49D8C7A67E5B97922503D28790CCAEB0C6AFC1EC2013C03B25120AD1742EE
          87707EF459CD3A7C730D06899EB5BD6922504F28D907E533904D42ABE209F341
          A07D6C2B2702F584925345366FE824586F4E2602D542C981289740D60CAD8A67
          3C0DD91E24FAD0B46222502D94BC13E5B742AB11081340A0CB4D2B250255A1E4
          28914D843B15AF43FA8344AF98544A0422945C0B254FB8FB87562530AE01818E
          37A990084428793ACA8B3DDE91738DEAD2FF09C84B152136ABC81721A3215F83
          ACE149AF8F203B81444FE8564804CAEC95B96C5FCFC3DDDE845C22B25DECD735
          F5A321FEC98247177E747C00BA7D5DF7E244202567A13CD2C39D68917896E91C
          A346CFBE287F0C39C683AE63A0E7AD3A1776368194A4813A0F49658177F90072
          1206E45A473AF380F6A7A2D8AD86C7A1EF8E3A17763A81F644F99B02EF40F20C
          C760FCCEB1DE3C6BE3964351247A1E3AF7D3B9B0B3094414FB093BCED99BE7E3
          7AF34D744D012D93F40742EFF93A172702114A72E93A0DF20987ADCEC0207CA7
          60BD79E0EB724EF477C8D855D6051A4804AA42C941286F866CE7A035AEB6FA59
          4F98F575E6C49AD68E2E56673708AEF60CED8312816AA1244D57B9CC3E39674B
          933010AEDC785AE97C0ECAF372B44003B9E3A1EF2D36951381EA41C991283937
          DAD8A2F687DDF574F779F2EBCA7DA29785DD66E322C8A1D0F51FB6B74F046A84
          6C8391D685DF34AC792F066498675DEF41B99B410DDA44D31CF647568E023548
          046A86CCBEF923C35A133128977AD693E6ABD30C6ADC051DF77271EB44A05650
          D2F4010DC3E0DCEB5947BE7DEE31A8B1183A7EC9C5AD13815AC19C40DB6070FE
          E659471AC2FDD5A086B330318940AD604EA0DE189C373DEBC865FCBF0D6ABC03
          1DD77571EB44A0565092FE57EB18D448044AA88192FF14FA6E3244FA8425D440
          496EEBEF6450234DA2136AA0244FEBF734A8518665FCDDD0D1A44F0D9108D408
          5968DE7321DF171FF72B6F86326C24726FEBCAEEBE25DFF802A0E4E750CE860C
          B5A85DA6A38C65223B07BBD3F6F689403DA1E418C1183C42F4C9D14A990E5309
          FEB14CB0B11E4804AA42C94F0A1ABBBB312E2BA33907752589669B544A042294
          E48AE417C2AD5F58190DCA087ECEF8595BA673712290927BA3BC5D14635F5C46
          93568213EB7D756CB9138194E42760AB825A2FAB513DA165589F08A4247358EC
          50E01DCAE8D643FC1A3A8F6C755122909287882C6865D128936321493114BAFE
          B1D585894084920C0DB7AB873B95C1B599B811FA1DA173612210A12403192C86
          ACE6E98EB106572038811E0802BDA473712250154A72F3F0B8D06A44007E6627
          EB5E9C08544536C7A0635DDEB4946506A3B50E6E1877BA0EA226D08AFDBB43F3
          33D488C961664F2CD974AE66185B2519CDFDB2D0FD0E08EEFDCC33A9102D8140
          9E01F87944E43B932278F27C1248F4B396576641BA9F840C0ADDFF00B032F188
          99402EC3ED3E0B027D5EEB4A25E9077657E8FE7B0627F58CD2FAB469C59809C4
          1CA3231C3547E7B9B540223D1F2F25F91ADF3BF433F088E920CF293615632610
          E3357FC161939B80402F6B5DA9E4D6289F12599A271DF0E0919F48CED7428609
          FEADC812C430DDC1A734EB7063B3BFADFD52CC04A2D37F6F874D0E0181F4738D
          2AC95DDF335B5CF53084E6AB735605E9567274E5FF6DEDF171319B332D27A775
          6774CE82448C1559C295212DEAF2E4DDFA50364A0255565F6F386E760F1048FF
          5033B30F62F0CD4D7BFC0B3F8777886CB01635A8CB013C4D6483EAC47DA60948
          E213A0CBE30D74E19C8E7349BA32F70CE5C74D4C46653575DF5E855809C44FD7
          12C7CD8E05816E36AAA124D32631D824B711780C315364F385E735EB33D11C8F
          2EC614F09868ECCF744DF769EAC2952593E71D2E987B5E88D7202351FFA13C4A
          C44A204E9E17386EF65410C87C8F47C9AF0AE66AA7DBCCB82E13E7BDDA36383F
          320AE0DD02E74197732D75613A2A1ACE2D756131192B81F8B05BEFDB98613208
          942BB99A3594641E31EDE3010D1C89C15741FAD203B112E84291CD1F5C621608
          343E488794E4C9B6CB01DF0B048A62AF2A5602DD889FC31C37BB00041A15A443
          EE3727B703815CCF11AD102B818AB0CFA1EFF89741222B473AE844F766BE49DE
          859C8F76DED6AEAC9C2F0A362EDCE34313CE0884073C5C703F24B35DA185DF54
          3CE4270DDBE020719EB29F28C636E75591EDD15C01DDB426C4D08993686660AE
          DD20E466DDAE6843EFE165135757034E13D9B5BBF77B22801302E12173D7937B
          263D37FEB8EFC233AD85CD1E36EAD30394AB0A27FEDA1A78BDA2D714E8F54103
          9DF6C0CFD922DB5DAE87635077A6D6DDB25079FF81ACE540F7E5208F49B49042
          E18A4037E0675C934B782C40E7FFD978E8EFD5D4E3861B833D72C7B4C87C158D
          C0CDB7C3A0D3AA4344E8C49D64BE715AA5CCE6B1C800D4D5354D350D13D3088F
          8040AD74F386DC04C203DF5964E1627508B052641E055CA27393ED26E1F6BCCB
          067C33F0B3F9A2C888B3BD41DDE92090DE21A49234507731F0F340A07D7D3FA4
          46C845209087F314DAEC98C4CF21DE11D95CC9C52B3D2478FEB583D6199B920C
          197CB8837B5E02027D2F74C7ABC84B20BAEE16E379591EDC0B02B50EE7921D25
          707B422B8D521D70A078EC703008F462E84E57614D20906703914D9CFB86EE44
          04381824BA2DB412219087408C647152E80E4482E5906D40A277422BE21B5604
          02796863C2154C1E63F776C30520D039A195F00D5B02DD271AEF8F742AB83D31
          08247A2EB4223E614C2090C7972F7919311F04DA27B4123E6144209087D6753C
          53DA3CB4E211633848B430B412BE604AA022CC2C7411B33F792DB832A5FDF5FB
          81EEEF15DA0402794C3D155C6155440BDD6303E81A22A2452DCE80AE1707B8AF
          77981068AEC84EC97DA23BA60E06C3EA241B3AFB8CA9538B65D0D9492A81D861
          42209A3FF8FA6BEE8EEA854170B2CB0DDD7D45F5AA82B6427DA07FAE6C806580
          1681729C79D9A03BAEA0910B8E06D0071F7105AB3816FA5FE7E13EC161F206A2
          253F3D255C86C2AD87E35CBD79EAF4A1C8C8A6043FB54743FFF905DE232AD82C
          E3A7438A324E9F81875F686C65F4A188D8CA04DD8A8F80FE2B8AD43F36D8EE44
          1F24B2BFE40D1CEAD21DDDDD76C26CA0BBCBE8EE0497EBB4239AAA6DE2DA46C8
          7398BA85C80CC25C19BF4FC20078C92F01DD5DE497209858EEDBD0FBF1DC2D95
          142E0CCA68CDF743916FE3AE3BC38DB679684E54F6896C33DC54C14FE1844E3C
          81AF852B9B689A6A3249876D440A3DA32C8780CEA639B6AAE0129D739DB93EF5
          8D152EDD7A38A7A071BACD39D9440C88D72C7FD0D734CB5F154BA16BD12BD1D2
          C0A9632106858196B6B0A83A0C83E235CF287435CD335AC5BFA0EB463E758D19
          AE0944AF4F9B7838B4E6F39AE918BA9A663AAE82BBCB6B76E28AAB1E5C7EC2B8
          C36B7B02DD1B03E235D77AE5936B17AE4588F5A1AFEB0058A5844B02E571DF4D
          042A295C128851AFDEB5AC9E3E612585EB391009D4CBA26A9A449714AE09440B
          C14D2DAAA6657C49E19A404C56A21711FEFF51A68DC4EE7CA2AECD4DCA0A573B
          D13CA064A813DBE8EE653BCAE03C886FCDE93EF48D192EA273308E0E0307D87C
          BA6A51C6C354FED19CD82906F4F590E7349E9135E8A5C180DA2E62FB94D59CE3
          0F9003A0F7CA22F58E15B6F6405C023368B7EB6CC7653528A36F3CE7458F15A9
          7B8CB0F14CE5003360F73A05E9545693566E611C05DD6F2DA8FD28616213CDC4
          6FD743F62F58A7B21BD55F08DDCF2EF81ED12056BFB0B2BBF58C87EEB33CDD2B
          2874DD7A18C6858654BEBD52CBEA58783B743EC8F33D83C0E40DF480C87CCE7D
          A38CAECDA741579B5DEED2C184408CE5CC00DB21C2F1126509AEC070BEDB8240
          B607CBA582A95F98AB48A3ED8C03419E39A195F005530271B7996617213E0B65
          C03D20CFEEA195F0099B7D20CE2B3A22748921F46346B7116C08C4A5301FD280
          D0CA4706FDA8F56D04DBA30C66AEB933B4F211A13B75B62F6B829890E730759E
          B037DF6837744C38979EC843A07E227324F4BDB9181B7880CA4476D6A9B3CB8C
          BCBEF117882C3245276317906751FE66CA89BC04E2893C97F59D1AF6F72690A7
          A3F7C55C58249A041EE76BFE9722CB16C8E46B5741360CFC0CB8AB7D1484E91B
          681CA79B2F8CB6D10341A09734AF6F4BB8B289BE4F344F7DC083589A825C569B
          0AA0B231C903D31101FA4E32FF04724EAD496AC5EC8344E24AB3D9B1CD99A837
          2580DE51C115811A255F61B83766F5B91A0FFBB526F599E27B92283EFE6215CC
          BB45023CD044A7C1F8990839547C7CA1B01432B8936DA1AB70E9993A41649F26
          069DFAB3C87CAE6ED67DC815939131224B74BB4D41FD650A82C9D0E97E837E31
          A130D35A9D00A14321DDA18777F2C4B916AEFDC218606AEDDA24B6166D90808B
          4576B2EE12CCF53E29875E5C3070F77D65A705D26C06A70472050C16C3E48E76
          DC2CC3EF5E1FBA6FED8658095484E7C428106841E8BEB51B622550111B94DC2D
          7E3474DFDA0DB112E8BBF8B9DC71B35B8240CB42F7ADDD102B818AC88AD80B04
          7A2F74DFDA0DB112E81BF871192FE80D9067FDD0FD6A47C44AA06D4576D2EF0A
          CF80400343F7AB1D112B81F2C45BAC870741A0102E496D8F5809C43328EE60BB
          72CD9903021D18BA5FED882809448044CCCF3AC851731781409D6EB754086226
          10DF18DC39CEEB42C483CFDD40A01742F7A91D112D810890A8377EFAE56882A1
          E89EEA5473531F889A4009F12311282117128112722111282117FE0713CC9D3B
          ECBE4B520000000049454E44AE426082}
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
          89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
          B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300002986000029860122ECDF8C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A00000C
          474944415478DAED9D7B7015D519C0BFBD4910D10811341D90A750500AB68040
          AD4514863617864A2B4E2DD819A57F58E8030A0960C732ADA362C796D656C6E9
          48ED94E023258F328A9AE4726F0CA0304879340A554B842610130249CCF326BB
          FDCEEE4D1AD384E466CF6B37DF6FE69B93199273BE7BEE8FDD7376CF9E352CCB
          0282E82F060944B88104225C410211AE208108579040842B4820C2152410E10A
          128870050944B88204225C410211AE208108579040842B4820C2152410E10A12
          8870050944B862400A64844A0C2C46614CEE143763A46024778E8547A7B23FA9
          C35EAA335818F8B30997F0E78F4D80D3018C28462403CAF077065C670E088150
          98042C66622C88C55C8C6BFAF2B73181FA423DC6BBD89D21ECD1D0F0F1F05ED6
          726853FDD945E35B81501A7604B90FE35E8CBB3086F6A79E3804EA4A0D46111E
          93F21A0176EFCF803AD57D22025F09143BD22CC278101C71AE765BA70B813A83
          0E419E19809DC3C740BE9F8E4CBE1008C51986C54F305663A4F2AC9B93409DA9
          C0F1D3F668123C1B5E0B97257591303C2D108A730316EB30D6605C27A20D0102
          B5538B03F2E712A3B06DEF66A814D588683C2950EC88F318C623184344B62550
          A0761A0C0B9E8F0E82C7BD7844F29C4028CF0A2C7E039C4F553D2141A0762AF0
          AB585F9801BB6435C803CF0884E24CC1623BC6DD32DB9528503BE1400056BFB5
          1E4EC96EB83F78422094672D164F630C92DDB60281182D60C0C6820DF03B158D
          C783D602A1384C1876D459A52A074502399FDF821DC31A6175D616144A53B415
          2836C3CAC6F8BACA3C540A14A338A915BEA3EB4C4D4B81509E6958ECC118A73A
          170D046237D84A0D1396166C8493AA73E98A7602A13C4BB16033916B55E7C2D0
          41201B033E438956E467D8FFB1B4412B81509E4D583C8111509D4B3BDA08E460
          62FCBC201DB6AA4EA41D2D044271AEC26207C60AD5B974453381DAD995341856
          EDFD3134AB4E44178132414379189A0AC4D88547A295AA93502E50ECB4F594EA
          8EE8098D05626C567D3A532A506CC09C0B1A8D79BAA2B940A661C13295036B65
          02C5A6EA074193D9564F682E903D3B8336B843D5145F8940B18B84874183EB3C
          BDA1BD40E05C271AD40AB3555C6C942E50ECF6442128BEC2DC57BC20508CE294
          065828FBB6870A815E0085F7B6E2C54302D9F7CE703CF403B96D4A142876577D
          9BCC0FE8162F096463C03A9977F1A509145BCF731C142CC97083E70402680904
          E03659EB89640AB40F242F06E381070562840BD2E11E190D491128B60C3553C6
          07E28D470502FC5A57CA581E2B5CA0D80278763895B28699375E1508A9684D82
          29A217EACB10882D80FF99D04604E26181D8ACECB7382B5B2FB60D8102C52E18
          9682E0476F44E265819086A4561827F202A368819EC462B3B00624E07181C030
          E0A9FC0DF0A8B0FA4509141BFB7C02829E189585D705426A712C3456D45848A4
          40BFC0E297227B46063E10080C802DF9E9F02B21758B1028B64B46197874E6D5
          193F088454A48C83512276051125501A167B65F48C687C221098010886D6C31B
          BCEB1525D04B583C20A36344E3178190970BD2E17BBC2BE52E506C67B00AE0B0
          B9930EF848A0C6460B5279EF942642A087B0F8B3CC9E11898F04622BCF1E2EC8
          801779562942A0BF63B15466BF88C4570201ECC1D3D8B77856C855A0D8ECEB22
          F473434B1DF1994035381B1BCE7336C65BA0D9581C52D133A2F09940605A3027
          9461AF47E7026F81D86D8B2755748C28FC26107EDD8F1666F07B0E8FB7406CB1
          FC02151D230ABF098484701CB4905765DC048ABD3E804D11FBB403BC57F0A140
          F585E990CCEBB50C3C05BA098B732A7B46043E14085A2D181DCE80FFF0A88BA7
          40ECD455A8B26344E047810C0B16E66740884F5DFC0462BBC43FA7B26344E047
          81F02B5F8303E9ED3CEAE229D0EFC179DD80AFF0A34078047A168F403FE55317
          3F815EC362B1CA8E11811F05C2E1F3EB0519B08447553C053A80C51D2AFB4504
          7E14C830E060FE06F81A97BA380A74028B692A3B46047E14083959900ED37954
          C453A033E081ED5AE2C58F02B1ED600AD3613C8FBA780A5485C570951D23023F
          0A845CC423D0081E15F11488ED18EAA98D13FA824F056A4181AEE2511109D40B
          53425591D453F5F355E7C19996484E503B817C790A634C3870F9EDD1C76AEE04
          8D37038D936A1488CB774583E83E32FA58EDC109072EB1F54E89AA73718D0567
          23B9C1B13CAAA2697C1C7CE1FDFAC393C3556CFA3B58752E2E791F8F405C0677
          7421314E469C693836756FE524F0F6B295C328D01C1E15D1AD8C7E30ACACA9E4
          B6BC8A91F8638AEA5CFAC99B28501A8F8AE8666A3F49FEB4F9A319BB2F24E378
          C27B8F6F5BC61F22B9695CBE2B5ACEE1822197A26767BD521E304CB849752EF1
          80DFF88F8A72825CBE2B5A50E692C19FB55EB83DB3BC21D0664D509D4B1C2CC2
          5358018F8A68492B07921ADBAAE7EC2CAF48889AB7A8CEA52FB4259A638BB396
          9CE551172DAAE74442B3593737B3FC4C62531B97BBDC02A92DCA0D0EC3AF5DAF
          45F576653E7CAC271E02AD66E39CCCF29241F56DB354E7D233C6DF223969F773
          AB8D1E2CE40B0EA8A3B7BF5C7EE4EACBD1AFAACEA5FB04E1FB91ECE04E6ED5D1
          A3CD22B0CC1959170E2457B6E8F646A2B644684E2DCC5976915785B4B98240A6
          EFA9284A39D77497EA3CFE87B53F92B398ABD4B4BD8B606EC9AF8ADCF8A126CB
          412C63632437EDD73CABA40DA62430B1B8BA68D489BA79606F98AA0E9C78DD5A
          94B3F8039E75D21677921873E4F2FEF1876AD8C03A41510A1F4772821379574A
          9B6C4A64E43FEBDE9D54543D03D4ACDCDC8602717F67096DF32B991B3E6A387A
          6B7EE5643C9FC8BDE06A58F744B21787F9574B1B8D4B27E56CE3C9E9AF558E01
          CB92355BFDC4B8346462383CBF9577C5F4AA03455C57D1FCAFAF645FB81E8F44
          5C1EAFB91286050F8573837F115337BD6C451943AAA3A5B35E2D1F6498305260
          33A76E4CACFF5256D672EEAF3960D0EB9E1433B8B6B57CF64BE52D469B354E44
          FD86612C0F67A7ED16953FBD704E03921ACCAA393BCBAA135ACD2FF2ADD9385A
          949B368BD79DF76E5BA0575EEA4162B35983129DC592DF932D96118CE4A6717F
          C14A67E8A5BB1A9110B5EA6767969D1ED4D036C37D6DFCEF7B7507BDF65B330C
          D36A999D79FE1F83EBA2EE1EBB31AD7991BCC5C5C2F3952190DD50A8641F1677
          4B69CCE3E0B4BB6D66D6F977AEA96AB9B39F55707B6CA7F75CE50934058BE3E0
          C30D18848003DF2FE756140F3DDF342FCEBFACB502E6ACA2DD4B3E9491A63481
          ECC642256BB1D826AD411F30F58DCAC8887F37CCEFE3AF5B86657C3B9C9B9627
          2B3FA902D90D864A5EC06295D4463DCEA44875D1C892BA5E17A6E137B9B52827
          28F5BA9B0A81D8298C2DBED76DB9A7D68C3F74B978CC911AB63166B75BCCE019
          2F949AD8F00D51579C7B42BA4076A3CE0546F6CAA171D21BF730A38ED7BE3371
          FF25F6C44752977F3A67261A33DFCE4AAB949D931281EC864325EC82D9418C6B
          9524E051524FD71F995258C5B666695FB0D7123061DEBEBCA092871994096437
          1E2A616BA773C13F3B7F49E1FAD2C613D3F67E3A1ECF5BC906C00FC339C1E755
          E5A254203B8150C9262CB8BD006DA030B4BCE98369AF57468A5FF9E66A957928
          17C84E2254C2AE52AF509D87C76053F5FBAD0553A32A93D04520B663E80E2089
          FA4A36C603AAE5616821504732CEE9EC09A031D19578156325CAC37D796A7FD0
          4A203B216760BD0B6876D61D7FC57818E5917AADE74A6827909D9433C5DF0374
          9DA81D26CC2614E719D58974454B81ECC49C8B8DEC5C3FD0AF58B3BD06BE8BF2
          68B9FB9BB602D9C939B73DD8AB1907EABDB36318CB509E52D589F484D6027524
          E9DCC57F1A06CE52103640669B203C8EF234A94EE64A7842203B51673D113B1A
          F97D51DA7B18AB509CE3AA13E90B9E11A8236167792C5BA8EFB735D60D185B30
          B6E934CBEA0DCF096427ED2CD47F0CE311F0FE2343EC14F5278CAD28CE79D5C9
          C48B2705EA48DE99A9ADC35803DE7B0296BD5FAD5D9C72D5C9F4174F0BD4F121
          9C2312DBBA9FDD58D4FDD4C664611704FF88E294A94EC62DBE10A8E3C338BB82
          2CC27810E35ED067932B76CF8A5D187D11E34D2F8D717AC357027DEE83393BA5
          DD078E486C3DB1EC8D3F6B31D8A34C6F61EC4669AA54F789087C2BD0E73EA473
          649A09CE26E82CE602FF1DF5D92EFD27C159EF9D8F7148971B9E22191002FDDF
          87765ECB300A6372A7B8199CF77F257709466D37510ACE23DB76F8613CD31F06
          A440043F4820C2152410E10A128870050944B88204225C410211AE2081085790
          40842B4820C2152410E10A128870050944B88204225C410211AE208108579040
          842B4820C215FF05D401952C09591D0C0000000049454E44AE426082}
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
          054944415478DAEDD93F2C03511C07F0DFA31DB44909A9EA2D4D14B5486AD184
          0E156515A38695C1428848180C242284C5C04ADA51AC541890D4D22616F52FB1
          B4AA21483028CF5D8938AEF2DE739C93F75D7AEFBD7BBF779FF6AEC33B843106
          3D0771801E01CB9BDBDE3C8CA6A5E32784FBDB7C0D5B2C8BAB518709B0B2B113
          113FEA5E9BBBAD8DF51E16801A755801B249E2C28811F0ED3A3901772D5E01E3
          8729C0E0139BF6F763E1E119D9B9FEF13E96EB27A99304049B0819074CAB5B09
          6240F6E21F1F62E264EBC731E9FCF59159595FD3582F2044F7E551D5C19046F9
          46B712421170DBEC098A93DA95164E5DDFC1DEE4BCACAF66B01B6C85262A0075
          1D0421F35A244006F07B24A95DA94EF4340D170B4BB2BE92AE0EA8755881260C
          7592E670442005E47CB2A5852F8746019757BC14383982E2895126006D1D11F0
          E9FEA206483FFDBEA50C3281CE6CDB105C84EA9B33A65B88B68E2A00E9FCF39B
          7B485CDD66DB4291194A2D054C0F316D1D55005A8603B40E3120163FFE9300B7
          CBC9011CC0016A004E1329C57E876053659C0338800338E09FFF8DEA1EF0DD5B
          A4B227A0387E3817E4000EE0000E200068150ED03A34809C9BBB1A262902C836
          776307C739B7D7350B8290BBCA49B6BD1E8DC7050486987848B7E5FC734963C8
          B86B5D2EB2171C6F0864507CC5F48BC9BE62C23833A074F15F02F4120ED03A1C
          A075740F78065D442BBF23E3D0660000000049454E44AE426082}
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
          89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
          B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300002986000029860122ECDF8C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000005
          AC4944415478DAEDDD4D481C6718C0F177FD58B6040F4291B48D7A28A5CD2960
          2294D05B4E251F97F66C48A2047AC9B1CDC1A8CD21ED3197425023F1DC5E624B
          4FDE4A296C22E49496D283DA46918207912EBB7EF479EBE321BA6AE779669DDD
          F5FF836174C9CC7EF8E79D995DB26F6E7B7B3B00563902820701C18580E04240
          702120B810105C08082E04041702820B01C18580E05217013D2C96B37F100DE8
          4E7F3E97F56320A00646408A806C084811900D012902B2212045403604A408C8
          86801401D9109022201B0252046443408A806C084811900D012902B221204540
          3604A408C886801401D9109022201B0252046443408A806C084811900D012902
          B23971015DBA74A9EA9D5DFBEAC7AC5F8786F4F48B8FABDE3E3B3B7B6C611150
          03232045403604A408C886801401D9109022201B0252046443408A806C084811
          904DD305343030D095CFE7FB3737372FE472B9F3B2EFB87EEBB89E0CF693BFC1
          92FC0D9EC9FA796B6BEBB372B95C9C9E9E5E496BFFA904343636D6B6B0B07057
          F6352CBFB667F982E1481509EA7E4F4FCF839191910DEFCEDC010D0D0D9D9511
          E789FCD89FF52B83448A32225D1F1F1F7FE9D9892BA05BB76E0DC8F68FE4C742
          D6AF064C4A321ADD9E9C9C9CB6EEC01C908E3C7381781A5D4946A23EEB48640A
          289EF3CCCFCFFF1C386C358B626F6FEF45CB3991292039740DCB765F66FDAC91
          1E3994DD9343D9FDC4DB250D285EAAB7B5B5FD19B8DA6A36958D8D8D33492FF1
          130734383878796B6BEBFBAC9F2DD2D7D2D272656262E28724DB240EE8C68D1B
          2332DC8D66FD6471B0ADD610FE385708BF7EF8C67FBF7FF0CB3FE1DD17A5D0B2
          79F876D2C2E8D4D4D45892FB4A1CD0CD9B379FCAEA6AD62F120EF67B5F21FCF4
          49C76BB77DF4DD5A786FAE74D4A6338F1F3FBE96E4BE2C23D02B3E9EA86F339F
          7586BFDF697BEDB637FFDA0857BF593D74BBF8B1878C406F27B92FCB08C4FFA0
          A873D680221981127D104B404DC871082320D84FA22302820B01C18580E04240
          702120B810105C08082E04041702820B01C18580E04240702120B810105C0808
          2E350FE8A0AF68417348FAD5300484D710105C08082E04041702820B01C18580
          E04240702120B810105C08082E0D11D0DADA5A585F5F0F954A25D4C39CAD8D2C
          97CB85F6F6F670EAD4A9D0D1D1E1DE5FDD07B4B2B2124AA5A3BF2502C9150A85
          D0D5D5E5DA475D0714479ED5D5A3BFA306769D9D9DAE91A8AE035A5E5E0EE572
          79DFED3D632FCC4FF8245B1839B7EFB67C3E1F4E9F3E6DDE675D07B4B8B858F5
          9C87806CAA0514CF89BABBBBCDFBACEB801881D275E246A083CE8108C8A65A40
          4D7D0E1455BB0A23209BBD0135FD55D8AEBDEF0311904D0CE8C4BD0F540D73A6
          DA1C3467AA07019D2004A408C8A651037A25AB54A73A20209B1A04B42401D576
          AA030928F5C95608C8A60601CD4840B59D6C45021A91D5689A8F9A806C6A10D0
          A80454DBE99E24A0CBB24A75C2394F405F7FFB5B9A0F25539F7FFA7EA27F5F83
          80AE4840B59D704E028AEF54A53AE52501EDC838A08A2C6724A0DA4E79194944
          C3B24A6DD25D02DA917140F7249EDA4FBA1B49407132AAD4A6FD26A01D190654
          94E5A204743CD37E4712D15959CDC952F03E7A02DA915140F183C93E89E7A565
          63734091443420AB47C1191101EDC820A018CF6D8967DABA035740918E444F82
          E370C665BC8D33A078D8BA6E1D7976B9038AF49CE8AE2CF1E43AF1D51901D918
          038A575BF164F981E59C67AF5402DAA597F87124BA20CB795D1FF9B10701D9FC
          CF8096647926CB735D17935EAA1F26D580AC1E16CBD93F880674A73F9FE883CF
          5A20A00646408A806C08487902AAE7CBF8A497E549119022201B025204644340
          8A806C084811900D012902B22120C565BC0D012902B2212045403604A408C886
          801401D9109022201B0252046443408A806C084811900D01A1E111105C08082E
          04041702820B01C18580E04240702120B810105C08082E04041702820B01C185
          80E04240702120B810105CFE05A972BD1D7530F9A90000000049454E44AE4260
          82}
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
      end>
    Left = 640
    Top = 24
  end
  object scGPImageCollection1: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000014000000280806000000FE31DA
          DB000000097048597300000B1300000B1301009A9C1800000A4F694343505068
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
          D0A7FB93199393FF040398F3FC63332DDB000000374944415478DAEDCC310A00
          20100341D7F3FF5F8E160A9682ED0642520D49DA6B80BEA6AE8EDDF30B414141
          4141414141414141C13F7002D3DA7CB106086FB10000000049454E44AE426082}
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
        DrawStyle = idsRightStretch
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Description = 'Right shadow'
        Scaled = True
      end
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
    Left = 472
    Top = 24
  end
  object scGPImageCollection3: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
          B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300002986000029860122ECDF8C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000007
          004944415478DAED9D5B6C145518C7CF19765B4A512478216A8C4F4605E38398
          7051BA2DB7746984AE61893E89C6608C2FBEA87879D284800FBE987889A18F86
          6DD80642B741812E9B5062847825BEF860A210041124B650BA9DE3B70A4A54D2
          D3F9CE993367E7FF4B26CC2CDDFF7C7BCE6F67E6CC9C82544A0900A2222110E0
          0081000B0804584020C0020201161008B08040800504022C2010600181000B08
          04584020C0020201161008B08040800504022C20106001819A8C5C61EF12A982
          154ACA876973D195978F52477FAE6478A05AEE3962727F10A8495855DC3F67A2
          7EF91D5ADD34C58FF665332D2F7E5A5AF99B89FD42A026A0EBF1A165A1523B69
          F50ECDB79C08A4DC787057F761EEBE2190E75C39F21C17FAF25CE5041D891670
          8F4410C8737285CA0E31F569EB7AF455CBF9A739FB87401ED3B860162218E1A5
          844B3917D610E85FC43D8A89CA9A359FB48FCFAA978514AB39395289378607F2
          6F457F3F04FA1357A398E9B2B4D8DF969D9CFD3C75DC4BB4792B3F51EEA996BB
          D7457E3704723B8AD1A573537566787E6CB394E215DA9C6F2E599E2481A67B01
          FECFBBD32E90EB51CC54E4F343AD175BC5B34A8A2D42A8DBCDEF0102B1608E62
          0E66C478717FB9F7ACE9BA1616FB5B6E9E98FD0CF5D0ABB479A7BD16C0292C32
          664631A2D180DFD052954A0E8F6783DA4869CDAF51C3166D3E969D7DFA14092D
          5FA30BE4BB6CB7012EA21974F6565EA753C39B8663435ABE564A5645100E07E1
          446D7860FDF9AB7F79DD515EA88EA940B4D2FA93B4DC1D5F2B60181F995C6168
          371D401EB3BC1B124A7E490D3D42B2DE4BDB2B5D7FEE6BC08D440E74FDD3B800
          BED1751D8EC0A38CA8148BFD337EAEB7BF2B8578CE752D8EC0C3D4A834EEE05E
          6AAFEF2479D6BAAEC51198CE1195CE6265BEAA8BBDB4FA90EB5A2C714609D51F
          A8E02C5D6F3D2830A1CC1C1D85C1FBA4901511EB0827364E4BA1DE6E19CDBEB7
          6FDFEAD138779C0A81BA0A431DA15003B43AD7752D863945CBF6DFEBE10747F7
          F48CB928A0E905CAF5569E1052F4D16AABEB5ACC214F52BF6D9FC88E7E3852DA
          70D16925A6054AD274083A6DBD4CA7ADAD8DCF19D73E2DF39354729BB8A9EDA3
          E1BEDC25D7C53430265092A643581EA65749CAEF95089750F3DD2FE291F347A1
          E4D659E36247A5D23D1EC3FEB431225092A643181CA6371E4990E4B2718AF8DF
          23E8F2E2D02D9909B57C3250393A3274D04B0B8569A194DAFD4B76ACF86D69C3
          65D36D6502B640499A0E6170987E8E86C1EB0FEDCAD7A6F3A69585817975995D
          4EA7F00E6AD51CBDF4002D01AF14DEB32ADBB005E24C87A0AFEAE099CC68C1C4
          B7CBE030FD072554FE5079ED77DC9A1EED199C3BA345F6D3EA8A8811EC6755B6
          610964683A049DD365E31B560B94AC5D98AC1F99EE90D4E030FD98CC889EE152
          FE1433E76F927484B6014B204BD32126A8ACA37474AA8581ACB50499C3D736E2
          7F4779AA8DFE9C2398A70A6A85C199A3998D366EC425E91AD134CC23504CD321
          94F84A06E2332AF51EDAEE32BD036A81F76FCB8CBE502A6D98B4F52192344A35
          0957A01376E6E9C6067D7AB585AE77B6C5B5C324DD2733419A05BA4C879EA7AA
          03F98F5D17E2333E9CC26C702E10B2F760B9FB90EB427C278917D1B631364C07
          C918C6C789F1617ADA717A23314E6C0ED3D38CCB4719B111C7303DADB87A981A
          2717AAE5FC1CD745D8401E386E642A855AB120F2036017D339F60A29BF10A15A
          22A45846DB6D460AB8FE4764FDEA6E92692A81AE329D1B658DDFFF9E37D9BE38
          A0831895D1492F2DA6A5C5643DDC5FDD4D324D291087C6BF7DD31ACE5AA694EC
          127F09D59070062F35D9D3213840A0297864DD9E1B3299EC2EA1D4AA8811899F
          0EC1010269D0ECD3213840204D9A793A040708340D9A753A0407081481669B0E
          C1010201161008B08040800504724C123AC0F7FA21900120504A494207F85E3F
          043200044A2949E800DFEB87400680402925091DE07BFD10C8001028A524A103
          7CAF1F02190002A594247480EFF543200340A09462BB037CCFD70102190002A5
          14DF3B180239C6F70E86408EF1BD832190637CEF60EF054AC207E0E07B0727A1
          FD2190C5FA7DCFD7010259ACDFF77C1D2090C5FA7DCFD7010259ACDFF77C1D20
          90C5FA7DCFD7010259ACDFF77C1D2090C5FA7DCFD7010259ACDFF77C1D2090C5
          FA7DCFD7010259ACDFF77C1D2090C5FA7DCFD721D10221DF6DBE0E1008F91008
          F976F2758040C88740C8B793AF0304423E0442BE9D7C1D2010F22110F2EDE4EB
          0081900F81906F275F0708847C08847C3BF93A4020E44320E4DBC9D70102211F
          0221DF4EBE0E1008F91008F976F2758040C88740C8B793AF0304423E0442BE9D
          7C1D2010F22110F2EDE4EB0081900F81906F275F0708847C08847C3BF93A4020
          E4E3BF3A00EE8040800504022C2010600181000B0804584020C0020201161008
          B08040800504022C2010600181000B0804584020C0020201161008B0804080C5
          1F18933259CBBB677C0000000049454E44AE426082}
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
    Left = 656
    Top = 80
  end
end
