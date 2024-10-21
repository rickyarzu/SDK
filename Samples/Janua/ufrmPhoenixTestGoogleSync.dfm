object frmVCLPhoenixTestGoogleSync: TfrmVCLPhoenixTestGoogleSync
  Left = 0
  Top = 0
  Caption = 'Test Google Sync'
  ClientHeight = 835
  ClientWidth = 1584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  DesignSize = (
    1584
    835)
  TextHeight = 15
  object SVGIconImage1: TSVGIconImage
    Left = 8
    Top = 8
    Width = 281
    Height = 225
    AutoSize = False
    SVGText = 
      '<?xml version="1.0" encoding="iso-8859-1"?>'#13#10'<!-- Generator: Ado' +
      'be Illustrator 19.0.0, SVG Export Plug-In . SVG Version: 6.00 Bu' +
      'ild 0)  -->'#13#10'<svg version="1.1" id="Layer_1" xmlns="http://www.w' +
      '3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0p' +
      'x" y="0px"'#13#10#9' viewBox="0 0 512 512" style="enable-background:new' +
      ' 0 0 512 512;" xml:space="preserve">'#13#10'<path style="fill:#167EE6;' +
      '" d="M492.668,211.489l-208.84-0.01c-9.222,0-16.697,7.474-16.697,' +
      '16.696v66.715'#13#10#9'c0,9.22,7.475,16.696,16.696,16.696h117.606c-12.8' +
      '78,33.421-36.914,61.41-67.58,79.194L384,477.589'#13#10#9'c80.442-46.523' +
      ',128-128.152,128-219.53c0-13.011-0.959-22.312-2.877-32.785C507.6' +
      '65,217.317,500.757,211.489,492.668,211.489z"/>'#13#10'<path style="fil' +
      'l:#12B347;" d="M256,411.826c-57.554,0-107.798-31.446-134.783-77.' +
      '979l-86.806,50.034'#13#10#9'C78.586,460.443,161.34,512,256,512c46.437,0' +
      ',90.254-12.503,128-34.292v-0.119l-50.147-86.81'#13#10#9'C310.915,404.08' +
      '3,284.371,411.826,256,411.826z"/>'#13#10'<path style="fill:#0F993E;" d' +
      '="M384,477.708v-0.119l-50.147-86.81c-22.938,13.303-49.48,21.047-' +
      '77.853,21.047V512'#13#10#9'C302.437,512,346.256,499.497,384,477.708z"/>' +
      #13#10'<path style="fill:#FFD500;" d="M100.174,256c0-28.369,7.742-54.' +
      '91,21.043-77.847l-86.806-50.034C12.502,165.746,0,209.444,0,256'#13#10 +
      #9's12.502,90.254,34.411,127.881l86.806-50.034C107.916,310.91,100.' +
      '174,284.369,100.174,256z"/>'#13#10'<path style="fill:#FF4B26;" d="M256' +
      ',100.174c37.531,0,72.005,13.336,98.932,35.519c6.643,5.472,16.298' +
      ',5.077,22.383-1.008'#13#10#9'l47.27-47.27c6.904-6.904,6.412-18.205-0.96' +
      '3-24.603C378.507,23.673,319.807,0,256,0C161.34,0,78.586,51.557,3' +
      '4.411,128.119'#13#10#9'l86.806,50.034C148.202,131.62,198.446,100.174,25' +
      '6,100.174z"/>'#13#10'<path style="fill:#D93F21;" d="M354.932,135.693c6' +
      '.643,5.472,16.299,5.077,22.383-1.008l47.27-47.27'#13#10#9'c6.903-6.904,' +
      '6.411-18.205-0.963-24.603C378.507,23.672,319.807,0,256,0v100.174' +
      'C293.53,100.174,328.005,113.51,354.932,135.693z"/>'#13#10'<g>'#13#10'</g>'#13#10'<' +
      'g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13 +
      #10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g' +
      '>'#13#10'<g>'#13#10'</g>'#13#10'<g>'#13#10'</g>'#13#10'</svg>'
  end
  object btnTestSync: TButton
    Left = 312
    Top = 24
    Width = 169
    Height = 25
    Caption = 'Test Sync'
    TabOrder = 0
    OnClick = btnTestSyncClick
  end
  object AdvMemo1: TAdvMemo
    Left = 895
    Top = 8
    Width = 354
    Height = 449
    Cursor = crIBeam
    ActiveLineSettings.ShowActiveLine = False
    ActiveLineSettings.ShowActiveLineIndicator = False
    Anchors = [akTop, akRight]
    AutoCompletion.Font.Charset = DEFAULT_CHARSET
    AutoCompletion.Font.Color = clWindowText
    AutoCompletion.Font.Height = -12
    AutoCompletion.Font.Name = 'Segoe UI'
    AutoCompletion.Font.Style = []
    AutoCompletion.StartToken = '(.'
    AutoCorrect.Active = True
    AutoHintParameterPosition = hpBelowCode
    BkColor = clWindow
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
    Gutter.GutterColorTo = clBtnFace
    Gutter.LineNumberTextColor = clWindowText
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
    MarkerList.ImageTransparentColor = -16776961
    OleDropTarget = []
    PrintOptions.MarginLeft = 0
    PrintOptions.MarginRight = 0
    PrintOptions.MarginTop = 0
    PrintOptions.MarginBottom = 0
    PrintOptions.PageNr = False
    PrintOptions.PrintLineNumbers = False
    RightMarginColor = 14869218
    ScrollHint = False
    SelColor = clHighlightText
    SelBkColor = clHighlight
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
    Version = '3.9.1.1'
    WordWrap = wwNone
  end
  object btnTestDelete: TButton
    Left = 312
    Top = 55
    Width = 169
    Height = 25
    Caption = 'Test Delete'
    TabOrder = 2
    OnClick = btnTestDeleteClick
  end
  object AdvMemo2: TAdvMemo
    Left = 1255
    Top = 8
    Width = 321
    Height = 449
    Cursor = crIBeam
    ActiveLineSettings.ShowActiveLine = False
    ActiveLineSettings.ShowActiveLineIndicator = False
    Anchors = [akTop, akRight, akBottom]
    AutoCompletion.Font.Charset = DEFAULT_CHARSET
    AutoCompletion.Font.Color = clWindowText
    AutoCompletion.Font.Height = -12
    AutoCompletion.Font.Name = 'Segoe UI'
    AutoCompletion.Font.Style = []
    AutoCompletion.StartToken = '(.'
    AutoCorrect.Active = True
    AutoHintParameterPosition = hpBelowCode
    BkColor = clWindow
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
    Gutter.GutterColorTo = clBtnFace
    Gutter.LineNumberTextColor = clWindowText
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
    MarkerList.ImageTransparentColor = -16776961
    OleDropTarget = []
    PrintOptions.MarginLeft = 0
    PrintOptions.MarginRight = 0
    PrintOptions.MarginTop = 0
    PrintOptions.MarginBottom = 0
    PrintOptions.PageNr = False
    PrintOptions.PrintLineNumbers = False
    RightMarginColor = 14869218
    ScrollHint = False
    SelColor = clHighlightText
    SelBkColor = clHighlight
    ShowRightMargin = True
    SmartTabs = False
    SyntaxStyles = AdvJSONMemoStyler1
    TabOrder = 3
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
    Version = '3.9.1.1'
    WordWrap = wwNone
  end
  object pnlColors: TPanel
    Left = 8
    Top = 463
    Width = 400
    Height = 372
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 4
  end
  object pnlColors2: TPanel
    Left = 414
    Top = 463
    Width = 400
    Height = 372
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 826
    Top = 463
    Width = 394
    Height = 364
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 6
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 1
      Width = 392
      Height = 362
      VertScrollBar.Range = 1200
      VertScrollBar.Size = 1200
      Align = alClient
      AutoScroll = False
      TabOrder = 0
      ExplicitWidth = 398
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 371
        Height = 1200
        Align = alClient
        TabOrder = 0
        ExplicitLeft = -3
        ExplicitTop = -3
      end
    end
  end
  object Panel2: TPanel
    Left = 1226
    Top = 463
    Width = 350
    Height = 364
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 7
    object ScrollBox2: TScrollBox
      Left = 1
      Top = 1
      Width = 348
      Height = 362
      HorzScrollBar.Size = 1200
      VertScrollBar.Range = 1200
      VertScrollBar.Size = 1200
      Align = alClient
      AutoScroll = False
      TabOrder = 0
      ExplicitWidth = 398
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 327
        Height = 1200
        Align = alClient
        TabOrder = 0
        ExplicitLeft = -3
        ExplicitTop = -3
        ExplicitWidth = 377
      end
    end
  end
  object btnItemColors: TButton
    Left = 312
    Top = 86
    Width = 169
    Height = 27
    Caption = 'Get Item Colors'
    TabOrder = 8
    OnClick = btnItemColorsClick
  end
  object grdColors: TCRDBGrid
    Left = 487
    Top = 8
    Width = 394
    Height = 225
    Anchors = [akLeft, akTop, akRight]
    DataSource = dsEventColors
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object EnhCRDBGrid1: TEnhCRDBGrid
    Left = 8
    Top = 239
    Width = 873
    Height = 218
    Anchors = [akLeft, akTop, akRight]
    DataSource = dsPlannerEvents
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDrawColumnCell = EnhCRDBGrid1DrawColumnCell
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -12
    HighlightFont.Name = 'Segoe UI'
    HighlightFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SUMMARY'
        Width = 330
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIAS'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STARTTIME'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDTIME'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COLOR'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CALENDARID'
        Width = 772
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Width = 772
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ETAG'
        Width = 772
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPTION'
        Width = 3076
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BACK_COLOR'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BACKGROUND_COLOR'
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CREATED'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UPDATED'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCATION'
        Width = 772
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VISIBILITY'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECURRENCE'
        Width = 364
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECURRINGID'
        Width = 364
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEQUENCE'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USEDEFAULTREMINDERS'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SENDNOTIFICATIONS'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISALLDAY'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATTENDEES'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REMINDERS'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JGUID'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BACKGROUNDCOLOR'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOREGROUNDCOLOR'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SYNC'
        Width = 34
        Visible = True
      end>
  end
  object AdvGCalendar1: TAdvGCalendar
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888/'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'google_janua'
    Scopes.Strings = (
      'https://www.googleapis.com/auth/calendar')
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Calendars = <>
    Items = <>
    Left = 114
    Top = 120
  end
  object dsPlannerEvents: TDataSource
    DataSet = dmPhoenixVCLGCalendarController.qryGoogleEventsTemp
    Left = 536
    Top = 352
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
          'NULL'
          'TRUE'
          'FALSE')
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
    Left = 592
    Top = 48
  end
  object dsEventColors: TDataSource
    Left = 736
    Top = 88
  end
end
