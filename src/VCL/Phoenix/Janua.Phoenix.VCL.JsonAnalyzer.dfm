object frmPhoenixVCLJsonAnalyzer: TfrmPhoenixVCLJsonAnalyzer
  Left = 0
  Top = 0
  Caption = 'Json Analyzer Phoenix'
  ClientHeight = 752
  ClientWidth = 1264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object EdgeBrowser1: TEdgeBrowser
    AlignWithMargins = True
    Left = 3
    Top = 60
    Width = 1258
    Height = 689
    Align = alClient
    TabOrder = 0
    AllowSingleSignOnUsingOSPrimaryAccount = False
    TargetCompatibleBrowserVersion = '117.0.2045.28'
    UserDataFolder = '%LOCALAPPDATA%\bds.exe.WebView2'
    ExplicitWidth = 865
    ExplicitHeight = 567
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1264
    Height = 57
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 112
    ExplicitTop = -3
    object btnLoadJson: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 128
      Height = 49
      Align = alLeft
      Caption = 'Carica Json'
      TabOrder = 0
      OnClick = btnLoadJsonClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 57
    Width = 1264
    Height = 695
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 871
    ExplicitHeight = 573
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object AdvMemo1: TAdvMemo
        Left = 0
        Top = 0
        Width = 1256
        Height = 665
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
        BorderColor = 10724259
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
        Gutter.GutterColor = clWhite
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
        TabOrder = 0
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
        ExplicitWidth = 863
        ExplicitHeight = 543
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object EdgeBrowser2: TEdgeBrowser
        Left = 937
        Top = 65
        Width = 319
        Height = 600
        Align = alClient
        TabOrder = 0
        AllowSingleSignOnUsingOSPrimaryAccount = False
        TargetCompatibleBrowserVersion = '117.0.2045.28'
        UserDataFolder = '%LOCALAPPDATA%\bds.exe.WebView2'
        ExplicitLeft = 354
        ExplicitWidth = 509
        ExplicitHeight = 359
      end
      object pnlReportTop: TPanel
        Left = 0
        Top = 0
        Width = 1256
        Height = 65
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 863
        object btnJsonPretty: TButton
          Left = 1
          Top = 1
          Width = 184
          Height = 63
          Align = alLeft
          Caption = 'Json Pretty'
          TabOrder = 0
          OnClick = btnJsonPrettyClick
        end
        object btnJsonOnOff: TButton
          Left = 185
          Top = 1
          Width = 200
          Height = 63
          Align = alLeft
          Caption = 'Attiva'
          TabOrder = 1
          OnClick = btnJsonOnOffClick
        end
        object btnClipboard: TButton
          Left = 385
          Top = 1
          Width = 200
          Height = 63
          Align = alLeft
          Caption = 'ClipBoard'
          TabOrder = 2
          OnClick = btnClipboardClick
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 65
        Width = 937
        Height = 600
        Align = alLeft
        Caption = 'Panel1'
        TabOrder = 2
        ExplicitHeight = 478
        object dbMemoJsonReport: TDBMemo
          Left = 1
          Top = 480
          Width = 935
          Height = 119
          Align = alBottom
          DataField = 'JSON_DA_MOBILE'
          DataSource = dsMemoStatini
          Enabled = False
          TabOrder = 0
          ExplicitLeft = 0
          ExplicitTop = 424
          ExplicitWidth = 863
        end
        object CRDBGrid3: TCRDBGrid
          Left = 1
          Top = 1
          Width = 336
          Height = 479
          Align = alLeft
          DataSource = dsClienti
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'RAGIONE_SOCIALE'
              Width = 1534
              Visible = True
            end>
        end
        object CRDBGrid2: TCRDBGrid
          Left = 337
          Top = 1
          Width = 224
          Height = 479
          Align = alLeft
          DataSource = dsFiliali
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Width = 604
              Visible = True
              SortOrder = soAsc
            end>
        end
        object CRDBGrid1: TCRDBGrid
          Left = 561
          Top = 1
          Width = 375
          Height = 479
          Align = alClient
          DataSource = dsStatini
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
      object memJsonPretty: TAdvMemo
        Left = 937
        Top = 65
        Width = 319
        Height = 600
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
        BorderColor = 10724259
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
        Gutter.BorderColor = 10724259
        Gutter.GutterColor = clWhite
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
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 863
        ExplicitHeight = 543
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.json'
    Left = 416
    Top = 160
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
    Top = 136
  end
  object dsClienti: TUniDataSource
    DataSet = tbClienti
    Left = 64
    Top = 280
  end
  object dsFiliali: TUniDataSource
    DataSet = tbFiliali
    Left = 248
    Top = 304
  end
  object UniConnection1: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'C:\PhoenixDB\PHOENIX.FDB'
    Username = 'SYSDBA'
    Server = '192.168.1.200'
    Connected = True
    LoginPrompt = False
    Left = 432
    Top = 320
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 432
    Top = 392
  end
  object tbClienti: TUniTable
    TableName = 'CLIENTI'
    Connection = UniConnection1
    Active = True
    IndexFieldNames = 'RAGIONE_SOCIALE'
    Left = 68
    Top = 219
  end
  object tbFiliali: TUniTable
    TableName = 'FILIALI_CLIENTI'
    OrderFields = 'NOME'
    Connection = UniConnection1
    MasterSource = dsClienti
    MasterFields = 'CHIAVE'
    DetailFields = 'CLIENTE'
    Active = True
    Left = 244
    Top = 235
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 1454385
      end>
    object tbFilialiCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object tbFilialiCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object tbFilialiNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object tbFilialiPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      FixedChar = True
      Size = 2
    end
    object tbFilialiCAP: TStringField
      FieldName = 'CAP'
      Size = 10
    end
    object tbFilialiINDIRIZZO: TStringField
      FieldName = 'INDIRIZZO'
      Size = 255
    end
    object tbFilialiTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 255
    end
    object tbFilialiNOTE: TBlobField
      FieldName = 'NOTE'
    end
    object tbFilialiORARIO_APERTURA_DAL1: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL1'
    end
    object tbFilialiORARIO_APERTURA_DAL2: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL2'
    end
    object tbFilialiORARIO_APERTURA_AL1: TTimeField
      FieldName = 'ORARIO_APERTURA_AL1'
    end
    object tbFilialiORARIO_APERTURA_AL2: TTimeField
      FieldName = 'ORARIO_APERTURA_AL2'
    end
    object tbFilialiCHIUSURA: TStringField
      FieldName = 'CHIUSURA'
      Size = 255
    end
    object tbFilialiCELLULARE: TStringField
      FieldName = 'CELLULARE'
      Size = 255
    end
    object tbFilialiEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 255
    end
    object tbFilialiESCLUDI_DA_GENERAZIONE: TStringField
      FieldName = 'ESCLUDI_DA_GENERAZIONE'
      FixedChar = True
      Size = 1
    end
    object tbFilialiSEDE: TStringField
      FieldName = 'SEDE'
      FixedChar = True
      Size = 1
    end
    object tbFilialiID: TStringField
      FieldName = 'ID'
      Size = 255
    end
    object tbFilialiREF_TELEFONO: TStringField
      FieldName = 'REF_TELEFONO'
      Size = 255
    end
    object tbFilialiREF_CELLULARE: TStringField
      FieldName = 'REF_CELLULARE'
      Size = 255
    end
    object tbFilialiCOMUNE: TStringField
      FieldName = 'COMUNE'
      Size = 255
    end
    object tbFilialiJGUID: TBytesField
      FieldName = 'JGUID'
    end
    object tbFilialiFIL_WANUMBER: TStringField
      FieldName = 'FIL_WANUMBER'
    end
  end
  object dsStatini: TUniDataSource
    DataSet = tbStatini
    Left = 648
    Top = 304
  end
  object tbStatini: TUniTable
    TableName = 'STATINI'
    OrderFields = 'CHIAVE'
    Connection = UniConnection1
    MasterSource = dsFiliali
    MasterFields = 'CHIAVE'
    DetailFields = 'FILIALE'
    Active = True
    Left = 660
    Top = 227
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 1454940
      end>
    object tbStatiniCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object tbStatiniCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object tbStatiniFILIALE: TIntegerField
      FieldName = 'FILIALE'
    end
    object tbStatiniTITOLO: TStringField
      FieldName = 'TITOLO'
      Size = 10
    end
    object tbStatiniRAGIONE_SOCIALE: TStringField
      FieldName = 'RAGIONE_SOCIALE'
      Size = 255
    end
    object tbStatiniINDIRIZZO: TStringField
      FieldName = 'INDIRIZZO'
      Size = 255
    end
    object tbStatiniCOMUNE: TStringField
      FieldName = 'COMUNE'
      Size = 255
    end
    object tbStatiniPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      FixedChar = True
      Size = 2
    end
    object tbStatiniCAP: TStringField
      FieldName = 'CAP'
      Size = 10
    end
    object tbStatiniTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 255
    end
    object tbStatiniCELLULARE: TStringField
      FieldName = 'CELLULARE'
      Size = 255
    end
    object tbStatiniNOTE: TBlobField
      FieldName = 'NOTE'
    end
    object tbStatiniORARIO_APERTURA_DAL1: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL1'
    end
    object tbStatiniORARIO_APERTURA_DAL2: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL2'
    end
    object tbStatiniORARIO_APERTURA_AL1: TTimeField
      FieldName = 'ORARIO_APERTURA_AL1'
    end
    object tbStatiniORARIO_APERTURA_AL2: TTimeField
      FieldName = 'ORARIO_APERTURA_AL2'
    end
    object tbStatiniCHIUSURA: TStringField
      FieldName = 'CHIUSURA'
      Size = 255
    end
    object tbStatiniFATTURA: TIntegerField
      FieldName = 'FATTURA'
    end
    object tbStatiniDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
    end
    object tbStatiniGENERAZIONE_AUTOMATICA: TIntegerField
      FieldName = 'GENERAZIONE_AUTOMATICA'
    end
    object tbStatiniTECNICO_INTERVENTO: TIntegerField
      FieldName = 'TECNICO_INTERVENTO'
    end
    object tbStatiniSCANSIONE: TBlobField
      FieldName = 'SCANSIONE'
    end
    object tbStatiniREGISTRO: TBlobField
      FieldName = 'REGISTRO'
    end
    object tbStatiniNOTE_PER_IL_TECNICO: TBlobField
      FieldName = 'NOTE_PER_IL_TECNICO'
    end
    object tbStatiniSOSPESO: TStringField
      FieldName = 'SOSPESO'
      FixedChar = True
      Size = 1
    end
    object tbStatiniDA_ESPORTARE_SUL_WEB: TStringField
      FieldName = 'DA_ESPORTARE_SUL_WEB'
      FixedChar = True
      Size = 1
    end
    object tbStatiniRESPONSABILE: TIntegerField
      FieldName = 'RESPONSABILE'
    end
    object tbStatiniESPORTATO_SU_MOBILE: TStringField
      FieldName = 'ESPORTATO_SU_MOBILE'
      FixedChar = True
      Size = 1
    end
    object tbStatiniNOTE_DAL_TECNICO: TBlobField
      FieldName = 'NOTE_DAL_TECNICO'
    end
    object tbStatiniJSON_DA_MOBILE: TBlobField
      FieldName = 'JSON_DA_MOBILE'
    end
    object tbStatiniPDF_STATINO: TBlobField
      FieldName = 'PDF_STATINO'
    end
    object tbStatiniREGISTRO_IS_PDF: TStringField
      FieldName = 'REGISTRO_IS_PDF'
      FixedChar = True
      Size = 1
    end
    object tbStatiniVERBALE_PROVA_DINAMICA: TBlobField
      FieldName = 'VERBALE_PROVA_DINAMICA'
    end
    object tbStatiniVERBALE_MANICHETTE: TBlobField
      FieldName = 'VERBALE_MANICHETTE'
    end
    object tbStatiniPREVENTIVO: TIntegerField
      FieldName = 'PREVENTIVO'
    end
    object tbStatiniIGNORA_EVIDENZIAZIONE: TStringField
      FieldName = 'IGNORA_EVIDENZIAZIONE'
      FixedChar = True
      Size = 1
    end
    object tbStatiniANNULLATO_DA_TABLET: TStringField
      FieldName = 'ANNULLATO_DA_TABLET'
      FixedChar = True
      Size = 1
    end
    object tbStatiniMOBILEWARN_NUOVA_ATTREZZATURA: TStringField
      FieldName = 'MOBILEWARN_NUOVA_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object tbStatiniMOBILEWARN_ORDINARIA_RITIRATA: TStringField
      FieldName = 'MOBILEWARN_ORDINARIA_RITIRATA'
      FixedChar = True
      Size = 1
    end
    object tbStatiniMOBILEWARN_N_ORDIN_CONTROLLATA: TStringField
      FieldName = 'MOBILEWARN_N_ORDIN_CONTROLLATA'
      FixedChar = True
      Size = 1
    end
    object tbStatiniMOBILEWARN_SMALTIMENTO: TStringField
      FieldName = 'MOBILEWARN_SMALTIMENTO'
      FixedChar = True
      Size = 1
    end
    object tbStatiniSTATO_LAVORAZIONE: TStringField
      FieldName = 'STATO_LAVORAZIONE'
      FixedChar = True
      Size = 1
    end
    object tbStatiniDATA_CHIUSURA_DA_SERVER: TDateField
      FieldName = 'DATA_CHIUSURA_DA_SERVER'
    end
    object tbStatiniCHIUSURA_EXT: TStringField
      FieldName = 'CHIUSURA_EXT'
      Size = 50
    end
    object tbStatiniCHIUSURA_STATINO: TBlobField
      FieldName = 'CHIUSURA_STATINO'
    end
    object tbStatiniMOBILEWARN_NON_ESEGUITI: TStringField
      FieldName = 'MOBILEWARN_NON_ESEGUITI'
      FixedChar = True
      Size = 1
    end
    object tbStatiniPRESA_IN_CARICO: TStringField
      FieldName = 'PRESA_IN_CARICO'
      FixedChar = True
      Size = 1
    end
    object tbStatiniFORNITURA: TStringField
      FieldName = 'FORNITURA'
      FixedChar = True
      Size = 1
    end
    object tbStatiniAPPUNTAMENTO_DATA: TDateField
      FieldName = 'APPUNTAMENTO_DATA'
    end
    object tbStatiniAPPUNTAMENTO_ORA: TTimeField
      FieldName = 'APPUNTAMENTO_ORA'
    end
    object tbStatiniSTATO: TSmallintField
      FieldName = 'STATO'
    end
    object tbStatiniJGUID: TBytesField
      FieldName = 'JGUID'
    end
    object tbStatiniGCAL: TStringField
      FieldName = 'GCAL'
      FixedChar = True
      Size = 1
    end
    object tbStatiniWANUMBER: TStringField
      FieldName = 'WANUMBER'
    end
    object tbStatiniWA: TStringField
      FieldName = 'WA'
      FixedChar = True
      Size = 1
    end
  end
  object dsMemoStatini: TUniDataSource
    DataSet = tbStatini
    Enabled = False
    Left = 680
    Top = 504
  end
end
