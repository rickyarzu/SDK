object PopupForm2: TPopupForm2
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'PopupForm2'
  ClientHeight = 232
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object scListBox1: TscListBox
    Left = 16
    Top = 16
    Width = 153
    Height = 137
    Items.Strings = (
      'Item1'
      'Item2'
      'Item3'
      'Item4'
      'Item5'
      'Item6'
      'Item7'
      'Item8'
      'Item9'
      'Item10'
      'Item11')
    ItemIndex = -1
    ImageIndex = -1
    WordBreak = False
    LineColor = clBtnFace
    ShowLines = False
    SelectionStyle = scstStyled
    ShowFocusRect = True
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    TabOrder = 0
  end
  object scButton1: TscButton
    Left = 16
    Top = 190
    Width = 100
    Height = 29
    TabOrder = 1
    TabStop = True
    OnClick = scButton1Click
    Animation = False
    Caption = 'Ok'
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
    Left = 136
    Top = 190
    Width = 100
    Height = 29
    TabOrder = 2
    TabStop = True
    OnClick = scButton2Click
    Animation = False
    Caption = 'Cancel'
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
  object scCheckBox1: TscCheckBox
    Left = 192
    Top = 16
    Width = 100
    Height = 32
    TabOrder = 3
    TabStop = True
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
    Caption = 'scCheckBox1'
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
    Left = 192
    Top = 62
    Width = 100
    Height = 31
    TabOrder = 4
    TabStop = True
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
    Caption = 'scCheckBox2'
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
  object scTreeView1: TscTreeView
    Left = 305
    Top = 7
    Width = 204
    Height = 217
    CheckBoxes = False
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    HideSelection = False
    Indent = 19
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 5
    Items.NodeData = {
      0309000000280000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000000000001054900740065006D003100280000000000000000000000FFFFFF
      FFFFFFFFFF00000000000000000100000001054900740065006D0032002A0000
      000000000000000000FFFFFFFFFFFFFFFF000000000000000003000000010649
      00740065006D00320031002C0000000000000000000000FFFFFFFFFFFFFFFF00
      000000000000000000000001074900740065006D003200310031002C00000000
      00000000000000FFFFFFFFFFFFFFFF0000000000000000030000000107490074
      0065006D003200310032002E0000000000000000000000FFFFFFFFFFFFFFFF00
      000000000000000000000001084900740065006D0032003100320031002E0000
      000000000000000000FFFFFFFFFFFFFFFF000000000000000003000000010849
      00740065006D003200310032003200300000000000000000000000FFFFFFFFFF
      FFFFFF00000000000000000000000001094900740065006D0032003100320032
      003100300000000000000000000000FFFFFFFFFFFFFFFF000000000000000002
      00000001094900740065006D0032003100320032003200320000000000000000
      000000FFFFFFFFFFFFFFFF000000000000000000000000010A4900740065006D
      00320031003200320032003100320000000000000000000000FFFFFFFFFFFFFF
      FF000000000000000000000000010A4900740065006D00320031003200320032
      003200300000000000000000000000FFFFFFFFFFFFFFFF000000000000000000
      00000001094900740065006D00320031003200320033002E0000000000000000
      000000FFFFFFFFFFFFFFFF00000000000000000000000001084900740065006D
      0032003100320033002C0000000000000000000000FFFFFFFFFFFFFFFF000000
      00000000000000000001074900740065006D0032003100330028000000000000
      0000000000FFFFFFFFFFFFFFFF00000000000000000000000001054900740065
      006D003300280000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000200000001054900740065006D0034002A0000000000000000000000FFFFFF
      FFFFFFFFFF00000000000000000000000001064900740065006D00340031002A
      0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000000001
      064900740065006D0034003200280000000000000000000000FFFFFFFFFFFFFF
      FF00000000000000000000000001054900740065006D00350028000000000000
      0000000000FFFFFFFFFFFFFFFF00000000000000000000000001054900740065
      006D003600280000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000300000001054900740065006D0037002A0000000000000000000000FFFFFF
      FFFFFFFFFF00000000000000000000000001064900740065006D00370031002A
      0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000200000001
      064900740065006D00370032002C0000000000000000000000FFFFFFFFFFFFFF
      FF00000000000000000000000001074900740065006D003700320031002C0000
      000000000000000000FFFFFFFFFFFFFFFF000000000000000001000000010749
      00740065006D003700320032002E0000000000000000000000FFFFFFFFFFFFFF
      FF00000000000000000000000001084900740065006D0037003200320031002A
      0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000000001
      064900740065006D0037003300280000000000000000000000FFFFFFFFFFFFFF
      FF00000000000000000000000001054900740065006D00380028000000000000
      0000000000FFFFFFFFFFFFFFFF00000000000000000000000001054900740065
      006D003900}
    ButtonCollapseImageIndex = 0
    ButtonExpandImageIndex = 1
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ButtonColor = clNone
    ButtonGlyphColor = clBtnFace
    ShowFocusRect = False
    DefaultDraw = False
    ButtonStyle = scebsArrow
  end
  object scStyledForm1: TscStyledForm
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
    OnCloseUp = scStyledForm1CloseUp
    Left = 416
    Top = 24
  end
end
