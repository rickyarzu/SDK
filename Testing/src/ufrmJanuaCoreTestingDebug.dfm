object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'Form12'
  ClientHeight = 612
  ClientWidth = 996
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 996
    Height = 612
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'OSM Xml'
      DesignSize = (
        988
        584)
      object Button1: TButton
        Left = 8
        Top = 3
        Width = 145
        Height = 33
        Caption = 'Load and Parse Xml'
        TabOrder = 0
        OnClick = Button1Click
      end
      object AdvMemo1: TAdvMemo
        Left = -296
        Top = -574
        Width = 369
        Height = 539
        Cursor = crIBeam
        ActiveLineSettings.ShowActiveLine = False
        ActiveLineSettings.ShowActiveLineIndicator = False
        Anchors = [akLeft, akTop, akBottom]
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
        SyntaxStyles = AdvXMLMemoStyler1
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
        Version = '3.6.1.1'
        WordWrap = wwNone
      end
      object Button2: TButton
        Left = 159
        Top = 3
        Width = 146
        Height = 33
        Caption = 'Save Table'
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 311
        Top = 3
        Width = 146
        Height = 33
        Caption = 'Load Table'
        TabOrder = 3
        OnClick = Button3Click
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 42
        Width = 985
        Height = 539
        ActivePage = Tabella
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 4
        object Tabella: TTabSheet
          Caption = 'Tabella'
          DesignSize = (
            977
            511)
          object CRDBGrid1: TCRDBGrid
            Left = 3
            Top = 6
            Width = 678
            Height = 502
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = DataSource1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'id'
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'visible'
                Width = 34
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'version'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'timestamp'
                Width = 112
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'uid'
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'lat'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'lon'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'distance'
                Width = 123
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'group'
                Width = 130
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'address'
                Width = 124
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'value'
                Width = 214
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Description'
                Width = 244
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'brand'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'operator'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'email'
                Width = 256
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'phone'
                Width = 124
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'website'
                Width = 184
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'fax'
                Width = 124
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AddressFull'
                Width = 208
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Name'
                Width = 124
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'city'
                Width = 124
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'number'
                Width = 124
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'street'
                Width = 262
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'postcode'
                Width = 52
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'tags'
                Width = 24580
                Visible = True
              end>
          end
          object DBMemo1: TDBMemo
            Left = 687
            Top = 6
            Width = 287
            Height = 479
            Anchors = [akTop, akRight, akBottom]
            DataField = 'tags'
            DataSource = DataSource1
            TabOrder = 1
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'XML'
          ImageIndex = 1
          object AdvMemo2: TAdvMemo
            Left = 0
            Top = 0
            Width = 977
            Height = 511
            Cursor = crIBeam
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alClient
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
            SyntaxStyles = AdvXMLMemoStyler1
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
            Version = '3.6.1.1'
            WordWrap = wwNone
          end
        end
      end
      object Button4: TButton
        Left = 463
        Top = 3
        Width = 146
        Height = 33
        Caption = 'Send To Postgres'
        TabOrder = 5
        OnClick = Button4Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Test Json Dac'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        988
        584)
      object Label1: TLabel
        Left = 104
        Top = 8
        Width = 31
        Height = 13
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Label1'
      end
      object EnhCRDBGrid1: TEnhCRDBGrid
        Left = 3
        Top = 32
        Width = 537
        Height = 537
        Anchors = [akLeft, akTop, akBottom]
        DataSource = DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        HighlightBGColor = clBlack
        HighlightFont.Charset = DEFAULT_CHARSET
        HighlightFont.Color = clWindowText
        HighlightFont.Height = -11
        HighlightFont.Name = 'Tahoma'
        HighlightFont.Style = []
      end
      object EnhCRDBGrid2: TEnhCRDBGrid
        Left = 546
        Top = 32
        Width = 431
        Height = 537
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSource3
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        HighlightBGColor = clBlack
        HighlightFont.Charset = DEFAULT_CHARSET
        HighlightFont.Color = clWindowText
        HighlightFont.Height = -11
        HighlightFont.Name = 'Tahoma'
        HighlightFont.Style = []
      end
      object Button5: TButton
        Left = 3
        Top = 1
        Width = 75
        Height = 25
        Caption = 'Button5'
        TabOrder = 2
        OnClick = Button5Click
      end
    end
  end
  object AdvXMLMemoStyler1: TAdvXMLMemoStyler
    LineComment = '//'
    MultiCommentLeft = '<!--'
    MultiCommentRight = '-->'
    CommentStyle.TextColor = clNavy
    CommentStyle.BkColor = clWhite
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clFuchsia
    NumberStyle.BkColor = clWhite
    NumberStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          'val'
          'encoding'
          'xml version'
          ']]'
          '![cdata['
          '![ignore['
          '![include['
          '!element'
          '!doctype'
          'pcdata'
          'required'
          'implied'
          'fixed'
          'entity'
          'nmtoken'
          'nmtokens'
          'notation'
          'id'
          'idref'
          'idrefs'
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
    Left = 168
    Top = 128
  end
  object VirtualTable1: TVirtualTable
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftLargeint
      end
      item
        Name = 'visible'
        DataType = ftBoolean
      end
      item
        Name = 'version'
        DataType = ftShortint
      end
      item
        Name = 'timestamp'
        DataType = ftDateTime
      end
      item
        Name = 'uid'
        DataType = ftLargeint
      end
      item
        Name = 'lat'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'lon'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'distance'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'group'
        DataType = ftString
        Size = 128
      end
      item
        Name = 'address'
        DataType = ftString
        Size = 128
      end
      item
        Name = 'value'
        DataType = ftString
        Size = 128
      end
      item
        Name = 'AddressFull'
        DataType = ftString
        Size = 256
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 128
      end
      item
        Name = 'email'
        DataType = ftString
        Size = 128
      end
      item
        Name = 'phone'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'website'
        DataType = ftString
        Size = 128
      end
      item
        Name = 'fax'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'city'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'number'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'street'
        DataType = ftString
        Size = 128
      end
      item
        Name = 'postcode'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tags'
        DataType = ftString
        Size = 4096
      end
      item
        Name = 'brand'
        DataType = ftString
        Size = 128
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 128
      end
      item
        Name = 'operator'
        DataType = ftString
        Size = 128
      end
      item
        Name = 'cuisine'
        DataType = ftString
        Size = 128
      end>
    Left = 248
    Top = 152
    Data = {
      04001A00020069641900000000000000070076697369626C6505000000000000
      00070076657273696F6E2B00000000000000090074696D657374616D700B0000
      00000000000300756964190000000000000003006C6174060000000F00000003
      006C6F6E060000000F000000080064697374616E6365060000000F0000000500
      67726F7570010080000000000007006164647265737301008000000000000500
      76616C756501008000000000000B004164647265737346756C6C010000010000
      00000B004465736372697074696F6E01008000000000000500656D61696C0100
      800000000000050070686F6E6501001400000000000700776562736974650100
      8000000000000300666178010014000000000004006369747901001400000000
      0006006E756D6265720100140000000000060073747265657401008000000000
      000800706F7374636F6465010014000000000004007461677301000010000000
      0005006272616E64010080000000000004006E616D6501008000000000000800
      6F70657261746F720100800000000000070063756973696E6501008000000000
      00000000000000}
    object VirtualTable1id: TLargeintField
      DisplayWidth = 15
      FieldName = 'id'
    end
    object VirtualTable1visible: TBooleanField
      DisplayWidth = 5
      FieldName = 'visible'
    end
    object VirtualTable1Name: TStringField
      FieldName = 'Name'
      Size = 128
    end
    object VirtualTable1version: TShortintField
      DisplayWidth = 10
      FieldName = 'version'
    end
    object VirtualTable1timestamp: TDateTimeField
      DisplayWidth = 18
      FieldName = 'timestamp'
    end
    object VirtualTable1uid: TLargeintField
      DisplayWidth = 15
      FieldName = 'uid'
    end
    object VirtualTable1lat: TFloatField
      DisplayWidth = 10
      FieldName = 'lat'
    end
    object VirtualTable1lon: TFloatField
      DisplayWidth = 10
      FieldName = 'lon'
    end
    object VirtualTable1distance: TFloatField
      DisplayWidth = 10
      FieldName = 'distance'
    end
    object VirtualTable1group: TStringField
      DisplayWidth = 21
      FieldName = 'group'
      Size = 128
    end
    object VirtualTable1address: TStringField
      DisplayWidth = 20
      FieldName = 'address'
      Size = 128
    end
    object VirtualTable1Description: TStringField
      DisplayWidth = 40
      FieldName = 'Description'
      Size = 128
    end
    object VirtualTable1brand: TStringField
      DisplayWidth = 128
      FieldName = 'brand'
      Size = 128
    end
    object VirtualTable1operator: TStringField
      DisplayWidth = 128
      FieldName = 'operator'
      Size = 128
    end
    object VirtualTable1phone: TStringField
      DisplayWidth = 20
      FieldName = 'phone'
    end
    object VirtualTable1website: TStringField
      DisplayWidth = 30
      FieldName = 'website'
      Size = 128
    end
    object VirtualTable1email: TStringField
      DisplayWidth = 42
      FieldName = 'email'
      Size = 128
    end
    object VirtualTable1fax: TStringField
      DisplayWidth = 20
      FieldName = 'fax'
    end
    object VirtualTable1AddressFull: TStringField
      DisplayWidth = 34
      FieldName = 'AddressFull'
      Size = 256
    end
    object VirtualTable1city: TStringField
      DisplayWidth = 20
      FieldName = 'city'
    end
    object VirtualTable1number: TStringField
      DisplayWidth = 20
      FieldName = 'number'
    end
    object VirtualTable1street: TStringField
      DisplayWidth = 43
      FieldName = 'street'
      Size = 128
    end
    object VirtualTable1postcode: TStringField
      DisplayWidth = 8
      FieldName = 'postcode'
    end
    object VirtualTable1Cuisine: TStringField
      FieldName = 'Cuisine'
      Size = 128
    end
    object VirtualTable1value: TStringField
      DisplayWidth = 35
      FieldName = 'value'
      Size = 128
    end
    object VirtualTable1tags: TStringField
      DisplayWidth = 4096
      FieldName = 'tags'
      Size = 4096
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 168
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = VirtualTable1
    Left = 248
    Top = 216
  end
  object SaveDialog1: TSaveDialog
    Left = 168
    Top = 256
  end
  object PgConnection1: TJanuaUniConnection
    Username = 'ergo'
    Server = 'pg.januaservers.com'
    LoginPrompt = False
    Database = 'ergomercator'
    Schema = 'gis'
    Connected = True
    Left = 248
    Top = 280
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object PgTable1: TUniTable
    TableName = 'gis.osm_places'
    OrderFields = 'id'
    DataTypeMap = <
      item
        DBType = 517
        FieldType = ftWideString
        FieldLength = 4092
      end>
    Connection = PgConnection1
    Active = True
    Left = 248
    Top = 336
    object PgTable1id: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object PgTable1name: TStringField
      FieldName = 'name'
      Size = 128
    end
    object PgTable1visible: TBooleanField
      FieldName = 'visible'
      Required = True
    end
    object PgTable1creation: TDateTimeField
      FieldName = 'creation'
    end
    object PgTable1uid: TLargeintField
      FieldName = 'uid'
    end
    object PgTable1lat: TFloatField
      FieldName = 'lat'
      Required = True
    end
    object PgTable1lon: TFloatField
      FieldName = 'lon'
      Required = True
    end
    object PgTable1distance: TFloatField
      FieldName = 'distance'
    end
    object PgTable1mapgroup: TStringField
      FieldName = 'mapgroup'
      Required = True
      Size = 40
    end
    object PgTable1address: TStringField
      FieldName = 'address'
      Required = True
      Size = 40
    end
    object PgTable1description: TStringField
      FieldName = 'description'
      Size = 128
    end
    object PgTable1brand: TStringField
      FieldName = 'brand'
      Size = 128
    end
    object PgTable1mapoperator: TStringField
      FieldName = 'mapoperator'
      Size = 128
    end
    object PgTable1phone: TStringField
      FieldName = 'phone'
    end
    object PgTable1website: TStringField
      FieldName = 'website'
      Size = 128
    end
    object PgTable1email: TStringField
      FieldName = 'email'
      Size = 128
    end
    object PgTable1fax: TStringField
      FieldName = 'fax'
      Size = 40
    end
    object PgTable1addressfull: TStringField
      FieldName = 'addressfull'
      Size = 128
    end
    object PgTable1addr_city: TStringField
      FieldName = 'addr_city'
      Size = 128
    end
    object PgTable1addr_number: TStringField
      FieldName = 'addr_number'
    end
    object PgTable1addr_street: TStringField
      FieldName = 'addr_street'
      Size = 128
    end
    object PgTable1addr_postcode: TStringField
      FieldName = 'addr_postcode'
    end
    object PgTable1tags: TWideStringField
      FieldName = 'tags'
      Size = 4092
    end
    object PgTable1version: TSmallintField
      FieldName = 'version'
    end
    object PgTable1cuisine: TStringField
      FieldName = 'cuisine'
      Size = 128
    end
  end
  object DataSource2: TDataSource
    Left = 376
    Top = 96
  end
  object DataSource3: TDataSource
    Left = 672
    Top = 104
  end
end
