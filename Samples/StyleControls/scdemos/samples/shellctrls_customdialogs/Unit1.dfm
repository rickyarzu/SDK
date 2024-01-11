object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'StyleControls VCL - Shell Controls + Custom Dialogs - Demo'
  ClientHeight = 536
  ClientWidth = 760
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
  object scShellComboBox1: TscShellComboBox
    Left = 8
    Top = 8
    Width = 246
    Height = 22
    StyleKind = scscbDefault
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    DrawSelectionWithStyles = False
    ShowFocusRect = True
    Root = 'rfDesktop'
    ShellTreeView = scShellTreeView1
    UseShellImages = True
    DropDownCount = 20
    TabOrder = 0
  end
  object scShellTreeView1: TscShellTreeView
    AlignWithMargins = True
    Left = 5
    Top = 40
    Width = 246
    Height = 294
    Margins.Left = 5
    Margins.Top = 40
    Margins.Right = 1
    Margins.Bottom = 5
    ButtonCollapseImageIndex = 0
    ButtonExpandImageIndex = 1
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ShowFocusRect = False
    DefaultDraw = True
    ButtonStyle = scebsArrow
    ObjectTypes = [otFolders]
    Root = 'rfDesktop'
    ShellComboBox = scShellComboBox1
    ShellListView = scShellListView1
    UseShellImages = True
    Align = alLeft
    AutoRefresh = False
    DoubleBuffered = True
    HideSelection = False
    Indent = 19
    ParentColor = False
    RightClickSelect = True
    ShowLines = False
    ShowRoot = False
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitHeight = 293
  end
  object scLabel1: TscLabel
    Left = 265
    Top = 13
    Width = 52
    Height = 13
    TabOrder = 2
    DragForm = False
    DragTopForm = True
    GlowEffect.Enabled = False
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    UseFontColorToStyleColor = False
    Caption = 'View style:'
  end
  object scShellListView1: TscShellListView
    AlignWithMargins = True
    Left = 257
    Top = 40
    Width = 498
    Height = 294
    Margins.Left = 5
    Margins.Top = 40
    Margins.Right = 5
    Margins.Bottom = 5
    ThumbnailOptions.Enabled = True
    Mask = '*.*|*.*'
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ShowFocusRect = False
    AlternateRow = False
    GridLines = False
    DefaultDraw = False
    AutoExecute = True
    ObjectTypes = [otFolders, otNonFolders]
    Root = 'rfDesktop'
    ShellTreeView = scShellTreeView1
    Sorted = True
    Align = alClient
    DoubleBuffered = True
    ReadOnly = False
    HideSelection = False
    TabOrder = 3
    ViewStyle = vsList
    ExplicitLeft = 260
    ExplicitWidth = 492
    ExplicitHeight = 293
  end
  object scComboBox10: TscComboBox
    Left = 326
    Top = 8
    Width = 143
    Height = 22
    Style = csDropDownList
    ItemIndex = 2
    Items.Strings = (
      'vsIcon'
      'vsSmallIcon'
      'vsList'
      'vsReport'
      'Thumbnails'
      'Big Thumbnails'
      'Very Big Thumbnails')
    WordBreak = False
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ImageIndex = -1
    ItemHeight = 16
    TabOrder = 4
    Text = 'vsList'
    StyleKind = scscbDefault
    ShowFocusRect = True
    OnChange = scComboBox10Change
  end
  object AutoExecute: TscCheckBox
    Left = 484
    Top = 8
    Width = 99
    Height = 20
    TabOrder = 5
    TabStop = True
    OnClick = AutoExecuteClick
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
    Animation = True
    Caption = 'AutoExecute'
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
  object scPanel1: TscPanel
    Left = 0
    Top = 339
    Width = 760
    Height = 173
    Align = alBottom
    TabOrder = 6
    CustomImages = scImageCollection1
    CustomImageIndex = 1
    DragForm = False
    DragTopForm = True
    StyleKind = scpsFormBackground
    ShowCaption = False
    BorderStyle = scpbsTopShadowLine
    Wallpapers = scImageCollection1
    WallpaperIndex = 0
    LightBorderColor = clBtnHighlight
    ShadowBorderColor = clBtnShadow
    CaptionGlowEffect.Enabled = False
    CaptionGlowEffect.Color = clBtnShadow
    CaptionGlowEffect.AlphaValue = 255
    CaptionGlowEffect.GlowSize = 7
    CaptionGlowEffect.Offset = 0
    CaptionGlowEffect.Intensive = True
    CaptionGlowEffect.StyleColors = True
    Color = clBtnFace
    Caption = 'scPanel1'
    StorePaintBuffer = False
    DesignSize = (
      760
      173)
    object scLabel3: TscLabel
      Left = 11
      Top = 12
      Width = 306
      Height = 13
      TabOrder = 0
      DragForm = False
      DragTopForm = True
      GlowEffect.Enabled = False
      GlowEffect.Color = clBtnShadow
      GlowEffect.AlphaValue = 255
      GlowEffect.GlowSize = 7
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      AutoSize = True
      UseFontColorToStyleColor = False
      Caption = 'Try some dialogs, which based on controls from StyleControls...'
    end
    object scButton1: TscButton
      Left = 8
      Top = 40
      Width = 139
      Height = 31
      TabOrder = 1
      TabStop = True
      OnClick = scButton1Click
      Animation = True
      Caption = 'TscSelectPathDialog'
      CanFocused = True
      CustomDropDown = False
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      ColorOptions.NormalColor = clBtnFace
      ColorOptions.HotColor = clBtnFace
      ColorOptions.PressedColor = clBtnShadow
      ColorOptions.FocusedColor = clBtnFace
      ColorOptions.DisabledColor = clBtnFace
      ColorOptions.FrameNormalColor = clBtnShadow
      ColorOptions.FrameHotColor = clHighlight
      ColorOptions.FramePressedColor = clHighlight
      ColorOptions.FrameFocusedColor = clHighlight
      ColorOptions.FrameDisabledColor = clBtnShadow
      ColorOptions.FrameWidth = 1
      ColorOptions.FontNormalColor = clBtnText
      ColorOptions.FontHotColor = clBtnText
      ColorOptions.FontPressedColor = clBtnText
      ColorOptions.FontFocusedColor = clBtnText
      ColorOptions.FontDisabledColor = clBtnShadow
      ColorOptions.TitleFontNormalColor = clBtnText
      ColorOptions.TitleFontHotColor = clBtnText
      ColorOptions.TitleFontPressedColor = clBtnText
      ColorOptions.TitleFontFocusedColor = clBtnText
      ColorOptions.TitleFontDisabledColor = clBtnShadow
      ColorOptions.StyleColors = True
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      HotImageIndex = -1
      FocusedImageIndex = -1
      PressedImageIndex = -1
      StyleKind = scbsPushButton
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      CustomImageNormalIndex = -1
      CustomImageHotIndex = -1
      CustomImagePressedIndex = -1
      CustomImageDisabledIndex = -1
      CustomImageFocusedIndex = -1
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      UseFontColorToStyleColor = False
      RepeatClick = False
      RepeatClickInterval = 100
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
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      SplitButton = False
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object scButton2: TscButton
      Left = 193
      Top = 40
      Width = 139
      Height = 31
      TabOrder = 2
      TabStop = True
      OnClick = scButton2Click
      Animation = True
      Caption = 'TscOpenDialog'
      CanFocused = True
      CustomDropDown = False
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      ColorOptions.NormalColor = clBtnFace
      ColorOptions.HotColor = clBtnFace
      ColorOptions.PressedColor = clBtnShadow
      ColorOptions.FocusedColor = clBtnFace
      ColorOptions.DisabledColor = clBtnFace
      ColorOptions.FrameNormalColor = clBtnShadow
      ColorOptions.FrameHotColor = clHighlight
      ColorOptions.FramePressedColor = clHighlight
      ColorOptions.FrameFocusedColor = clHighlight
      ColorOptions.FrameDisabledColor = clBtnShadow
      ColorOptions.FrameWidth = 1
      ColorOptions.FontNormalColor = clBtnText
      ColorOptions.FontHotColor = clBtnText
      ColorOptions.FontPressedColor = clBtnText
      ColorOptions.FontFocusedColor = clBtnText
      ColorOptions.FontDisabledColor = clBtnShadow
      ColorOptions.TitleFontNormalColor = clBtnText
      ColorOptions.TitleFontHotColor = clBtnText
      ColorOptions.TitleFontPressedColor = clBtnText
      ColorOptions.TitleFontFocusedColor = clBtnText
      ColorOptions.TitleFontDisabledColor = clBtnShadow
      ColorOptions.StyleColors = True
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      HotImageIndex = -1
      FocusedImageIndex = -1
      PressedImageIndex = -1
      StyleKind = scbsPushButton
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      CustomImageNormalIndex = -1
      CustomImageHotIndex = -1
      CustomImagePressedIndex = -1
      CustomImageDisabledIndex = -1
      CustomImageFocusedIndex = -1
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      UseFontColorToStyleColor = False
      RepeatClick = False
      RepeatClickInterval = 100
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
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      SplitButton = False
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object scButton3: TscButton
      Left = 338
      Top = 40
      Width = 139
      Height = 31
      TabOrder = 3
      TabStop = True
      OnClick = scButton3Click
      Animation = True
      Caption = 'TscSaveDialog'
      CanFocused = True
      CustomDropDown = False
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      ColorOptions.NormalColor = clBtnFace
      ColorOptions.HotColor = clBtnFace
      ColorOptions.PressedColor = clBtnShadow
      ColorOptions.FocusedColor = clBtnFace
      ColorOptions.DisabledColor = clBtnFace
      ColorOptions.FrameNormalColor = clBtnShadow
      ColorOptions.FrameHotColor = clHighlight
      ColorOptions.FramePressedColor = clHighlight
      ColorOptions.FrameFocusedColor = clHighlight
      ColorOptions.FrameDisabledColor = clBtnShadow
      ColorOptions.FrameWidth = 1
      ColorOptions.FontNormalColor = clBtnText
      ColorOptions.FontHotColor = clBtnText
      ColorOptions.FontPressedColor = clBtnText
      ColorOptions.FontFocusedColor = clBtnText
      ColorOptions.FontDisabledColor = clBtnShadow
      ColorOptions.TitleFontNormalColor = clBtnText
      ColorOptions.TitleFontHotColor = clBtnText
      ColorOptions.TitleFontPressedColor = clBtnText
      ColorOptions.TitleFontFocusedColor = clBtnText
      ColorOptions.TitleFontDisabledColor = clBtnShadow
      ColorOptions.StyleColors = True
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      HotImageIndex = -1
      FocusedImageIndex = -1
      PressedImageIndex = -1
      StyleKind = scbsPushButton
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      CustomImageNormalIndex = -1
      CustomImageHotIndex = -1
      CustomImagePressedIndex = -1
      CustomImageDisabledIndex = -1
      CustomImageFocusedIndex = -1
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      UseFontColorToStyleColor = False
      RepeatClick = False
      RepeatClickInterval = 100
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
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      SplitButton = False
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object scButton4: TscButton
      Left = 483
      Top = 40
      Width = 139
      Height = 31
      TabOrder = 4
      TabStop = True
      OnClick = scButton4Click
      Animation = True
      Caption = 'TscOpenPictureDialog'
      CanFocused = True
      CustomDropDown = False
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      ColorOptions.NormalColor = clBtnFace
      ColorOptions.HotColor = clBtnFace
      ColorOptions.PressedColor = clBtnShadow
      ColorOptions.FocusedColor = clBtnFace
      ColorOptions.DisabledColor = clBtnFace
      ColorOptions.FrameNormalColor = clBtnShadow
      ColorOptions.FrameHotColor = clHighlight
      ColorOptions.FramePressedColor = clHighlight
      ColorOptions.FrameFocusedColor = clHighlight
      ColorOptions.FrameDisabledColor = clBtnShadow
      ColorOptions.FrameWidth = 1
      ColorOptions.FontNormalColor = clBtnText
      ColorOptions.FontHotColor = clBtnText
      ColorOptions.FontPressedColor = clBtnText
      ColorOptions.FontFocusedColor = clBtnText
      ColorOptions.FontDisabledColor = clBtnShadow
      ColorOptions.TitleFontNormalColor = clBtnText
      ColorOptions.TitleFontHotColor = clBtnText
      ColorOptions.TitleFontPressedColor = clBtnText
      ColorOptions.TitleFontFocusedColor = clBtnText
      ColorOptions.TitleFontDisabledColor = clBtnShadow
      ColorOptions.StyleColors = True
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      HotImageIndex = -1
      FocusedImageIndex = -1
      PressedImageIndex = -1
      StyleKind = scbsPushButton
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      CustomImageNormalIndex = -1
      CustomImageHotIndex = -1
      CustomImagePressedIndex = -1
      CustomImageDisabledIndex = -1
      CustomImageFocusedIndex = -1
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      UseFontColorToStyleColor = False
      RepeatClick = False
      RepeatClickInterval = 100
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
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      SplitButton = False
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object scCheckBox3: TscCheckBox
      Left = 13
      Top = 84
      Width = 138
      Height = 23
      TabOrder = 5
      TabStop = True
      OnClick = scCheckBox3Click
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
      Animation = True
      Caption = 'Show create button'
      CanFocused = True
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      GlowEffect.Enabled = False
      GlowEffect.Color = clHighlight
      GlowEffect.AlphaValue = 200
      GlowEffect.GlowSize = 5
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      GlowEffect.HotColor = clNone
      GlowEffect.PressedColor = clNone
      GlowEffect.FocusedColor = clNone
      GlowEffect.PressedGlowSize = 7
      GlowEffect.PressedAlphaValue = 255
      GlowEffect.States = [scsHot]
      ImageGlow = True
      Checked = False
      ShowFocusRect = True
    end
    object scCheckBox1: TscCheckBox
      Left = 197
      Top = 84
      Width = 138
      Height = 23
      TabOrder = 6
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
      Animation = True
      Caption = 'AnimationOnControls'
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
    object scCheckBox2: TscCheckBox
      Left = 383
      Top = 84
      Width = 121
      Height = 23
      TabOrder = 7
      TabStop = True
      OnClick = scCheckBox2Click
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
      Animation = True
      Caption = 'ShowThumbnails'
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
    object scButton5: TscButton
      Left = 8
      Top = 130
      Width = 110
      Height = 31
      TabOrder = 8
      TabStop = True
      OnClick = scButton5Click
      Animation = True
      Caption = 'TscColorDialog'
      CanFocused = True
      CustomDropDown = False
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      ColorOptions.NormalColor = clBtnFace
      ColorOptions.HotColor = clBtnFace
      ColorOptions.PressedColor = clBtnShadow
      ColorOptions.FocusedColor = clBtnFace
      ColorOptions.DisabledColor = clBtnFace
      ColorOptions.FrameNormalColor = clBtnShadow
      ColorOptions.FrameHotColor = clHighlight
      ColorOptions.FramePressedColor = clHighlight
      ColorOptions.FrameFocusedColor = clHighlight
      ColorOptions.FrameDisabledColor = clBtnShadow
      ColorOptions.FrameWidth = 1
      ColorOptions.FontNormalColor = clBtnText
      ColorOptions.FontHotColor = clBtnText
      ColorOptions.FontPressedColor = clBtnText
      ColorOptions.FontFocusedColor = clBtnText
      ColorOptions.FontDisabledColor = clBtnShadow
      ColorOptions.TitleFontNormalColor = clBtnText
      ColorOptions.TitleFontHotColor = clBtnText
      ColorOptions.TitleFontPressedColor = clBtnText
      ColorOptions.TitleFontFocusedColor = clBtnText
      ColorOptions.TitleFontDisabledColor = clBtnShadow
      ColorOptions.StyleColors = True
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      HotImageIndex = -1
      FocusedImageIndex = -1
      PressedImageIndex = -1
      StyleKind = scbsPushButton
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      CustomImageNormalIndex = -1
      CustomImageHotIndex = -1
      CustomImagePressedIndex = -1
      CustomImageDisabledIndex = -1
      CustomImageFocusedIndex = -1
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      UseFontColorToStyleColor = False
      RepeatClick = False
      RepeatClickInterval = 100
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
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      SplitButton = False
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object scButton6: TscButton
      Left = 129
      Top = 130
      Width = 110
      Height = 31
      TabOrder = 9
      TabStop = True
      OnClick = scButton6Click
      Animation = True
      Caption = 'TscFontDialog'
      CanFocused = True
      CustomDropDown = False
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      ColorOptions.NormalColor = clBtnFace
      ColorOptions.HotColor = clBtnFace
      ColorOptions.PressedColor = clBtnShadow
      ColorOptions.FocusedColor = clBtnFace
      ColorOptions.DisabledColor = clBtnFace
      ColorOptions.FrameNormalColor = clBtnShadow
      ColorOptions.FrameHotColor = clHighlight
      ColorOptions.FramePressedColor = clHighlight
      ColorOptions.FrameFocusedColor = clHighlight
      ColorOptions.FrameDisabledColor = clBtnShadow
      ColorOptions.FrameWidth = 1
      ColorOptions.FontNormalColor = clBtnText
      ColorOptions.FontHotColor = clBtnText
      ColorOptions.FontPressedColor = clBtnText
      ColorOptions.FontFocusedColor = clBtnText
      ColorOptions.FontDisabledColor = clBtnShadow
      ColorOptions.TitleFontNormalColor = clBtnText
      ColorOptions.TitleFontHotColor = clBtnText
      ColorOptions.TitleFontPressedColor = clBtnText
      ColorOptions.TitleFontFocusedColor = clBtnText
      ColorOptions.TitleFontDisabledColor = clBtnShadow
      ColorOptions.StyleColors = True
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      HotImageIndex = -1
      FocusedImageIndex = -1
      PressedImageIndex = -1
      StyleKind = scbsPushButton
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      CustomImageNormalIndex = -1
      CustomImageHotIndex = -1
      CustomImagePressedIndex = -1
      CustomImageDisabledIndex = -1
      CustomImageFocusedIndex = -1
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      UseFontColorToStyleColor = False
      RepeatClick = False
      RepeatClickInterval = 100
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
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      SplitButton = False
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object scButton7: TscButton
      Left = 251
      Top = 130
      Width = 150
      Height = 31
      TabOrder = 10
      TabStop = True
      OnClick = scButton7Click
      Animation = True
      Caption = 'TscPrintDialog (all in one)'
      CanFocused = True
      CustomDropDown = False
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      ColorOptions.NormalColor = clBtnFace
      ColorOptions.HotColor = clBtnFace
      ColorOptions.PressedColor = clBtnShadow
      ColorOptions.FocusedColor = clBtnFace
      ColorOptions.DisabledColor = clBtnFace
      ColorOptions.FrameNormalColor = clBtnShadow
      ColorOptions.FrameHotColor = clHighlight
      ColorOptions.FramePressedColor = clHighlight
      ColorOptions.FrameFocusedColor = clHighlight
      ColorOptions.FrameDisabledColor = clBtnShadow
      ColorOptions.FrameWidth = 1
      ColorOptions.FontNormalColor = clBtnText
      ColorOptions.FontHotColor = clBtnText
      ColorOptions.FontPressedColor = clBtnText
      ColorOptions.FontFocusedColor = clBtnText
      ColorOptions.FontDisabledColor = clBtnShadow
      ColorOptions.TitleFontNormalColor = clBtnText
      ColorOptions.TitleFontHotColor = clBtnText
      ColorOptions.TitleFontPressedColor = clBtnText
      ColorOptions.TitleFontFocusedColor = clBtnText
      ColorOptions.TitleFontDisabledColor = clBtnShadow
      ColorOptions.StyleColors = True
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      HotImageIndex = -1
      FocusedImageIndex = -1
      PressedImageIndex = -1
      StyleKind = scbsPushButton
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      CustomImageNormalIndex = -1
      CustomImageHotIndex = -1
      CustomImagePressedIndex = -1
      CustomImageDisabledIndex = -1
      CustomImageFocusedIndex = -1
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      UseFontColorToStyleColor = False
      RepeatClick = False
      RepeatClickInterval = 100
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
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      SplitButton = False
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object scPanel2: TscPanel
      Left = 10
      Top = 115
      Width = 741
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 11
      CustomImageIndex = -1
      DragForm = False
      DragTopForm = True
      StyleKind = scpsPanel
      ShowCaption = False
      BorderStyle = scpbsHorzCenterBevel
      WallpaperIndex = -1
      LightBorderColor = clBtnHighlight
      ShadowBorderColor = clBtnShadow
      CaptionGlowEffect.Enabled = False
      CaptionGlowEffect.Color = clBtnShadow
      CaptionGlowEffect.AlphaValue = 255
      CaptionGlowEffect.GlowSize = 7
      CaptionGlowEffect.Offset = 0
      CaptionGlowEffect.Intensive = True
      CaptionGlowEffect.StyleColors = True
      Color = clBtnFace
      Caption = 'scPanel2'
      StorePaintBuffer = False
    end
    object scButton8: TscButton
      Left = 411
      Top = 130
      Width = 99
      Height = 32
      TabOrder = 12
      TabStop = True
      OnClick = scButton8Click
      Animation = True
      Caption = 'scMessageDlg'
      CanFocused = True
      CustomDropDown = False
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      ColorOptions.NormalColor = clBtnFace
      ColorOptions.HotColor = clBtnFace
      ColorOptions.PressedColor = clBtnShadow
      ColorOptions.FocusedColor = clBtnFace
      ColorOptions.DisabledColor = clBtnFace
      ColorOptions.FrameNormalColor = clBtnShadow
      ColorOptions.FrameHotColor = clHighlight
      ColorOptions.FramePressedColor = clHighlight
      ColorOptions.FrameFocusedColor = clHighlight
      ColorOptions.FrameDisabledColor = clBtnShadow
      ColorOptions.FrameWidth = 1
      ColorOptions.FontNormalColor = clBtnText
      ColorOptions.FontHotColor = clBtnText
      ColorOptions.FontPressedColor = clBtnText
      ColorOptions.FontFocusedColor = clBtnText
      ColorOptions.FontDisabledColor = clBtnShadow
      ColorOptions.TitleFontNormalColor = clBtnText
      ColorOptions.TitleFontHotColor = clBtnText
      ColorOptions.TitleFontPressedColor = clBtnText
      ColorOptions.TitleFontFocusedColor = clBtnText
      ColorOptions.TitleFontDisabledColor = clBtnShadow
      ColorOptions.StyleColors = True
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      HotImageIndex = -1
      FocusedImageIndex = -1
      PressedImageIndex = -1
      StyleKind = scbsPushButton
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      CustomImageNormalIndex = -1
      CustomImageHotIndex = -1
      CustomImagePressedIndex = -1
      CustomImageDisabledIndex = -1
      CustomImageFocusedIndex = -1
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      UseFontColorToStyleColor = False
      RepeatClick = False
      RepeatClickInterval = 100
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
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      SplitButton = False
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object scButton9: TscButton
      Left = 517
      Top = 130
      Width = 109
      Height = 32
      TabOrder = 13
      TabStop = True
      OnClick = scButton9Click
      Animation = True
      Caption = 'scMessageDlgEx'
      CanFocused = True
      CustomDropDown = False
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      ColorOptions.NormalColor = clBtnFace
      ColorOptions.HotColor = clBtnFace
      ColorOptions.PressedColor = clBtnShadow
      ColorOptions.FocusedColor = clBtnFace
      ColorOptions.DisabledColor = clBtnFace
      ColorOptions.FrameNormalColor = clBtnShadow
      ColorOptions.FrameHotColor = clHighlight
      ColorOptions.FramePressedColor = clHighlight
      ColorOptions.FrameFocusedColor = clHighlight
      ColorOptions.FrameDisabledColor = clBtnShadow
      ColorOptions.FrameWidth = 1
      ColorOptions.FontNormalColor = clBtnText
      ColorOptions.FontHotColor = clBtnText
      ColorOptions.FontPressedColor = clBtnText
      ColorOptions.FontFocusedColor = clBtnText
      ColorOptions.FontDisabledColor = clBtnShadow
      ColorOptions.TitleFontNormalColor = clBtnText
      ColorOptions.TitleFontHotColor = clBtnText
      ColorOptions.TitleFontPressedColor = clBtnText
      ColorOptions.TitleFontFocusedColor = clBtnText
      ColorOptions.TitleFontDisabledColor = clBtnShadow
      ColorOptions.StyleColors = True
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      HotImageIndex = -1
      FocusedImageIndex = -1
      PressedImageIndex = -1
      StyleKind = scbsPushButton
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      CustomImageNormalIndex = -1
      CustomImageHotIndex = -1
      CustomImagePressedIndex = -1
      CustomImageDisabledIndex = -1
      CustomImageFocusedIndex = -1
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      UseFontColorToStyleColor = False
      RepeatClick = False
      RepeatClickInterval = 100
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
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      SplitButton = False
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object scButton10: TscButton
      Left = 634
      Top = 130
      Width = 112
      Height = 32
      TabOrder = 14
      TabStop = True
      OnClick = scButton10Click
      Animation = True
      Caption = 'scMessageDlgEx #2'
      CanFocused = True
      CustomDropDown = False
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      ColorOptions.NormalColor = clBtnFace
      ColorOptions.HotColor = clBtnFace
      ColorOptions.PressedColor = clBtnShadow
      ColorOptions.FocusedColor = clBtnFace
      ColorOptions.DisabledColor = clBtnFace
      ColorOptions.FrameNormalColor = clBtnShadow
      ColorOptions.FrameHotColor = clHighlight
      ColorOptions.FramePressedColor = clHighlight
      ColorOptions.FrameFocusedColor = clHighlight
      ColorOptions.FrameDisabledColor = clBtnShadow
      ColorOptions.FrameWidth = 1
      ColorOptions.FontNormalColor = clBtnText
      ColorOptions.FontHotColor = clBtnText
      ColorOptions.FontPressedColor = clBtnText
      ColorOptions.FontFocusedColor = clBtnText
      ColorOptions.FontDisabledColor = clBtnShadow
      ColorOptions.TitleFontNormalColor = clBtnText
      ColorOptions.TitleFontHotColor = clBtnText
      ColorOptions.TitleFontPressedColor = clBtnText
      ColorOptions.TitleFontFocusedColor = clBtnText
      ColorOptions.TitleFontDisabledColor = clBtnShadow
      ColorOptions.StyleColors = True
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      HotImageIndex = -1
      FocusedImageIndex = -1
      PressedImageIndex = -1
      StyleKind = scbsPushButton
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      CustomImageNormalIndex = -1
      CustomImageHotIndex = -1
      CustomImagePressedIndex = -1
      CustomImageDisabledIndex = -1
      CustomImageFocusedIndex = -1
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      UseFontColorToStyleColor = False
      RepeatClick = False
      RepeatClickInterval = 100
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
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      SplitButton = False
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
  end
  object scStatusBar1: TscStatusBar
    Left = 0
    Top = 512
    Width = 760
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Panels = <>
    SimplePanel = True
    SimpleText = 'Use system menu to select style'
    UseSystemFont = False
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
    Left = 551
    Top = 80
  end
  object scStyledForm1: TscStyledForm
    DWMClientShadow = False
    DWMClientShadowHitTest = False
    DropDownForm = False
    DropDownAnimation = False
    DropDownBorderColor = clBtnShadow
    StylesMenuSorted = False
    ShowStylesMenu = True
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
    CaptionWallpaperIndex = -1
    CaptionWallpaperInActiveIndex = -1
    CaptionWallpaperLeftMargin = 1
    CaptionWallpaperTopMargin = 1
    CaptionWallpaperRightMargin = 1
    CaptionWallpaperBottomMargin = 1
    Left = 672
    Top = 376
  end
  object scSelectPathDialog1: TscSelectPathDialog
    DialogClientWidth = 0
    DialogClientHeight = 0
    Scaled = True
    AnimationOnControls = True
    ShowCreateButton = False
    Left = 48
    Top = 232
  end
  object scOpenDialog1: TscOpenDialog
    AnimationOnControls = True
    ShowThumbnails = True
    ShowHiddenFiles = False
    OverwritePromt = False
    DialogClientWidth = 0
    DialogClientHeight = 0
    CheckFileExists = True
    MultiSelection = False
    Filter = 'All files|*.*'
    FilterIndex = 1
    Scaled = True
    Left = 144
    Top = 232
  end
  object scSaveDialog1: TscSaveDialog
    AnimationOnControls = True
    ShowThumbnails = True
    ShowHiddenFiles = False
    OverwritePromt = True
    DialogClientWidth = 0
    DialogClientHeight = 0
    CheckFileExists = True
    MultiSelection = False
    Filter = 'All files|*.*'
    FilterIndex = 1
    Scaled = True
    Left = 48
    Top = 271
  end
  object scOpenPictureDialog1: TscOpenPictureDialog
    AnimationOnControls = True
    ShowThumbnails = True
    ShowHiddenFiles = False
    OverwritePromt = False
    DialogClientWidth = 0
    DialogClientHeight = 0
    CheckFileExists = True
    MultiSelection = False
    Filter = 
      'All (*.bmp;*.ico;*.emf;*.wmf;*.png)|*.bmp;*.ico;*.emf;*.wmf;*.pn' +
      'g|Bitmaps (*.bmp)|*.bmp|PNG (*.png)|*.png|Icons (*.ico)|*.ico|En' +
      'hanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf'
    FilterIndex = 1
    Scaled = True
    Left = 144
    Top = 271
  end
  object scImageCollection1: TscImageCollection
    Images = <
      item
        Bitmap.Data = {
          F6120000424DF6120000000000003600000028000000640000000C0000000100
          200000000000C012000000000000000000000000000000000000000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000040000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000007000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          00070000000700000007000000070000000700000007000000070000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000F000000140000
          0014000000140000001400000014000000140000001400000014000000140000
          0014000000140000001400000014000000140000001400000014000000140000
          0014000000140000001400000014000000140000001400000014000000140000
          0014000000140000001400000014000000140000001400000014000000140000
          0014000000140000001400000014000000140000001400000014000000140000
          0014000000140000001400000014000000140000001400000014000000140000
          0014000000140000001400000014000000140000001400000014000000140000
          0014000000140000001400000014000000140000001400000014000000140000
          0014000000140000001400000014000000140000001400000014000000140000
          0014000000140000001400000014000000140000001400000014000000140000
          0014000000140000001400000014000000140000001400000014000000140000
          0014000000140000001400000014000000140000001400000014000000140000
          001400000014000000140000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001A0000001A0000001A0000001A0000001A000000200000
          0020000000200000002000000020000000200000002000000020000000200000
          0020000000200000002000000020000000200000002000000020000000200000
          0020000000200000002000000020000000200000002000000020000000200000
          0020000000200000002000000020000000200000002000000020000000200000
          0020000000200000002000000020000000200000002000000020000000200000
          0020000000200000002000000020000000200000002000000020000000200000
          0020000000200000002000000020000000200000002000000020000000200000
          0020000000200000002000000020000000200000002000000020000000200000
          0020000000200000002000000020000000200000002000000020000000200000
          0020000000200000002000000020000000200000002000000020000000200000
          0020000000200000002000000020000000200000002000000020000000200000
          0020000000200000002000000020000000200000002000000020000000200000
          0020000000200000002000000026000000260000002600000026000000260000
          0026000000260000002600000026000000260000002600000026000000260000
          0026000000260000002600000026000000260000002600000026000000260000
          0026000000260000002600000026000000260000002600000026000000260000
          0026000000260000002600000026000000260000002600000026000000260000
          0026000000260000002600000026000000260000002600000026000000260000
          0026000000260000002600000026000000260000002600000026000000260000
          0026000000260000002600000026000000260000002600000026000000260000
          0026000000260000002600000026000000260000002600000026000000260000
          0026000000260000002600000026000000260000002600000026000000260000
          0026000000260000002600000026000000260000002600000026000000260000
          0026000000260000002600000026000000260000002600000026000000260000
          00260000002600000026000000260000002600000026000000260000002B0000
          002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
          002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
          002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
          002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
          002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
          002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
          002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
          002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
          002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
          002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
          002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
          002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
          002B0000002B0000002B00000036000000360000003600000036000000360000
          0036000000360000003600000036000000360000003600000036000000360000
          0036000000360000003600000036000000360000003600000036000000360000
          0036000000360000003600000036000000360000003600000036000000360000
          0036000000360000003600000036000000360000003600000036000000360000
          0036000000360000003600000036000000360000003600000036000000360000
          0036000000360000003600000036000000360000003600000036000000360000
          0036000000360000003600000036000000360000003600000036000000360000
          0036000000360000003600000036000000360000003600000036000000360000
          0036000000360000003600000036000000360000003600000036000000360000
          0036000000360000003600000036000000360000003600000036000000360000
          0036000000360000003600000036000000360000003600000036000000360000
          0036000000360000003600000036000000360000003600000036}
        BitmapOptions.LeftMargin = 0
        BitmapOptions.TopMargin = 0
        BitmapOptions.RightMargin = 0
        BitmapOptions.BottomMargin = 0
        BitmapOptions.AlphaBlend = True
        BitmapOptions.AlphaBlendBorder = False
        BitmapOptions.AlphaBlendCorners = False
        BitmapOptions.Stretch = True
        BitmapOptions.StretchBorder = False
        BitmapOptions.DrawOnlyBorder = False
        BitmapOptions.DrawInClipRect = False
        BitmapOptions.ContentLeftMargin = 0
        BitmapOptions.ContentRightMargin = 0
        BitmapOptions.ContentTopMargin = 0
        BitmapOptions.ContentBottomMargin = 0
        DrawStyle = idsTopTile
        TileOffsetX = 0
        TileOffsetY = 0
      end
      item
        Bitmap.Data = {
          E6A30100424DE6A301000000000036000000280000009E000000AA0000000100
          200000000000B0A3010000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000010000000100000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000100000003000000050707
          07142222222D1E1E1E2B1C1C1C2A1A1A1A2918181827181818260B0B0B1C0000
          0009000000060000000300000001000000000000000000000000000000000000
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
          0000000000000000000000000001000000010000000200000003000000030000
          0004000000030000000200000001000000010000000000000000000000000000
          000000000000000000010000000200000004000000070D0D0D1D282828332727
          27332727273327272733272727332A2A2A33161616290000000D000000080000
          0004000000010000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000001000000000000
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
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000020000000400000005000000060000000600000007000000070000
          0005000000030000000200000001000000000000000000000000000000000000
          000100000003000000060000000A121212242828283326262633262626332626
          263326262633282828331919192B000000120000000B00000006000000020000
          0001000000000000000000000000000000000000000000000001000000010000
          0002000000030000000300000003000000020000000100000001000000000000
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
          0000000000000000000000000000000000000000000100000003000000040000
          0006000000090404041312121222050505150000000B00000009000000060000
          0004000000020000000100000001000000010000000100000002000000050000
          0009020202122020202F27272733262626332626263326262633262626332727
          273321212130020202180000000D000000080000000400000002000000010000
          0000000000000000000100000001000000020000000300000005000000060000
          0006000000060000000500000003000000020000000100000000000000000000
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
          0000000000000000000100000003000000040000000705050514141414252626
          26322A2A2A3316161628000000110000000D0000000A00000007000000040000
          000300000002000000030000000300000005000000090000000C0D0D0D212828
          2833262626332626263326262633262626332626263326262633282828330B0B
          0B22000000110000000B00000006000000030000000200000001000000010000
          0002000000030000000400000007000000090101010C0101010E0000000A0000
          0009000000070000000400000002000000010000000100000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000030202020D14141424272727322828283327272733272727332828
          28330E0E0E24000000140000000F0000000C0000000800000007000000060000
          000600000007000000090000000C0808081B2525253127272733262626332626
          263326262633262626332626263326262633282828331E1E1E2F010101170000
          000F0000000A0000000600000004000000040000000400000004000000060000
          00090000000B0000000F0F0F0F222020202E0909091D0000000F0000000B0000
          0008000000050000000300000001000000000000000000000000000000000000
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
          00000000000000000000000000000000000000000001000000060D0D0D1B2424
          2430282828332727273326262633262626332626263327272733272727331010
          102601010117000000110000000F0000000C0000000B0000000C0000000C0000
          000F0909091E2525253127272733262626332626263326262633262626332626
          2633262626332626263326262633282828331717172B010101170000000F0000
          000C0000000900000008000000080000000A0000000C0000000E000000120909
          09202727273328282833282828331A1A1A2B050505180000000B000000080000
          0005000000020000000100000000000000000000000000000000000000000000
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
          00000000000000000000000000010303030C2727273127272733262626332626
          26332626263326262633262626332626263327272733282828331C1C1C2E0B0B
          0B23030303190000001500000014020202160909091E1A1A1A2B282828332727
          2733262626332626263326262633262626332626263326262633262626332626
          26332727273327272733282828331818182B0404041A000000120000000F0000
          000E0000000E0000000F00000012010101170E0E0E2525252532272727332626
          26332727273328282833262626320E0E0E210000000C00000006000000030000
          0001000000000000000000000000000000000000000000000000000000000000
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
          0001000000020000000517171725282828332626263326262633262626332626
          2633262626332626263326262633262626332828283328282833242424322020
          20301F1F1F2F2323233226262633262626332424243324242433242424332323
          2333232323332323233323232333232323332424243324242433252525332525
          2533262626332828283325252532131313280707071F0606061C0404041B0606
          061E0D0D0D251C1C1C2D28282833272727332626263326262633262626332626
          263327272733282828331A1A1A290303030E0000000400000002000000000000
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
          0000000000000000000000000000000000000000000000000000000000020000
          0003070707182929293326262633262626332626263326262633262626332626
          2633262626332727273327272733262626332626263325252533242424332424
          2433232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333242424332727273327272733252525322424243127272733292929332828
          2833272727332626263326262633262626332626263326262633262626332727
          27332A2A2A330707071500000003000000020000000100000000000000000000
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
          0000000000000000000000000000000000010000000200000004050505152828
          2833272727332626263326262633262626332626263327272733272727332626
          2633242424332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332424243326262633272727332727273326262633262626332626
          2633262626332626263326262633262626332626263328282833161616260000
          0008000000040000000100000000000000000000000000000000000000000000
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
          0000000000000000000100000002000000040404041326262632272727332626
          2633262626332727273327272733252525332424243323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323243323242433232424332324243323232433232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233325252533262626332727273326262633262626332626
          2633262626332626263327272733272727330505051600000007000000040000
          0001000000000000000000000000000000000000000000000000000000000000
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
          0001000000030000000506060616282828332727273327272733272727332626
          2633242424332323233323232333232323332323233323232333232323332323
          233323232333232324332323233323232333222222332120203320201F331F1F
          1E331F1E1E331F1E1E331F1E1E33201F1E332120203321212133232322332323
          2333232323332323243323232333232323332323233323232333232323332323
          2333232323332323233325252533262626332727273326262633262626332626
          2633272727332222223002020211000000070000000300000001000000000000
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
          0000000000000000000000000000000000000000000000000001000000040000
          0006101010202828283327272733262626332525253323232333232323332323
          2333232323332323233323232333232323332324243323232333212121331F1E
          1E331C1B1A331A19173319171633181715331816143318161433181613331816
          1333181614331816143318171533191715331A1816331C1A19331E1D1C332020
          1F33222222332324243323232333232323332323233323232333232323332323
          2333232323332424243326262633272727332626263326262633272727331C1C
          1C2C0101010E0000000600000003000000010000000000000000000000000000
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
          0000000000000000000000000000000000010000000100000001000000010000
          000100000001000000010000000100000003000000050101010D1F1F1F2D2727
          2733252525332323233323232333232323332323233323232333232323332323
          233323242433222222331F1E1D331A1918331817153317151333171614331816
          1433181614331817143318171533181715331917153319171533191715331817
          15331817153318171533181614331816143318161433181614331A1817331C1B
          1A3320201F332323233323232433232323332323233323232333232323332323
          233323232333252525332626263327272733272727331B1B1B2B0101010F0000
          0007000000030000000100000000000000000000000000000000000000000000
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
          0001000000010000000200000003000000030000000300000003000000030000
          0003000000040000000500000008121212232828283325252533232323332323
          23332323233323232333232323332323233323232333222222331E1D1C331918
          1633171614331716143318161433181715331917153319171533191715331917
          1533191816331918163319181633191816331918163319181633191816331918
          1633191816331918153319171533191715331817143318161433181715331B1A
          18331F1E1E332323223323232333232323332323233323232333232323332323
          2333242424332626263327272733242424310202021300000008000000040000
          0002000000010000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000100000002000000020000
          0003000000060000000700000007000000060000000600000007000000070000
          00090A0A0A1C2727273324242433232323332323233323232333232323332323
          233323242433222221331D1C1B33191715331716133318161433181715331917
          1533191715331918163319181633191816331A1816331A1816331A1816331A19
          17331A1917331A1917331A1917331A1917331A1917331A1917331A1916331A18
          16331A1816331918163319181633191816331917153318171433181614331B19
          1833201F1F332323233323232333232323332323233323232333232323332323
          233326262633282828330707071A0000000A0000000600000003000000020000
          0001000000010000000100000001000000010000000100000001000000000000
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
          0000000000000000000100000002000000030C0C0C18080808170000000B0000
          000B0000000C0000000B0000000B0000000C0202021110101022272727332424
          24332323233323232333232323332323233323232333232423331F1F1E331917
          1633171513331816143318171533191715331917153319181633191816331A18
          16331A1817331A1917331A1917331A1917331A1917331A1917331B1917331B19
          17331B1917331B1917331B1917331B1917331A1917331A1917331A1917331A19
          17331A1817331A18163319181633191816331917163318171533181715331C1B
          1933212121332324243323232333232323332323233323232333232323332727
          27331919192A0000000F00000009000000060000000400000003000000030000
          0003000000020000000300000003000000020000000100000001000000000000
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
          0001000000020606061228282832282828331A1A1A2A0E0E0E220909091D0707
          071C0B0B0B1F121212262222222F282828332424243323232333232323332323
          23332323233323232333222222331D1C1B331716143318161433181715331917
          15331918163319181633191816331A1917331A1917331A1917331B1917331B1A
          18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A
          18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331B1917331A19
          17331A1917331A1917331A181633191816331918153318161433191816331F1F
          1E33232323332323233323232333232323332323233323232333282828330C0C
          0C200000000D0000000A00000008000000070000000600000006000000070000
          0006000000060000000400000003000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002010101081F1F
          1F2B272727332626263328282833282828332828283327272733282828332828
          2833272727332424243322222233232323332323233323232333232323332020
          20331A19173317151333181614331917153319171533191816331A1816331A19
          17331A1917331B1917331B1918331B1A18331B1A18331B1A18331C1A19331C1B
          19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B
          19331C1B19331C1B19331C1B19331B1A18331B1A18331B1A18331B1A18331B19
          17331A1917331A1917331A1816331918163319171533181715331D1C1B332323
          23332323233323232333232323332323233324242433242424320909091E0000
          00100000000D0000000D0000000C0000000C0000000C0000000C0000000A0000
          0008000000050000000300000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000002000000021111111F28282833262626332626
          2633262626332626263326262633262626332626263327272733242424332323
          2333232323332323233323232333232424331F1F1E3318161533171614331817
          15331917153319181633191816331A1817331A1917331B1917331B1A18331B1A
          18331B1A18331C1B19331C1B19331C1B19331C1B19331C1B19331C1C1A331C1C
          1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C1A331C1C1A331C1B
          19331C1B19331C1B19331C1B19331C1B19331B1A18331B1A18331B1A18331B19
          17331A1917331A1917331A18163319181533181715331C1B1A33232222332323
          23332323233323232333232323332424243326262632111111260404041A0000
          00130000001300000013000000140000001306060619151515240202020E0000
          0005000000030000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000000303030D26262631272727332626263326262633262626332626
          2633262626332626263327272733252525332323233323232333232323332323
          2333232324331F1E1E3318161433181614331817153319171533191816331A18
          16331A1917331A1917331B1A18331B1A18331B1A18331C1B19331C1B19331C1B
          19331C1C1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C1B331D1C
          1B331D1C1B331D1C1B331D1C1B331D1C1A331D1C1A331D1C1A331D1C1A331D1C
          1A331C1C1A331C1B19331C1B19331C1B19331B1A18331B1A18331B1A18331B19
          17331A1917331A18163319181633181715331B1A193323222233232323332323
          233323232333232323332424243328282833252525321919192C131313281111
          1127141414291D1D1D2E262626322A2A2A331111112100000006000000040000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000031919
          1925282828332626263326262633262626332626263326262633262626332727
          27332626263323232333232323332323233323232333232324331F1F1E331816
          1433181614331817153319171533191816331A1816331A1917331B1917331B1A
          18331B1A18331C1B19331C1B19331C1B19331D1C1A331D1C1A331D1C1A331D1C
          1B331D1D1B331E1D1B331E1D1B331E1D1B331E1D1B331E1D1B331E1D1B331E1D
          1B331E1D1B331E1D1B331E1D1B331E1D1B331D1D1B331D1D1B331D1C1A331D1C
          1A331D1C1A331C1C1A331C1B19331C1B19331B1A18331B1A18331B1917331A19
          17331A19173319181633181715331C1B19332322233323232333232323332323
          2333232323332424243327272733282828332828283328282833282828332828
          2833272727332727273326262631040404120000000500000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000010101051B1B1B27282828332626
          2633262626332626263326262633262626332626263326262633232323332323
          233323232333232323332323243320201F331816153318161433191715331917
          1533191816331A1816331A1917331B1918331B1A18331B1A18331C1B19331C1B
          19331C1C1A331D1C1A331D1C1A331D1D1B331D1D1B331E1D1B331E1D1C331E1D
          1B331E1D1C331E1D1B331E1D1B331E1D1B331E1E1C331E1E1C331E1E1C331E1E
          1C331E1E1C331E1E1C331E1D1C331E1D1B331E1D1B331D1D1B331D1C1A331D1C
          1A331D1C1A331C1B19331C1B19331C1B19331B1A18331B1A18331A1917331A19
          173319181633181715331D1C1B33232323332323233323232333232323332323
          2333252525332727273326262633262626332626263326262633262626332626
          2633282828331616162600000007000000040000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001010101081515152328282833262626332626
          2633262626332626263327272733242424332323233323232333232323332323
          23332221213319171633171614331817153319171533191816331A1817331A19
          17331B1917331B1A18331B1B18331C1B19331C1B1A331D1C1A331D1C1A331D1D
          1B331E1D1B331E1D1B331E1D1B331D1D1B331D1C1B331C1C1B331D1C1B331D1C
          1B331D1D1B331E1D1C331E1D1C331D1C1B331D1C1B331D1D1B331E1D1B331E1E
          1C331E1E1C331E1E1C331E1E1C331E1D1C331E1D1B331D1D1B331D1C1A331D1C
          1A331C1C1A331C1B19331C1B19331B1A18331B1A18331B1917331A1917331918
          1633191715331F1F1E3323232433232323332323233323232333232323332626
          2633272727332626263326262633262626332626263326262633272727332727
          2732040404110000000300000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000000200000003010101091B1B1B2A2828283326262633262626332727
          27332626263323232333232323332323233323232333232323331B1A19331715
          13331817153319171533191816331A1816331A1917331B1A17331B1A18331C1B
          19331C1B19331C1C1A331D1C1A331D1D1B331D1D1B331E1D1B331E1D1B331D1C
          1B331C1C1A331E1E1C331F1F1F33222221332424243325252533252525332525
          2533252525332424243323232333212121331F1F1E331D1D1C331D1D1B331E1E
          1C331E1E1C331F1E1C331E1E1C331E1D1C331E1D1B331D1D1B331D1C1A331D1C
          1A331C1B19331C1B19331B1A18331B1A18331B1917331A191733191816331A18
          1633212121332323233323232333232323332323233324242433272727332626
          2633262626332626263326262633262626332626263328282833131313220000
          0004000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0003000000050505051326262632272727332626263326262633242424332323
          23332323233323232333232324331E1D1C331715133318161433191715331918
          16331A1816331A1917331B1917331B1A18331C1B19331C1B19331D1C1A331D1C
          1A331D1D1B331D1D1B331D1D1B331D1C1B331C1C1B331F1E1E33232323332626
          2633272727332727273327272733272727332727273327272733272727332727
          273327272733272727332727273324242433212121331E1E1D331D1D1B331E1E
          1C331F1E1C331E1E1C331E1E1C331E1D1B331D1D1B331D1D1A331D1C1A331C1B
          19331C1B19331B1A18331B1A18331A1917331A181733191715331B1A19332323
          2333232323332323233323232333232323332626263327272733262626332626
          263326262633262626332626263327272733272727310303030B000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000040000
          0008181818272727273327272733252525332323233323232333232323332323
          23332221213319171533181614331917153319171533191816331A1917331B19
          17331B1A18331B1B19331C1B19331D1C1A331D1C1A331D1D1B331E1D1B331D1D
          1B331C1B1A331E1E1D3324242433272727332727273327272733262626332626
          2633262626332626263326262633272727332727273326262633262626332626
          263326262633272727332727273326262633212120331D1D1C331E1D1C331F1E
          1D331F1E1C331E1E1C331E1D1B331D1D1B331D1D1A331D1C1A331C1B19331C1B
          19331B1A18331B1A18331A1917331A181633191715331E1D1C33232323332323
          2333232323332323233324242433262626332626263326262633262626332626
          263327272733272727321010101F010101060000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000003000000050C0C0C1D2828
          28332626263324242433232323332323233323232333232323331C1B1A331715
          13331817143319171533191816331A1817331A1917331B1A18331B1A18331C1B
          19331C1C1A331D1C1A331D1D1B331E1D1B331D1C1B331C1C1A33212120332626
          2633272727332626263326262633262626332727273328282833282828332828
          2833272727332727273327272733282828332828283328282833272727332626
          2633262626332727273327272733242424331F1F1E331D1D1B331F1F1D331F1E
          1C331E1E1C331E1D1C331E1D1B331D1C1A331D1C1A331C1B19331C1B19331B1A
          18331B1A18331A191733191816331A1817332121213323232333232323332323
          2333232323332525253327272733262626332626263327272733252525310808
          0817000000050000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000010000
          0001000000010000000100000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000040606061729292933262626332323
          2333232323332323233323232333212020331816153318161433191715331918
          16331A1816331A1917331B1A18331B1A18331C1B19331C1B19331D1C1A331D1D
          1B331E1D1B331D1C1B331C1C1B33232323332727273327272733262626332727
          273327272733282828332121212F171717280D0D0D1E06060617050505150505
          0514060606150B0B0B1B121212221B1B1B2B2727273228282833272727332626
          26332626263327272733262626331F1F1F331D1D1B331F1E1D331F1E1C331E1E
          1C331E1D1C331E1D1B331D1C1A331D1C1A331C1B19331C1B19331B1A18331B19
          17331A191733191715331E1D1C33232323332323233323232333232323332424
          2433262626332626263326262633282828330D0D0D1E00000007000000050000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000001000000010000000200000002000000020000
          0002000000020000000100000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020000000307070719292929332424243323232333232323332323
          2333232323331C1B1A33171513331817143319171533191816331A1917331A19
          17331B1A18331C1B19331C1B19331D1C1A331D1C1A331D1D1B331D1C1B331C1C
          1B332323233327272733262626332626263327272733282828331D1D1D2C0C0C
          0C1D030303110000000900000006000000050000000500000005000000050000
          0006000000070101010A06060615131313242626263228282833262626332626
          2633272727332626263320201F331D1D1B331F1F1D331F1E1C331E1E1C331E1D
          1B331D1D1B331D1C1A331C1C1A331C1B19331C1A18331B1A18331A1917331A18
          16331A1917332222223323232333232323332323233323232333262626332727
          2733282828331919192A0000000D000000080000000500000003000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0002000000020000000300000003000000030000000300000003000000030000
          0003000000020000000200000001000000010000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          00040B0B0B1C2828283323232333232323332323233323232333212121331817
          15331816143319171533191816331A1816331A1917331B1A18331B1A18331C1B
          19331C1C1A331D1C1A331D1D1B331D1D1B331C1C1A3323232233272727332626
          26332626263327272733262626320F0F0F210101010E00000008000000050000
          0004000000030000000300000002000000020000000200000003000000030000
          00040000000500000008060606161C1C1C2B2828283327272733262626332727
          2733262626331F1F1E331E1D1C331F1F1D331F1E1C331E1E1C331E1D1B331D1D
          1B331D1C1A331C1B19331C1B19331B1A18331B1A18331A191733191816331E1E
          1D33232324332323233323232333232323332525253327272733282828330C0C
          0C1F0000000C0000000900000006000000040000000200000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000200000003000000040000
          0005000000050000000600000006000000060000000500000005000000040000
          0003000000030000000200000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000200000003000000071A1A1A282626
          2633232323332323233323232333232424331E1D1C3317151333181614331917
          1533191816331A1817331B1917331B1A18331C1B19331C1B19331D1C1A331D1C
          1B331D1D1B331C1B1A3321212033272727332626263326262633282828332121
          212F070707190000000A00000006000000040000000300000002000000010000
          0001000000010000000100000001000000010000000100000002000000030000
          0004000000060101010D14141425282828332727273326262633272727332525
          25331E1E1C331E1E1C331F1F1D331E1E1C331E1E1C331E1D1B331D1C1B331D1C
          1A331C1B19331B1A18331B1A18331A191733191816331B1A1833222222332323
          23332323233323232333242424332727273325252532040404180000000E0000
          000B000000070000000500000003000000020000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000003000000040000000600000007000000080000
          0009000000090000000900000008000000070000000600000006000000040000
          0003000000030000000200000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000300000003060606142828283324242433232323332323
          233323232333232323331A191833171513331817153319171533191816331A19
          17331B1A18331B1A18331C1B19331C1C1A331D1C1A331D1D1B331D1C1A331E1D
          1C33262626332727273326262633272727332323233005050517000000090000
          0005000000030000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000002000000030000
          00050101010B1313132428282833262626332626263327272733232322331D1D
          1C331F1E1D331F1F1D331E1E1C331E1D1C331D1D1B331D1C1A331C1C19331C1B
          19331B1A18331B1A17331A19173319181633201F1F3323232333232323332323
          23332323233326262633232323310F0F0F260808081C0000000C0000000A0000
          0007000000050000000300000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000020000
          00030000000400000006000000080000000A0000000A0000000B0000000C0000
          000C0000000C0000000B0000000A000000080000000700000005000000040000
          0003000000020000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000002000000040000
          00040101010B1B1B1B2A28282833232323332323233323232333232323332120
          2033181615331816143319171533191816331A1816331A1917331B1A18331C1A
          18331C1B19331D1C1A331D1C1B331D1D1B331C1C1B3324232333272727332626
          263327272733252525320707071A000000090000000500000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000003000000050101
          010C18181828282828332626263327272733272727331F1F1F331E1E1C331F1F
          1D331F1E1C331E1E1C331E1D1B331D1C1A331D1C1A331C1B19331C1A18331B1A
          18331A191733191816331D1C1B33232324332323233323232333232323332525
          253326262633222222331616162B000000100000000D0000000A000000070000
          0004000000030000000200000001000000000000000000000000000000000000
          0000000000000000000100000001000000020000000300000004000000060000
          00090000000B0000000D0E0E0E210F0F0F210505051801010113000000100000
          000E0000000D0000000C0000000A000000080000000600000004000000030000
          0002000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000020000000400000005000000050101010D191919282828
          283326262633232323332323233323232333232323331E1E1D33171513331816
          143319171533191816331A1917331B1917331B1A18331C1B19331C1B1A331D1C
          1A331D1D1B331C1C1A331F1F1E33272727332626263326262633282828330F0F
          0F220000000B0000000500000003000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000300000006030303122121
          212F272727332626263327272733232323331D1D1C331F1F1D331F1F1D331E1E
          1C331E1D1C331D1D1B331D1C1A331C1B19331C1B19331B1A18331B1917331918
          16331B1A18332222223323232333232323332323233324242433262626331F1F
          1F331D1D1D3003030318000000100000000D0000000900000006000000040000
          0002000000020000000100000001000000000000000000000000000000010000
          000100000002000000030000000400000006000000090000000C0000000E0303
          03152424243029292933272727332020202E141414270B0B0B20040404170000
          00100000000C0000000A00000008000000060000000400000003000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000050101010C080808191E1E1E2C2828283327272733252525332323
          23332323233323232333232323331C1B1A331715133318161433191715331918
          16331A1917331B1917331B1A18331C1B19331C1C1A331D1C1A331D1D1B331B1B
          1A33222222332727273326262633282828331D1D1D2D01010110000000070000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000010000000200000004000000080B0B0B1D282828332727
          273326262633262626331F1F1E331E1E1C331F1F1D331F1E1C331E1E1C331D1D
          1B331D1C1A331C1B1A331C1B19331B1A18331B1917331A191633191816332121
          2033232323332323233323232333242424332727273320202033202020330A0A
          0A2200000013000000100000000C000000080000000600000004000000030000
          0002000000010000000100000001000000010000000200000002000000030000
          000400000006000000090000000C0000000F000000110B0B0B21282828332626
          263327272733272727332828283328282833252525321919192A0A0A0A1D0202
          0211000000090000000600000005000000030000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A0A0A1313131321151515251E1E
          1E2D292929332727273326262633272727332525253323232333232323332323
          2333232323331A181733171614331817153319171533191816331A1917331B1A
          18331B1A18331C1B19331D1C1A331D1C1A331D1C1A331D1D1B33262625332727
          273326262633282828330B0B0B1E0000000A0000000500000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000003000000060101010F1F1F1F2E27272733262626332727
          2733222222331D1D1B331F1F1D331F1E1C331E1E1C331E1D1B331D1D1A331D1C
          1A331C1B19331B1A18331B1A18331A19173319171533201F1E33232323332323
          2333232323332323233326262633242424331E1E1E331818182E0101011A0000
          0014000000100000000C00000008000000060000000400000003000000020000
          0002000000020000000200000003000000030000000500000006000000090000
          000B0000000F00000012020202181F1F1F2E2727273326262633262626332626
          2633262626332727273327272733282828332929293323232330151515250707
          0715000000070000000400000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001A1A1A23282828332828283327272733262626332626
          2633262626332626263324242433232323332323233323232333222121331917
          1533181614331817153319181533191816331A1917331B1A18331C1B19331C1B
          19331D1C1A331D1C1A331C1B1A331F1F1F332727273326262633272727332222
          2230020202130000000700000003000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000200000004000000090C0C0C1F282828332626263327272733242424331D1D
          1C331F1F1D331F1F1D331F1E1C331E1D1B331D1D1B331D1C1A331C1B19331C1A
          18331B1A18331A191733191816331E1D1C332323233323232333232323332323
          23332626263327272733212121331D1D1D330C0C0C2700000019000000140000
          00100000000C0000000900000007000000050000000400000004000000040000
          0004000000050000000500000007000000090000000C0000000F000000120000
          0015111111262828283326262633262626332626263326262633262626332626
          263326262633262626332626263327272733292929332020202B0101010A0000
          0004000000030000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001B1B1B262727273326262633262626332626263326262633262626332626
          2633242424332323233323232333232323332120203318161533181614331817
          1533191815331A1816331A1917331B1A18331C1B19331C1B19331D1C1A331D1C
          1A331C1B1A3322212133272727332626263328282833161616280000000C0000
          0006000000030000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          000606060617262626322727273327272733262626331E1E1D331F1E1C331F1F
          1D331E1E1C331E1D1B331D1D1B331D1C1A331C1B19331C1A19331B1A18331A19
          1733191816331C1B1A3323232333232323332323233323232333252525332727
          273326262633202020331A1A1A32060606240000001900000015000000100000
          000D0000000A0000000800000007000000060000000600000007000000070000
          00080000000A0000000C0000000F000000120000001509090921272727332727
          2733262626332626263326262633262626332626263326262633262626332626
          26332626263326262633282828330F0F0F200000000600000005000000030000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001D1D1D292727
          2733262626332626263326262633262626332626263326262633232323332323
          23332323233323232333201F1F33181614331816143318171533191816331A18
          16331A1917331B1A18331C1B19331C1B19331D1C1A331D1C1B331B1B19332323
          23332727273326262633282828330E0E0E210000000900000005000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000003000000060202020F1F1F
          1F2E27272733262626332727273320201F331E1E1C331F1F1D331F1E1C331E1D
          1C331D1D1B331D1C1A331C1B19331C1B19331B1A18331B191733191816331C1A
          1933232323332323233323232333232323332525253327272733272727332727
          2733222222331B1B1B32050505240000001900000015000000110000000E0000
          000C0000000B0000000A0000000A0000000A0000000B0000000C0000000E0000
          0010000000130000001508080820252525322727273326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332727
          2733272727330707071600000008000000060000000300000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002020202C27272733262626332626
          2633262626332626263326262633262626332323233323232333232323332324
          24331F1E1E33171513331816143318171533191816331A1816331A1917331B1A
          18331C1B19331C1B19331D1C1A331D1C1A331C1C1A3325252533272727332626
          2633282828330808081A00000008000000040000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000100000002000000050000000C1818182A282828332626
          263327272733212120331E1E1C331F1F1D331F1E1C331E1D1C331D1D1B331D1C
          1A331C1B1A331C1B19331B1A18331B191733191816331B1A1833232323332323
          2333232323332323233325252533272727332626263326262633272727332727
          2733232323321A1A1A2D070707200000001400000012000000100000000F0000
          000E0000000E0000000E0000000F000000110000001200000014010101170D0D
          0D24252525322727273326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263327272733252525320202
          0212000000090000000600000004000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002222222E262626332626263326262633262626332626
          26332626263326262633232323332323233323232333232424331F1E1D331715
          13331816143318171533191816331A1816331A1917331B1A18331C1B19331C1B
          19331D1C1A331D1C1A331D1C1B33252525332727273327272733272727330505
          0517000000070000000400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000010000000100000002000000020000000200000002000000020000
          000200000003000000060000000B161616282828283326262633272727332121
          20331E1E1C331F1F1D331F1E1C331E1D1C331D1D1B331D1C1A331C1C1A331C1B
          19331B1A18331B191733191816331B1918332323233323232333232323332323
          2333252525332727273326262633262626332626263327272733272727332929
          29331D1D1D2F0707072001010118000000140000001300000012000000120000
          0013000000130000001501010118080808201A1A1A2C28282833272727332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633272727332121212F010101110000000A0000
          0006000000040000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002323232F2626263326262633262626332626263326262633262626332626
          2633232323332323233323232333232424331F1E1D3317151333181614331817
          1533191815331A1816331A1917331B1A18331C1B19331C1B19331D1C1A331D1C
          1A331C1C1B332525253327272733272727332727273305050518000000080000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000002000000020000
          0003000000030000000300000003000000030000000300000003000000040000
          00060000000C15151527282828332626263327272733212120331D1D1C331F1F
          1D331F1E1C331E1D1C331D1D1B331D1C1A331C1B1A331C1B19331B1A18331B19
          1733191816331B19183323232333232323332323233323232333252525332727
          2733262626332626263326262633262626332626263327272733262626332525
          25331D1D1D2E101010270A0A0A210808081F0606061D0808081F0A0A0A221111
          11271D1D1D2E2727273328282833262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          263326262633272727332121212F010101120000000A00000007000000040000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002121212D2626
          2633262626332626263326262633262626332626263326262633232323332323
          233323232333232424331F1E1D33171513331816143318171533191815331918
          16331A1917331B1A18331C1B19331C1B19331D1C1A331D1C1A331C1C1A332525
          2533272727332626263328282833060606190000000700000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000002000000030000000400000004000000050000
          00060000000600000005000000050000000400000005000000080000000D1717
          1729282828332626263327272733212120331E1D1C331F1F1D331F1E1C331E1D
          1C331D1D1B331D1C1A331C1B19331C1B19331B1A18331B191733191816331A19
          1833232323332323233323232333232323332525253327272733262626332626
          2633272727332727273327272733272727332525253325252533272727332929
          2933282828332727273325252532272727332828283329292933282828332727
          2733262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332727
          273323232331010101130000000B000000070000000400000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001E1E1E2A27272733262626332626
          2633262626332626263326262633262626332323233323232333232323332323
          24331F1F1E3318161433181614331817153319171533191816331A1917331B1A
          18331B1A18331C1B19331D1C1A331D1C1A331C1B1A3324242433272727332626
          2633282828330A0A0A1C00000008000000040000000100000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0002000000030000000500000006000000070000000700000009000000090000
          00080000000700000007000000080000000A010101111D1D1D2E282828332626
          263327272733201F1F331E1E1C331F1F1D331E1E1C331E1D1B331D1D1B331D1C
          1A331C1B19331C1A19331B1A18331A191733191816331B1A1833232323332323
          2333232323332323233325252533272727332727273327272733252525332121
          2133212121332222223323232333242424332424243325252533252525332525
          2533252525332626263325252533252525332626263326262633262626332727
          2733272727332727273326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263327272733272727330505
          05180000000C0000000800000005000000030000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001C1C1C28272727332626263326262633262626332626
          263326262633262626332424243323232333232323332323233320201F331816
          1433181614331816143319171533191816331A1917331B1917331B1A18331C1B
          19331D1C1A331D1C1A331B1B1933232322332727273326262633282828331414
          14260000000A0000000500000002000000000000000000000000000000000000
          0000000000000000000000000001000000020000000300000004000000050000
          0007000000080101010B040404120000000B0000000C0000000C0000000B0000
          000A0000000B0000000D03030318232323312727273326262633262626331F1F
          1E331E1E1C331F1F1D331E1E1C331E1D1B331D1D1B331D1C1A331C1B19331B1A
          18331B1A18331A191733191816331C1B19332323233323232333232323332323
          2333252525332727273327272733202020331C1C1C331D1D1D331F1F1F332020
          2033222222332222223323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332424243324242433252525332525
          2533262626332626263327272733272727332626263326262633262626332626
          263326262633262626332626263326262633282828330D0D0D200000000C0000
          000A000000070000000400000002000000010000000100000001000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001A1A1A252727273327272733272727332626263326262633262626332626
          2633242424332323233323232333232323332121213319171533181614331816
          143319171533191816331A1917331B1917331B1A18331C1B19331C1B19331D1C
          1A331C1B193320201F332727273326262633282828331D1D1D2D0101010E0000
          0006000000020000000100000000000000000000000000000000000000000000
          00010000000100000003000000040000000600000008000000090101010E1515
          152526262631070707190000000F000000100000000F0000000E0000000F0000
          001109090920282828332727273327272733252525331E1E1D331E1E1C331F1E
          1C331E1E1C331E1D1B331D1C1A331D1C1A331C1B19331B1A18331B1A18331A19
          1733191816331D1C1B3323232333232323332323233323232333252525332727
          2733202020331B1B1B331E1E1E33202020332121213322222233232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332424
          2433242424332525253326262633262626332727273326262633262626332626
          26332626263326262633282828331919192A000000100000000B000000080000
          0005000000040000000200000001000000010000000100000001000000010000
          0001000000010000000100000002000000020000000300000003000000030000
          0003000000020000000200000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001414141E2424
          24302222222F2626263228282833282828332626263326262633242424332323
          2333232323332323233323232333191816331716143318161433191715331918
          16331A1816331A1917331B1A18331C1A18331C1B19331D1C1A331C1B19331E1D
          1C33272727332626263327272733272727330707071900000007000000040000
          0001000000000000000000000000000000000000000100000001000000020000
          0004000000060000000800000009030303111B1B1B2A28282833282828332323
          23300606061C00000014000000140000001400000014000000171717172B2828
          28332626263327272733232323331D1D1B331F1E1C331F1E1C331E1E1C331D1D
          1B331D1C1A331C1C1A331C1B19331B1A18331B1917331A191733191715331E1E
          1D332323233323232333232323332323233326262633222222331C1C1C331F1F
          1F33212121332222223322222233222222332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332424243325252533262626332727273327272733262626332626
          26332727273327272733050505190000000D0000000A00000007000000050000
          0004000000030000000200000002000000010000000200000002000000020000
          0003000000030000000400000004000000050000000500000004000000040000
          0003000000020000000200000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000010101080202020E020202110303
          03170E0E0E221F1F1F2F28282833272727332525253323232333232323332323
          2333232323331B1A193317151433181614331817153319171533191816331A19
          17331B1A18331B1A18331C1B19331C1C1A331C1C1A331C1B1A33242424332727
          27332626263328282833171717280000000B0000000500000002000000010000
          0000000000000000000100000001000000020000000400000006000000080000
          0009050505152121212E28282833262626332626263327272733242424310E0E
          0E250101011A0000001800000019050505212424243227272733262626332727
          273320201F331D1D1B331F1E1C331E1E1C331E1D1B331D1D1B331D1C1A331C1B
          19331C1B19331B1A18331B1917331A1817331917153320201F33232323332323
          23332323233323232333262626331E1E1E331F1F1F3321212133222222332222
          2233232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233324242433262626332626263327272733262626332828
          283318181829000000100000000D0000000A0000000700000006000000040000
          0003000000030000000300000003000000030000000400000005000000060000
          0006000000070000000800000008000000070000000600000005000000040000
          0003000000020000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000300000005000000080000000B0000000D0101
          0112131313262929293326262633232323332323233323232333232323331E1D
          1C3317151333181614331816143319171533191816331A1817331B1917331B1A
          18331C1B19331C1B19331D1C1A331B1B1933201F1F3327272733262626332727
          2733262626320808081900000008000000040000000200000001000000010000
          000100000002000000030000000500000007000000090909091A252525312828
          28332626263326262633262626332626263327272733272727331A1A1A2E0808
          0825020202221717172D282828332626263327272733252525331D1D1C331E1E
          1C331F1E1C331E1E1C331E1D1B331D1C1A331D1C1A331C1B19331B1A18331B1A
          18331A191733191816331A191733222121332323233323232333232323332424
          2433222222331D1D1D3320202033222222332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233324242433262626332626263327272733282828330D0D
          0D210000000F0000000D0000000A000000080000000700000006000000050000
          000500000005000000060000000700000007000000090000000A0000000B0000
          000B0000000B0000000A0101010A000000070000000600000004000000030000
          0002000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000002000000030000000500000007000000080000000A0000000F1111
          1123272727332323233323232333232323332323233320202033181614331816
          14331816143319171533191816331A1816331A1917331B1A18331B1A18331C1B
          19331D1C1A331C1C1A331C1C1A33252525332727273326262633272727331F1F
          1F2D020202100000000600000004000000020000000100000002000000020000
          000400000006000000070A0A0A1B272727322727273326262633262626332626
          263326262633262626332525253324242433232323331E1E1E331C1C1C322626
          2633272727332626263327272733212121331D1D1B331F1E1C331E1E1C331E1D
          1B331D1D1B331D1C1A331C1C19331C1B19331B1A18331B1917331A1917331917
          15331B1A19332323233323232333232323332323233325252533212121331E1E
          1E33212121332222223323232333232323332323233323232333232323332323
          2333232323332323243323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          23332323233323232333242424332525253327272733262626320909091E0000
          000F0000000E0000000C0000000A000000090000000800000008000000080000
          00090000000A0000000B0000000C0000000E0000000F0000000F0000000D0909
          091B1D1D1D2A0303031000000007000000070000000500000003000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000100000002000000030000000400000006000000090101010F1C1C1C2B2525
          2533232323332323233323232333222222331918163317161433181614331816
          143319171533191816331A1917331A1917331B1A18331C1B19331C1B19331C1C
          1A331B1B193320201F3327272733262626332626263328282833161616270101
          010C000000060000000400000003000000020000000300000005000000060909
          0919272727322727273326262633262626332626263326262633262626332525
          253324242433222222331E1E1E331D1D1D332525253327272733262626332727
          2733252525331D1D1C331E1E1C331E1E1C331E1D1C331E1D1B331D1C1A331C1C
          1A331C1B19331B1A18331B1A18331A1917331A181633191715331E1D1C332323
          243323232333232323332323233326262633202020331F1F1F33222222332323
          233323232433232323332222223321212133212120332120203320202033201F
          1F3320201F332020203321202033212121332221213322222233232324332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          233323232333232323332424243326262633252525310B0B0B20000000120000
          000F0000000E0000000D0000000C0000000C0000000C0000000D0000000E0000
          000F000000110000001200000013000000130B0B0B1F26262632292929331E1E
          1E2C020202100000000700000007000000040000000300000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000020000000300000006000000080909091B27272733232323332323
          233323232333232424331D1C1B33171513331816143318161433191715331918
          16331A1816331A1917331B1A18331B1A18331C1B19331C1B19331C1C1A331B1B
          19332323233327272733262626332626263328282833161616270101010D0000
          0006000000050000000400000005000000050909091827272732272727332626
          2633262626332626263326262633252525332525253324242433222222331E1E
          1E331D1D1D3325252533272727332626263327272733272727331F1F1E331D1D
          1B331F1E1C331E1E1C331E1D1B331D1D1B331D1C1A331C1B19331C1B19331B1A
          18331B1917331A19173319181633191716332121203323232333232323332323
          233323232333272727331F1F1F331C1C1B331E1D1C331D1C1B331C1A19331A19
          1733191816331917153318171533181715331816143318161433181614331817
          15331817153319171533191816331A1817331B1918331C1B1A331E1D1D33201F
          1F33212121332323233324242433232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233325252533282828331515152804040419000000120000
          0011000000110000001000000011000000120000001300000014000000150000
          00160404041C1717172A282828332727273326262633282828331F1F1F2D0303
          0311000000070000000600000004000000030000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000100000003000000070101010C1E1E1E2E2424243323232333232323332323
          2333212121331817153318161433181614331817143319171533191816331A18
          17331A1917331B1A18331B1A18331C1B19331C1B1A331C1B19331C1C1B332525
          2533272727332626263326262633282828331919192905050514000000090000
          0007000000070909091825252532262626332525253325252533252525332525
          2533252525332424243322222233202020331D1D1D331F1F1F33252525332727
          2733262626332626263327272733222221331D1C1B331E1E1C331E1E1C331E1D
          1B331D1D1B331D1C1A331C1C1A331C1B19331B1A18331B1A18331A1917331A18
          1633191715331B1A193323232333232323332323233323232333242424332828
          28331F1E1E331412103315141233171513331715133317161433181614331816
          1433181614331816143318161433181715331817153318161433181714331816
          1433181614331816143318161433181614331816143318161433191716331B1A
          18331D1C1B33201F1F3322222233232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233327272733262626321717172A0909091F020202180101
          01170101011700000017010101190202021B090909221515152A242424312828
          283327272733262626332626263326262633282828331F1F1F2D020202100000
          0007000000060000000300000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0005000000091919192A25252533232323332323233323232333232323331C1B
          1A331715133318161433181614331917153319171533191816331A1917331B19
          17331B1A18331C1B19331C1B19331C1C1A331B1B19331E1E1D33262626332727
          2733262626332626263328282833242424311010102102020210020202101D1D
          1D2E232323332323233323232333232323332323233323232333222222331F1F
          1F331E1E1E331E1E1E3322222233262626332727273326262633262626332727
          2733232322331D1C1B331E1D1B331E1E1C331E1D1B331D1D1B331D1C1A331D1C
          1A331C1B19331C1A18331B1A18331B1917331A19173319181633191715331F1F
          1E33232324332323233323232333232323332525253327272733242423331312
          1033151311331715133318161433181715331917153319171533191715331917
          1533191715331917153319171533191715331917153319171533191715331917
          1533191715331917153319171533191715331817153318161433181614331817
          1433191816331D1C1A33201F1F33232222332323243323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          233323232333242424332828283328282833232323312020202F1B1B1B2C1A1A
          1A2C1E1E1E2E2323233127272733282828332727273326262633262626332626
          2633262626332626263326262633282828331D1D1D2B0101010D000000060000
          0005000000030000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000004000000081616
          1626272727332323233323232333232323332323233320201F33181614331816
          1433181614331816143319171533191816331A1816331A1917331B1A18331B1A
          18331C1B19331C1B19331C1C1A331B1A19331E1D1C3326262633272727332626
          26332626263327272733282828332222223013131325141414281F1F1F331E1E
          1E331E1E1E331E1E1E331E1E1E331E1E1E331E1E1E331F1F1F33222222332626
          26332727273327272733262626332727273327272733232323331D1C1B331D1D
          1B331E1E1C331E1D1B331D1D1B331D1C1A331D1C1A331C1B19331C1B19331B1A
          18331B1917331A1917331A181633191715331A19173322222233232323332323
          233323232333232323332626263327272733272727331B1A1933131210331615
          1333181614331817153319171533191715331917163319181633191816331918
          1633191816331918163319181633191816331918163319181633191816331918
          1633191816331917163319171533191715331917153319171533181715331816
          1433181715331A1917331E1D1C33212121332323243323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332626263327272733272727332828283328282833272727332727
          2733272727332626263326262633262626332626263326262633262626332626
          2633262626332626263328282833171717260101010900000005000000030000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000002000000040000000817171728282828332323
          2333232323332323233323232333232323331B1A193317151333181614331816
          14331816153319171533191816331A1816331A1917331B1A18331B1A18331C1B
          19331C1B19331C1C1A331B1A19331D1D1C332524243327272733272727332626
          2633262626332727273328282833252525322424243224242433232323332323
          2333242424332424243325252533272727332727273327272733262626332626
          26332727273326262633212121331C1C1B331D1D1B331E1D1B331E1D1B331D1D
          1B331D1C1A331D1C1A331C1B19331C1B19331B1A18331B1A18331A1917331A18
          163319181633181715331F1E1D33232324332323233323232333232323332525
          2533272727332626263327272733262626331716153314121033171614331817
          153319181633191816331918163319181633191816331A1816331A1816331A18
          16331A1816331A1816331A1816331A1816331A18163319181633191816331918
          1633191816331918163319181633191816331918163319171533191715331817
          153318161433191816331D1C1B33212121332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333252525332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332828283312121220000000050000000400000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000002000000050202020D2222222F2727273325252533232323332323
          2333232323332323233320201F33181614331816143318161433181614331817
          153319171533191816331A1917331A1917331B1A18331B1A18331C1B19331C1B
          19331C1C1A331B1B19331C1B1A33212120332626263327272733272727332626
          2633262626332727273327272733272727332727273327272733272727332727
          2733272727332626263326262633262626332727273327272733252525331F1E
          1E331C1C1A331D1D1B331E1D1B331D1D1B331D1C1B331D1C1A331D1C1A331C1B
          19331C1B19331B1A18331B1A18331A1917331A18173319181633181715331B1A
          1833232323332323233323232333232323332323233326262633262626332626
          2633262626332727273324242433191917331615133318171533191816331A18
          16331A1917331A1917331A1917331A1917331A1917331A1917331A1917331A19
          17331A1917331A1917331A1917331A1917331A1917331A1917331A1816331A18
          16331A1816331A18163319181633191816331918163319181633191816331917
          153318171433191715331C1B1A33212121332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332424
          2433262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633292929330B0B0B1900000002000000030000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000040000
          0005080808182828283327272733262626332323233323232333232323332323
          2333232323331D1C1B3317151333181614331816143318161433181715331917
          1633191816331A1917331A1917331B1A18331B1A18331C1B19331C1B19331C1B
          19331C1B19331B1B19331E1D1C33232222332626263327272733272727332727
          2733272727332626263326262633262626332626263326262633272727332727
          273327272733272727332424243320201F331D1C1B331C1C1A331D1D1B331E1D
          1B331D1D1B331D1C1A331D1C1A331C1C1A331C1B19331C1B19331B1A18331B1A
          18331A1917331A191733191816331917153318171533201F1F33232324332323
          2333232323332323233325252533272727332626263326262633262626332626
          263327272733272727332120203319181733191816331A1917331A1917331A19
          17331A1917331A1917331A1917331B1917331B1917331B1917331B1917331A19
          17331A1917331A1917331A1917331A1917331A1917331A1917331A1917331A19
          17331A1817331A1816331A181633191816331918163319181633191816331917
          153318171533191816331E1D1C33222222332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333242424332626
          2633272727332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633272727332828
          2832060606120000000100000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000003000000040101010C1D1D1D2B2727
          2733262626332727273325252533232323332323233323232333232323332323
          22331A1917331715143318161433181614331816143318171533191715331918
          16331A1917331A1917331B1918331B1A18331C1A19331C1B19331C1B19331C1C
          1A331C1B19331B1A19331C1C1B3320201F332424243325252533262727332727
          2733272727332727273327272733272727332626263324242433232222331F1F
          1E331C1C1A331C1B1A331D1C1A331D1D1B331D1D1B331D1C1A331D1C1A331C1C
          1A331C1B19331C1B19331B1A18331B1A18331B1918331A1917331A1917331918
          163319171533181614331D1C1B33232323332323233323232333232323332323
          2333262626332626263326262633262626332626263326262633262626332727
          2733252525331A1917331A1817331A1917331B1A18331B1A18331B1A18331B1A
          18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A
          18331B1A18331B1A18331B1918331B1917331B1917331A1917331A1917331A19
          17331A1917331A1917331A1817331A1816331918163319181633191816331917
          1533181715331B191833201F1F33232323332323233323232333232323332323
          2333232323332323233323232333232323332323233324242433262626332727
          2733262626332626263326262633262626332626263326262633262626332626
          263326262633262626332626263326262633272727332424242F0404040E0000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020000000300000007131313232828283326262633262626332626
          2633262626332424243323232333232323332323233323232333212120331817
          1533181614331816143318161433181614331817153319171533191816331A18
          16331A1917331B1917331B1A18331B1A18331C1B19331C1B19331C1B19331C1B
          19331C1B19331B1A19331C1B19331C1C1B331D1D1C331F1F1E3320201F331F1F
          1E331F1F1E331E1E1D331D1D1C331C1C1A331B1B19331C1B1A331D1C1A331D1D
          1B331D1C1B331D1C1A331D1C1A331D1C1A331C1B19331C1B19331C1B19331B1A
          18331B1A18331B1917331A1917331A1816331918163319171533181614331A19
          1733222222332323233323232333232323332323233325252533272727332626
          26332626263326262633262626332626263326262633272727331E1E1D331918
          16331B1917331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A
          18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A
          18331B1A18331B1A18331B1A18331B1A18331B1918331B1917331B1917331A19
          17331A1917331A1917331A1917331A1816331918163319181633191816331917
          1533191715331D1C1B3322222233232323332323233323232333232323332323
          2333232323332323233323232333232323332323233326262633272727332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332727273325252530040404100000000200000003000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020202
          020C181818262828283326262633262626332626263326262633272727332626
          263323232333232323332323233323232333232424331E1E1D33171614331816
          14331816143318161433181614331817153319171533191816331A1816331A19
          17331A1917331B1918331B1A18331B1A18331C1B19331C1B19331C1B19331C1B
          19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B
          19331C1B19331D1C1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C1A331C1C
          1A331C1B19331C1B19331C1B19331B1A18331B1A18331B1A18331A1917331A19
          17331A1816331918163319171533181614331918163321212033232323332323
          2333232323332323233324242433262626332626263326262633262626332626
          263326262633262626332727273325242433191817331A1917331B1A18331B1A
          19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B
          19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331B1A19331B1A
          18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331B1917331A19
          17331A1917331A1917331A1917331A1816331918163319181633191815331817
          15331B1A18332121203323232433232323332323233323232333232323332323
          2333232323332323233323232333232323332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633272727332828
          28330B0B0B1A0000000400000004000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000318181825292929332626
          2633262626332626263326262633262626332626263327272733252525332323
          2333232323332323233323232333232323331C1B1A3317151333181614331816
          14331816143318161433181714331917153319181633191816331A1817331A19
          17331B1917331B1A18331B1A18331B1A18331B1B19331C1B19331C1B19331C1B
          19331C1B19331C1B19331C1C1A331D1C1A331C1C1A331C1C1A331D1C1A331D1C
          1A331D1C1A331C1C1A331C1B1A331C1B19331C1B19331C1B19331C1B19331B1A
          18331B1A18331B1A18331B1917331A1917331A19173319181633191816331917
          1533181614331817153320201F33232324332323233323232333232323332323
          2333262626332727273326262633262626332626263326262633262626332626
          2633272727331F1E1D33191816331B1A18331C1B19331C1B19331C1B19331C1B
          19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B
          19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B
          19331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331B1917331B19
          17331A1917331A1917331A1817331A1816331918163319181633191715331A18
          16331F1F1E332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333262626332727273326262633262626332626
          2633262626332626263326262633262626332828283319191928000000090000
          0006000000030000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002080808152828283326262633262626332626
          2633262626332626263326262633262626332626263324242433232323332323
          23332323233323232333232323331C1B1A331715133318161433181614331816
          143318161433181614331917153319171533191816331A1816331A1917331A19
          17331A1917331B1A18331B1A18331B1A18331B1A18331C1A19331C1B19331C1B
          19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B
          19331C1B19331C1B19331B1A18331B1A18331B1A18331B1A18331B1917331A19
          17331A1917331A18163319181633191816331917153318161433181614331F1F
          1E33232324332323233323232333232323332323233325252533272727332727
          2733272727332727273327272733272727332727273327272733242424331A19
          17331A1A17331C1B19331C1B19331C1B19331C1C1A331C1C1A331C1C1A331D1C
          1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C1A331C1C
          1A331C1C1A331C1B1A331C1B19331C1B19331C1B19331C1B19331C1B19331C1B
          19331C1B19331C1A18331B1A18331B1A18331B1A18331B1A18331B1917331B19
          17331A1917331A1917331A1817331A1816331918163319181533191715331E1D
          1C33232323332323233323232333232323332323233323232333232323332323
          2333232323332424243326262633272727332626263326262633262626332626
          2633262626332727273328282833070707170000000600000005000000030000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000030000000617171726282828332626263326262633262626332626
          2633262626332626263327272733262626332323233323232333232323332323
          233323232333232323331C1B1A33171513331816143318161433181614331816
          14331816143318171533191715331917163319181633191816331A1817331A19
          17331A1917331A1917331B1917331B1918331B1A18331B1A18331B1A18331B1A
          18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A
          18331B1918331A1917331A1917331A1917331A1817331A181633191816331918
          163319171533181715331816143318171533201F1E3323232433232323332323
          23332323233323232333252525332727273325252533222222331D1D1D331D1D
          1D331F1F1E332322223327272733272727331D1D1C331A1917331C1B19331C1B
          19331D1C1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C
          1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C
          1A331D1C1A331D1C1A331D1C1A331C1C1A331C1B19331C1B19331C1B19331C1B
          19331C1B19331C1A19331B1A18331B1A18331B1A18331B1A18331B1917331A19
          17331A1917331A1917331A1817331918163319181633191715331D1C1B332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333242424332626263326262633262626332626263326262633262626332727
          27331F1F1F2D0101010B00000007000000040000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          0005030303112424243027272733262626332626263326262633262626332727
          2733262626332727273326262633232323332323233323232333232323332323
          2333232323331D1C1B3318161433171614331816143318161433181614331816
          14331816143318171533191715331917153319181633191816331A1816331A19
          17331A1917331A1917331A1917331B1917331A1917331B1917331B1917331B19
          17331B1917331B1917331B1917331B1917331A1917331A1917331A1917331A19
          17331A1816331918163319181633191816331917153319171533181614331715
          13331A18163320201F3323232433232323332323233323232333222222332425
          2533272727331F1F1E3316161533131311331312113313131133141311331515
          13331C1C1B33201F1E331A1A18331C1B19331C1C1A331D1C1A331D1C1A331D1C
          1A331D1C1A331D1D1A331D1D1B331D1D1B331D1D1B331D1D1B331D1D1B331D1D
          1B331D1D1B331D1D1B331D1D1B331D1D1B331D1D1A331D1C1A331D1C1A331D1C
          1A331D1C1A331D1C1A331D1C1A331C1C1A331C1C1A331C1B19331C1B19331C1B
          19331C1B19331C1B19331B1A18331B1A18331B1A18331B1A18331B1917331A19
          17331A1917331A1917331A18163319181633191715331C1B1A33232322332323
          2333232323332323233323232333232323332323233323232333232323332424
          2433262626332626263326262633262626332626263328282833151515250000
          0008000000060000000400000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000004000000060B0B
          0B1C282828332727273328282833282828332828283327272733272727332828
          2833282828332626263323232333232323332323233323232333232323332323
          23331F1E1E331917153317151333181614331816143318161433181614331816
          1433181614331817153319171533191715331917153319181633191816331A18
          16331A1816331A1816331A1817331A1917331A1917331A1917331A1917331A19
          17331A1917331A1817331A1816331A1816331918163319181633191816331917
          153319171533181715331816143318161433171614331C1B1A33222222332323
          23332323233323232333232323332222223324242433262626331B1A19331414
          1233161513331717153318171533181716331817163318181633191816331A19
          18331C1B19331D1C1A331D1C1A331D1D1B331D1D1B331D1D1B331D1D1B331D1D
          1B331E1D1B331E1D1B331E1D1B331E1D1B331E1D1B331E1D1B331E1D1B331E1D
          1B331E1D1B331E1D1B331D1D1B331D1D1B331D1D1B331D1D1B331D1D1B331D1C
          1A331D1C1A331D1C1A331D1C1A331D1C1A331C1C1A331C1B19331C1B19331C1B
          19331C1B19331B1A18331B1A18331B1A18331B1A18331B1917331A1917331A19
          17331A1917331A18163319181633191715331C1B1A3323232333232323332323
          2333232323332323233323232333232323332323233323232333252525332727
          2733262626332626263326262633282828330D0D0D1D00000007000000050000
          0003000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000003000000060000000A161616262A2A
          2A331B1B1B2C0E0E0E240A0A0A210707071F0A0A0A21131313281F1F1F2F2828
          2833262626332323233323232333232323332323233323232333232324332121
          21331B1918331715133317161433181614331816143318161433181614331816
          1433181614331817143318171533191715331917153319171533191716331918
          1633191816331918163319181633191816331918163319181633191816331918
          1633191816331917153319171533191715331817153318171533181614331816
          143317151333191715331F1E1D33232323332323233323232333232323332323
          23332323233324242433272727331C1C1B331514123318171533191917331A19
          17331B1A18331B1A18331B1A18331B1A19331C1B19331C1C1A331D1C1A331D1D
          1B331E1D1B331E1D1B331E1D1B331E1D1B331E1D1B331E1D1C331E1D1C331E1D
          1C331E1E1C331E1E1C331E1E1C331E1E1C331E1D1C331E1D1C331E1D1C331E1D
          1C331E1D1C331E1D1B331E1D1B331E1D1B331E1D1B331D1D1B331D1D1B331D1C
          1B331D1C1A331D1C1A331D1C1A331D1C1A331C1C1A331C1B19331C1B19331C1B
          19331C1B19331B1A18331B1A18331B1A18331B1A18331B1917331A1917331A19
          17331A18163319181633191715331D1C1B332323233323232333232323332323
          2333232323332323233323232333232323332323233326262633272727332626
          2633262626332828283309090919000000070000000500000003000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000200000004000000060202020E07070718010101120000
          0010000000110000001000000010000000100101011511111126262626322626
          2633232323332323233323232333232323332323233323232333232323331E1E
          1D33191816331715133317161433181614331816143318161433181614331816
          1433181614331816143318161433181615331817153318171533191715331917
          1533191715331917153319171533191715331917153318171533181715331817
          14331816143318161433181614331816143317151333181614331B1A19332121
          2133232424332323233323232333232323332323233323232333242424332727
          27332221213316151433181816331A1918331B1B19331C1B19331C1B19331C1B
          19331C1C1A331C1C1A331D1C1A331D1C1B331D1D1B331E1D1B331E1D1B331E1D
          1C331E1D1C331E1E1C331E1E1C331E1E1C331E1E1C331E1E1C331E1E1C331E1E
          1C331E1E1C331E1E1C331E1E1C331E1E1C331E1E1C331E1E1C331E1E1C331E1E
          1C331E1E1C331E1D1C331E1D1B331E1D1B331E1D1B331E1D1B331D1D1B331D1D
          1B331D1C1B331D1C1A331D1C1A331D1C1A331C1C1A331C1B19331C1B19331C1B
          19331C1A19331B1A18331B1A18331B1A18331B1917331A1917331A1917331A18
          163319181633191715331E1D1C33232323332323233323232333232323332323
          2333232323332323233323232333242424332626263326262633262626332828
          2833070707170000000700000005000000030000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000020000000400000005000000070000000A0000000B0000000A0000
          000A0000000A0000000A0000000C000000100808081E26262632262626332424
          2433232323332323233323232333232323332323233323242433222222331E1D
          1C33191816331716143317151433181614331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          143317151333181715331C1B193320201F332323233323232333232323332323
          23332323233323232333232323332525253326262633272727331B1A19331716
          15331A1A18331C1B19331C1B19331D1C1A331D1C1A331D1C1A331D1C1B331D1D
          1B331D1D1B331E1D1B331E1D1B331E1D1C331E1E1C331E1E1C331E1E1C331E1E
          1C331E1E1C331E1E1C331E1E1C331E1E1C331E1E1C331E1E1C331E1E1C331E1E
          1C331E1E1C331E1E1C331F1E1C331E1E1C331F1E1C331F1E1C331E1E1C331E1E
          1C331E1E1C331E1E1C331E1E1C331E1D1C331E1D1B331E1D1B331D1D1B331D1D
          1B331D1C1A331D1C1A331D1C1A331D1C1A331C1B19331C1B19331C1B19331C1B
          19331B1A18331B1A18331B1A18331B1917331A1917331A1917331A1816331918
          1633191715331F1E1D3323232433232323332323233323232333232323332323
          23332323233323232333252525332727273326262633282828330A0A0A1A0000
          0007000000050000000300000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000030000000400000005000000050000000500000005000000050000
          0005000000080000000B0000000E0F0F0F232828283326262633242424332323
          2333232323332323233323232333232323332323233323232333222222331E1E
          1D331A1918331816143317151433171513331716143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          14331816143318161433171514331715133317151433191715331D1C1B332121
          2033232323332323233323232333232323332323233323232333232323332323
          23332525253327272733272727332525253318171633191816331C1B19331C1C
          1A331D1C1A331D1C1A331D1D1B331D1D1B331E1D1B331E1D1B331E1D1C331E1D
          1C331E1D1C331E1D1C331E1D1C331D1D1B331D1C1B331C1C1A331C1C1B331C1C
          1A331C1C1A331C1C1B331C1C1B331C1C1B331D1C1B331D1C1B331D1D1B331D1D
          1B331E1E1C331E1E1C331F1E1C331F1E1C331F1E1C331F1E1C331F1E1C331E1E
          1C331E1E1C331E1E1C331E1E1C331E1D1C331E1D1B331E1D1B331D1D1B331D1D
          1B331D1C1A331D1C1A331D1C1A331C1C1A331C1B19331C1B19331C1B19331B1A
          18331B1A18331B1A18331B1917331A1917331A1917331A181633191816331918
          1633212020332323233323232333232323332323233323232333232323332323
          2333232323332626263327272733282828331010102000000008000000060000
          0004000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0002000000020000000200000002000000020000000200000002000000030000
          00060000000B010101121D1D1D2D282828332727273325252533232323332323
          2333232323332323233323232333232323332323233323242433232323332121
          20331E1D1C331B19183319181633181614331715133317151333171514331715
          1433171514331715143317151433171514331715143317151333171513331816
          15331A1817331C1B19331F1E1E33222221332323243323232333232323332323
          2333232323332323233323232333232323332424243326262633272727332626
          26332727273322222233181715331A1917331C1B19331D1C1A331D1D1B331D1D
          1B331E1D1B331E1D1B331E1D1B331E1D1C331E1D1C331D1D1B331D1C1B331C1C
          1A331C1B1A331D1C1B331E1D1C331F1F1E3320201F3321212033212121332222
          2133222221332121213321212033201F1F331E1E1D331E1D1C331C1C1B331C1C
          1B331D1D1B331E1D1C331E1E1C331F1E1C331F1E1C331F1E1C331F1E1C331F1E
          1C331F1E1C331E1E1C331E1E1C331E1D1C331E1D1B331E1D1B331D1D1B331D1C
          1B331D1C1A331D1C1A331D1C1A331C1B19331C1B19331C1B19331B1A18331B1A
          18331B1A18331B1917331A1917331A1917331A181633191716331B1918332222
          2233232323332323233323232333232323332323233323232333232323332424
          24332626263328282833191919290000000A0000000700000005000000030000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000010000000000000001000000010000000100000004000000080000
          000C0E0E0E222929293326262633272727332626263324242433232323332323
          2333232323332323233323232333232323332323233323232333232324332323
          233322222133202020331F1E1D331D1C1B331C1B1A331B1A18331B1918331B19
          18331B1918331B1A19331C1B1A331D1D1C331F1F1E3321212033222222332324
          2433232323332323233323232333232323332323233323232333232323332323
          2333232323332525253327272733272727332626263326262633272727332323
          2233181716331A1A18331C1C1A331D1D1B331D1D1B331E1D1B331E1D1B331E1D
          1C331E1D1C331D1D1B331C1C1A331C1B1A331D1D1C3320201F33232322332525
          2433262626332727273327272733272727332727273327272733272727332727
          27332727273327272733262626332525253324242433222221331F1F1E331D1D
          1C331C1C1B331D1D1B331E1E1C331F1E1D331F1F1D331F1E1C331F1F1D331F1E
          1C331E1E1C331E1E1C331E1D1C331E1D1B331E1D1B331D1D1B331D1D1B331D1C
          1A331D1C1A331D1C1A331C1B19331C1B19331C1B19331B1A18331B1A18331B1A
          18331B1917331A1917331A1917331A181633191715331D1C1A33232323332323
          2333232323332323233323232333232323332323233323232333252525332727
          2733242424300303031100000008000000060000000400000002000000020000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000200000006000000090606061A2727
          2733272727332626263326262633272727332626263324242433232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232433232323332323233323232333232323332323
          2333232323332323233323232333232323332323233325252533262626332727
          2733262626332626263326262633262626332727273324242433191817331A1A
          18331D1C1A331D1D1B331E1D1B331E1D1B331E1D1B331D1D1B331C1C1A331C1C
          1A331F1F1E332323223326262633272727332727273327272733272727332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332727273327272733272727332727273325252533222221331E1E
          1D331C1C1B331D1D1C331E1E1D331F1F1D331F1F1D331F1F1D331F1E1C331F1E
          1C331E1E1C331E1E1C331E1D1C331E1D1B331E1D1B331D1D1B331D1C1A331D1C
          1A331D1C1A331C1C1A331C1B19331C1B19331B1A19331B1A18331B1A18331B19
          17331A1917331A1917331A181633191715331F1E1E3323232333232323332323
          2333232323332323233323232333232323332323233326262633282828331010
          1021000000090000000800000005000000040000000300000002000000010000
          0001000000010000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000200000004000000080505051725252532272727332626
          2633262626332626263327272733272727332626263325252533232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333242424332525253326262633272727332626263326262633262626332626
          2633262626332626263326262633262626331B1B1A331A1918331D1C1A331E1D
          1B331E1D1C331D1D1B331C1C1A331C1B1A331E1E1D3324242333272727332727
          2733272727332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633272727332727273326262633222221331D1D
          1C331C1C1B331E1E1C331F1E1D331F1F1D331F1F1D331F1F1D331F1E1C331F1E
          1C331E1E1C331E1D1C331E1D1B331E1D1B331D1D1B331D1C1A331D1C1A331D1C
          1A331C1B19331C1B19331C1B19331B1A18331B1A18331B1A18331B1917331A19
          17331A181733191816331A191733222222332323233323232333232323332323
          2333232323332323233323232333252525332727273323232330030303130000
          0009000000080000000600000004000000030000000200000002000000020000
          0001000000010000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000040000000805050517262626322727273326262633262626332626
          2633262626332626263326262633272727332626263325252533242424332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333242424332525253327272733282828332828
          2833272727332727273326262633262626332626263326262633262626332626
          26332626263327272733222222331B1A18331D1C1A331D1D1B331D1C1B331C1B
          1A331E1E1C332323223326262733272727332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633272727332727273326262633212120331D1D
          1C331D1D1B331E1E1C331F1F1D331F1F1D331F1F1D331F1F1C331F1E1C331E1E
          1C331E1D1C331E1D1B331E1D1B331D1D1B331D1C1B331D1C1A331D1C1A331C1B
          19331C1B19331C1B19331B1A18331B1A18331B1A18331A1917331A1917331A18
          1633191715331D1C1B3323232333232323332323233323232333232323332323
          2333232323332323233326262633282828331B1B1B2A0101010E0000000A0000
          0008000000060000000500000004000000040000000300000003000000020000
          0002000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000040000
          00070707071A2828283327272733262626332626263326262633262626332626
          2633262626332626263327272733272727332727273327272733272727332626
          2633242424332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233324242433242424332525
          25332727273327272733232323331F1E1E331C1C1B331B1B1A33201F1F332424
          2433272727332727273326262633262626332626263326262633262727332727
          2733262626331D1C1B331C1C1A331C1C1A331C1B1A3322212133262626332727
          2733272727332626263326262633262626332626263326262633262626332626
          2633262626332626263327272733272727332727273327272733272727332727
          2733272727332626263326262633262626332626263326262633262626332626
          26332626263326262633262626332727273327272733252525331F1F1F331C1C
          1B331E1E1C331F1F1D331F1F1D331F1F1D331F1F1D331F1E1C331E1E1C331E1E
          1C331E1D1B331E1D1B331D1D1B331D1C1B331D1C1A331D1C1A331C1B19331C1B
          19331C1B19331B1A18331B1A18331B1917331A1917331A191733191816331918
          1633212020332323233323232333232323332323233323232333232323332323
          2333252525332727273328282833121212240000000D0000000B0000000A0000
          0008000000070000000600000005000000040000000400000003000000020000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000400000008161616262828
          2833262626332626263326262633262626332626263326262633272727332727
          2733242424331F1F1F331B1B1B331B1B1B331C1C1C331E1E1E33242424332727
          2733262626332626263325252533252525332525253325252533252525332525
          2533262626332626263326262633262626332727273327282833232323331918
          18331211103311100F3311100F33100F0E330F0F0E3311100F331A1919332525
          25332727273326262633262626332727273327272733232323331D1D1B331B1B
          19331B1B19331C1C1B3323232333272727332727273326262633262626332626
          2633262626332626263326262633262626332626263327272733282828332828
          2833272727332727273325252532242424312525253226262632272727332828
          2833282828332727273327272733262626332626263326262633262626332626
          26332626263326262633262626332727273326262733212120331C1C1B331E1D
          1C331F1F1D331F1F1D331F1F1D331F1F1D331F1E1C331F1E1C331E1E1C331E1D
          1B331D1D1B331D1D1B331D1C1A331D1C1A331D1C1A331C1B19331C1B19331C1A
          19331B1A18331B1A18331B1917331A1917331A191733191815331C1B19332323
          2333232323332323233323232333232323332323233323232333232323332626
          2633272727332828283314141426010101110000000C0000000C0000000B0000
          0009000000080000000700000006000000040000000300000002000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000003000000081919192829292933272727332626
          263326262633262626332626263327272733262626331E1E1E33161616331717
          173319191933181818331818183317171733171717331C1C1C33252525332727
          2733272727332727273327272733272727332727273327272733272727332727
          2733262626332626263327272833212121331312113311100F33141312331615
          1333161513331514133314131233121210330F0F0E3314141333232323332727
          273327272733252525331E1E1D33191917331A1A18331B1A19331D1D1C332525
          2433272727332626263326262633262626332626263326262633262626332626
          263327272733282828332828283323232330181818280E0E0E200C0C0C1D0909
          0919060606160404041204040413080808170A0A0A1A0D0D0D1E111111231C1C
          1C2B262626322828283328282833272727332626263326262633262626332626
          263326262633262626332727273327272733222222331D1D1B331D1D1C331F1F
          1D331F1F1D331F1F1D331F1F1D331F1E1C331E1E1C331E1E1C331E1D1B331E1D
          1B331D1D1B331D1C1A331D1C1A331C1C19331C1B19331C1B19331B1A18331B1A
          18331B1918331A1917331A191733191816331918163320201F33232323332323
          2333232323332323233323232333232323332323233325252533272727332727
          2733282828331C1C1C2C06060619000000100000000D0000000C0000000B0000
          000A000000080000000600000004000000030000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000003000000060101010D0C0C0C1F2222223028282833272727332626
          263327272733252525331B1B1B33161616331A1A1A331E1E1E331F1F1F331F1F
          1F331F1F1F331D1D1D331B1B1B33151515331818183325252533272727332626
          2633262626332626263326262633262626332626263326262633262626332727
          2733222222331312113313121033161513331716153318171533191716331817
          1633181715331616143315141333121210331817163325252533222221331919
          1833181716331A1A18331A1A19331E1E1D332626263327272733262626332626
          2633262626332626263326262633262626332727273328282833242424311616
          16270A0A0A1B040404120101010D0000000A0000000900000008000000080000
          0008000000080000000800000008000000090101010A0202020F050505150F0F
          0F201B1B1B2B2828283328282833262626332626263326262633262626332626
          2633262626332626263327272733242423331D1D1C331D1D1C331F1F1D331F1F
          1D331F1F1D331F1F1D331F1E1C331E1E1C331E1D1C331E1D1B331E1D1B331D1C
          1B331D1C1A331D1C1A331C1B19331C1B19331C1B19331B1A18331B1A18331B19
          17331A1917331A191733191816331C1B1A332323233323232333232323332323
          2333232323332323233323232333242424332626263326262633262626332727
          2733262626321919192A0808081D03030315010101100000000C000000090000
          0007010101080101010600000003000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0005000000080000000C02020217121212272525253327272733272727331E1E
          1E33181818331C1C1C3320202033222222332323233323232333222222332222
          2233202020331B1B1B3314141433181818332626263327272733262626332626
          2633262626332626263326262633262626332727273327272733171615331211
          0F331615143318171533191816331A1917331A1917331A1917331A1917331918
          17331818163318171533171614331A19183318181733191917331B1A19331A1A
          19331E1E1D332626263327272733262626332626263326262633262626332626
          263326262633282828332626263215151526050505150101010C000000090000
          0008000000070000000600000005000000050000000500000005000000050000
          000500000005000000060000000600000007000000080000000A0202020E0909
          091A1D1D1D2C2828283327272733262626332626263326262633262626332626
          26332626263327272733242424331D1D1C331D1D1C331F1F1D331F1F1D331F1F
          1D331F1F1D331F1E1C331E1E1C331E1D1C331E1D1B331D1D1B331D1C1A331D1C
          1A331D1C1A331C1B19331C1B19331C1A19331B1A18331B1A18331B1917331A19
          17331A1816331918163320202033232323332323233323232333232323332323
          2333232323332323233326262633262626332626263326262633272727332828
          283328282833232323301D1D1D2C1616162814141426191919292222222D1111
          111E000000010000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003000000060000
          000A0000000C0505051B1B1B1B3320202033222222331B1B1B331E1E1E332020
          2033232323332424243325252533252525332525253324242433222222331D1D
          1D33191919331414143320202033272727332626263326262633262626332626
          2633262626332626263327272733212121331211103316141333181715331918
          16331A1917331B1918331B1A18331B1A18331B1A18331B1A18331B1A18331A1A
          18331A1A18331A1918331B1A19331C1B19331B1A19331D1C1B33252525332727
          2733262626332626263326262633262626332626263327272733282828331818
          1828060606170101010C00000009000000080000000600000005000000040000
          0004000000030000000300000003000000030000000300000003000000030000
          00030000000400000004000000050000000600000008000000090202020F0C0C
          0C1E2020202E2828283326262633262626332626263326262633262626332626
          263327272733232322331D1C1B331E1E1C331F1F1D331F1F1D331F1F1D331F1E
          1C331E1E1C331E1E1C331E1D1C331E1D1B331D1D1B331D1C1A331D1C1A331C1C
          1A331C1B19331C1B19331B1A18331B1A18331B1918331A1917331A1917331918
          15331C1B1A332323233323232333232323332323233323232333232323332323
          2333252525332727273326262633262626332626263326262633262626332727
          273328282833282828332828283328282833282828332020202B010101060000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000400000006000000080C0C
          0C20202020331D1D1D331E1E1E331F1F1F332121213323232333252525332626
          263326262633262626332626263326262633232323331F1F1F331B1B1B331616
          1633181818332626263327272733262626332626263326262633262626332626
          2633272727331B1B1A331312103317161433191816331A1917331B1917331B1A
          18331B1A18331C1B19331C1B19331C1B19331C1B19331C1B19331C1C1A331C1C
          1A331C1C1A331B1B1A331C1C1A33242424332727273326262633262626332626
          2633262626332626263327272733262626320F0F0F210202020F0000000A0000
          0008000000060000000500000004000000030000000200000002000000020000
          0002000000010000000100000001000000010000000200000002000000020000
          000200000003000000040000000500000007000000090000000B040404141A1A
          1A2A282828332727273326262633262626332626263326262633262626332727
          2733212121331C1C1B331E1E1D331F1F1D331F1F1D331F1F1D331F1E1C331E1E
          1C331E1E1C331E1D1B331D1D1B331D1C1A331D1C1A331D1C1A331C1B19331C1B
          19331B1A18331B1A18331B1A18331A1917331A191733191816331A1817332121
          2133232323332323233323232333232323332323233323232333242424332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633282828320303030D00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000040000000719191928232323332222
          2233222222332323233324242433252525332626263326262633262626332626
          2633262626332626263323232333202020331E1E1E3319191933171717332424
          2433272727332727273327272733272727332727273327272733282828331B1A
          19331513123318171533191816331A1917331B1A18331B1A18331C1A19331C1B
          19331C1B19331C1C1A331D1C1A331D1C1A331D1C1A331D1D1B331C1C1A331B1B
          1A33232322332727273326262633262626332626263326262633262626332727
          2733232323300A0A0A1C0101010D000000090000000700000005000000040000
          0003000000020000000200000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000020000
          0002000000030000000400000005000000080000000A02020210131313252828
          2833272727332626263326262633262626332626263327272733272727332020
          1F331D1D1B331F1F1D331F1F1D331F1F1D331F1F1D331F1E1C331E1E1C331E1D
          1C331E1D1B331D1D1B331D1C1A331D1C1A331C1B1A331C1B19331C1B19331B1A
          18331B1A18331B1917331A1917331A181733191816331E1E1D33232324332323
          2333232323332323233323232333232323332323233326262633272727332626
          2633262626332626263326262633262626332626263326262633262626332626
          263326262633282828330A0A0A16000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000020202020B242424312525253324242433242424332525
          2533252525332626263326262633262626332626263326262633262626332626
          263323232333212121331F1F1F331C1C1C331919193324242433272727332727
          273327272733272727332626263325252533252525331A191833161513331917
          16331A1917331B1917331B1A18331B1A18331C1B19331C1B19331C1C1A331D1C
          1A331D1C1A331D1D1B331D1D1B331D1D1B331B1B193320201F33272727332626
          263326262633262626332626263326262633282828332121212F060606170000
          000C000000090000000600000004000000030000000200000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000020000
          0002000000030000000500000007000000090101010E0F0F0F21272727332727
          27332626263326262633262626332626263327272733262626331E1E1D331E1D
          1C331F1F1D331F1F1D331F1F1D331F1E1C331F1E1C331E1E1C331E1D1B331D1D
          1B331D1D1B331D1C1A331D1C1A331C1B19331C1B19331B1A18331B1A18331B1A
          18331A1917331A191733191816331B1A19332323233323232333232323332323
          2333232323332323233323232333242424332727273326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332828
          2833171717240000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00010606060E2525253028282833262626332626263326262633262626332626
          2633262626332626263326262633262626332727273326262633232323332222
          2233212121331E1E1E331C1C1C331D1D1D331C1C1C3319181833161515331716
          15331615143315141333161513331615143318171533191816331A1917331B1A
          18331B1A18331B1A18331C1B19331C1B19331D1C1A331D1C1A331D1D1B331D1D
          1B331E1D1B331C1C1A331C1C1B33252525332727273326262633262626332626
          2633262626332727273325252531070707190000000B00000009000000060000
          0004000000030000000200000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000020000
          00030000000500000007000000090101010E1111112328282833272727332626
          263326262633262626332626263327272733222222331D1C1B331E1E1D331F1F
          1D331F1F1D331F1F1D331F1E1C331E1E1C331E1D1C331E1D1B331D1D1B331D1C
          1A331D1C1A331C1B19331C1B19331C1B19331B1A18331B1A18331B1917331A19
          17331A1816331918163321202033232323332323233323232333232323332323
          2333232323332424243327272733262626332626263326262633262626332626
          26332626263326262633262626332727273328282833242424301313131F0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000030202
          02090A0A0A181F1F1F2C28282833262626332626263326262633262626332626
          2633262626332626263327272733252525332222223322222233212121332020
          20331E1E1E331D1D1D331A1A1A3312111033100F0E3311100E3312110F331413
          11331614133318161433191815331A1917331A1917331B1A18331B1A18331C1B
          19331C1B19331C1C1A331D1C1A331D1C1A331D1D1B331D1D1B331D1C1B331B1B
          1933212121332727273326262633262626332626263326262633272727332828
          28330B0B0B1E0000000C00000009000000060000000400000003000000020000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000002000000030000
          0005000000070000000A02020210171717282828283326262633262626332626
          26332626263327272733262626331E1E1D331D1D1C331F1F1D331F1F1D331F1F
          1D331F1E1C331E1E1C331E1E1C331E1D1B331D1D1B331D1C1A331D1C1A331C1C
          1A331C1B19331C1B19331B1A18331B1A18331B1917331A1917331A1817331917
          15331E1D1C332323233323232333232323332323233323232333232323332323
          2333262626332727273326262633262626332626263326262633262626332727
          2733282828331C1C1C2A0A0A0A18010101090000000400000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000200000003000000040101
          010A0F0F0F1F2727273227272733262626332626263326262633262626332626
          2633272727332424243323232333232323332222223322222233212121332020
          20331D1D1D331514123315131233151412331614133317151333181615331917
          1633191816331A1917331B1918331B1A18331B1A18331C1B19331C1B19331D1C
          1A331D1C1A331D1C1B331D1D1B331D1D1B331C1C1A331D1D1C33262626332727
          27332626263326262633262626332626263328282833111111230101010E0000
          0009000000060000000400000003000000020000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000200000003000000050000
          00070000000B030303131E1E1E2D282828332626263326262633262626332626
          263327272733232323331C1C1B331E1E1D331F1F1D331F1F1D331F1F1D331E1E
          1C331E1E1C331E1D1C331E1D1B331D1D1B331D1C1A331D1C1A331C1B19331C1B
          19331B1A19331B1A18331B1918331A1917331A191733191816331C1B19332323
          2333232323332323233323232333232323332323233323232333252525332727
          27332626263326262633262626332626263327272733262626320C0C0C1D0101
          010A000000050000000400000003000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000030000000500000006000000080808
          0818242424302727273326262633262626332626263326262633262626332323
          23332323233323232333222222332222223322222233222223331D1C1B331614
          13331715133317151333181614331816153319171533191816331A1917331A19
          17331B1918331B1A18331C1A19331C1B19331C1B19331D1C1A331D1C1A331D1D
          1B331D1D1B331D1C1B331B1B1A33222222332727273326262633262626332626
          263326262633282828331C1C1C2C020202120000000B00000007000000050000
          0003000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000020000000300000005000000080000
          000C0808081A2727273327272733262626332626263326262633262626332727
          27331F1F1E331D1D1B331F1F1D331F1F1D331F1F1D331F1E1C331E1E1C331E1D
          1C331E1D1B331D1D1B331D1C1A331D1C1A331C1B19331C1B19331C1B19331B1A
          18331B1A18331A1917331A191733191816331A19173322222133232323332323
          2333232323332323233323232333232323332424243327272733262626332626
          263326262633272727332222222F050505150000000800000007000000050000
          0003000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000003000000050000000700000008070707172626
          2632272727332626263326262633272727332626263323232333232323332323
          2333232323332323233323232333232323331B1A193317151333171614331816
          14331817153319171533191816331A1816331A1917331B1917331B1A18331B1A
          18331C1B19331C1B19331C1C19331D1C1A331D1C1A331D1D1B331D1D1B331C1C
          1A331D1D1C332626263327272733262626332626263326262633272727332727
          27330909091C0000000C00000008000000050000000300000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000010000000200000004000000060000000A0101010F1717
          1728282828332626263326262633262626332626263327272733232323331C1C
          1B331E1E1D331F1F1D331F1F1D331F1F1C331F1E1C331E1E1C331E1D1B331D1D
          1B331D1D1A331D1C1A331C1C1A331C1B19331C1B19331B1A18331B1A18331B19
          17331A1917331A18163319181633201F1F332323233323232333232323332323
          2333232323332323233324242433272727332626263326262633272727332323
          2330050505150000000800000007000000050000000400000002000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000100000002000000030000000500000007000000080D0D0D1E292929332626
          2633262626332727273325252533232323332323233323232333232323332323
          233323232333222222331A181733171614331816143318161533191715331917
          1633191816331A1817331A1917331B1917331B1A18331B1A18331C1B19331C1B
          19331C1C1A331D1C1A331D1D1A331D1D1B331D1D1B331B1B1933212120332727
          273326262633262626332626263326262633282828331919192A010101100000
          000A000000060000000400000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000020000000300000005000000080000000B06060619252525322727
          273326262633262626332626263327272733262626331E1E1D331E1D1C331F1F
          1D331F1F1D331F1F1D331F1E1C331E1E1C331E1D1B331D1D1B331D1C1B331D1C
          1A331C1C1A331C1B19331C1B19331B1A18331B1A18331B1917331A1917331A18
          1733191715331E1D1C3323232333232323332323233323232333232323332323
          233323232333262626332626263327272733282828330A0A0A1A000000080000
          0007000000050000000400000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          00020000000400000005000000070101010B1C1C1C2B28282833262626332727
          2733252525332323233323232333232323332323233323232333232323332121
          2133181615331816143318161433181715331917153319181633191816331A18
          17331A1917331B1918331B1A18331B1A18331C1B19331C1B19331D1C1A331D1C
          1A331D1D1B331D1D1B331D1C1A331C1B1A332424243327272733262626332626
          26332626263327272733272727330808081B0000000C00000008000000050000
          0003000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000200000004000000060000000A0101010F1414142628282833262626332626
          2633262626332626263327272733212120331D1D1B331F1F1D331F1F1D331F1F
          1D331F1E1C331E1E1C331E1D1C331E1D1B331D1D1B331D1C1A331D1C1A331C1B
          19331C1B19331B1A18331B1A18331B1918331A1917331A191733191816331C1B
          1A33232323332323233323232333232323332323233323232333232323332626
          26332626263328282833161616260000000A0000000700000005000000040000
          0002000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000020000
          0004000000060000000608080818282828332626263327272733242424332323
          2333232323332323233323232333232323332323233320201F33171614331816
          143318161433181715331917153319181633191816331A1917331A1917331B19
          18331B1A18331C1A18331C1B19331C1B19331D1C1A331D1C1A331D1D1B331D1D
          1B331C1B1A331D1D1C3326262633262626332626263326262633262626332828
          28331D1D1D2D020202110000000A000000070000000400000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000030000
          0005000000080000000C0808081B272727332727273326262633262626332626
          263327272733242423331D1D1B331F1E1D331F1F1D331F1F1D331F1E1C331E1E
          1C331E1D1C331E1D1B331D1D1B331D1C1A331D1C1A331C1B19331C1B19331B1A
          19331B1A18331B1918331A1917331A191733191816331B1A1833232323332323
          2333232323332323233323232333232323332323233325252533272727332828
          2833050505140000000700000006000000040000000200000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000003000000040000
          00060101010C1F1F1F2C27272733262626332424243323232333232323332323
          23332323233323232333232323331F1E1D331715143318161433181614331817
          153319171533191816331A1816331A1917331A1917331B1A18331B1A18331C1A
          19331C1B19331C1B19331D1C1A331D1C1A331D1D1B331D1D1B331B1B19332020
          1F33272727332626263326262633262626332626263328282833121212240000
          000D000000090000000600000003000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000004000000070000
          000B020202132020202F27272733262626332626263326262633272727332526
          26331D1D1C331E1E1C331F1F1D331F1F1D331F1F1D331E1E1C331E1E1C331E1D
          1B331D1D1B331D1C1A331D1C1A331C1B19331C1B19331C1B19331B1A18331B1A
          18331A1917331A191733191816331A1917332222223323232333232323332323
          2333232323332323233323232333252525332828283319191929000000090000
          0006000000040000000200000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000300000006000000071212
          1222282828332626263323232333232323332323233323232333232323332323
          2333232323331D1C1B3317151433181614331816143319171533191715331918
          16331A1816331A1917331A1917331B1A18331B1A18331C1B19331C1B19331C1B
          1A331D1C1A331D1C1A331D1D1B331D1C1B331B1B193323222233272727332626
          2633262626332626263326262633272727330707071A0000000C000000080000
          0005000000030000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000020000000300000006000000090101010F1414
          14262828283326262633262626332626263327272733262626331F1F1E331D1D
          1C331F1F1D331F1F1D331F1E1D331E1E1C331E1E1C331E1D1B331D1D1B331D1C
          1A331D1C1A331C1B1A331C1B19331C1B19331B1A18331B1A18331A1917331A19
          1733191816331A18163321212033232323332323233323232333232323332323
          23332323233325252533282828330F0F0F1F0000000600000005000000030000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000010000000300000005000000060909091A292929332626
          2633232323332323233323232333232323332323233323232333232323331B1A
          19331715143318161433181614331917153319171533191816331A1816331A19
          17331A1917331B1A18331B1A18331C1B19331C1B19331C1B1A331D1C1A331D1C
          1B331D1D1B331D1C1B331B1B1A33242424332727273326262633262626332626
          2633272727331F1F1F2E030303140000000B0000000700000004000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000300000005000000080000000C0909091D282828332727
          273326262633262626332626263327272733212120331D1D1B331F1E1D331F1F
          1D331F1F1D331E1E1C331E1E1C331E1D1B331D1D1B331D1C1A331D1C1A331C1B
          1A331C1B19331C1B19331B1A18331B1A18331A1917331A1917331A1816331918
          1633201F1E332323233323232333232323332323233323232333232323332424
          2433282828330707071500000006000000050000000300000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000020000000400000006070707162828283326262633232323332323
          233323232333232323332323233323232333232323331B191833171514331816
          1433181614331917153319171533191816331A1816331A1917331B1917331B1A
          18331B1A18331C1B19331C1B19331C1C1A331D1C1A331D1C1A331D1D1B331C1C
          1A331C1C1B332525253327272733262626332626263326262633282828331818
          1829010101100000000A00000006000000030000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000200000004000000070000000B050505182424243127272733262626332626
          26332626263327272733222221331C1C1B331F1E1D331F1F1D331F1F1D331F1E
          1C331E1E1C331E1D1B331D1D1B331D1C1A331D1C1A331C1C1A331C1B19331C1B
          19331B1A18331B1A18331B1917331A1917331A181633191815331F1E1E332323
          2433232323332323233323232333232323332323233324242433272727330303
          0311000000050000000400000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0004000000060606061427272732262626332323233323232333232323332323
          23332323233323232333232323331A1917331715143318161433181614331917
          153319171533191816331A1816331A1917331B1917331B1A18331B1A18331C1B
          19331C1B19331C1C1A331D1C1A331D1C1B331D1D1B331C1B1A331D1D1C332626
          26332727273326262633262626332626263328282833121212260000000E0000
          0009000000050000000300000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000040000
          00070000000B0404041522222230272727332626263326262633262626332727
          2733232323331D1D1B331E1E1C331F1F1D331F1F1D331F1E1C331E1E1C331E1D
          1B331D1D1B331D1C1A331D1C1A331C1C1A331C1B19331C1B19331B1A18331B1A
          18331B1917331A1917331A181633191715331F1E1D3323232433232323332323
          233323232333232323332323233324242433262626320202020F000000060000
          0004000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000004000000060808
          0817282828332626263323232333232323332323233323232333232323332323
          2333232323331A18173317151433181614331816143319171533191715331918
          16331A1816331A1917331B1917331B1A18331B1A18331C1B19331C1B19331C1C
          1A331D1C1A331D1C1B331D1D1B331C1B1A331E1D1C3326262633272727332626
          2633262626332626263328282833101010240000000D00000009000000050000
          0003000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000000200000004000000070000000A0202
          02121E1E1E2E2828283326262633262626332626263327272733242424331D1D
          1C331E1E1C331F1F1D331F1F1C331F1E1C331E1E1C331E1D1B331D1D1B331D1C
          1A331D1C1A331C1C1A331C1B19331C1B19331B1A18331B1A18331B1917331A19
          17331A181633191715331E1E1D33232424332323233323232333232323332323
          2333232323332424243327272733030303110000000600000004000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000010000000300000005000000060A0A0A1B292929332626
          2633232323332323233323232333232323332323233323232333232222331A18
          17331716143318161433181614331917153319171533191816331A1816331A19
          17331B1917331B1A18331B1A18331C1B19331C1B19331C1C1A331D1C1A331D1C
          1A331D1C1B331C1B19331E1E1D33272727332626263326262633262626332727
          2733282828330D0D0D210000000D000000080000000500000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000004000000060000000A010101101B1B1B2C2828
          283326262633262626332626263327272733242424331D1D1C331E1E1C331F1F
          1D331F1F1D331E1E1C331E1E1C331E1D1B331D1D1B331D1C1A331D1C1A331C1B
          1A331C1B19331C1B19331B1A18331B1A18331A1917331A1917331A1816331917
          15331E1D1C332324243323232333232323332323233323232333232323332424
          2433282828330808081600000006000000040000000300000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000030000000500000007131313232828283326262633232323332323
          2333232323332323233323232333232323332222223319181633171614331816
          1433181614331917153319171533191816331A1816331A1917331B1917331B1A
          18331B1A18331C1B19331C1B19331C1C1A331D1C1A331D1C1A331D1C1B331C1B
          1A331E1E1D332727273326262633262626332626263327272733272727330B0B
          0B1F0000000D0000000800000005000000030000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000200000004000000060000000A010101101818182A28282833262626332626
          26332626263327272733252524331D1D1C331E1E1C331F1F1D331F1F1D331E1E
          1C331E1E1C331E1D1B331D1D1B331D1C1A331D1C1A331C1B1A331C1B19331C1B
          19331B1A18331B1A18331A1917331A1917331A181633181715331D1D1B332324
          2433232323332323233323232333232323332323233324242433282828330F0F
          0F20000000060000000500000003000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000003000000040000
          00060101010C2020202D27272733262626332323233323232333232323332323
          23332323233323232333222222331A1817331716143318161433181614331917
          153319171533191816331A1816331A1917331A1917331B1A18331B1A18331C1B
          19331C1B19331C1B1A331D1C1A331D1C1A331D1C1B331C1B19331E1E1D332727
          273326262633262626332626263327272733282828330D0D0D200000000D0000
          0008000000050000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000040000
          00060000000A010101101B1B1B2C282828332626263326262633262626332727
          2733242424331D1D1C331E1E1C331F1E1D331F1F1C331E1E1C331E1D1C331E1D
          1B331D1D1B331D1C1A331D1C1A331C1B19331C1B19331C1A19331B1A18331B1A
          18331A1917331A19173319181633191715331E1D1C3323242433232323332323
          233323232333232323332323233324242433282828331B1B1B2A000000090000
          0006000000040000000300000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000002000000040000000600000007090909192828
          2833272727332626263323232333232323332323233323232333232323332323
          2333232323331A18173317151433181614331816143318171533191715331918
          16331A1816331A1917331A1917331B1A18331B1A18331C1B19331C1B19331C1B
          1A331D1C1A331D1C1A331D1C1B331C1B19331D1D1C3326262633272727332626
          26332626263326262633282828330F0F0F230000000D00000009000000050000
          0003000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000000200000004000000060000000A0202
          02121E1E1E2E2828283326262633262626332626263327272733242423331D1D
          1B331E1E1C331F1E1C331F1E1C331E1E1C331E1D1C331E1D1B331D1D1B331D1C
          1A331D1C1A331C1B19331C1B19331B1A19331B1A18331B1918331A1917331A19
          173319181633191715331E1D1C33232424332323233323232333232323332323
          2333232323332424243326262633282828330505051400000007000000060000
          0004000000020000000100000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000010000
          00020000000400000006000000070101010B1C1C1C2B28282833272727332626
          2633232323332323233323232333232323332323233323232333232323331A19
          17331715143318161433181614331817153319171533191816331A1816331A19
          17331A1917331B1918331B1A18331C1A19331C1B19331C1B19331D1C1A331D1C
          1A331D1C1A331C1B1A331D1D1C33262626332727273326262633262626332626
          263328282833121212260000000E000000090000000500000003000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000004000000070000000B04040415222222302727
          273326262633262626332626263327272733232323331D1D1B331E1E1C331F1E
          1C331F1E1C331E1E1C331E1D1C331E1D1B331D1D1B331D1C1A331D1C1A331C1B
          19331C1B19331B1A18331B1A18331B1918331A1917331A181633191816331917
          15331F1E1D332323243323232333232323332323233323232333232323332424
          24332626263328282833171717260000000A0000000800000005000000040000
          0002000000020000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000020000000300000004000000060000
          0008000000080E0E0E1F29292933262626332727273326262633232323332323
          233323232333232323332323233323232333232323331B191833171514331816
          143318161433181715331917153319181633191816331A1917331A1917331B19
          18331B1A18331C1A18331C1B19331C1B19331D1C1A331D1C1A331D1C1A331C1C
          1A331C1C1B332525253327272733262626332626263326262633282828331717
          1729010101100000000A00000006000000030000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000200000004000000070000000B060606182424243127272733262626332626
          26332626263327272733222222331C1C1B331E1E1C331F1E1C331F1E1C331E1E
          1C331E1D1B331D1D1B331D1C1B331D1C1A331C1C1A331C1B19331C1B19331B1A
          18331B1A18331B1917331A1917331A18173319181633191715331F1E1E332323
          2433232323332323233323232333232323332323233324242433262626332727
          2733282828330A0A0A1B00000008000000080000000600000004000000030000
          0002000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000020000000300000004000000060000000800000009080808192727
          2732272727332626263326262633262626332323233323232333232323332323
          23332323233323232333232323331B1A19331715143318161433181614331817
          15331917153319181633191816331A1817331A1917331B1917331B1A18331B1A
          18331C1B19331C1B19331D1C1A331D1C1A331D1C1A331C1C1A331B1B19332424
          243327272733262626332626263326262633272727331F1F1F2E030303140000
          000B000000070000000400000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000003000000050000
          00080000000C0909091D28282833272727332626263326262633262626332727
          2733212120331C1C1B331E1E1C331F1E1C331E1E1C331E1E1C331E1D1B331D1D
          1B331D1C1A331D1C1A331C1C1A331C1B19331C1B19331B1A18331B1A18331B19
          17331A1917331A18163319181633191715331F1F1E3323232333232323332323
          2333232323332323233323232333242424332626263326262633272727332525
          2531050505160000000900000008000000060000000400000003000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000030000
          00040000000600000007000000090909091A2525253127272733262626332626
          2633262626332626263323232333232323332323233323232333232323332323
          2333232323331D1C1B3317151433181614331816143318171533191715331917
          1633191816331A1816331A1917331B1917331B1A18331B1A18331C1B19331C1B
          19331C1C1A331D1C1A331D1C1A331C1C1A331B1A193323232233272727332626
          2633262626332626263327272733272727330707071A0000000C000000080000
          0005000000030000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000020000000300000006000000090101010F1313
          13252828283326262633262626332626263327272733262626331F1F1E331D1C
          1B331E1E1C331F1E1C331E1E1C331E1E1C331E1D1B331D1D1B331D1C1A331D1C
          1A331C1B19331C1B19331B1B19331B1A18331B1A18331A1917331A1917331A18
          1633191816331918163321202033232323332323233323232333232323332323
          2333232323332525253327272733262626332626263327272733242424300606
          0617000000090000000800000007000000050000000300000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000300000005000000060101
          010C101010212727273227272733262626332626263326262633262626332626
          2633242424332323233323232333232323332323233323232333232323331F1E
          1D33171514331816143318161433181614331917153319171533191816331A18
          16331A1917331B1917331B1A18331B1A18331C1B19331C1B19331C1B1A331D1C
          1A331D1C1A331D1C1A331B1B1933201F1F332727273326262633262626332626
          26332626263328282833111111240000000D0000000900000005000000030000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000000200000004000000070000000A020202121F1F1F2E272727332626
          2633262626332626263327272733262626331D1D1C331D1D1C331F1E1C331F1E
          1C331E1E1C331E1D1C331D1D1B331D1D1B331D1C1A331C1C1A331C1B19331C1B
          19331B1A19331B1A18331B1918331A1917331A19173319181633191715331918
          1633222222332323233323232333232323332323233323232333232323332525
          25332727273326262633262626332626263327272733262626320D0D0D1F0101
          010C000000070000000600000004000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000000200000002000000050202020C0C0C0C1B1F1F1F2D282828332727
          2733262626332626263326262633262626332626263327272733242424332323
          2333232323332323233323232333232323332323233320201F33171614331816
          143318161433181614331917153319171533191816331A1816331A1917331A19
          17331B1918331B1A18331B1A19331C1B19331C1B19331D1C1A331D1C1A331D1C
          1A331C1B19331D1D1C3326272733262626332626263326262633262626332828
          28331C1C1C2C020202110000000A000000070000000400000002000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000030000
          0005000000080000000C0707071A262626322727273326262633262626332626
          263327272733242423331C1C1B331E1E1C331F1E1C331E1E1C331E1E1C331E1D
          1B331D1D1B331D1C1A331D1C1A331C1C1A331C1B19331C1B19331B1A18331B1A
          18331B1917331A1917331A18163319181633191715331A191833232323332323
          2333232323332323233323232333232323332323233325252533272727332626
          263326262633262626332626263327272733292929331C1C1C2B0B0B0B1B0101
          010C000000050000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010404
          040D1C1C1C272424243028282833272727332626263326262633262626332626
          2633262626332626263326262633272727332525253323232333232323332323
          2333232323332323233323232333212121331817153318161433181614331816
          1433181715331917153319181633191816331A1817331A1917331B1917331B1A
          18331B1A18331C1B19331C1B19331C1C1A331D1C1A331D1C1A331C1B1A331B1B
          1A33242424332727273326262633262626332626263327272733272727330707
          071A0000000C0000000800000005000000030000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000000200000004000000060000000A0101
          010F131313262828283326262633262626332626263326262633272727332120
          20331C1C1B331E1E1C331E1E1C331E1E1C331E1D1B331E1D1B331D1D1B331D1C
          1A331D1C1A331C1B19331C1B19331C1B19331B1A18331B1A18331A1917331A19
          17331A18163319181633181715331C1B1A332323233323232333232323332323
          2333232323332323233323232333262626332626263326262633262626332626
          263326262633262626332626263328282833282828332323232F1A1A1A260D0D
          0D1B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000004040410292929332727
          2733262626332626263326262633262626332626263326262633262626332626
          2633262626332727273325252533232323332323233323232333232323332323
          2333232323332222223319181633171614331816143318161433181715331917
          153319181533191816331A1816331A1917331B1917331B1A18331B1A18331C1B
          19331C1B19331C1C1A331D1C1A331D1C1A331D1C1A331B1A1933212120332727
          2733262626332626263326262633262626332828283318181829010101100000
          000A000000060000000400000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000020000000300000005000000070000000B05050517242424312727
          273326262633262626332626263327272733262626331E1D1C331D1D1B331E1E
          1C331E1E1C331E1E1C331E1D1B331D1D1B331D1D1B331D1C1A331D1C1A331C1B
          19331C1B19331B1A18331B1A18331B1918331A1917331A1917331A1816331918
          1633181614331E1D1C3323232333232323332323233323232333232323332323
          2333232323332626263326262633262626332626263326262633262626332626
          263326262633262626332626263327272733272727332222222B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000010202020B2525253027272733262626332626
          2633262626332626263326262633262626332626263326262633262626332727
          2733262626332323233323232333232323332323233323232333232323332323
          24331C1A19331715133318161433181614331816143318171533191715331918
          16331A1816331A1917331A1917331B1A18331B1A18331B1A18331C1B19331C1B
          19331D1C1A331D1C1A331D1C1A331C1B19331D1C1C3326262633272727332626
          2633262626332626263327272733272727330909091C0000000C000000080000
          0005000000030000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000020000
          000400000006000000090101010F161616272828283326262633262626332626
          26332626263327272733242323331C1C1A331E1D1C331E1E1C331E1E1C331E1D
          1C331E1D1B331D1D1B331D1C1A331D1C1A331C1B1A331C1B19331C1B19331B1A
          18331B1A18331B1917331A1917331A181733191816331918153318171533201F
          1F33232323332323233323232333232323332323233323232333242424332727
          2733262626332626263326262633262626332626263326262633262626332626
          2633262626332626263327272733181818220000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000100000002010101072020202B272727332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332323
          23332323233323232333232323332323233323232333232424331E1E1D331716
          1433181614331816143318161433181715331917153319181633191816331A18
          17331A1917331B1917331B1A18331B1A18331C1B19331C1B19331C1B1A331D1C
          1A331D1C1A331C1C1A331B1A1933222222332727273326262633262626332626
          263326262633282828331B1B1B2B020202120000000B00000007000000040000
          0003000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000020000000300000005000000080000
          000C0707071A2727273327272733262626332626263326262633262626332727
          27331F1E1E331C1C1A331E1E1C331E1E1C331E1E1C331E1D1B331D1D1B331D1C
          1A331D1C1A331D1C1A331C1B19331C1B19331B1A18331B1A18331B1A18331A19
          17331A1917331A18163319181633191715331918163322222133232323332323
          2333232323332323233323232333232323332424243327272733262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633282828330D0D0D1A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0003181818272828283326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263324242433232323332323
          2333232323332323233323232333232323332121203318161433181614331816
          143318161433181715331917153319171633191816331A1816331A1917331B19
          17331B1A18331B1A18331B1A18331C1B19331C1B19331D1C1A331D1C1A331D1C
          1A331B1B19331D1C1B3326262633272727332626263326262633262626332626
          263328282833101010220101010E000000090000000600000004000000020000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000020000000300000005000000070000000B030303121C1C1C2C2828
          28332626263326262633262626332626263327272733232323331C1C1A331D1D
          1B331E1E1C331E1E1C331E1D1C331E1D1B331D1D1B331D1C1A331D1C1A331C1B
          1A331C1B19331C1B19331B1A18331B1A18331B1917331A1917331A1817331918
          163319181633181715331B1A1833232323332323233323232333232323332323
          2333232323332323233325252533272727332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633292929330606
          0614000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000003000000021010101F2929
          2933262626332626263326262633262626332626263326262633262626332626
          2633262626332626263327272733252525332323233323232333232323332323
          23332323233323232333222222331A1817331716143318161433181614331816
          1433191715331917153319181633191816331A1917331A1917331B1917331B1A
          18331B1A18331C1B19331C1B19331C1C1A331D1C1A331D1C1A331C1C1A331B1A
          1933212121332727273326262633262626332626263326262633272727332727
          27330A0A0A1C0000000C00000009000000060000000400000002000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000002000000030000
          0004000000070000000A0101010F161616272828283326262633262626332626
          26332626263327272733262626331E1E1D331C1C1A331E1E1C331E1E1C331E1E
          1C331E1D1B331D1D1B331D1C1A331D1C1A331C1C1A331C1B19331C1B19331B1A
          19331B1A18331B1A18331A1917331A1917331A18163319181633191816331816
          14331E1D1C332323233323232333232323332323233323232333232323332323
          2333262626332727273326262633262626332626263326262633262626332626
          263326262633262626332626263327272733262626310404040E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000030909091528282833262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633272727332626263323232333232323332323233323232333232323332323
          2333232323331D1C1B3317151333181614331816143318161433181715331917
          153319181633191816331A1816331A1917331A1917331B1A18331B1A18331C1A
          18331C1B19331C1B19331D1C1A331D1C1A331D1C1A331B1B19331C1C1B332625
          2533272727332626263326262633262626332626263327272733242424310606
          06180000000B0000000800000006000000040000000300000002000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000002000000030000000500000007000000090101
          010D101010222828283327272733262626332626263326262633262626332727
          2733222222331C1B1A331D1D1B331E1E1C331E1D1C331E1D1B331D1D1B331D1D
          1B331D1C1A331D1C1A331C1B19331C1B19331C1B19331B1A18331B1A18331B19
          17331A1917331A18173319181633191816331917153318171533202020332323
          2333232323332323233323232333232323332323233324242433262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          263326262633272727332121212E010101080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000002000000030202020C252525312727273326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633232323332323233323232333232323332323233323232333232323332020
          1F33181614331816143318161433181614331816143318171533191715331918
          1633191816331A1817331A1917331B1917331B1A18331B1A18331C1B19331C1B
          19331C1B19331D1C1A331D1C1A331C1C1A331A1A193320201F33272727332626
          263326262633262626332626263326262633282828332020202E050505160000
          000B000000080000000600000004000000030000000200000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000020000
          00020000000300000005000000070000000A0101010E0D0D0D20272727332727
          27332626263326262633262626332626263327272733262626331D1D1C331C1C
          1B331E1D1C331E1D1C331E1D1B331E1D1B331D1D1B331D1C1A331D1C1A331C1C
          19331C1B19331C1B19331B1A18331B1A18331B1918331A1917331A1917331A18
          16331918163319171533181614331B1918332323233323232333232323332323
          2333232323332323233323232333252525332727273326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332828
          2833171717250000000400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0003010101081D1D1D2927272733262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633242424332323
          23332323233323232333232323332323233323232333232323331A1917331716
          1433181614331816143318161433181715331917153319171533191816331A18
          16331A1917331A1917331B1918331B1A18331B1A18331C1B19331C1B19331C1B
          1A331D1C1A331D1C1A331C1B1A331B1B19332323233327272733262626332626
          2633262626332626263326262633272727332222222F0808081A0101010C0000
          0009000000070000000500000003000000030000000200000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000002000000020000000300000004000000050000
          00080000000A0202020F11111123282828332727273326262633262626332626
          26332626263327272733272727331F1F1F331C1B1A331D1D1B331E1D1C331E1D
          1C331E1D1B331D1D1B331D1C1A331D1C1A331C1C1A331C1B19331C1B19331B1A
          18331B1A18331B1A18331B1917331A1917331A18163319181633191716331917
          1533181614331E1D1C3323242433232323332323233323232333232323332323
          2333232323332626263327272733262626332626263326262633262626332626
          26332626263326262633262626332626263326262633282828330C0C0C190000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000003000000041212
          1221282828332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633272727332525253323232333232323332323
          2333232323332323233323232333232324331E1D1C3317151333181614331816
          14331816143318161433191715331917153319181633191816331A1917331A19
          17331B1917331B1A18331B1A18331C1A19331C1B19331C1B19331C1C1A331D1C
          1A331C1C1A331B1B19331C1B1A33242424332727273326262633262626332626
          2633262626332626263327272733262626320D0D0D1F0101010D000000090000
          0008000000060000000400000003000000030000000200000002000000020000
          0001000000010000000100000001000000010000000100000002000000020000
          000200000003000000040000000500000006000000080000000A030303121717
          1728282828332727273326262633262626332626263326262633262626332727
          2733212121331B1B1A331D1D1B331E1D1B331E1D1B331E1D1B331D1D1B331D1C
          1A331D1C1A331D1C1A331C1B19331C1B19331C1B19331B1A18331B1A18331B19
          17331A1917331A1917331A181633191816331917153319171533191715332121
          2133232323332323233323232333232323332323233323232333242424332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633282828320303030F00000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000030000000308080815292929332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633232323332323233323232333232323332323
          2333232323332323233321212033181715331816143318161433181614331816
          1433181715331917153319171533191816331A1816331A1917331A1917331B19
          18331B1A18331B1A18331C1B19331C1B19331C1B19331C1C1A331D1C1A331C1C
          1A331B1A19331D1C1B3326262633272727332626263326262633262626332626
          263326262633272727332828283316161627050505160101010C000000090000
          0007000000060000000500000004000000030000000300000003000000030000
          0003000000030000000300000003000000030000000400000004000000050000
          000600000008000000090202020E0A0A0A1C1F1F1F2D28282833262626332626
          26332626263326262633262626332626263327272733232322331B1B1A331D1C
          1B331E1D1B331E1D1B331E1D1B331D1D1B331D1D1A331D1C1A331D1C1A331C1B
          19331C1B19331C1B19331B1A18331B1A18331B1A18331A1917331A1917331A18
          1633191816331918163319171533181614331B1A193323232333232323332323
          2333232323332323233323232333232323332525253327272733262626332626
          2633262626332626263326262633272727332727273327272733272727332626
          2633272727331F1F1F2B01010107000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000002000000040101010A2222222F27272733262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633272727332525253323232333232323332323233323232333232323332323
          2333232323331C1B1A3317151333181614331816143318161433181614331817
          15331917153319181633191816331A1816331A1917331A1917331B1A18331B1A
          18331B1A18331C1B19331C1B19331C1B19331D1C1A331D1C1A331C1C1A331A1A
          18331E1E1D332727273327272733262626332626263326262633262626332626
          263327272733282828332525253113131324040404140101010B000000090000
          0008000000070000000600000005000000050000000500000005000000050000
          000500000005000000060000000600000007000000080000000A0202020E0808
          08191B1B1B2A2828283327272733262626332626263326262633262626332626
          26332626263327272733242424331C1C1B331C1C1A331E1D1B331E1D1B331E1D
          1B331D1D1B331D1C1A331D1C1A331D1C1A331C1B1A331C1B19331C1B19331B1A
          18331B1A18331B1A18331B1917331A1917331A18163319181633191816331917
          15331817153318161433201F1F33232323332323233323232333232323332323
          2333232323332323233326262633272727332626263326262633262626332727
          27332828283329292933282828332727273328282833292929332A2A2A331212
          1221000000020000000300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000030000000516161623282828332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633272727332626
          2633232323332323233323232333232323332323233323232333232323332120
          2033181614331816143318161433181614331816143318161433191715331917
          153319181633191816331A1917331A1917331B1917331B1A18331B1A18331B1A
          18331C1B19331C1B19331C1B19331C1C1A331D1C1A331C1B1A331A1A19331F1F
          1E33262626332727273326262633262626332626263326262633262626332626
          2633272727332828283323232330131313240909091A030303110101010C0000
          0009000000080000000800000008000000080000000800000008000000080000
          00090101010A0101010D050505140C0C0C1E1919192927272733282828332626
          2633262626332626263326262633262626332626263326262633272727332424
          24331D1D1B331C1B1A331D1D1B331E1D1B331E1D1B331D1D1B331D1C1A331D1C
          1A331D1C1A331C1B1A331C1B19331C1B19331B1A18331B1A18331B1A18331B19
          17331A1917331A1817331A181633191816331917153319171533181614331B1A
          1833232323332323233323232333232323332323233323232333232323332424
          243326262633262626332626263328282833282828331F1F1F2E131313260B0B
          0B200808081C07070719080808190A0A0A1B1717172407070712000000020000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000030000
          0003090909172929293326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633242424332323
          23332323233323232333232323332323233323232333232323331C1A19331715
          1333181614331816143318161433181614331817153319171533191816331918
          16331A1816331A1917331A1917331B1917331B1A18331B1A18331C1A19331C1B
          19331C1B19331C1B19331D1C1A331C1C1A331C1B1A331A1A18331D1D1C332525
          2533272727332626263326262633262626332626263326262633262626332626
          26332727273328282833272727332121212F161616260C0C0C1E0909091A0707
          071706060615040404120505051306060616080808180909091B0E0E0E201B1B
          1B2A242424312828283328282833272727332626263326262633262626332626
          263326262633262626332727273327272733232322331C1C1A331C1B1A331D1D
          1B331D1D1B331D1D1B331D1D1B331D1C1A331D1C1A331D1C1A331C1B19331C1B
          19331C1B19331B1A18331B1A18331B1A18331B1917331A1917331A1917331A18
          163319181633191716331917153318171533181614331F1F1E33232323332323
          2333232323332323233323232333232323332323233325252533272727332727
          2733282828331B1B1B2C0909091D01010114000000100000000E0000000D0000
          000B000000090000000600000005000000040000000300000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000000100000002000000030202020B2323
          232F272727332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633272727332525253323232333232323332323
          2333232323332323233323232333232323332020203318161433181614331816
          1433181614331816143318161433191715331917153319171533191816331A18
          16331A1917331A1917331B1917331B1A18331B1A18331B1A18331C1B19331C1B
          19331C1B19331C1C1A331D1C1A331C1B1A331B1A19331C1C1B33242423332727
          2733272727332626263326262633262626332626263326262633262626332626
          2633272727332727273328282833282828332828283327272733252525312222
          222F232323302525253127272733282828332828283327272733272727332626
          2633262626332626263326262633262626332626263326262633262626332727
          273327272733212120331B1B1A331C1C1A331D1D1B331D1D1B331D1D1B331D1D
          1B331D1C1A331D1C1A331D1C1A331C1B19331C1B19331C1B19331C1A19331B1A
          18331B1A18331B1917331A1917331A1917331A18163319181633191816331917
          153319171533181614331A191833232323332323233323232333232323332323
          23332323233323232333232323332626263327272733262626320E0E0E210000
          00100000000D0000000D0000000C0000000B0000000A00000009000000070000
          0006000000040000000300000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000030000000414141422282828332626
          2633262626332727273327272733272727332727273327272733262626332626
          2633262626332626263326262633242424332323233323232333232323332323
          23332323233323232333232323331C1B1A331715133318161433181614331816
          14331816143318161433191715331917153319181633191816331A1816331A19
          17331A1917331B1917331B1A18331B1A18331B1A18331C1B19331C1B19331C1B
          19331C1B1A331C1C1A331C1C1A331B1A19331B1B193322212133262627332727
          2733262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633272727332727273327272733272727332727
          2733272727332626263326262633262626332626263326262633262626332626
          26332626263326262633262626332727273327272733252525331F1F1E331B1A
          19331C1C1A331D1D1B331D1D1B331D1D1B331D1C1B331D1C1A331D1C1A331D1C
          1A331C1B19331C1B19331C1B19331B1A18331B1A18331B1A18331B1918331A19
          17331A1917331A18163319181633191816331917153318171533181614331816
          143320201F332323233323232333232323332323233323232333232323332323
          23332525253327272733252525310707071A0000000C0000000C0000000A0000
          0009000000080000000700000007000000060000000500000004000000030000
          0002000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000300000003060606122828283328282833282828332727
          2733232323312222223023232331262626332828283328282833272727332626
          2633272727332525253323232333232323332323233323232333232323332323
          2333232323332222213319171633171614331816143318161433181614331816
          143318171433191715331917153319181633191816331A1816331A1917331A19
          17331B1917331B1A18331B1A18331B1A19331C1B19331C1B19331C1B19331C1C
          1A331C1C1A331C1C1A331B1B19331B1A19331D1D1C3323232333272727332727
          2733262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332727
          27332727273326262633212121331C1C1B331B1B19331C1C1A331D1D1B331D1D
          1B331D1D1B331D1C1A331D1C1A331D1C1A331C1B1A331C1B19331C1B19331C1B
          19331B1A18331B1A18331B1A18331B1917331A1917331A1917331A1816331918
          163319181633191715331917153318171433171613331C1B1A33232323332323
          2333232323332323233323232333232323332323233323232333272727332626
          26320808081A0000000B0000000A000000080000000700000006000000050000
          0005000000040000000400000003000000020000000200000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000200000003010101071D1D1D28181818270A0A0A1B04040416010101140101
          011501010117030303190A0A0A1F131313272323233028282833272727332626
          2633232323332323233323232333232323332323233323232333232323332323
          24331F1E1D331715143318161433181614331816143318161433181614331817
          1533191715331917153319181633191816331A1816331A1917331A1917331B19
          17331B1A18331B1A18331B1A18331C1B19331C1B19331C1B19331C1B19331C1B
          1A331C1B1A331C1B1A331B1A19331B1A19331E1E1D3324242433272727332727
          2733272727332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633272727332727273326262633222222331D1D
          1C331B1A19331C1B1A331D1C1A331D1D1B331D1C1B331D1C1A331D1C1A331D1C
          1A331C1C1A331C1B19331C1B19331C1B19331C1B19331B1A18331B1A18331B1A
          18331B1917331A1917331A1917331A1816331918163319181633191715331917
          1533181715331816143319171533222121332323233323232333232323332323
          233323232333232323332323233325252533292929330F0F0F200000000B0000
          0009000000070000000600000004000000040000000300000003000000020000
          0002000000020000000100000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000020000
          00040101010900000007000000080000000B0000000D0000000E0000000F0000
          000F0000000F00000010020202150F0F0F232626263228282833252525332323
          2333232323332323233323232333232323332323233323232333232323331B19
          1833171513331816143318161433181614331816143318161433181715331917
          15331917153319181633191816331A1816331A1917331A1917331B1917331B1A
          18331B1A18331B1A18331C1A19331C1B19331C1B19331C1B19331C1B19331C1C
          1A331C1C1A331C1B19331B1A18331B1A19331F1F1E3323232333262626332727
          2733272727332727273327272733262626332626263326262633262626332626
          2633262626332626263326262633262626332727273327272733272727332727
          27332727273325252533222221331D1D1C331B1A19331C1B1A331D1C1A331D1C
          1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C1A331C1C1A331C1B19331C1B
          19331C1B19331C1A19331B1A18331B1A18331B1A18331B1917331A1917331A19
          17331A1816331918163319181633191715331917153318171533181614331715
          14331E1E1D332323243323232333232323332323233323232333232323332323
          233323232333272727331D1D1D2C0101010D0000000900000007000000050000
          0004000000030000000200000002000000010000000100000001000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000003000000030000
          00050000000700000008000000090000000A0000000B0000000B0000000C0000
          000D0000000D0000000E050505181E1E1E2D2828283324242433232323332323
          2333232323332323233323232333232323332323233321212033181715331816
          1433181614331816143318161433181614331816143318171533191715331917
          153319181633191816331A1816331A1917331A1917331B1917331B1A18331B1A
          18331B1A18331B1A18331C1B19331C1B19331C1B19331C1B19331C1C1A331C1C
          1A331C1B1A331C1B19331B1A18331A1A18331D1C1B3320201F33232322332525
          2533262626332727273327272733272727332727273327272733272727332727
          27332727273327272733262626332626263324242433222121331F1E1E331C1B
          1A331B1A19331B1B19331C1C1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C
          1A331D1C1A331C1C1A331C1B19331C1B19331C1B19331C1B19331B1A18331B1A
          18331B1A18331B1A18331B1917331A1917331A1917331A181633191816331918
          163319171533191715331817153318161433171513331B1A1933232323332323
          2333232323332323233323232333232323332323233323232333252525332828
          28330A0A0A1B0000000800000007000000050000000300000002000000010000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000020000000300000004000000050000
          00050000000600000007000000070000000800000008000000090000000A0000
          000B0000000C020202131C1C1C2B272727332323233323232333232323332323
          2333232323332323233323232333232324331F1E1E3318161433181614331816
          1433181614331816143318161433181614331817153319171533191715331918
          1633191816331A1816331A1917331A1917331B1917331B1917331B1A18331B1A
          18331B1A18331C1A18331C1B19331C1B19331C1B19331C1B19331C1B1A331C1B
          1A331C1C1A331C1B19331B1A19331B1A18331B1A19331B1B1A331D1D1C331F1E
          1E3320201F33212120332121213322222133222221332121213321212033201F
          1F331E1E1D331D1C1B331B1B19331B1A19331B1A19331C1B1A331C1C1A331D1C
          1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C1A331C1C1A331C1B19331C1B
          19331C1B19331C1B19331C1A19331B1A18331B1A18331B1A18331B1917331A19
          17331A1917331A1917331A181633191816331918163319171533191715331817
          1533181614331715143319181633222222332323233323232333232323332323
          233323232333232323332323233324242433272727332222222E0202020F0000
          0007000000060000000300000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000002000000020000000300000003000000040000
          00040000000400000005000000050000000600000006000000080000000A0000
          000B030303132121212F26262633232323332323233323232333232323332323
          23332323233323232333232323331C1B1A331715133318161433181614331816
          1433181614331816143318161433181715331917153319171533191816331918
          16331A1816331A1817331A1917331A1917331B1917331B1A18331B1A18331B1A
          18331B1A18331C1A19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B
          19331C1B1A331C1B19331C1B19331C1B19331B1B19331B1A19331B1A18331B1A
          18331B1A19331B1A19331B1A19331B1A19331B1A19331B1A19331B1B19331C1B
          19331C1B1A331C1C1A331C1C1A331D1C1A331D1C1A331D1C1A331D1C1A331D1C
          1A331D1C1A331C1B19331C1B19331C1B19331C1B19331C1B19331C1A18331B1A
          18331B1A18331B1A18331B1917331B1917331A1917331A1917331A1816331A18
          1633191816331918163319171533191715331817153318161433181614331816
          143320201F332323243323232333232323332323233323232333232323332323
          2333232323332626263328282833161616270000000900000007000000040000
          0002000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000002000000020000000200000002000000020000
          00030000000300000003000000040000000500000007000000090000000A0808
          0819282828332323233323232333232323332323233323232333232323332323
          233323232333232222331B191833171513331816143318161433181614331816
          1433181614331816143318171533191715331917153319171533191816331918
          16331A1816331A1917331A1917331A1917331B1917331B1A18331B1A18331B1A
          18331B1A18331C1A18331C1B19331C1B19331C1B19331C1B19331C1B19331C1B
          19331C1B19331C1B19331C1B1A331C1B1A331C1C1A331C1C1A331C1B19331C1B
          1A331C1B1A331C1B1A331C1C1A331C1C1A331C1C1A331C1C1A331D1C1A331D1C
          1A331D1C1A331C1C1A331D1C1A331C1C1A331C1B19331C1B19331C1B19331C1B
          19331C1B19331C1B19331C1A18331B1A18331B1A18331B1A18331B1A18331B19
          17331A1917331A1917331A1817331A1816331918163319181633191715331917
          153319171533181715331816143318161433171614331E1D1C33232324332323
          2333232323332323233323232333232323332323233323232333252525332727
          2733282828330E0E0E1F00000008000000060000000400000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000001000000010000000100000001000000020000
          000200000002000000030000000400000006000000090000000B161616272727
          2733232323332323233323232333232323332323233323232333232323332323
          2333222222331A18173317151433181614331816143318161433181614331816
          1433181614331817143319171533191715331917153319181633191816331918
          16331A1817331A1917331A1917331A1917331B1917331B1A18331B1A18331B1A
          18331B1A18331B1A18331C1B19331C1B19331C1B19331C1B19331C1B19331C1B
          19331C1B19331C1B19331C1B19331C1B19331C1B19331C1C1A331C1B19331C1B
          19331C1B19331C1B19331C1C1A331C1C1A331C1B19331C1B19331C1B19331C1B
          19331C1B19331C1B19331C1B19331C1B19331C1B19331C1A19331B1A18331B1A
          18331B1A18331B1A18331B1918331B1917331A1917331A1917331A1917331A18
          1733191816331918163319181633191715331917153318171533181714331816
          143318161433171513331D1C1B33232323332323233323232333232323332323
          2333232323332323233323232333242424332626263326262633282828330C0C
          0C1C000000070000000500000003000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0002000000030000000500000007000000090606061627272733252525332323
          2333232323332323233323232333232323332323233323232333232323332121
          2133191716331715143318161433181614331816143318161433181614331816
          1433181614331817153319171533191715331918163319181633191816331A18
          16331A1917331A1917331A1917331B1917331B1917331B1918331B1A18331B1A
          18331B1A18331B1A18331B1A19331C1A18331C1B19331C1B19331C1B19331C1B
          19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B
          19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B
          19331C1A18331B1A19331B1A18331B1A18331B1A18331B1A18331B1A18331B19
          17331A1917331A1917331A1917331A1816331A18163319181633191816331918
          1633191715331917153318171533181614331816143318161433171513331C1B
          1A33232323332323233323232333232323332323233323232333232323332323
          233323232333262626332727273326262633282828330A0A0A1A000000070000
          0005000000030000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000020000
          000300000005000000080101010D1E1E1E2C2727273324242433232323332323
          2333232323332323233323232333232323332323233323232333212020331917
          1533171514331816143318161433181614331816143318161433181614331816
          14331817153319171533191715331917153319181633191816331A1816331A18
          16331A1817331A1917331A1917331A1917331B1917331B1918331B1A18331B1A
          18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331C1A19331C1B
          19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B19331C1B
          19331C1B19331B1A19331B1A18331B1A18331B1A18331B1A18331B1A18331B1A
          18331B1A18331B1A18331B1918331B1917331A1917331A1917331A1917331A18
          16331A1816331918163319181633191816331917153319171533181715331817
          1433181614331816143318161433171513331B1A193323232333232323332323
          2333232323332323233323232333232323332323233323232333252525332727
          27332626263326262633282828330D0D0D1D0000000700000005000000030000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000002000000040000
          0007000000091111112328282833262626332323233323232333232323332323
          2333232323332323233323232333232323332323243320202033191816331715
          1333181614331816143318161433181614331816143318161433181614331816
          1433181715331917153319171533191715331918163319181633191816331A18
          16331A1817331A1917331A1917331A1917331B1917331B1917331B1917331B1A
          18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A
          18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A18331B1A
          18331B1A18331B1A18331B1A18331B1A18331B1917331B1917331B1917331A19
          17331A1917331A1917331A1917331A1816331A18163319181633191816331918
          1633191715331917153319171533181715331816143318161433181614331816
          1433171513331B1A193323232233232323332323233323232333232323332323
          2333232323332323233323232333242424332727273326262633262626332626
          2633282828331010102200000007000000060000000300000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000400000006000000080A0A
          0A1D292929332727273326262633232323332323233323232333232323332323
          233323232333232323332323233323232433212121331A181633171513331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181715331917153319171533191715331918163319181633191816331918
          16331A1816331A1917331A1917331A1917331A1917331A1917331A1917331B19
          17331B1917331B1918331B1918331B1A18331B1A18331B1A18331B1A18331B1A
          18331B1A18331B1A18331B1A18331B1A18331B1A18331B1918331B1917331B19
          17331B1917331A1917331A1917331A1917331A1917331A1917331A1817331A18
          1633191816331918163319181633191816331917153319171533181715331817
          15331816143318161433181614331816143318161433171514331C1B1A332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333242424332626263326262633262626332626263326262633282828331A1A
          1A290000000A0000000600000004000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000020000000300000006000000070909091A282828332727
          2733272727332525253323232333232323332323233323232333232323332323
          2333232323332323233323232333222121331A19173317151333181614331816
          1433181614331816143318161433181614331816143318161433181614331817
          1433181715331917153319171533191715331918163319181633191816331918
          16331A1816331A1816331A1917331A1917331A1917331A1917331A1917331A19
          17331A1917331A1917331A1917331A1917331A1917331A1917331A1917331A19
          17331A1917331A1917331A1917331A1917331A1917331A1917331A1917331A19
          17331A1917331A1816331A1816331A1816331918163319181633191816331918
          1633191715331917153319171533181715331816143318161433181614331816
          14331816143318161433181614331D1C1B332323233323232333232323332323
          2333232323332323233323232333232323332323233324242433262626332727
          2733262626332626263326262633262626332727273325252531030303110000
          0006000000050000000300000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00020000000300000006000000070808081A2828283327272733262626332727
          2733252525332323233323232333232323332323233323232333232323332323
          23332323233323232333222222331C1B19331716143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181715331917153319171533191715331917153319181633191816331918
          163319181633191816331A1816331A1816331A1816331A1816331A1917331A19
          17331A1917331A1917331A1917331A1917331A1917331A1917331A1917331A19
          17331A1917331A1816331A1816331A1816331A1816331A181633191816331918
          1633191816331918163319181533191715331917153319171533181715331817
          1533181614331816143318161433181614331816143318161433171514331816
          15331E1E1D332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333262626332727273326262633262626332626
          2633262626332626263326262633282828330F0F0F1F00000007000000060000
          0003000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000030000
          0006000000070A0A0A1D29292933262626332626263326262633272727332525
          2533232323332323233323232333232323332323233323232333232323332323
          233323232333232323331E1D1D33181614331715143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181715331817153319171533191715331917153319171533191715331918
          1633191816331918163319181633191816331918163319181633191816331A18
          16331A1816331A1816331A1816331A1816331918163319181633191816331918
          1633191816331918163319181633191816331917163319171533191715331917
          1533191715331917153318171533181614331816143318161433181614331816
          1433181614331816143318161433171513331A18173321202033232424332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333262626332727273326262633262626332626263326262633262626332626
          26332626263327272733232323300202020E0000000600000004000000020000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000400000006000000081111
          1122282828332626263326262633262626332626263327272733252525332323
          2333232323332323233323232333232323332323233323232333232323332323
          233323242433202020331A181733171513331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181614331817153318171533181715331917153319171533191715331917
          1533191715331917153319181633191816331918163319181633191816331918
          1633191816331918163319181633191816331918163319171533191715331917
          1533191715331917153319171533191715331817153318171533181714331816
          1433181614331816143318161433181614331816143318161433181614331716
          1433181614331C1B1A3322222233232324332323233323232333232323332323
          2333232323332323233323232333232323332323233326262633272727332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633282828331616162500000007000000040000000300000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000004000000070101010C1D1D1D2B272727332626
          2633262626332626263326262633262626332626263325252533232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333222222331D1C1B3318161533171514331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181614331816143318171433181715331817153319171533191715331917
          1533191715331917153319171533191715331917153319171533191715331917
          1533191715331917153319171533191715331917153318171533181715331817
          1533181714331817143318161433181614331816143318161433181614331816
          14331816143318161433181614331816143317151333191816331F1F1E332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233326262633272727332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332828
          28330F0F0F1D0000000400000003000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0003000000050000000705050514272727332727273326262633262626332626
          2633262626332626263326262633272727332525253323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333212020331B1A183317161433171514331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181714331817
          1433181714331817153318171533181715331817153318171533181714331817
          1433181714331816143318161433181614331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          143317151333181615331D1C1B33222222332323243323232333232323332323
          2333232323332323233323232333232323332323233323232333242424332626
          2633272727332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633292929331010
          101D000000020000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000004000000060000
          0007151515252828283326262633262626332626263326262633262626332626
          2633262626332626263327272733262626332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          23331F1E1E331A19173317161433171514331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          14331816143318161433181614331816143317151333181614331C1A19332121
          2033232324332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333242424332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          263326262633262626332626263326262633292929330F0F0F1D000000020000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000040000000506060614272727322727
          2733262626332626263326262633262626332626263326262633262626332626
          2633262626332727273326262633242424332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232324332323
          23331F1E1E331A19173318161433171513331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          143317151333181715331C1B1A33212020332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333252525332626263327272733262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332828283314141422000000040000000300000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000003000000030101010A1E1E1E2B2727273326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633272727332626263324242433232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232324332323
          23331F1F1E331B1A193318171533171514331716143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          14331816143318161433181614331715133317161433191816331D1C1B332121
          2033232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233325252533272727332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633282828331A1A
          1A28010101090000000400000003000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000020101
          0109191919272828283326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633272727332525253323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232424332323
          2333212121331E1D1C331A191733181614331715133317151433171614331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433181614331816
          1433181614331816143318161433181614331816143317151433171513331715
          1333191715331B1A19331F1F1E33222222332323243323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332424243326262633272727332828283328282833282828332828
          2833282828332828283328282833282828332727273326262633262626332626
          2633262626332626263326262633282828331F1F1F2C0202020D000000050000
          0004000000020000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000000100000001070707132A2A2A332727
          2733262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332727
          2733262626332424243323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332324
          243323232333212020331E1E1D331C1A19331918163318161433171513331715
          1333171514331716143318161433181614331816143318161433181614331816
          1433181614331816143318161433181614331816143318161433171614331715
          13331715133317161433191715331A1917331D1C1B331F1F1E33222121332323
          2333232324332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333252525332727
          273328282833262626321D1D1D2E131313270D0D0D230A0A0A210A0A0A220D0D
          0D24141414291E1E1E2F27272733282828332727273326262633262626332626
          2633282828332121212E03030311000000060000000500000003000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000003000000040A0A0A1928282833272727332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633272727332727
          2733252525332424243323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          233323232333232323332222223320201F331F1E1D331D1C1B331C1A19331A19
          1733191715331817153318161533181615331816143318161433181614331816
          1433181615331817153318171533191716331B1918331C1B1A331E1D1C331F1F
          1E33212121332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233324242433262626332828283326262632151515280606
          061C000000140000001300000013000000130000001400000015000000160101
          01180707071F16161629272727322727273326262633282828332121212E0404
          0412000000070000000600000004000000020000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000000200000004000000050B0B0B1B2828283327272733262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633272727332727273327272733272727332727273327272733272727332626
          2633252525332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323242433232323332323233323232333222222332121
          21332121203320201F33201F1F331F1F1E33201F1E3320201F33212020332121
          2133222121332222223323232333232323332323243323242433232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333242424332525
          253327272733282828331F1F1F2E0707071C0000001200000010000000100000
          000F0000000F0000000F00000010000000110000001200000013000000130000
          00140808081D2020202E292929332121212E0404041200000007000000070000
          0004000000030000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          000300000005000000060B0B0B1C282828332727273326262633262626332626
          2633262626332626263326262633262626332727273328282833282828332424
          2432212121302020202F22222230262626322828283328282833272727332626
          2633252525332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233324242433252525332626263327272733282828331B1B
          1B2B020202160000000F0000000E0000000C0000000B0000000A0000000A0000
          000B0000000B0000000C0000000D0000000E0000000F0000000F0000000D0303
          0313171717260404041300000007000000070000000500000003000000020000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000003000000040000
          0007000000080A0A0A1B26262631272727332626263326262633262626332626
          263327272733282828332020203011111127070707200303031C0202021A0202
          02190303031A0404041C0B0B0B211818182A2626263228282833272727332626
          2633252525332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333242424332525
          2533262626332727273326262633282828331C1C1C2C020202140000000E0000
          000C0000000A0000000800000007000000070000000700000007000000070000
          0008000000090000000A0000000B0000000B0000000B0000000A000000080000
          0007000000060000000400000003000000020000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000300000005000000080000
          0009070707172222222F28282833262626332626263328282833222222300C0C
          0C230202021A0000001600000014000000130000001200000011000000110000
          001100000011000000130505051B151515282828283327272733272727332626
          2633252525332424243323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233324242433252525332727273327272733262626332626
          26332727273324242431040404170000000D0000000B00000009000000070000
          0005000000050000000400000004000000040000000500000005000000060000
          0006000000070000000700000007000000070000000600000005000000040000
          0003000000020000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000002000000040000000600000008000000090404
          04131E1E1E2C28282833282828331919192A0303031800000014000000130000
          0012000000100000000F0000000E0000000D0000000D0000000D0000000E0000
          000F00000010000000120A0A0A20242424312828283326262633272727332626
          2633262626332525253323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233324242433252525332626
          2633272727332727273326262633262626332626263326262633282828330D0D
          0D210000000E0000000C00000009000000060000000500000003000000030000
          0002000000020000000200000003000000030000000300000004000000040000
          0005000000050000000400000004000000030000000200000002000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000000200000003000000040000000600000008000000090101010F1919
          192818181827010101110000000F000000100000000F0000000D0000000C0000
          000B0000000A000000090000000900000009000000090000000B0000000C0000
          000E000000100707071C24242431272727332626263326262633272727332727
          2733262626332626263325252533242424332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333242424332525253326262633262626332727273326262633262626332626
          2633262626332626263326262633272727332121212F020202130000000C0000
          0009000000060000000400000003000000020000000100000001000000010000
          0001000000010000000200000002000000020000000200000003000000030000
          0003000000020000000200000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000200000002000000040000000500000007000000080101010B0101010C0000
          000B0000000C0000000C0000000A000000090000000800000007000000060000
          000600000006000000060000000600000007000000090000000B0000000D0000
          000F0808081D2727273327272733262626332626263326262633262626332727
          2733272727332727273326262633262626332525253324242433242424332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332323233323232333232323332323233323232333232323332323
          2333232323332424243324242433252525332626263326262633272727332727
          2733262626332626263326262633262626332626263326262633262626332626
          26332626263328282833121212240000000D0000000A00000007000000050000
          0003000000020000000100000001000000010000000000000000000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0002000000030000000500000006000000060000000700000008000000080000
          0008000000070000000600000005000000040000000400000003000000030000
          0003000000040000000500000006000000080000000A0000000D000000101111
          1125282828332626263326262633262626332626263326262633262626332626
          2633262626332727273327272733272727332727273326262633262626332626
          2633252525332525253325252533252525332525253324242433242424332525
          2533252525332525253325252533252525332626263326262633272727332727
          2733272727332727273327272733262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332828
          28330606061A0000000C00000009000000060000000300000002000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000020000
          0003000000040000000400000005000000050000000500000005000000040000
          0004000000030000000300000002000000020000000200000002000000020000
          00030000000400000005000000070000000B0000000E02020215222222302727
          2733262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332727273327272733272727332727
          2733272727332727273328282833282828332828283328282833272727332828
          2833282828332929293328282833272727332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332727273324242431030303140000
          000B000000080000000500000003000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000002000000020000
          0003000000030000000300000003000000030000000300000002000000020000
          0001000000010000000100000001000000010000000100000002000000020000
          000400000005000000080000000C0000000F1010102328282833262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263327272733282828332828
          28331E1E1E2F131313280C0C0C22080808200606061E080808200C0C0C231414
          14291F1F1F2F2828283328282833272727332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          26332626263326262633272727332020202E020202120000000A000000070000
          0004000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000020000
          0002000000020000000200000001000000010000000100000001000000000000
          0000000000000000000000000000000000010000000100000002000000040000
          00060000000A0000000D05050519272727332727273326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633262626332626263327272733282828331B1B1B2D08080820010101180000
          0014000000130000001300000013000000130000001400000014010101190909
          09211C1C1C2D2828283327272733262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332626
          2633272727331F1F1F2D01010110000000090000000600000004000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000300000005000000080000
          000C010101121F1F1F2E27272733262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332727
          2733262626320E0E0E25010101170000001300000012000000100000000F0000
          000E0000000E0000000F0000000F000000110000001200000014010101180F0F
          0F26262626322727273326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332626263326262633272727332121
          212E020202100000000800000006000000030000000200000001000000000000
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
          000000000001000000010000000200000004000000070000000B0000000E1818
          182A282828332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332727273324242431080808200000
          001500000013000000100000000E0000000C0000000B0000000A0000000A0000
          000A0000000B0000000C0000000E0000001100000013000000160A0A0A222626
          2632272727332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633262626332727273325252531020202110000
          0007000000050000000300000002000000010000000000000000000000000000
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
          00010000000200000004000000060000000A0000000C15151527282828332626
          2633262626332626263326262633262626332626263326262633262626332626
          26332626263327272733262626320909092100000014000000120000000F0000
          000C0000000A0000000800000007000000070000000600000007000000070000
          00090000000A0000000D0000000F00000013000000150A0A0A22272727332727
          2733262626332626263326262633262626332626263326262633262626332626
          2633262626332626263326262633282828330707071700000006000000050000
          0003000000010000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000001000000010000
          000300000005000000080000000B151515272828283326262633262626332626
          2633262626332626263326262633262626332626263326262633262626332828
          28330F0F0F2500000014000000120000000E0000000B00000009000000070000
          0005000000040000000400000004000000040000000500000006000000070000
          00090000000C0000000F00000012000000151111112728282833262626332626
          2633262626332626263326262633262626332626263326262633262626332727
          2733282828332A2A2A331010101E000000050000000400000002000000010000
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
          0000000000000000000000000000000000000000000100000003000000050000
          0007000000091818182928282833262626332626263326262633262626332626
          263326262633262626332626263326262633282828331E1E1E2E010101170000
          00120000000E0000000B00000008000000060000000400000003000000030000
          0002000000020000000200000003000000030000000500000006000000090000
          000B0000000F00000012020202182020202F2727273326262633262626332626
          2633262626332626263326262633282828332828283324242431161616260808
          08180101010B0000000500000003000000020000000100000000000000000000
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
          00000000000000000000000000010000000200000004000000060101010B2121
          212D292929332828283327272733262626332626263326262633262626332626
          26332626263326262633282828330C0C0C22000000120000000F0000000C0000
          0008000000060000000400000003000000020000000100000001000000010000
          00010000000200000002000000030000000400000006000000090000000C0000
          000F000000110D0D0D2228282833262626332626263327272733282828332828
          2833272727331C1C1C2C0D0D0D21030303140000000C00000008000000060000
          0005000000030000000100000001000000000000000000000000000000000000
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
          0000000000010000000200000003000000050000000806060614111111221A1A
          1A2B252525312828283328282833282828332727273327272733262626332727
          273323232330030303160000000F0000000C0000000900000006000000040000
          0003000000020000000100000001000000010000000000000001000000010000
          000100000002000000030000000400000006000000090000000C0000000E0404
          04162424243029292933282828332121212F171717290D0D0D21040404180101
          01120000000D0000000B00000009000000070000000500000003000000020000
          0001000000010000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000020000000400000006000000070000000A0101010E030303160909
          091E141414271C1C1C2D2222223026262632292929332A2A2A331818182A0000
          000F0000000D0000000A00000007000000050000000300000002000000010000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000030000000400000007000000090000000C0000000D111111221010
          10220505051902020214000000100000000F0000000D0000000C0000000B0000
          0009000000070000000500000004000000020000000100000001000000000000
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
          0000000000000000000000000000000000000000000000000001000000020000
          00030000000400000006000000080000000A0000000B0000000D0000000F0000
          001002020214050505180808081C101010210A0A0A1A0000000A000000090000
          0007000000040000000300000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000020000
          00030000000400000006000000080000000A0000000A0000000B0000000B0000
          000C0000000C0000000B0000000A000000080000000700000006000000040000
          0003000000020000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000}
        BitmapOptions.LeftMargin = 0
        BitmapOptions.TopMargin = 0
        BitmapOptions.RightMargin = 0
        BitmapOptions.BottomMargin = 0
        BitmapOptions.AlphaBlend = True
        BitmapOptions.AlphaBlendBorder = False
        BitmapOptions.AlphaBlendCorners = False
        BitmapOptions.Stretch = True
        BitmapOptions.StretchBorder = False
        BitmapOptions.DrawOnlyBorder = False
        BitmapOptions.DrawInClipRect = False
        BitmapOptions.ContentLeftMargin = 0
        BitmapOptions.ContentRightMargin = 0
        BitmapOptions.ContentTopMargin = 0
        BitmapOptions.ContentBottomMargin = 0
        DrawStyle = idsTopRight
        TileOffsetX = 0
        TileOffsetY = 0
      end>
    Left = 607
    Top = 271
  end
  object scColorDialog1: TscColorDialog
    Scaled = True
    AnimationOnControls = True
    Color = clBlack
    Left = 607
    Top = 271
  end
  object scFontDialog1: TscFontDialog
    ColorDialogCustom = scColorDialog1
    PreviewText = 'AaBbYyZz'
    Scaled = True
    AnimationOnControls = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 624
    Top = 199
  end
  object scPrintDialog1: TscPrintDialog
    MinMarginLeft = 0
    MinMarginTop = 0
    MinMarginRight = 0
    MinMarginBottom = 0
    MaxMarginLeft = 2500
    MaxMarginTop = 2500
    MaxMarginRight = 2500
    MaxMarginBottom = 2500
    MarginLeft = 2500
    MarginTop = 2500
    MarginRight = 2500
    MarginBottom = 2500
    Copies = 0
    MaxPage = 10
    PrintToFileText = 'Print to file'
    Options = [scpsoDisablePrintToFile]
    Scaled = True
    AnimationOnControls = True
    Left = 526
    Top = 271
  end
end
