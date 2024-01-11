object frmVCLTestFiredacExportImport: TfrmVCLTestFiredacExportImport
  Left = 0
  Top = 0
  Caption = 'TestFireDACImportExport'
  ClientHeight = 609
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnDestroy = FormDestroy
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 953
    Height = 568
    ActivePage = tabFiredac
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 949
    ExplicitHeight = 567
    object tabFiredac: TTabSheet
      Caption = 'Firedac'
      DesignSize = (
        945
        538)
      object DBGrid1: TDBGrid
        Left = 0
        Top = 48
        Width = 465
        Height = 242
        DataSource = dsFireDACClienti
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object DBGrid2: TDBGrid
        Left = 471
        Top = 48
        Width = 470
        Height = 242
        Anchors = [akLeft, akTop, akRight]
        DataSource = dsRemoteFireDACClienti
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object btnExportBinary: TButton
        Left = 96
        Top = 8
        Width = 113
        Height = 34
        Caption = 'Export Binary'
        TabOrder = 2
        OnClick = btnExportBinaryClick
      end
      object btnExportJson: TButton
        Left = 215
        Top = 8
        Width = 113
        Height = 34
        Caption = 'Export Json'
        TabOrder = 3
        OnClick = btnExportJsonClick
      end
      object btnImportBinary: TButton
        Left = 559
        Top = 8
        Width = 113
        Height = 34
        Caption = 'Import Binary'
        TabOrder = 4
        OnClick = btnImportBinaryClick
      end
      object btnImportJson: TButton
        Left = 687
        Top = 8
        Width = 113
        Height = 34
        Caption = 'Import Json'
        TabOrder = 5
        OnClick = btnImportJsonClick
      end
      object btnExportXml: TButton
        Left = 334
        Top = 8
        Width = 113
        Height = 34
        Caption = 'Export Xml'
        TabOrder = 6
        OnClick = btnExportXmlClick
      end
      object btnImportXML: TButton
        Left = 823
        Top = 8
        Width = 113
        Height = 34
        Caption = 'Import XML'
        TabOrder = 7
        OnClick = btnImportXMLClick
      end
      object memExport: TAdvMemo
        Left = 3
        Top = 296
        Width = 935
        Height = 226
        Cursor = crIBeam
        ActiveLineSettings.ShowActiveLine = False
        ActiveLineSettings.ShowActiveLineIndicator = False
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        TabOrder = 8
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
        Version = '3.8.4.8'
        WordWrap = wwNone
      end
    end
    object tabUniDAC: TTabSheet
      Caption = 'UniDAC'
      ImageIndex = 1
      DesignSize = (
        945
        538)
      object Button1: TButton
        Left = 104
        Top = 16
        Width = 113
        Height = 34
        Caption = 'Export Binary'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 223
        Top = 16
        Width = 113
        Height = 34
        Caption = 'Export Json'
        TabOrder = 1
      end
      object Button3: TButton
        Left = 567
        Top = 16
        Width = 113
        Height = 34
        Caption = 'Import Binary'
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 695
        Top = 16
        Width = 113
        Height = 34
        Caption = 'Import Json'
        TabOrder = 3
      end
      object DBGrid3: TDBGrid
        Left = 471
        Top = 56
        Width = 470
        Height = 242
        Anchors = [akLeft, akTop, akRight]
        DataSource = dsVirtualCountries
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object DBGrid4: TDBGrid
        Left = 8
        Top = 56
        Width = 457
        Height = 242
        DataSource = dsUniCountries
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object memExportXML: TMemo
        Left = 8
        Top = 304
        Width = 933
        Height = 234
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          'memExport')
        TabOrder = 6
      end
    end
    object tabDMVCSimpleTest: TTabSheet
      Caption = 'DMVCSimpleTest'
      ImageIndex = 2
      object pnlUrl: TPanel
        Left = 0
        Top = 0
        Width = 945
        Height = 25
        Align = alTop
        TabOrder = 0
        object edtUrl: TEdit
          Left = 1
          Top = 1
          Width = 868
          Height = 23
          Align = alClient
          TabOrder = 0
          Text = 'http://localhost:8080/api'
        end
        object btnUrl: TButton
          Left = 869
          Top = 1
          Width = 75
          Height = 23
          Align = alRight
          Caption = 'Go To'
          TabOrder = 1
          OnClick = btnUrlClick
        end
      end
      object AdvWebBrowser1: TAdvWebBrowser
        Left = 0
        Top = 25
        Width = 945
        Height = 513
        Align = alClient
        ParentDoubleBuffered = False
        DoubleBuffered = True
        TabOrder = 1
      end
    end
    object tabRESTClientFDAC: TTabSheet
      Caption = 'REST Client FDAC'
      ImageIndex = 3
      object DBGrid5: TDBGrid
        Left = 0
        Top = 33
        Width = 945
        Height = 257
        Align = alTop
        DataSource = dsRemoteFireDACClienti
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object pnlButtons: TPanel
        Left = 0
        Top = 0
        Width = 945
        Height = 33
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 941
        object btnJson: TButton
          Left = 265
          Top = 1
          Width = 88
          Height = 31
          Align = alLeft
          Caption = 'Json'
          TabOrder = 0
        end
        object btnRecord: TButton
          Left = 177
          Top = 1
          Width = 88
          Height = 31
          Align = alLeft
          Caption = 'Janua Record'
          TabOrder = 1
        end
        object btnXml: TButton
          Left = 89
          Top = 1
          Width = 88
          Height = 31
          Align = alLeft
          Caption = 'Xml'
          TabOrder = 2
        end
        object btnBin: TButton
          Left = 1
          Top = 1
          Width = 88
          Height = 31
          Align = alLeft
          Caption = 'binary'
          TabOrder = 3
          OnClick = btnBinClick
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 290
        Width = 945
        Height = 22
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '  Response'
        Color = 6710886
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        ExplicitWidth = 941
        object lblStatusCode: TLabel
          AlignWithMargins = True
          Left = 937
          Top = 2
          Width = 3
          Height = 20
          Margins.Left = 5
          Margins.Top = 2
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alRight
          Alignment = taRightJustify
          ExplicitHeight = 15
        end
        object Label3: TLabel
          AlignWithMargins = True
          Left = 864
          Top = 2
          Width = 68
          Height = 20
          Margins.Left = 0
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Alignment = taRightJustify
          Caption = 'Status code:'
          ExplicitHeight = 15
        end
      end
      object advMemoClient: TDBAdvMemo
        Left = 0
        Top = 312
        Width = 945
        Height = 226
        Cursor = crIBeam
        ActiveLineSettings.ShowActiveLine = False
        ActiveLineSettings.ShowActiveLineIndicator = False
        Align = alClient
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
        ReadOnly = False
        RightMarginColor = 14869218
        ScrollHint = False
        SelColor = clHighlightText
        SelBkColor = clHighlight
        ShowRightMargin = True
        SmartTabs = False
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
        Version = '3.8.4.8'
        WordWrap = wwNone
        ExplicitWidth = 941
        ExplicitHeight = 225
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 953
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 949
    object btnStartServer: TButton
      Left = 12
      Top = 9
      Width = 93
      Height = 25
      Caption = 'Start Server'
      TabOrder = 0
      OnClick = btnStartServerClick
    end
    object spPort: TSpinEdit
      Left = 128
      Top = 11
      Width = 81
      Height = 24
      MaxValue = 66535
      MinValue = 8080
      TabOrder = 1
      Value = 8080
    end
  end
  object dsFireDACClienti: TDataSource
    DataSet = dmTestFireDACImportExport.qryArticoli
    Left = 144
    Top = 240
  end
  object dsRemoteFireDACClienti: TDataSource
    DataSet = dmTestFDacRemoteCustomers.mtbArticoli
    Left = 136
    Top = 176
  end
  object dsUniCountries: TDataSource
    DataSet = dmPgTestExportImport.tbCountries
    Left = 560
    Top = 120
  end
  object dsVirtualCountries: TDataSource
    DataSet = dmPgTestExportImport.vtCountries
    Left = 640
    Top = 152
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
    Left = 560
    Top = 192
  end
  object AdvXMLMemoStyler1: TAdvXMLMemoStyler
    LineComment = '//'
    MultiCommentLeft = '<!--'
    MultiCommentRight = '-->'
    CommentStyle.TextColor = clNavy
    CommentStyle.BkColor = clNone
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clFuchsia
    NumberStyle.BkColor = clNone
    NumberStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          'val'
          'encoding'
          'xml version'
          ']]'
          '![CDATA['
          '![IGNORE['
          '![INCLUDE['
          '!ELEMENT'
          '!DOCTYPE'
          'PCDATA'
          'REQUIRED'
          'IMPLIED'
          'FIXED'
          'ENTITY'
          'NMTOKEN'
          'NMTOKENS'
          'NOTATION'
          'ID'
          'IDREF'
          'IDREFS'
          'xml:space'
          'xml:lang')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'XML Default'
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
        Info = 'Single quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = '"'
        BracketEnd = '"'
        Info = 'Double Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ' =<?/>#'#13#10
        Info = 'XML delimiters'
      end>
    Description = 'XML Files (XML)'
    Filter = 'XML Files (*.xml)|*.xml'
    DefaultExtension = '.xml'
    StylerName = 'XML Files'
    Extensions = 'xml'
    Left = 648
    Top = 224
  end
end
