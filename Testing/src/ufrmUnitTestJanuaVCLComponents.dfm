object frmUnitTestJanuaVCLComponents: TfrmUnitTestJanuaVCLComponents
  Left = 0
  Top = 0
  Caption = '\'
  ClientHeight = 734
  ClientWidth = 1500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 1500
    Height = 693
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Test Geo Coding'
      object Label1: TLabel
        Left = 131
        Top = 16
        Width = 239
        Height = 13
        Caption = 'Via Ernesto Cabruna, 43, 16166 Genova GE, Italy'
      end
      object Label2: TLabel
        Left = 131
        Top = 48
        Width = 31
        Height = 13
        Caption = 'Label2'
      end
      object Label3: TLabel
        Left = 542
        Top = 48
        Width = 31
        Height = 13
        Caption = 'Label2'
      end
      object Button1: TButton
        Left = 3
        Top = 11
        Width = 110
        Height = 25
        Caption = 'Test GeoCoding'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Test ORM'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1492
        Height = 41
        Align = alTop
        TabOrder = 0
        object Button2: TButton
          Left = 1
          Top = 1
          Width = 128
          Height = 39
          Align = alLeft
          Caption = 'Test Sub Record'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 129
          Top = 1
          Width = 128
          Height = 39
          Align = alLeft
          Caption = 'Test CRUD Dataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 41
        Width = 1492
        Height = 624
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 1
        object TabSheet4: TTabSheet
          Caption = 'Json'
          object memJson: TAdvMemo
            Left = 0
            Top = 0
            Width = 1484
            Height = 596
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
            SelColor = clHighlightText
            SelBkColor = clHighlight
            ShowRightMargin = True
            SmartTabs = False
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
            Version = '3.7.10.0'
            WordWrap = wwNone
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Log'
          ImageIndex = 1
          object memLog: TAdvMemo
            Left = 0
            Top = 0
            Width = 1484
            Height = 596
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
            SelColor = clHighlightText
            SelBkColor = clHighlight
            ShowRightMargin = True
            SmartTabs = False
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
            Version = '3.7.10.0'
            WordWrap = wwNone
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'JGuid Generation'
      ImageIndex = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1492
        Height = 49
        Align = alTop
        TabOrder = 0
        object lbCount: TLabel
          Left = 735
          Top = 24
          Width = 6
          Height = 13
          Caption = '0'
        end
        object lbtTot: TLabel
          Left = 778
          Top = 24
          Width = 6
          Height = 13
          Caption = '0'
        end
        object btnGenerate: TButton
          Left = 1
          Top = 1
          Width = 64
          Height = 47
          Align = alLeft
          Caption = 'Generate!'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnGenerateClick
        end
        object edTableName: TLabeledEdit
          Left = 159
          Top = 22
          Width = 202
          Height = 21
          EditLabel.Width = 97
          EditLabel.Height = 13
          EditLabel.Caption = 'Schema-Table Name'
          TabOrder = 1
          Text = ''
        end
        object edAbbreviation: TLabeledEdit
          Left = 367
          Top = 22
          Width = 66
          Height = 21
          EditLabel.Width = 61
          EditLabel.Height = 13
          EditLabel.Caption = 'Abbreviation'
          TabOrder = 2
          Text = ''
        end
        object edKeys: TLabeledEdit
          Left = 439
          Top = 22
          Width = 98
          Height = 21
          EditLabel.Width = 56
          EditLabel.Height = 13
          EditLabel.Caption = 'Key Field(s)'
          TabOrder = 3
          Text = ''
        end
        object btnExecuteSql: TButton
          Left = 1413
          Top = 1
          Width = 78
          Height = 47
          Align = alRight
          Caption = 'Execute SQL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = btnExecuteSqlClick
        end
        object Button7: TButton
          Left = 1371
          Top = 1
          Width = 42
          Height = 47
          Align = alRight
          Caption = 'Save'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 1289
          Top = 1
          Width = 82
          Height = 47
          Align = alRight
          Caption = 'Execute All ..'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = Button8Click
        end
        object btnSchema: TButton
          Left = 65
          Top = 1
          Width = 88
          Height = 47
          Align = alLeft
          Caption = 'Sc. ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = btnSchemaClick
        end
        object edPrefix: TLabeledEdit
          Left = 695
          Top = 22
          Width = 34
          Height = 21
          EditLabel.Width = 28
          EditLabel.Height = 13
          EditLabel.Caption = 'Prefix'
          TabOrder = 8
          Text = ''
        end
        object Button5: TButton
          Left = 1227
          Top = 1
          Width = 62
          Height = 47
          Align = alRight
          Caption = 'Code Gen.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = Button5Click
        end
        object btnTriggers: TButton
          Left = 1174
          Top = 1
          Width = 53
          Height = 47
          Align = alRight
          Caption = 'Triggers'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnClick = btnTriggersClick
        end
        object Button9: TButton
          Left = 1127
          Top = 1
          Width = 47
          Height = 47
          Align = alRight
          Caption = 'Trg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnClick = Button9Click
        end
        object btnAnalytics: TButton
          Left = 1073
          Top = 1
          Width = 54
          Height = 47
          Align = alRight
          Caption = 'Analytics'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnClick = btnAnalyticsClick
        end
        object edTableSchema: TJvDBLookupCombo
          Left = 543
          Top = 22
          Width = 145
          Height = 21
          LookupField = 'nspname'
          LookupDisplay = 'nspname'
          LookupSource = dsSchemas
          TabOrder = 13
        end
        object btnSchemaAnalytics: TButton
          Left = 977
          Top = 1
          Width = 96
          Height = 47
          Align = alRight
          Caption = 'Schema Analytics'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnClick = btnSchemaAnalyticsClick
        end
        object btnClear: TButton
          Left = 930
          Top = 1
          Width = 47
          Height = 47
          Align = alRight
          Caption = 'Clear'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
          OnClick = btnClearClick
        end
      end
      object grdTAbles: TCRDBGrid
        Left = 0
        Top = 74
        Width = 449
        Height = 591
        Align = alLeft
        DataSource = dsGuidGenerator
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SchemaTable'
            Width = 200
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Abbreviation'
            Title.Caption = 'Abbr.'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Key'
            Width = 160
            Visible = True
          end>
      end
      object DBAdvNavigator1: TDBNavigator
        Left = 0
        Top = 49
        Width = 1492
        Height = 25
        DataSource = dsGuidGenerator
        Align = alTop
        TabOrder = 2
      end
      object Panel4: TPanel
        Left = 449
        Top = 74
        Width = 264
        Height = 591
        Align = alLeft
        Caption = 'Panel4'
        TabOrder = 3
        object grdColumns: TDBGrid
          Left = 1
          Top = 121
          Width = 262
          Height = 349
          Align = alClient
          DataSource = dsColumns
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'column_name'
              Visible = True
            end>
        end
        object dbgrdKeys: TDBGrid
          Left = 1
          Top = 1
          Width = 262
          Height = 120
          Align = alTop
          DataSource = dsIndexFields
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'attname'
              Visible = True
            end>
        end
        object grdTriggers: TCRDBGrid
          Left = 1
          Top = 470
          Width = 262
          Height = 120
          Align = alBottom
          DataSource = DataSource5
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'trigger_name'
              Width = 1540
              Visible = True
            end>
        end
      end
      object PageControl4: TPageControl
        Left = 713
        Top = 74
        Width = 779
        Height = 591
        ActivePage = TabSheet12
        Align = alClient
        TabOrder = 4
        object TabSheet12: TTabSheet
          Caption = 'SQL'
          object memSQL: TAdvMemo
            Left = 0
            Top = 0
            Width = 771
            Height = 563
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
            SelColor = clHighlightText
            SelBkColor = clHighlight
            ShowRightMargin = True
            SmartTabs = False
            SyntaxStyles = AdvSQLMemoStyler1
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
            Version = '3.7.10.0'
            WordWrap = wwNone
          end
        end
        object tabIntf: TTabSheet
          Caption = 'Intf'
          ImageIndex = 1
          object memSourceIntf: TAdvMemo
            Left = 0
            Top = 0
            Width = 771
            Height = 563
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
            SelColor = clHighlightText
            SelBkColor = clHighlight
            ShowRightMargin = True
            SmartTabs = False
            SyntaxStyles = AdvPascalMemoStyler1
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
            Version = '3.7.10.0'
            WordWrap = wwNone
          end
        end
        object tabCustomImpl: TTabSheet
          Caption = 'Custom'
          ImageIndex = 2
          object MemSourceCustomImpl: TAdvMemo
            Left = 0
            Top = 0
            Width = 771
            Height = 563
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
            SelColor = clHighlightText
            SelBkColor = clHighlight
            ShowRightMargin = True
            SmartTabs = False
            SyntaxStyles = AdvPascalMemoStyler1
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
            Version = '3.7.10.0'
            WordWrap = wwNone
          end
        end
        object TabSheet14: TTabSheet
          Caption = 'Impl'
          ImageIndex = 7
          object MemSourceImpl: TAdvMemo
            Left = 0
            Top = 0
            Width = 771
            Height = 563
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
            SelColor = clHighlightText
            SelBkColor = clHighlight
            ShowRightMargin = True
            SmartTabs = False
            SyntaxStyles = AdvPascalMemoStyler1
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
            Version = '3.7.10.0'
            WordWrap = wwNone
          end
        end
        object TabSheet17: TTabSheet
          Caption = 'Srv Intf'
          ImageIndex = 3
          object memSrvIntf: TAdvMemo
            Left = 0
            Top = 0
            Width = 771
            Height = 563
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
            SelColor = clHighlightText
            SelBkColor = clHighlight
            ShowRightMargin = True
            SmartTabs = False
            SyntaxStyles = AdvPascalMemoStyler1
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
            Version = '3.7.10.0'
            WordWrap = wwNone
          end
        end
        object TabSheet18: TTabSheet
          Caption = 'Srv Impl'
          ImageIndex = 4
          object memSrvImpl: TAdvMemo
            Left = 0
            Top = 0
            Width = 771
            Height = 563
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
            SelColor = clHighlightText
            SelBkColor = clHighlight
            ShowRightMargin = True
            SmartTabs = False
            SyntaxStyles = AdvPascalMemoStyler1
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
            Version = '3.7.10.0'
            WordWrap = wwNone
          end
        end
        object TabSheet19: TTabSheet
          Caption = 'Pg Impl'
          ImageIndex = 5
          object AdvMemo2: TAdvMemo
            Left = 0
            Top = 0
            Width = 771
            Height = 563
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
            SelColor = clHighlightText
            SelBkColor = clHighlight
            ShowRightMargin = True
            SmartTabs = False
            SyntaxStyles = AdvPascalMemoStyler1
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
            Version = '3.7.10.0'
            WordWrap = wwNone
          end
        end
        object TabSheet20: TTabSheet
          Caption = 'Analysis'
          ImageIndex = 6
          object DBAdvGrid1: TDBAdvGrid
            Left = 0
            Top = 0
            Width = 771
            Height = 201
            Align = alTop
            ColCount = 6
            DrawingStyle = gdsClassic
            RowCount = 2
            FixedRows = 1
            TabOrder = 0
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ControlLook.FixedGradientHoverFrom = clGray
            ControlLook.FixedGradientHoverTo = clWhite
            ControlLook.FixedGradientDownFrom = clGray
            ControlLook.FixedGradientDownTo = clSilver
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Tahoma'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 20
            FixedRowHeight = 22
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SearchFooter.ResultFormat = '(%d of %d)'
            SelectionTextColor = clWindowText
            Version = '2.5.1.9'
            AutoCreateColumns = True
            AutoRemoveColumns = True
            Columns = <
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'Tahoma'
                PrintFont.Style = []
                Width = 20
              end
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'title'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'Tahoma'
                PrintFont.Style = []
                Width = 174
              end
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'rows'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'Tahoma'
                PrintFont.Style = []
                Width = 64
              end
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'maximum'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'Tahoma'
                PrintFont.Style = []
                Width = 135
              end
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'minimum'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'Tahoma'
                PrintFont.Style = []
                Width = 181
              end
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'diff'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'Tahoma'
                PrintFont.Style = []
                Width = 64
              end>
            DataSource = DataSource6
            InvalidPicture.Data = {
              055449636F6E0000010001002020200000000000A81000001600000028000000
              2000000040000000010020000000000000100000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
              6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
              FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
              6A6A6B4000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000006A6A6B22
              7C7C7C98888889F0BDBDBDFCE9E9EBFED9D9E9FEB5B5DDFE8B8BCDFE595AB7FF
              3739A8FF2B2CA4FF4A49B1FF7171C1FFA1A2D7FFD3D3E8FFEAEAEBFEBEBEBFFC
              888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000006A6A6B43838383D8
              B7B7B8FAECECEFFEC0C0DFFF7977C4FF2221A0FF12129BFF1010A4FF0C0CA8FF
              0A0AACFF0A0AB4FF0A0AB9FF0D0DBEFF0F0FB1FF1111A6FF5656B8FFAEADDCFF
              ECECEFFEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
              00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
              CACAE8FF4443B0FF171799FF11119CFF0C0C98FF0B0B9BFF0B0BA0FF0A0AA6FF
              0909ACFF0909B2FF0808BAFF0707BFFF0B09C8FF0D0DCEFF1111CCFF1010AFFF
              4A49B2FFCFCFEBFFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
              000000000000000000000000000000006A6A6B43878788EAE1E1E1FFA8A8DAFF
              2323A0FF15159CFF0D0D92FF0C0C95FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA6FF
              0909ACFF0909B2FF0808B8FF0808BCFF0808C3FF0C0CC9FF0C0CD0FF0D0DD6FF
              1313CFFF2222A9FFAFAFDEFFE1E1E1FF878788EA6A6A6B430000000000000000
              0000000000000000000000006A6A6B22838383D8D3D3D3FEA8A8D9FF2020A4FF
              13139BFF0C0C92FF0C0C95FF0C0C97FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA4FF
              0A0AA9FF0909B0FF0808B4FF0808BBFF0707C0FF0A0AC6FF0909CCFF0C0CD3FF
              0D0DD8FF1313D3FF1A1AA8FFAEADDEFFD4D4D4FE838383D86A6A6B2200000000
              0000000000000000000000007C7C7C98B7B7B8FACACAE8FF2524A3FF13139FFF
              0C0C97FF0C0C95FF0C0C95FF0C0C91FF0C0C95FF0B0B9EFF0B0BA0FF0A0AA4FF
              0A0AA8FF0909ADFF0909B2FF0808B8FF0808BCFF0707C0FF0808BCFF0707C5FF
              0C0CD3FF0D0DD7FF1212D1FF2020A7FFCDCDEBFFB8B8B9FA7C7C7C9800000000
              00000000000000006A6A6B40888889F0ECECEFFE4545B1FF1616A4FF0B0B9BFF
              0C0C99FF0C0C96FF3333A2FFB9B9D0FF393A9BFF0C0C95FF0B0BA1FF0A0AA4FF
              0A0AA7FF0A0AABFF0909B0FF0808B4FF0808B7FF2F2FC2FFAEAEE2FF4B4BBFFF
              0707BEFF0B0BD1FF0C0CD3FF1413CCFF4848B1FFECECEFFE888889F06A6A6B40
              00000000000000007575769EBFBFBFFD9B9BD5FF1C1CA6FF0C0CA1FF0B0B9FFF
              0B0B9AFF3535A7FFB5B5BEFFE6E6DFFFEDEDEFFF3C3C9CFF0C0C97FF0A0AA4FF
              0A0AA6FF0A0AA9FF0909ADFF0909B0FF2626B5FFCECEDEFFFFFFFBFFEEEEF1FF
              4848BAFF0808BCFF0A0ACDFF0B0BCEFF1111ABFFBEC0E0FFBFC0BFFD7575769E
              000000006A6A6B25787879F1E3E3E5FE4646B2FF1414A8FF0A0AA4FF0B0BA0FF
              2121A9FFBDBDCAFFD0D0C8FFC5C5C5FFE3E3E1FFEDEDEFFF3E3E9EFF0C0C98FF
              0A0AA6FF0A0AA8FF0A0AA9FF2B2BB0FFC0C0CDFFEAEAE2FFEBEBEBFFFEFEF8FF
              EDEDEEFF2828BDFF0707C4FF0809C7FF0F0FC4FF8788CBFFEBEBECFE79797AF1
              6A6A6B256A6A6B609D9E9DF6D6D7E4FF3A3AB3FF1212ADFF0A0AA8FF0A0AA4FF
              1313AAFFABABCFFFD6D6CBFFCACACAFFC6C6C6FFE4E4E0FFEEEEEFFF3F3FA0FF
              0C0C99FF0A0AA6FF2828ABFFB2B2BFFFD8D8CEFFD6D6D8FFE0E0E0FFF6F5EDFF
              D1D1EDFF1E1CC0FF0707BEFF0707BFFF0707C0FF2120AAFFD3D5E9FE9FA0A0F6
              6A6A6B606A6A6B94BDBDBDFBBABBDCFF3A39B7FF2F2FB8FF0909ADFF0A0AA9FF
              0A0AA6FF1515ACFFADADCFFFD6D6CBFFCBCBCAFFC6C6C6FFE4E4E1FFEEEEEFFF
              3838A1FF2222A2FFACABB8FFC8C8C0FFC7C7C8FFCDCDCDFFE1E1D9FFC8CAE1FF
              2424BCFF0808B4FF0808B9FF0808BAFF0808BBFF0F0EABFFA1A2D5FEC0C0C0FC
              6A6A6B946A6A6BC0D9D8D7FE9999D1FF3838BBFF3636BCFF2C2CB7FF0909ADFF
              0A0AA9FF0A0AA4FF1C1CAFFFB1B1CFFFD6D6CBFFCCCCCBFFC7C7C7FFE4E4E1FF
              ECECEEFFACACB7FFC2C2BCFFBEBEBFFFC0C0C0FFCFCFC6FFC1C1D5FF2727B8FF
              0909ACFF0909B2FF0909B2FF0909B4FF0808B4FF0E0EB5FF6E6EBFFFD9D9D9FE
              6A6A6BC06A6A6BE1EBEAEBFF7D7CC7FF3838BFFF3434BEFF3536BEFF2A2AB8FF
              0909B0FF0909ACFF0A0AA8FF1C1CB1FFB2B2D0FFD7D7CCFFCBCBCBFFC7C7C8FF
              C8C8C3FFC6C6C3FFBFBFC1FFBDBDBDFFC5C5BCFFB8B8CEFF2929B5FF0A0AA8FF
              0909ACFF0909ADFF0909AFFF0909AFFF0909AFFF0C0CB0FF4747AFFFECECEDFF
              6A6A6BE16A6A6BF8F9F9F9FF6666C1FF3838C4FF3535C2FF3434C0FF3535BEFF
              3030BCFF1313B4FF0909ADFF0A0AA8FF1E1EB3FFAAAAD0FFD3D3CDFFCCCCCCFF
              C8C8C8FFC3C3C3FFC2C2C1FFC4C4BFFFB2B2CBFF2B2BB4FF0A0AA4FF0A0AA8FF
              0A0AA8FF0A0AA9FF0A0AA9FF0A0AA9FF0A0AA9FF0B0BA9FF3131A6FFFAFAFAFF
              6A6A6BF86A6A6BF8FBFBFBFF5959BEFF3B3BCAFF3A3AC8FF3737C4FF3535C2FF
              3636C0FF3636BEFF2323B8FF0909B1FF0A0AA7FF4949BEFFD6D6D4FFD3D3D1FF
              CDCDCDFFC8C8C8FFC4C4C3FFEDEDEDFF5F5FB3FF0C0C98FF0A0AA7FF0A0AA6FF
              0A0AA6FF0A0AA6FF0A0AA4FF0A0AA6FF0A0AA4FF0B0BA4FF2D2DA6FFFBFBFBFF
              6A6A6BF86A6A6BE1EDEDEEFF7F80CBFF4041CCFF3C3CCAFF3A3AC8FF383AC8FF
              3838C4FF3636C2FF3939C0FF2123B7FF4A4AC2FFCBCBDEFFE0E0DCFFD6D6D6FF
              D2D2D3FFCDCDCEFFC9C9C9FFE2E2E1FFF1F1F2FF4242A3FF0C0C99FF0A0AA4FF
              0A0AA4FF0A0AA4FF0B0BA3FF0B0BA3FF0B0BA1FF0E0EA1FF4443B0FFEDEDEEFF
              6A6A6BE16A6A6BC0DADADAFF9C9BD5FE4949CDFF3E3DD0FF3C3DCEFF3C3CCAFF
              3A3AC8FF3B39C7FF2828BDFF5C5CCCFFE5E5EDFFF4F4EDFFE5E5E6FFDEDEDEFF
              DCDCD9FFD9D9D3FFCDCDCDFFC8C8C8FFE5E5E1FFF1F1F3FF3F3FA0FF0C0C99FF
              0A0AA4FF0B0BA1FF0B0BA0FF0B0BA0FF0B0B9FFF1313A2FF6B6BC0FFDADADAFF
              6A6A6BC06A6A6B94C0C0C0FDBDBAE1FE5655CFFF4141D4FF3F3FD2FF3F3FCEFF
              3D3DCCFF2C2AC3FF5E5ED3FFEBEBF6FFFFFFFAFFF1F1F1FFEDEDEEFFF0F0E9FF
              D2D2E6FFBDBDD6FFDADAD3FFCFCFCFFFC9C9CAFFE5E5E2FFF1F1F3FF3A3AA0FF
              0C0C98FF0B0BA3FF0B0B9FFF0B0B9EFF0B0B9EFF1C1CA4FF9C9CD3FFC1C1C1FD
              6A6A6B946A6A6B609F9F9FF6DAD9EAFF6B6BCFFF4444D7FF4143D6FF4242D3FF
              3434CDFF6464DBFFEFEFFFFFFFFFFFFFFCFCFCFFF6F6F6FFFCFCF4FFE2E1F0FF
              5050CCFF4040C1FFC3C3DBFFE1E1D8FFD4D4D5FFCFCFCFFFE8E8E5FFF2F2F4FF
              4040A2FF0C0C99FF0F0FA2FF0F0FA0FF0F0F9DFF302FA9FFD1D1E8FEA0A0A0F6
              6A6A6B606A6A6B25787879F1E9E9EBFEA7A7DAFF6060DBFF4547DBFF3C3CD6FF
              5857DEFFF2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8F8FF5B5BD4FF
              2828BDFF2A2BBDFF4949C5FFC3C3DBFFE4E4DAFFD5D5D5FFCECED0FFE8E8E5FF
              F4F4F4FF4949AFFF2121A6FF2A2AA6FF2C2BA9FF5557B8FFEAEAECFE787879F1
              6A6A6B25000000007575769EBEBEBEFDC9CAE6FF7A79DBFF4C4CDFFF4141DBFF
              5757E0FFEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E7FFFF5B5BD7FF2E2EC6FF
              3E3EC9FF3A3AC5FF2C2EC1FF4A49C8FFC2C2DDFFE3E3DAFFD5D5D4FFDADAD3FF
              CACBD9FF4747BBFF2525ADFF2C2BACFF3332AEFFA5A4D8FFBFBFBFFD7575769E
              00000000000000006A6A6B40888889F0ECECEFFE9696D6FF7B7BE3FF4D4BE0FF
              4141DBFF5F5FE6FFE7E7FFFFFFFFFFFFE9E9FFFF5A5ADCFF3333CAFF4242CFFF
              4040CBFF3D3DC9FF3D3EC8FF3030C2FF4848C9FFC0C0DDFFECEEDEFFD0D0E0FF
              5554C7FF2828B3FF3232B4FF3434B1FF5453B7FFECECEFFE888889F06A6A6B40
              0000000000000000000000007C7C7C98B7B7B8FAD0D0ECFF8F8FDBFF6868E3FF
              4E4EE2FF3E40DBFF6565E9FFB2B2F7FF6565E4FF393BD2FF4646D7FF4343D4FF
              4343D1FF4242CFFF4040CBFF3F3FCAFF3333C4FF4E4ECBFF9E9EE2FF5C5BCFFF
              292ABAFF3636BCFF3938B8FF3F3EB1FFCBCBE9FFB7B7B8FA7C7C7C9800000000
              0000000000000000000000006A6A6B22838383D8D3D3D3FEB5B5E2FF9E9EE4FF
              6766E2FF4E50E6FF4646E0FF3D3DDAFF4444DCFF4B4BDCFF4848DBFF4847D9FF
              4646D5FF4443D3FF4343D1FF4242CFFF4143CDFF3A3AC8FF312FC5FF3535C3FF
              3C3CC3FF3D3DBEFF403FB5FFACACDCFFD3D3D3FE838383D86A6A6B2200000000
              000000000000000000000000000000006A6A6B43878788EAE1E1E1FFB5B5E2FF
              A7A6E4FF7877E5FF5151E5FF4F4FE4FF4E4EE2FF4D4DE0FF4C4CDEFF4B4BDCFF
              4949DBFF4848D7FF4747D5FF4545D3FF4545D1FF4343CFFF4242CCFF3F3FCBFF
              4343C2FF4645B6FFADADDCFFE1E1E1FF878788EA6A6A6B430000000000000000
              00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
              D0D0ECFFAAA9DFFFA2A2ECFF6565E3FF5151E6FF4F4FE4FF4F4DE4FF4D4DE0FF
              4D4DDFFF4D4DDCFF4C49DBFF4A4AD8FF4749D6FF4747D4FF4949CBFF4B4BC3FF
              8E8ED0FFCDCCE8FFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
              0000000000000000000000000000000000000000000000006A6A6B43838383D8
              B7B7B8FAECECEFFEC3C2E5FFADAEE1FF9E9DE8FF6F6FE0FF5C5CE1FF5452E2FF
              5051E1FF4F4FDFFF4F4FDBFF5150D6FF5151CFFF5F5FC8FFA1A1D3FEC7C8E0FE
              E4E4E7FEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000006A6A6B22
              7C7C7C98888889F0BFBFBFFDEBEBECFED8D9EBFEBDBDE4FEA8A7DCFF9695D7FF
              8886D4FF7F7DCEFF8C8BD2FFA1A2D9FFC0BEE1FED9D9EAFEEAEAECFEBFBFBFFD
              888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
              FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
              6A6A6B4000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
              6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
              C000000380000001800000010000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000080000001
              80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
              FFC003FF}
            ShowUnicode = False
            ExplicitWidth = 630
            ColWidths = (
              20
              174
              64
              135
              181
              64)
            RowHeights = (
              22
              22)
          end
          object EnhDBGrid1: TDBGrid
            Left = 0
            Top = 201
            Width = 771
            Height = 362
            Align = alClient
            DataSource = dsCsvExport
            PopupMenu = PopupMenu1
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'TITLE'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MINIMUM'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MAXIMUM'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ROWS'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DIFF'
                Visible = True
              end>
          end
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Connessione Ed Impostazioi'
      ImageIndex = 3
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1492
        Height = 105
        Align = alTop
        TabOrder = 0
        object edPort: TLabeledEdit
          Left = 16
          Top = 32
          Width = 89
          Height = 21
          EditLabel.Width = 20
          EditLabel.Height = 13
          EditLabel.Caption = 'Port'
          TabOrder = 0
          Text = ''
          OnChange = edPortChange
        end
        object edDatabase: TLabeledEdit
          Left = 400
          Top = 32
          Width = 177
          Height = 21
          EditLabel.Width = 46
          EditLabel.Height = 13
          EditLabel.Caption = 'Database'
          TabOrder = 1
          Text = ''
          OnChange = edDatabaseChange
        end
        object edServerAddress: TLabeledEdit
          Left = 127
          Top = 32
          Width = 257
          Height = 21
          EditLabel.Width = 32
          EditLabel.Height = 13
          EditLabel.Caption = 'Server'
          TabOrder = 2
          Text = ''
          OnChange = edServerAddressChange
        end
        object edSchema: TLabeledEdit
          Left = 583
          Top = 32
          Width = 257
          Height = 21
          EditLabel.Width = 49
          EditLabel.Height = 13
          EditLabel.Caption = 'edSchema'
          TabOrder = 3
          Text = ''
          OnChange = edSchemaChange
        end
        object edUserName: TLabeledEdit
          Left = 16
          Top = 72
          Width = 257
          Height = 21
          EditLabel.Width = 52
          EditLabel.Height = 13
          EditLabel.Caption = 'User Name'
          TabOrder = 4
          Text = ''
          OnChange = edUserNameChange
        end
        object edPassword: TLabeledEdit
          Left = 289
          Top = 72
          Width = 288
          Height = 21
          EditLabel.Width = 46
          EditLabel.Height = 13
          EditLabel.Caption = 'Password'
          TabOrder = 5
          Text = ''
          OnChange = edPasswordChange
        end
        object btnConnectServer: TButton
          Left = 583
          Top = 68
          Width = 257
          Height = 25
          Caption = 'Connect'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = btnConnectServerClick
        end
      end
      object memDBLog: TAdvMemo
        Left = 0
        Top = 105
        Width = 1492
        Height = 560
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
        SelColor = clHighlightText
        SelBkColor = clHighlight
        ShowRightMargin = True
        SmartTabs = False
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
        Version = '3.7.10.0'
        WordWrap = wwNone
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Test Server Orm'
      ImageIndex = 4
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 1492
        Height = 665
        ActivePage = TabSheet8
        Align = alClient
        TabOrder = 0
        object TabSheet8: TTabSheet
          Caption = 'Images'
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 1484
            Height = 41
            Align = alTop
            Caption = 'Panel6'
            TabOrder = 0
          end
          object CRDBGrid2: TCRDBGrid
            Left = 0
            Top = 41
            Width = 449
            Height = 596
            Align = alLeft
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'System'
          ImageIndex = 1
        end
        object TabSheet10: TTabSheet
          Caption = 'Test Remoting'
          ImageIndex = 2
        end
        object TabSheet11: TTabSheet
          Caption = 'TabSheet11'
          ImageIndex = 3
        end
      end
    end
    object tabLogServer: TTabSheet
      Caption = 'tabLogServer'
      ImageIndex = 5
      object memMainLog: TAdvMemo
        Left = 0
        Top = 0
        Width = 1492
        Height = 665
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
        SelColor = clHighlightText
        SelBkColor = clHighlight
        ShowRightMargin = True
        SmartTabs = False
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
        Version = '3.7.10.0'
        WordWrap = wwNone
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'Test Html Builders'
      ImageIndex = 6
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 153
        Height = 665
        Align = alLeft
        TabOrder = 0
        object Button10: TButton
          Left = 1
          Top = 1
          Width = 151
          Height = 25
          Align = alTop
          Caption = 'Matches Virtual Table'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button10Click
        end
        object Button11: TButton
          Left = 1
          Top = 26
          Width = 151
          Height = 25
          Align = alTop
          Caption = 'Test Virtual Server'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button11Click
        end
        object Button12: TButton
          Left = 1
          Top = 51
          Width = 151
          Height = 25
          Align = alTop
          Caption = 'Test Html Menu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button12Click
        end
        object Button13: TButton
          Left = 1
          Top = 76
          Width = 151
          Height = 25
          Align = alTop
          Caption = 'Test -Articles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = Button13Click
        end
      end
      object PageControl5: TPageControl
        Left = 153
        Top = 0
        Width = 1339
        Height = 665
        ActivePage = TabSheet16
        Align = alClient
        TabOrder = 1
        object TabSheet15: TTabSheet
          Caption = 'Html'
          object AdvMemHtml: TAdvMemo
            Left = 0
            Top = 0
            Width = 1331
            Height = 637
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
            SelColor = clHighlightText
            SelBkColor = clHighlight
            ShowRightMargin = True
            SmartTabs = False
            SyntaxStyles = AdvHTMLMemoStyler1
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
            Version = '3.7.10.0'
            WordWrap = wwNone
          end
        end
        object TabSheet16: TTabSheet
          Caption = 'Json'
          ImageIndex = 1
          object AdvMemoJson: TAdvMemo
            Left = 0
            Top = 0
            Width = 1331
            Height = 637
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
            Version = '3.7.10.0'
            WordWrap = wwNone
          end
        end
      end
    end
    object tabTestViewModels: TTabSheet
      Caption = 'Test ViewModels'
      ImageIndex = 7
      object pgTestViewModels: TPageControl
        Left = 0
        Top = 0
        Width = 1492
        Height = 665
        ActivePage = tabSearchLocation
        Align = alClient
        TabOrder = 0
        object tabSearchAnagraph: TTabSheet
          Caption = 'Search Anagraph'
          DesignSize = (
            1484
            637)
          inline frameTestViewModelAnagraphSearch1: TframeTestViewModelAnagraphSearch
            Left = 8
            Top = 8
            Width = 773
            Height = 227
            TabOrder = 0
            ExplicitLeft = 8
            ExplicitTop = 8
            inherited grpTestShippingAddress: TGroupBox
              Left = 0
              Top = 0
              ExplicitLeft = 0
              ExplicitTop = 0
              inherited lbStreetAddress: TLabel
                Width = 72
                Height = 13
                ExplicitWidth = 72
                ExplicitHeight = 13
              end
              inherited lbPostalCode: TLabel
                Width = 75
                Height = 13
                ExplicitWidth = 75
                ExplicitHeight = 13
              end
              inherited lbTown: TLabel
                Width = 76
                Height = 13
                ExplicitWidth = 76
                ExplicitHeight = 13
              end
              inherited lbStateProvince: TLabel
                Width = 71
                Height = 13
                ExplicitWidth = 71
                ExplicitHeight = 13
              end
              inherited lbNumber: TLabel
                Width = 37
                Height = 13
                ExplicitWidth = 37
                ExplicitHeight = 13
              end
              inherited Button1: TButton
                OnClick = frameTestViewModelAnagraphSearch1Button1Click
              end
            end
          end
          object grdSearchAnagraph: TEnhCRDBGrid
            Left = 8
            Top = 208
            Width = 1460
            Height = 426
            Align = alCustom
            Anchors = [akLeft, akTop, akRight, akBottom]
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
          object grpAnagraphSearch: TGroupBox
            Left = 760
            Top = 8
            Width = 708
            Height = 194
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Search Anagraph'
            TabOrder = 2
            DesignSize = (
              708
              194)
            object lbCompanyName: TLabel
              Left = 16
              Top = 32
              Width = 89
              Height = 13
              Caption = 'Selected Company'
            end
            object lbCompanyCode: TLabel
              Left = 16
              Top = 88
              Width = 25
              Height = 13
              Caption = 'Code'
            end
            object lbId: TLabel
              Left = 319
              Top = 88
              Width = 50
              Height = 13
              Caption = 'Id Number'
            end
            object edCompanyName: TEdit
              Left = 16
              Top = 51
              Width = 668
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 0
            end
            object edAnagraphCode: TEdit
              Left = 16
              Top = 107
              Width = 297
              Height = 21
              TabOrder = 1
            end
            object edAnagraphId: TEdit
              Left = 319
              Top = 107
              Width = 365
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
            end
          end
        end
        object tabSearchLocation: TTabSheet
          Caption = 'Search Locations'
          ImageIndex = 1
          inline frameTestViewModelLocationSearch1: TframeTestViewModelLocationSearch
            Left = 3
            Top = 16
            Width = 759
            Height = 585
            TabOrder = 0
            ExplicitLeft = 3
            ExplicitTop = 16
            ExplicitWidth = 759
            ExplicitHeight = 585
            inherited grpTestShippingAddress: TGroupBox
              Left = 0
              Top = 5
              ExplicitLeft = 0
              ExplicitTop = 5
              inherited lbCountry: TLabel
                Width = 39
                Height = 13
                ExplicitWidth = 39
                ExplicitHeight = 13
              end
              inherited lbCode: TLabel
                Width = 25
                Height = 13
                ExplicitWidth = 25
                ExplicitHeight = 13
              end
              inherited lbTown: TLabel
                Width = 76
                Height = 13
                ExplicitWidth = 76
                ExplicitHeight = 13
              end
              inherited lbIataCode: TLabel
                Width = 52
                Height = 13
                ExplicitWidth = 52
                ExplicitHeight = 13
              end
              inherited lbAreaCode: TLabel
                Width = 51
                Height = 13
                ExplicitWidth = 51
                ExplicitHeight = 13
              end
              inherited Button1: TButton
                OnClick = frameTestViewModelLocationSearch1Button1Click
              end
            end
            inherited grpMultiTest: TGroupBox
              inherited Label1: TLabel
                Width = 39
                Height = 13
                ExplicitWidth = 39
                ExplicitHeight = 13
              end
              inherited Label2: TLabel
                Width = 25
                Height = 13
                ExplicitWidth = 25
                ExplicitHeight = 13
              end
              inherited Label3: TLabel
                Width = 76
                Height = 13
                ExplicitWidth = 76
                ExplicitHeight = 13
              end
              inherited Label4: TLabel
                Width = 25
                Height = 13
                ExplicitWidth = 25
                ExplicitHeight = 13
              end
              inherited Label5: TLabel
                Width = 39
                Height = 13
                ExplicitWidth = 39
                ExplicitHeight = 13
              end
              inherited Label6: TLabel
                Width = 76
                Height = 13
                ExplicitWidth = 76
                ExplicitHeight = 13
              end
            end
          end
          object grdLocations: TEnhCRDBGrid
            Left = 776
            Top = 16
            Width = 705
            Height = 621
            Align = alCustom
            Anchors = [akLeft, akTop, akRight, akBottom]
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
        end
        object TabSheet23: TTabSheet
          Caption = 'TabSheet23'
          ImageIndex = 2
        end
        object TabSheet24: TTabSheet
          Caption = 'TabSheet24'
          ImageIndex = 3
        end
      end
    end
    object TabSheet21: TTabSheet
      Caption = 'Test Reporting'
      ImageIndex = 8
      object PageControl6: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1486
        Height = 659
        ActivePage = tabWarehouseReceipts
        Align = alClient
        TabOrder = 0
        object tabWarehouseReceipts: TTabSheet
          Caption = 'Warehouse Receipts'
          ImageIndex = 3
          inline framePrintWarehouseReceipts1: TframePrintWarehouseReceipts
            Left = 0
            Top = 0
            Width = 1478
            Height = 631
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1478
            ExplicitHeight = 631
            inherited btnStartTest: TButton
              OnClick = framePrintWarehouseReceipts1btnStartTestClick
            end
            inherited DBGrid1: TDBGrid
              Width = 1434
              Height = 332
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              Columns = <
                item
                  Expanded = False
                  FieldName = 'id'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'doc_date'
                  Title.Caption = 'Date'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'doc_year'
                  Title.Caption = 'Year'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'doc_number'
                  Title.Caption = 'Number'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dest_name'
                  Title.Caption = 'Warehouse'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'location_name'
                  Title.Caption = 'Location (Vessel)'
                  Width = 160
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'holder_name'
                  Title.Caption = 'Supplier (Shipper)'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'package_description'
                  Title.Caption = 'Package Description'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'po_number'
                  Title.Caption = 'P.O. Number'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'carrier_expenses'
                  Title.Caption = 'Carrier Expense'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'carrier_tracking_number'
                  Title.Caption = 'Tracking Number'
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'search_index'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'carrier_name'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'goods_type_id'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'importexport'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'holder_town'
                  Visible = True
                end>
            end
            inherited grdRows: TDBGrid
              Top = 458
              Width = 1063
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
            end
            inherited DBGrid3: TDBGrid
              Left = 1102
              Top = 458
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              Columns = <
                item
                  Expanded = False
                  FieldName = 'vat_code'
                  Width = 48
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vat_description'
                  Width = 85
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'taxable_amount'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'taxes'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vat_rate'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'amount'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'jguid'
                  Visible = True
                end>
            end
            inherited DBNavigator1: TDBNavigator
              Hints.Strings = ()
            end
            inherited DBMemo1: TDBMemo
              Width = 614
              Anchors = [akLeft, akTop, akRight]
              ExplicitWidth = 614
            end
            inherited Edit1: TEdit
              Left = 1036
              Width = 421
              ExplicitLeft = 1036
              ExplicitWidth = 421
            end
            inherited DBNavigator2: TDBNavigator
              Top = 419
              Hints.Strings = ()
              ExplicitTop = 419
            end
            inherited DBMemo3: TDBMemo
              Left = 1036
              Width = 421
              Anchors = [akTop, akRight]
              ExplicitLeft = 1036
              ExplicitWidth = 421
            end
            inherited DBNavigator3: TDBNavigator
              Left = 1102
              Top = 419
              Anchors = [akRight, akBottom]
              Hints.Strings = ()
              ExplicitLeft = 1102
              ExplicitTop = 419
            end
          end
        end
        object tabShipments: TTabSheet
          AlignWithMargins = True
          Caption = 'Shipment Works'
          ImageIndex = 2
        end
        object tabAWV: TTabSheet
          Caption = 'Airway Bills'
          ImageIndex = 1
        end
        object tabInvoices: TTabSheet
          Caption = 'Invoices and Credit Notes'
          inline frameTestPrintInvoice1: TframeTestPrintInvoice
            Left = 0
            Top = 0
            Width = 1478
            Height = 631
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1478
            ExplicitHeight = 631
            inherited DBGrid1: TDBGrid
              Width = 1434
              Height = 316
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
            end
            inherited grdRows: TDBGrid
              Top = 403
              Width = 839
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
            end
            inherited DBGrid3: TDBGrid
              Left = 1102
              Top = 403
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
            end
            inherited DBNavigator1: TDBNavigator
              Hints.Strings = ()
            end
            inherited Edit1: TEdit
              Left = 1300
              ExplicitLeft = 1300
            end
            inherited DBMemo2: TDBMemo
              Left = 873
              Top = 524
              ExplicitLeft = 873
              ExplicitTop = 524
            end
            inherited DBNavigator2: TDBNavigator
              Left = 869
              Hints.Strings = ()
              ExplicitLeft = 869
            end
            inherited JvDBLookupCombo1: TJvDBLookupCombo
              Left = 1300
              ExplicitLeft = 1300
            end
            inherited DBMemo3: TDBMemo
              Width = 432
              ExplicitWidth = 432
            end
          end
        end
      end
    end
    object tabOrmDataset: TTabSheet
      Caption = 'Test Orm-Dataset Sync'
      ImageIndex = 9
      object pgTestOrmDatasetMVVM: TPageControl
        Left = 0
        Top = 0
        Width = 1492
        Height = 665
        ActivePage = tabTestNavigator
        Align = alClient
        TabOrder = 0
        object tabOrmDatasetSync: TTabSheet
          Caption = 'Orm-Dataset Sync'
          inline frameTestOrmDB1: TframeTestOrmDB
            Left = 0
            Top = 0
            Width = 1484
            Height = 637
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1484
            ExplicitHeight = 637
            inherited frameBindTestOrm1: TframeBindTestOrm
              Width = 869
              ExplicitWidth = 869
              inherited lbString: TLabel
                Width = 25
                Height = 13
                ExplicitWidth = 25
                ExplicitHeight = 13
              end
              inherited lbInt: TLabel
                Width = 25
                Height = 13
                ExplicitWidth = 25
                ExplicitHeight = 13
              end
              inherited lbDate: TLabel
                Width = 25
                Height = 13
                ExplicitWidth = 25
                ExplicitHeight = 13
              end
              inherited grpMaster: TGroupBox
                inherited lbJguid: TLabel
                  Width = 25
                  Height = 13
                  ExplicitWidth = 25
                  ExplicitHeight = 13
                end
                inherited btnUndo: TButton
                  OnClick = frameBindTestOrm1btnUndoClick
                end
              end
              inherited grpDetail: TGroupBox
                inherited lbDetailGUID: TLabel
                  Width = 25
                  Height = 13
                  ExplicitWidth = 25
                  ExplicitHeight = 13
                end
              end
              inherited EnhCRDBGrid1: TEnhCRDBGrid
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
              end
              inherited DBNavigator1: TDBNavigator
                Hints.Strings = ()
              end
            end
            inherited DBNavigator1: TDBNavigator
              Hints.Strings = ()
            end
            inherited btnStartOrmdbTest: TButton
              OnClick = frameTestOrmDB1btnStartOrmdbTestClick
            end
            inherited EnhCRDBGrid1: TEnhCRDBGrid
              Height = 255
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
            end
            inherited EnhCRDBGrid2: TEnhCRDBGrid
              Top = 367
              Height = 218
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
            end
            inherited DBNavigator2: TDBNavigator
              Top = 320
              Hints.Strings = ()
              ExplicitTop = 320
            end
            inherited btnSetupRecord: TButton
              OnClick = frameTestOrmDB1btnSetupRecordClick
            end
            inherited btnSave: TButton
              OnClick = frameTestOrmDB1btnSaveClick
            end
          end
        end
        object tabOrmMVVMTest: TTabSheet
          Caption = 'MVVM DB Sync'
          ImageIndex = 1
          inline frameVclTestOrmDatasetSync1: TframeVclTestOrmDatasetSync
            Left = 0
            Top = 0
            Width = 603
            Height = 637
            Align = alLeft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitWidth = 603
            ExplicitHeight = 637
            inherited btnStartTest: TButton
              OnClick = frameVclTestOrmDatasetSync1btnStartTestClick
            end
            inherited grdMaster: TwwDBGrid
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
            end
            inherited grdDetail: TwwDBGrid
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
            end
            inherited Edit1: TEdit
              Height = 21
              ExplicitHeight = 21
            end
            inherited DBNavigator1: TDBNavigator
              Hints.Strings = ()
            end
            inherited grdDetail2: TwwDBGrid
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
            end
            inherited edTextSubModel: TEdit
              Height = 21
              ExplicitHeight = 21
            end
            inherited dbnavDetail: TDBNavigator
              Hints.Strings = ()
            end
            inherited grdDetailWW: TwwDBGrid
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
            end
            inherited edtMasterStringField: TLabeledEdit
              EditLabel.Width = 80
              EditLabel.Height = 13
              EditLabel.ExplicitLeft = 569
              EditLabel.ExplicitTop = 248
              EditLabel.ExplicitWidth = 80
              EditLabel.ExplicitHeight = 13
            end
            inherited seDetailIntField: TSpinEdit
              Height = 22
              ExplicitHeight = 22
            end
            inherited edtDetailString: TLabeledEdit
              Height = 21
              EditLabel.Width = 83
              EditLabel.Height = 13
              EditLabel.ExplicitLeft = 1008
              EditLabel.ExplicitTop = 504
              EditLabel.ExplicitWidth = 83
              EditLabel.ExplicitHeight = 13
              ExplicitHeight = 21
            end
            inherited seIntegerEdit: TJvValidateEdit
              Height = 21
              ExplicitHeight = 21
            end
          end
        end
        object tabTestNavigator: TTabSheet
          Caption = 'Full Test MVVM Navigator'
          ImageIndex = 2
          object pnlTestMVVMNavigator: TPanel
            Left = 0
            Top = 0
            Width = 1484
            Height = 41
            Align = alTop
            TabOrder = 0
            object btnStartTestMVVMNavigator: TButton
              AlignWithMargins = True
              Left = 4
              Top = 2
              Width = 75
              Height = 37
              Margins.Top = 1
              Margins.Bottom = 1
              Align = alLeft
              Caption = 'Start Test'
              TabOrder = 0
              OnClick = btnStartTestMVVMNavigatorClick
            end
          end
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1500
    Height = 41
    Align = alTop
    TabOrder = 1
    object SpeedButton2: TButton
      Left = 359
      Top = 10
      Width = 106
      Height = 25
      Caption = 'Start WEB Server'
      TabOrder = 3
      OnClick = SpeedButton2Click
    end
    object Button4: TButton
      Left = 4
      Top = 10
      Width = 181
      Height = 25
      Caption = 'Connect Database'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnConnectServerClick
    end
    object edRestPort: TLabeledEdit
      Left = 200
      Top = 18
      Width = 57
      Height = 21
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'REST Port'
      TabOrder = 1
      Text = '8081'
      OnChange = edPortChange
    end
    object edWebPort: TLabeledEdit
      Left = 280
      Top = 18
      Width = 57
      Height = 21
      EditLabel.Width = 45
      EditLabel.Height = 13
      EditLabel.Caption = 'Web Port'
      TabOrder = 2
      Text = '80'
      OnChange = edPortChange
    end
  end
  object JanuaVCLGeoMaps1: TJanuaVCLGeoMaps
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    ApiKey = 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c'
    Left = 80
    Top = 280
  end
  object JanuaCoreLogger1: TJanuaCoreLogger
    Enabled = False
    Component = Owner
    LogType = jltError
    AutoFileName = True
    IsCustomServer = False
    ErrorFileName = 'Error'
    LogFileName = 'Log'
    Left = 80
    Top = 216
  end
  object AdvSQLMemoStyler1: TAdvSQLMemoStyler
    AutoCompletion.Strings = (
      'SELECT'
      'WHERE')
    HintParameter.TextColor = clBlack
    HintParameter.BkColor = clInfoBk
    HintParameter.HintCharStart = '('
    HintParameter.HintCharEnd = ')'
    HintParameter.HintCharDelimiter = ';'
    HintParameter.HintClassDelimiter = '.'
    HintParameter.HintCharWriteDelimiter = ','
    LineComment = #39
    MultiCommentLeft = '{'
    MultiCommentRight = '}'
    CommentStyle.TextColor = clNavy
    CommentStyle.BkColor = clWhite
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clFuchsia
    NumberStyle.BkColor = clWhite
    NumberStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          'proc'
          'procedure'
          'begin'
          'end'
          'while'
          'begin'
          'end'
          'for'
          'to'
          'do'
          'not'
          'if'
          'else'
          'while'
          'repeat'
          'until'
          'break'
          'continue'
          'exec'
          'insert'
          'values'
          'update'
          'from'
          'delete'
          'declare'
          'set'
          'open'
          'fetch'
          'close'
          'deallocate'
          'return'
          'rollback'
          'transaction'
          'trans'
          'and'
          'or'
          'order'
          'by'
          'group'
          'having'
          'where'
          'left'
          'right'
          'join'
          'inner'
          'outer'
          'on'
          'create'
          'delete'
          'select'
          'like')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'SQL Standard Default'
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
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ' ,;:.(){}[]=-+*/^%<>#'#13#10
        Info = 'Symbols Delimiters'
      end>
    Description = 'SQL'
    Filter = 'SQL Files (*.sql)|*.sql'
    DefaultExtension = '.sql'
    StylerName = 'SQL'
    Extensions = 'sql'
    Left = 432
    Top = 280
  end
  object PgErgoConnection: TJanuaUniConnection
    ProviderName = 'postgreSQL'
    Port = 5432
    Database = 'ergomercator'
    SpecificOptions.Strings = (
      'postgreSQL.UseUnicode=True')
    Options.DisconnectedMode = True
    Pooling = True
    Username = 'ergo'
    Server = 'pg.januaservers.com'
    LoginPrompt = False
    BeforeConnect = PgErgoConnectionBeforeConnect
    SchemaParamKey = 'system.db_schema_id'
    SchemaParams = <>
    Left = 376
    Top = 184
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object PgScript1: TUniScript
    Connection = PgErgoConnection
    Left = 472
    Top = 216
  end
  object PgSQLMonitor1: TUniSQLMonitor
    Options = [moSQLMonitor, moDBMonitor, moCustom, moHandled]
    TraceFlags = [tfQPrepare, tfQExecute, tfQFetch, tfError, tfStmt, tfConnect, tfTransact, tfService, tfMisc, tfParams]
    OnSQL = PgSQLMonitor1SQL
    Left = 284
    Top = 208
  end
  object dsGuidGenerator: TDataSource
    DataSet = vtGuidGenerator
    OnDataChange = dsGuidGeneratorDataChange
    Left = 80
    Top = 544
  end
  object vtGuidGenerator: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'SchemaTable'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'Abbreviation'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Key'
        DataType = ftString
        Size = 200
      end>
    Left = 808
    Top = 208
    Data = {
      040003000B00536368656D615461626C6501002C01000000000C004162627265
      76696174696F6E010004000000000003004B65790100C8000000000000000000
      0000}
    object vtGuidGeneratorSchemaTable: TStringField
      FieldName = 'SchemaTable'
      Size = 300
    end
    object vtGuidGeneratorAbbreviation: TStringField
      FieldName = 'Abbreviation'
      Size = 4
    end
    object vtGuidGeneratorKey: TStringField
      FieldName = 'Key'
      Size = 200
    end
  end
  object qryColumns: TUniQuery
    DataTypeMap = <
      item
        DBType = 517
        FieldType = ftWideString
        FieldLength = 1024
        IgnoreErrors = True
      end
      item
        FieldName = 'column_name'
        FieldType = ftWideString
        FieldLength = 128
        IgnoreErrors = True
      end
      item
        DBType = 508
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      'FROM information_schema.columns'
      'WHERE'
      'table_schema || '#39'.'#39' ||table_name   = :SchemaTable'
      '--table_schema = '#39'football'#39
      '--and'
      '--table_name = '#39'ft_leagues'#39)
    MasterSource = dsGuidGenerator
    Left = 864
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'SchemaTable'
        ParamType = ptInput
        Value = nil
      end>
    object qryColumnscolumn_name: TWideStringField
      FieldName = 'column_name'
      Size = 128
    end
    object qryColumnstable_catalog: TWideStringField
      FieldName = 'table_catalog'
      Size = 1024
    end
    object qryColumnstable_schema: TWideStringField
      FieldName = 'table_schema'
      Size = 1024
    end
    object qryColumnstable_name: TWideStringField
      FieldName = 'table_name'
      Size = 1024
    end
    object qryColumnsordinal_position: TIntegerField
      FieldName = 'ordinal_position'
    end
    object qryColumnscolumn_default: TWideStringField
      FieldName = 'column_default'
      Size = 1024
    end
    object qryColumnsis_nullable: TWideStringField
      FieldName = 'is_nullable'
      Size = 1024
    end
    object qryColumnsdata_type: TWideStringField
      FieldName = 'data_type'
      Size = 1024
    end
    object qryColumnscharacter_maximum_length: TIntegerField
      FieldName = 'character_maximum_length'
    end
    object qryColumnscharacter_octet_length: TIntegerField
      FieldName = 'character_octet_length'
    end
    object qryColumnsnumeric_precision: TIntegerField
      FieldName = 'numeric_precision'
    end
    object qryColumnsnumeric_precision_radix: TIntegerField
      FieldName = 'numeric_precision_radix'
    end
    object qryColumnsnumeric_scale: TIntegerField
      FieldName = 'numeric_scale'
    end
    object qryColumnsdatetime_precision: TIntegerField
      FieldName = 'datetime_precision'
    end
    object qryColumnsinterval_type: TWideStringField
      FieldName = 'interval_type'
      Size = 1024
    end
    object qryColumnsinterval_precision: TIntegerField
      FieldName = 'interval_precision'
    end
    object qryColumnscharacter_set_catalog: TWideStringField
      FieldName = 'character_set_catalog'
      Size = 1024
    end
    object qryColumnscharacter_set_schema: TWideStringField
      FieldName = 'character_set_schema'
      Size = 1024
    end
    object qryColumnscharacter_set_name: TWideStringField
      FieldName = 'character_set_name'
      Size = 1024
    end
    object qryColumnscollation_catalog: TWideStringField
      FieldName = 'collation_catalog'
      Size = 1024
    end
    object qryColumnscollation_schema: TWideStringField
      FieldName = 'collation_schema'
      Size = 1024
    end
    object qryColumnscollation_name: TWideStringField
      FieldName = 'collation_name'
      Size = 1024
    end
    object qryColumnsdomain_catalog: TWideStringField
      FieldName = 'domain_catalog'
      Size = 1024
    end
    object qryColumnsdomain_schema: TWideStringField
      FieldName = 'domain_schema'
      Size = 1024
    end
    object qryColumnsdomain_name: TWideStringField
      FieldName = 'domain_name'
      Size = 1024
    end
    object qryColumnsudt_catalog: TWideStringField
      FieldName = 'udt_catalog'
      Size = 1024
    end
    object qryColumnsudt_schema: TWideStringField
      FieldName = 'udt_schema'
      Size = 1024
    end
    object qryColumnsudt_name: TWideStringField
      FieldName = 'udt_name'
      Size = 1024
    end
    object qryColumnsscope_catalog: TWideStringField
      FieldName = 'scope_catalog'
      Size = 1024
    end
    object qryColumnsscope_schema: TWideStringField
      FieldName = 'scope_schema'
      Size = 1024
    end
    object qryColumnsscope_name: TWideStringField
      FieldName = 'scope_name'
      Size = 1024
    end
    object qryColumnsmaximum_cardinality: TIntegerField
      FieldName = 'maximum_cardinality'
    end
    object qryColumnsdtd_identifier: TWideStringField
      FieldName = 'dtd_identifier'
      Size = 1024
    end
    object qryColumnsis_self_referencing: TWideStringField
      FieldName = 'is_self_referencing'
      Size = 1024
    end
    object qryColumnsis_identity: TWideStringField
      FieldName = 'is_identity'
      Size = 1024
    end
    object qryColumnsidentity_generation: TWideStringField
      FieldName = 'identity_generation'
      Size = 1024
    end
    object qryColumnsidentity_start: TWideStringField
      FieldName = 'identity_start'
      Size = 1024
    end
    object qryColumnsidentity_increment: TWideStringField
      FieldName = 'identity_increment'
      Size = 1024
    end
    object qryColumnsidentity_maximum: TWideStringField
      FieldName = 'identity_maximum'
      Size = 1024
    end
    object qryColumnsidentity_minimum: TWideStringField
      FieldName = 'identity_minimum'
      Size = 1024
    end
    object qryColumnsidentity_cycle: TWideStringField
      FieldName = 'identity_cycle'
      Size = 1024
    end
    object qryColumnsis_generated: TWideStringField
      FieldName = 'is_generated'
      Size = 1024
    end
    object qryColumnsgeneration_expression: TWideStringField
      FieldName = 'generation_expression'
      Size = 1024
    end
    object qryColumnsis_updatable: TWideStringField
      FieldName = 'is_updatable'
      Size = 1024
    end
  end
  object dsColumns: TDataSource
    DataSet = qryColumns
    Left = 864
    Top = 336
  end
  object qryIndexFields: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'data_type'
        FieldType = ftWideString
        FieldLength = 256
        IgnoreErrors = True
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT a.attname, format_type(a.atttypid, a.atttypmod) AS data_t' +
        'ype'
      
        'FROM   pg_index i JOIN   pg_attribute a ON a.attrelid = i.indrel' +
        'id  AND a.attnum = ANY(i.indkey)'
      'WHERE  '
      '  i.indrelid = '#39'system.db_users'#39'::regclass '
      '-- :SchemaTable'
      '  AND    '
      '  i.indisprimary')
    MasterSource = dsGuidGenerator
    DetailFields = 'attname'
    Left = 464
    Top = 408
    object qryIndexFieldsattname: TWideStringField
      FieldName = 'attname'
      ReadOnly = True
      Required = True
      Size = 63
    end
    object qryIndexFieldsdata_type: TWideStringField
      FieldName = 'data_type'
      ReadOnly = True
      Size = 256
    end
  end
  object dsIndexFields: TDataSource
    DataSet = qryIndexFields
    Left = 352
    Top = 448
  end
  object qrySchemaTables: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'table_name'
        FieldType = ftWideString
        FieldLength = 128
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT table_name FROM information_schema.tables '
      'WHERE table_schema = :schema'
      'order by table_name')
    Left = 488
    Top = 472
    ParamData = <
      item
        DataType = ftWideString
        Name = 'schema'
        ParamType = ptInput
        Value = 'documents'
      end>
    object qrySchemaTablestable_name: TWideStringField
      FieldName = 'table_name'
      Size = 128
    end
  end
  object PgDDLColumnsTable: TUniTable
    TableName = 'system.db_users'
    Connection = PgErgoConnection
    Left = 248
    Top = 488
  end
  object AdvPascalMemoStyler1: TAdvPascalMemoStyler
    AutoBlockEnd = True
    BlockStart = 'begin,try,case,class,record,interface'
    BlockEnd = 'end'
    LineComment = '//'
    MultiCommentLeft = '{'
    MultiCommentRight = '}'
    CommentStyle.TextColor = clNavy
    CommentStyle.BkColor = clNone
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clFuchsia
    NumberStyle.BkColor = clNone
    NumberStyle.Style = [fsBold]
    HighlightStyle.TextColor = clWhite
    HighlightStyle.BkColor = clRed
    HighlightStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          'unit'
          'interface'
          'implementation'
          'uses'
          'const'
          'program'
          'private'
          'public'
          'published'
          'protected'
          'property'
          'function'
          'finalise'
          'initialise'
          'var'
          'begin'
          'with'
          'end'
          'for'
          'to'
          'do'
          'not'
          'if'
          'then'
          'else'
          'type'
          'while'
          'repeat'
          'until'
          'break'
          'continue'
          'virtual'
          'override'
          'default'
          'class'
          'stored'
          'inherited'
          'procedure'
          'constructor'
          'destructor'
          'finally'
          'raise'
          'string'
          'try'
          'except'
          'stdcall'
          'cdecl'
          'pascal'
          'nil'
          'case'
          'reintroduce'
          'packed'
          'record'
          'message'
          'in'
          'is'
          'shl'
          'shr'
          'mod'
          'div'
          'xor'
          'or'
          'and'
          'of'
          'set'
          'downto'
          'exports'
          'library'
          'as'
          'asm'
          'dynamic'
          'object'
          'threadvar'
          'file'
          'abstract'
          'overload'
          'assembler'
          'absolute'
          'automated'
          'external'
          'register'
          'dispinterface'
          'resourcestring'
          'near'
          'far'
          'label'
          'out'
          'safecall'
          'dispid'
          'array'
          'inline'
          'forward'
          'platform'
          'deprecated')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        BGColor = clNone
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'Pascal Standard Default'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clNone
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
        BGColor = clNone
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
        BGColor = clNone
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ' ,;:.(){}[]=+-*/^%<>#'#13#10
        Info = 'Symbols Delimiters'
      end
      item
        CommentLeft = '(*'
        CommentRight = '*)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsItalic]
        BGColor = clNone
        StyleType = stComment
        BracketStart = #0
        BracketEnd = #0
        Info = 'Multi line comment'
      end>
    AutoCompletion.Strings = (
      'ShowMessage'
      'MessageDlg')
    HintParameter.TextColor = clBlack
    HintParameter.BkColor = clInfoBk
    HintParameter.HintCharStart = '('
    HintParameter.HintCharEnd = ')'
    HintParameter.HintCharDelimiter = ';'
    HintParameter.HintClassDelimiter = '.'
    HintParameter.HintCharWriteDelimiter = ','
    HintParameter.Parameters.Strings = (
      'ShowMessage(const Msg: string);'
      
        'MessageDlg(const Msg: string; DlgType: TMsgDlgType; Buttons: TMs' +
        'gDlgButtons; HelpCtx: Longint): Integer);')
    HexIdentifier = '$'
    Description = 'Pascal'
    Filter = 'Pascal Files (*.pas,*.dpr,*.dpk,*.inc)|*.pas;*.dpr;*.dpk;*.inc'
    DefaultExtension = '.pas'
    StylerName = 'Pascal'
    Extensions = 'pas;dpr;dpk;inc'
    RegionDefinitions = <
      item
        Identifier = 'procedure'
        RegionStart = 'begin'
        RegionEnd = 'end'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = 'procedure'
        RegionEnd = 'forward'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = 'constructor'
        RegionStart = 'begin'
        RegionEnd = 'end'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = 'destructor'
        RegionStart = 'begin'
        RegionEnd = 'end'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = 'interface'
        RegionStart = 'interface'
        RegionType = rtOpen
        ShowComments = False
      end
      item
        Identifier = 'unit'
        RegionStart = 'unit'
        RegionType = rtFile
        ShowComments = False
      end
      item
        Identifier = 'implementation'
        RegionStart = 'implementation'
        RegionType = rtOpen
        ShowComments = False
      end
      item
        Identifier = 'case'
        RegionStart = 'case'
        RegionEnd = 'end'
        RegionType = rtIgnore
        ShowComments = False
      end
      item
        Identifier = 'try'
        RegionStart = 'try'
        RegionEnd = 'end'
        RegionType = rtIgnore
        ShowComments = False
      end
      item
        Identifier = 'function'
        RegionStart = 'begin'
        RegionEnd = 'end'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = '{$region'
        RegionStart = '{$region'
        RegionEnd = '{$endregion'
        RegionType = rtClosed
        ShowComments = False
      end>
    Left = 536
    Top = 352
  end
  object qryTriggers: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'trigger_name'
        FieldType = ftWideString
        FieldLength = 256
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  trigger_name'
      'FROM  information_schema.triggers'
      'WHERE '
      'trigger_schema || '#39'.'#39' || event_object_table = :SchemaTable'
      'and '
      'event_manipulation = '#39'INSERT'#39
      'ORDER BY event_object_table'
      '     ,event_manipulation')
    MasterSource = dsGuidGenerator
    Left = 344
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SchemaTable'
        Value = nil
      end>
    object qryTriggerstrigger_name: TWideStringField
      FieldName = 'trigger_name'
      Size = 256
    end
  end
  object DataSource4: TDataSource
    Left = 608
    Top = 192
  end
  object DataSource5: TDataSource
    DataSet = qryTriggers
    Left = 536
    Top = 168
  end
  object AdvHTMLMemoStyler1: TAdvHTMLMemoStyler
    LineComment = '//'
    MultiCommentLeft = '<!--'
    MultiCommentRight = '-->'
    CommentStyle.TextColor = clSilver
    CommentStyle.BkColor = clWhite
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clBlack
    NumberStyle.BkColor = clWhite
    NumberStyle.Style = []
    HighlightStyle.TextColor = clWhite
    HighlightStyle.BkColor = clRed
    HighlightStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          '&lt'
          'abrev'
          'acronym'
          'address'
          'applet'
          'area'
          'au'
          'author'
          'b'
          'banner'
          'base'
          'basefont'
          'bgsound'
          'big'
          'blink'
          'blockquote'
          'body'
          'bq'
          'br'
          'caption'
          'center'
          'cite'
          'code'
          'col'
          'colgroup'
          'comment'
          'credit'
          'del'
          'dfn'
          'dir'
          'div'
          'dl'
          'dt'
          'dd'
          'em'
          'embed'
          'fig'
          'fn'
          'font'
          'form'
          'frame'
          'frameset'
          'head'
          'h1'
          'h2'
          'h3'
          'h4'
          'h5'
          'h6'
          'hr'
          'html'
          'i'
          'iframe'
          'img'
          'input'
          'ins'
          'isindex'
          'kbd'
          'lang'
          'lh'
          'li'
          'link'
          'listing'
          'map'
          'marquee'
          'math'
          'menu'
          'meta'
          'multicol'
          'nobr'
          'noframes'
          'note'
          'ol'
          'overlay'
          'p'
          'param'
          'person'
          'plaintext'
          'pre'
          'q'
          'range'
          'samp'
          'script'
          'select'
          'small'
          'spacer'
          'spot'
          'strike'
          'strong'
          'sub'
          'sup'
          'tab'
          'tbody'
          'textarea'
          'textflow'
          'tfoot'
          'th'
          'thead'
          'title'
          'tt'
          'u'
          'ul'
          'var'
          'wbr'
          'xmp'
          'doctype'
          'public')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'HTML Standard Default'
      end
      item
        KeyWords.Strings = (
          'table'
          'border'
          'td'
          'tr'
          'style'
          'bordercolor'
          'width'
          'id'
          'bordercolorlight'
          'bordercolordark')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clOlive
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'HTML Table Keywords'
      end
      item
        KeyWords.Strings = (
          'a'
          'href')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'HTML Link Keywords'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = #39
        BracketEnd = #39
        Info = 'Simple Bracket'
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
        Info = 'Double Bracket'
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
        Symbols = ' ,;:.()[]=-*/^%<>#'#13#10
        Info = 'Symbols Delimiters'
      end>
    Description = 'Web pages'
    Filter = 'HTML Document (*.htm,*.html)|*.htm;*.html'
    DefaultExtension = '.html'
    StylerName = 'HTML document'
    Extensions = 'htm;html'
    RegionDefinitions = <
      item
        Identifier = '<BODY>'
        RegionStart = '<BODY>'
        RegionEnd = '</BODY>'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = '<HEAD>'
        RegionStart = '<HEAD>'
        RegionEnd = '</HEAD>'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = '<HTML>'
        RegionStart = '<HTML>'
        RegionEnd = '</HTML>'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = '<SCRIPT>'
        RegionStart = '<SCRIPT>'
        RegionEnd = '</SCRIPT>'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = '<STYLE>'
        RegionStart = '<STYLE>'
        RegionEnd = '</STYLE>'
        RegionType = rtClosed
        ShowComments = False
      end
      item
        Identifier = '<FORM>'
        RegionStart = '<FORM>'
        RegionEnd = '</FORM>'
        RegionType = rtClosed
        ShowComments = False
      end>
    Left = 488
    Top = 528
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
          'null'
          'true'
          'false')
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
    Left = 416
    Top = 360
  end
  object JanuaInputText1: TJanuaInputText
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    CharCase = ecNormal
    Left = 80
    Top = 344
  end
  object JanuaDialogText1: TJanuaDialogText
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    CharCase = ecNormal
    Left = 80
    Top = 408
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 216
    Top = 248
  end
  object qryAnalisi: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'title'
        FieldType = ftWideString
        FieldLength = 1024
      end
      item
        FieldName = 'minimum'
        FieldType = ftWideString
        FieldLength = 1024
      end
      item
        FieldName = 'maximum'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      '      select'
      '      '#39'anno'#39'::character varying as title,'
      '      min(anno)::character varying as minimum,'
      '      max(anno)::character varying as maximum,'
      '      count(1) as rows,'
      #9'    diff'
      '      from'
      '      custom_tm_logistic.entrate a,'
      #9'  ('
      #9'   select count(1) diff from'
      
        '       (select distinct anno from custom_tm_logistic.entrate) as' +
        ' foo'
      '      ) as b'
      '      where'
      '      anno is not null'
      #9'  group by b.diff')
    Left = 824
    Top = 400
    object qryAnalisititle: TWideStringField
      FieldName = 'title'
      ReadOnly = True
      Size = 1024
    end
    object qryAnalisiminimum: TWideStringField
      FieldName = 'minimum'
      ReadOnly = True
      Size = 1024
    end
    object qryAnalisimaximum: TWideStringField
      FieldName = 'maximum'
      ReadOnly = True
      Size = 1024
    end
    object qryAnalisirows: TLargeintField
      FieldName = 'rows'
      ReadOnly = True
    end
    object qryAnalisidiff: TLargeintField
      FieldName = 'diff'
      ReadOnly = True
    end
  end
  object vtAnalysis: TVirtualTable
    FieldDefs = <
      item
        Name = 'title'
        DataType = ftWideString
        Size = 1024
      end
      item
        Name = 'minimum'
        DataType = ftWideString
        Size = 1024
      end
      item
        Name = 'maximum'
        DataType = ftWideString
        Size = 1024
      end
      item
        Name = 'rows'
        DataType = ftLargeint
      end
      item
        Name = 'diff'
        DataType = ftLargeint
      end>
    Left = 904
    Top = 400
    Data = {
      0400050005007469746C65180000040000000007006D696E696D756D18000004
      0000000007006D6178696D756D18000004000000000400726F77731900000000
      0000000400646966661900000000000000000000000000}
    object vtAnalysistitle: TWideStringField
      FieldName = 'title'
      Size = 1024
    end
    object vtAnalysisminimum: TWideStringField
      FieldName = 'minimum'
      Size = 1024
    end
    object vtAnalysismaximum: TWideStringField
      FieldName = 'maximum'
      Size = 1024
    end
    object vtAnalysisrows: TLargeintField
      FieldName = 'rows'
    end
    object vtAnalysisLargeintField: TLargeintField
      FieldName = 'diff'
      ReadOnly = True
    end
  end
  object DataSource6: TDataSource
    DataSet = vtAnalysis
    Left = 856
    Top = 464
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = DBAdvGrid1
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    Version = '3.14'
    Left = 1024
    Top = 336
  end
  object CsvExport: TJvCsvDataSet
    CsvFieldDef = 'TITLE:~,MINIMUM:~,MAXIMUM:~,ROWS:%,DIFF:%'
    LoadsFromFile = False
    AutoBackupCount = 0
    StoreDefs = True
    Left = 824
    Top = 528
    object CsvExportTITLE: TWideStringField
      FieldName = 'TITLE'
      Size = 80
    end
    object CsvExportMINIMUM: TWideStringField
      FieldName = 'MINIMUM'
      Size = 80
    end
    object CsvExportMAXIMUM: TWideStringField
      FieldName = 'MAXIMUM'
      Size = 80
    end
    object CsvExportROWS: TIntegerField
      FieldName = 'ROWS'
    end
    object CsvExportDIFF: TIntegerField
      FieldName = 'DIFF'
    end
  end
  object qrySchemas: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT nspname FROM pg_catalog.pg_namespace;')
    Left = 984
    Top = 400
    object qrySchemasnspname: TWideStringField
      FieldName = 'nspname'
      Required = True
      Size = 63
    end
  end
  object dsSchemas: TDataSource
    DataSet = qrySchemas
    Left = 648
    Top = 376
  end
  object dsCsvExport: TDataSource
    DataSet = CsvExport
    Left = 968
    Top = 464
  end
  object FileSaveDialog1: TFileSaveDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'CSV File'
        FileMask = '*.csv'
      end>
    Options = []
    Left = 1064
    Top = 424
  end
  object PopupMenu1: TPopupMenu
    Left = 1064
    Top = 488
    object ExportAsCSV1: TMenuItem
      Caption = 'Export As CSV'
      OnClick = ExportAsCSV1Click
    end
    object ExportAsExcel1: TMenuItem
      Caption = 'Export As Excel'
    end
  end
end
