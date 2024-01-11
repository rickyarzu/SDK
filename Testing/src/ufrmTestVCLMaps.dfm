object frmTestVCLMaps: TfrmTestVCLMaps
  Left = 0
  Top = 0
  Caption = 'Test VCL Maps'
  ClientHeight = 700
  ClientWidth = 1062
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Shader1: TShader
    Left = 0
    Top = 0
    Width = 1062
    Height = 97
    Align = alTop
    TabOrder = 0
    FromColor = 16250613
    ToColor = 16250613
    Direction = False
    Version = '1.4.2.0'
    DesignSize = (
      1062
      97)
    object lbUrl: TLabel
      Left = 16
      Top = 64
      Width = 819
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'URL'
    end
    object lbLatitude: TLabel
      Left = 925
      Top = 64
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = '0.0'
    end
    object lbLongitude: TLabel
      Left = 1031
      Top = 64
      Width = 16
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = '0.0'
    end
    object lbAddressTest: TLabeledEdit
      Left = 16
      Top = 30
      Width = 713
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 90
      EditLabel.Height = 13
      EditLabel.Caption = 'Indirizzo per il Test'
      TabOrder = 0
      TextHint = 'Indirizzo per il Test'
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 735
      Top = 3
      Width = 100
      Height = 41
      Anchors = [akTop, akRight]
      Caption = 'Open Street Maps'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = AdvGlowButton1Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object AdvGlowButton2: TAdvGlowButton
      Left = 841
      Top = 3
      Width = 100
      Height = 41
      Anchors = [akTop, akRight]
      Caption = 'Google Maps'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = AdvGlowButton2Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object AdvGlowButton3: TAdvGlowButton
      Left = 947
      Top = 3
      Width = 100
      Height = 41
      Anchors = [akTop, akRight]
      Caption = 'Tms GMaps'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      OnClick = AdvGlowButton3Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object WebGMapsLookupEdit1: TWebGMapsLookupEdit
      Left = 136
      Top = 3
      Width = 593
      Height = 21
      APIKey = 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c'
      EmptyText = 'Ricerca su Google Maps'
      EmptyTextStyle = []
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Language = 'en'
      Color = clWindow
      TabOrder = 4
      Text = ''
      Visible = True
      OnChange = WebGMapsLookupEdit1Change
      Version = '1.0.1.0'
    end
  end
  object AdvMemo1: TAdvMemo
    Left = 0
    Top = 97
    Width = 529
    Height = 603
    Cursor = crIBeam
    ActiveLineSettings.ShowActiveLine = False
    ActiveLineSettings.ShowActiveLineIndicator = False
    Align = alLeft
    AutoCompletion.Font.Charset = DEFAULT_CHARSET
    AutoCompletion.Font.Color = clWindowText
    AutoCompletion.Font.Height = -11
    AutoCompletion.Font.Name = 'Tahoma'
    AutoCompletion.Font.Style = []
    AutoCompletion.StartToken = '(.'
    AutoCorrect.Active = True
    AutoHintParameterPosition = hpBelowCode
    BookmarkGlyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A6000020400000206000002080000020A0000020C0000020E000004000000040
      20000040400000406000004080000040A0000040C0000040E000006000000060
      20000060400000606000006080000060A0000060C0000060E000008000000080
      20000080400000806000008080000080A0000080C0000080E00000A0000000A0
      200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
      200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
      200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
      20004000400040006000400080004000A0004000C0004000E000402000004020
      20004020400040206000402080004020A0004020C0004020E000404000004040
      20004040400040406000404080004040A0004040C0004040E000406000004060
      20004060400040606000406080004060A0004060C0004060E000408000004080
      20004080400040806000408080004080A0004080C0004080E00040A0000040A0
      200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
      200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
      200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
      20008000400080006000800080008000A0008000C0008000E000802000008020
      20008020400080206000802080008020A0008020C0008020E000804000008040
      20008040400080406000804080008040A0008040C0008040E000806000008060
      20008060400080606000806080008060A0008060C0008060E000808000008080
      20008080400080806000808080008080A0008080C0008080E00080A0000080A0
      200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
      200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
      200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
      2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
      2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
      2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
      2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
      2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
      2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
      2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
      2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
      2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
      B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
      B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
      BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
      BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
      BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
      25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
    BorderStyle = bsSingle
    ClipboardFormats = [cfText]
    CodeFolding.Enabled = False
    CodeFolding.LineColor = clGray
    Ctl3D = False
    DelErase = True
    EnhancedHomeKey = False
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -13
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'COURIER NEW'
    Font.Style = []
    HiddenCaret = False
    Lines.Strings = (
      '')
    MarkerList.UseDefaultMarkerImageIndex = False
    MarkerList.DefaultMarkerImageIndex = -1
    MarkerList.ImageTransparentColor = 33554432
    OleDropTarget = []
    PrintOptions.MarginLeft = 0
    PrintOptions.MarginRight = 0
    PrintOptions.MarginTop = 0
    PrintOptions.MarginBottom = 0
    PrintOptions.PageNr = False
    PrintOptions.PrintLineNumbers = False
    RightMarginColor = 14869218
    ScrollHint = False
    SelColor = clWhite
    SelBkColor = clNavy
    ShowRightMargin = True
    SmartTabs = False
    SyntaxStyles = AdvJSONMemoStyler1
    TabOrder = 1
    TabStop = True
    TrimTrailingSpaces = False
    UILanguage.ScrollHint = 'Row'
    UILanguage.Undo = 'Undo'
    UILanguage.Redo = 'Redo'
    UILanguage.Copy = 'Copy'
    UILanguage.Cut = 'Cut'
    UILanguage.Paste = 'Paste'
    UILanguage.Delete = 'Delete'
    UILanguage.SelectAll = 'Select All'
    UrlStyle.TextColor = clBlue
    UrlStyle.BkColor = clWhite
    UrlStyle.Style = [fsUnderline]
    UseStyler = True
    Version = '3.5.4.5'
    WordWrap = wwNone
  end
  object WebGMaps1: TWebGMaps
    Left = 529
    Top = 97
    Width = 533
    Height = 603
    Align = alClient
    Clusters = <>
    Markers = <>
    Polylines = <>
    Polygons = <>
    Directions = <>
    MapOptions.DefaultLatitude = 48.859040000000000000
    MapOptions.DefaultLongitude = 2.294297000000000000
    Routing.PolylineOptions.Icons = <>
    StreetViewOptions.DefaultLatitude = 48.859040000000000000
    StreetViewOptions.DefaultLongitude = 2.294297000000000000
    MapPersist.Location = mplInifile
    MapPersist.Key = 'WebGMaps'
    MapPersist.Section = 'MapBounds'
    PolygonLabel.Font.Charset = DEFAULT_CHARSET
    PolygonLabel.Font.Color = clBlack
    PolygonLabel.Font.Height = -16
    PolygonLabel.Font.Name = 'Arial'
    PolygonLabel.Font.Style = []
    TabOrder = 2
    Version = '2.8.0.2'
  end
  object JanuaStreetMap: TJanuaStreetMap
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    ApplicationType = jatDefault
    Language = jlaNone
    TestMode = False
    JanuaOS = JanuaVCLOS1
    Left = 680
    Top = 64
  end
  object JanuaGoogleGeoCoding: TJanuaGoogleGeoCoding
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    ApplicationType = jatDefault
    Language = jlaNone
    TestMode = False
    JanuaOS = JanuaVCLOS1
    NetHTTPRequest = NetHTTPRequest1
    GoogleKey = 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c'
    Left = 680
    Top = 144
  end
  object NetHTTPRequest1: TNetHTTPRequest
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    Client = NetHTTPClient1
    Left = 680
    Top = 216
  end
  object NetHTTPClient1: TNetHTTPClient
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    AllowCookies = True
    HandleRedirects = True
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 680
    Top = 288
  end
  object JanuaVCLOS1: TJanuaVCLOS
    Directory = '.'
    HasErrors = False
    CustomServer = False
    ResolveToFile = False
    Left = 680
    Top = 360
  end
  object JanuaCoreLogger1: TJanuaCoreLogger
    JanuaOS = JanuaVCLOS1
    Component = Owner
    LogType = jltError
    AutoFileName = True
    IsCustomServer = False
    ErrorFileName = 'Error'
    LogFileName = 'Log'
    ApplicationType = jatDefault
    Left = 680
    Top = 432
  end
  object AdvFormStyler1: TAdvFormStyler
    Style = tsWindows10
    Left = 480
    Top = 336
  end
  object AdvJSONMemoStyler1: TAdvJSONMemoStyler
    CommentStyle.TextColor = clNavy
    CommentStyle.BkColor = clWhite
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clFuchsia
    NumberStyle.BkColor = clWhite
    NumberStyle.Style = [fsBold]
    HighlightStyle.TextColor = clWhite
    HighlightStyle.BkColor = clRed
    HighlightStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          'false'
          'null'
          'true')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'JSON Standard Default'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = #39
        BracketEnd = #39
        Info = 'Simple Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = '"'
        BracketEnd = '"'
        Info = 'Double Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ',:(){}[]='
        Info = 'Symbols'
      end>
    HintParameter.TextColor = clBlack
    HintParameter.BkColor = clInfoBk
    HintParameter.HintCharStart = '('
    HintParameter.HintCharEnd = ')'
    HintParameter.HintCharDelimiter = ';'
    HintParameter.HintClassDelimiter = '.'
    HintParameter.HintCharWriteDelimiter = ','
    HexIdentifier = '0x'
    Description = 'JSON'
    Filter = 'JSON Files (*.json)|*.json'
    DefaultExtension = '.json'
    StylerName = 'JSON'
    Extensions = 'json'
    RegionDefinitions = <
      item
        Identifier = '{'
        RegionStart = '{'
        RegionEnd = '}'
        RegionType = rtClosed
        ShowComments = False
      end>
    Left = 480
    Top = 400
  end
  object WebGMapsGeocoding1: TWebGMapsGeocoding
    APIKey = 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c'
    Version = '1.0.2.1'
    Left = 681
    Top = 513
  end
end
