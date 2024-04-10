object frmOracleSwissMilitaryMain: TfrmOracleSwissMilitaryMain
  Left = 0
  Top = 0
  Caption = 'Oracle Swiss Military'
  ClientHeight = 712
  ClientWidth = 1273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlToolBar: TPanel
    Left = 0
    Top = 0
    Width = 1273
    Height = 49
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1273
      49)
    object lbTargetSchema: TLabel
      Left = 1016
      Top = 2
      Width = 77
      Height = 15
      Caption = 'Target Schema'
    end
    object btnLogin: TButton
      Left = 1
      Top = 1
      Width = 128
      Height = 47
      Align = alLeft
      Caption = 'Login'
      TabOrder = 0
      OnClick = btnLoginClick
    end
    object Panel5: TPanel
      Left = 129
      Top = 1
      Width = 264
      Height = 47
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object lbSchemaSelection: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 2
        Width = 258
        Height = 16
        Margins.Top = 2
        Margins.Bottom = 1
        Align = alClient
        Caption = 'Select Schema'
        ExplicitWidth = 76
        ExplicitHeight = 15
      end
      object lkpSchema: TJvDBLookupCombo
        AlignWithMargins = True
        Left = 3
        Top = 22
        Width = 258
        Height = 22
        Align = alBottom
        LookupField = 'SCHEMA_NAME'
        LookupDisplay = 'SCHEMA_NAME'
        LookupSource = dsSchemas
        TabOrder = 0
      end
    end
    object edlAddRow: TLabeledEdit
      Left = 399
      Top = 20
      Width = 298
      Height = 23
      EditLabel.Width = 48
      EditLabel.Height = 15
      EditLabel.Caption = 'Add Row'
      TabOrder = 2
      Text = ', COD_COMPAGNIA CHAR(1)'
    end
    object edSuffix: TLabeledEdit
      Left = 718
      Top = 20
      Width = 146
      Height = 23
      EditLabel.Width = 41
      EditLabel.Height = 15
      EditLabel.Caption = 'Suffisso'
      TabOrder = 3
      Text = ''
    end
    object edReplace: TLabeledEdit
      Left = 870
      Top = 20
      Width = 140
      Height = 23
      EditLabel.Width = 41
      EditLabel.Height = 15
      EditLabel.Caption = 'Replace'
      TabOrder = 4
      Text = ''
    end
    object cboTargetSchema: TJvDBLookupCombo
      AlignWithMargins = True
      Left = 1016
      Top = 21
      Width = 241
      Height = 22
      Anchors = [akLeft, akTop, akRight]
      LookupField = 'SCHEMA_NAME'
      LookupDisplay = 'SCHEMA_NAME'
      LookupSource = dsSchemas
      TabOrder = 5
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 49
    Width = 1273
    Height = 663
    ActivePage = tabViewIInsertDDL
    Align = alClient
    TabOrder = 1
    object tabOracleControlFile: TTabSheet
      Caption = 'Control File'
      object grpSqlLoaderControlFile: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 6
        Width = 1259
        Height = 129
        Margins.Top = 6
        Margins.Bottom = 6
        Align = alTop
        Caption = 'Control File Coonfiguration'
        TabOrder = 0
        object lbOperation: TLabel
          Left = 24
          Top = 24
          Width = 116
          Height = 15
          Caption = 'Destination Operation'
        end
        object Label1: TLabel
          Left = 243
          Top = 24
          Width = 132
          Height = 15
          Caption = 'Destination View or Table'
        end
        object lbTerminatedBy: TLabel
          Left = 160
          Top = 88
          Width = 75
          Height = 15
          Caption = 'Terminated By'
        end
        object lbEnclosedBy: TLabel
          Left = 364
          Top = 88
          Width = 63
          Height = 15
          Caption = 'Enclosed by'
        end
        object lbNlsNumericChar: TLabel
          Left = 488
          Top = 88
          Width = 125
          Height = 15
          Caption = 'NLS numeric characters'
        end
        object lbDateTimeFormat: TLabel
          Left = 656
          Top = 88
          Width = 65
          Height = 15
          Caption = 'Date Format'
        end
        object lbTimeStamp: TLabel
          Left = 1015
          Top = 88
          Width = 60
          Height = 15
          Caption = 'TimeStamp'
        end
        object cboOperation: TComboBox
          Left = 24
          Top = 45
          Width = 201
          Height = 23
          ItemIndex = 1
          TabOrder = 0
          Text = 'APPEND'
          Items.Strings = (
            'INSERT'
            'APPEND'
            'REPLACE'
            'TRUNCATE')
        end
        object edDestinationViewTeble: TEdit
          Left = 243
          Top = 45
          Width = 225
          Height = 23
          TabOrder = 1
          TextHint = 'Destination View or Table'
        end
        object ckbINFILE: TCheckBox
          Left = 488
          Top = 22
          Width = 177
          Height = 17
          Caption = 'Use InFile (Infile Name)'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object edtInFile: TEdit
          Left = 488
          Top = 45
          Width = 241
          Height = 23
          TabOrder = 3
          TextHint = 'Destination View or Table'
        end
        object edtBadFile: TEdit
          Left = 752
          Top = 45
          Width = 241
          Height = 23
          TabOrder = 4
          TextHint = 'Destination View or Table'
        end
        object ckbBadFile: TCheckBox
          Left = 752
          Top = 22
          Width = 177
          Height = 17
          Caption = 'Use BadFile (BadFile Name)'
          Checked = True
          State = cbChecked
          TabOrder = 5
        end
        object edtDiscardFile: TEdit
          Left = 1016
          Top = 45
          Width = 233
          Height = 23
          TabOrder = 6
          TextHint = 'Destination View or Table'
        end
        object ckbDiscardFile: TCheckBox
          Left = 1016
          Top = 22
          Width = 225
          Height = 17
          Caption = 'Use Discard File (DiscardFile Name)'
          Checked = True
          State = cbChecked
          TabOrder = 7
        end
        object ckbTrailingNullCols: TCheckBox
          Left = 24
          Top = 87
          Width = 116
          Height = 17
          Caption = 'Trailing NullCols'
          Checked = True
          State = cbChecked
          TabOrder = 8
        end
        object edTerminatedBy: TEdit
          Left = 243
          Top = 84
          Width = 30
          Height = 23
          TabOrder = 9
          Text = ';'
          TextHint = 'Destination View or Table'
        end
        object ckbOptionally: TCheckBox
          Left = 279
          Top = 87
          Width = 85
          Height = 17
          Caption = 'Optionally'
          Checked = True
          State = cbChecked
          TabOrder = 10
        end
        object edEnclosedBy: TEdit
          Left = 447
          Top = 84
          Width = 30
          Height = 23
          TabOrder = 11
          Text = '"'
          TextHint = 'Destination View or Table'
        end
        object edNlsNumericChar: TEdit
          Left = 619
          Top = 84
          Width = 30
          Height = 23
          TabOrder = 12
          Text = '.,'
          TextHint = 'Destination View or Table'
        end
        object edDateTimeConversion: TEdit
          Left = 740
          Top = 84
          Width = 125
          Height = 23
          TabOrder = 13
          Text = 'YYYYMMDD'
          TextHint = 'Destination View or Table'
        end
        object ckbNumerics: TCheckBox
          Left = 871
          Top = 87
          Width = 138
          Height = 17
          Caption = 'Numeric Formatting'
          TabOrder = 14
        end
        object edtTimeStamp: TEdit
          Left = 1081
          Top = 84
          Width = 168
          Height = 23
          TabOrder = 15
          Text = 'YYYYMMDDHH24MISS'
          TextHint = 'Destination View or Table'
        end
      end
      object grpSqlLoaderControlFileOptions: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 141
        Width = 1259
        Height = 105
        Margins.Top = 0
        Margins.Bottom = 6
        Align = alTop
        Caption = 'Options'
        TabOrder = 1
        object ckbSkip: TCheckBox
          Left = 144
          Top = 32
          Width = 57
          Height = 17
          Caption = 'Skip'
          TabOrder = 0
        end
        object AdvSpinEdit1: TAdvSpinEdit
          Left = 207
          Top = 29
          Width = 66
          Height = 23
          Color = clWhite
          Value = 0
          DateValue = 45379.358173449070000000
          HexDigits = 0
          HexValue = 0
          FlatLineColor = 11250603
          BorderColor = 11250603
          FocusColor = clNone
          FocusFontColor = 3881787
          ImeName = 'spSkip'
          IncrementFloat = 0.100000000000000000
          IncrementFloatPage = 1.000000000000000000
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -12
          LabelFont.Name = 'Segoe UI'
          LabelFont.Style = []
          TabOrder = 1
          Visible = True
          Version = '2.0.2.6'
          ButtonColor = clWhite
          ButtonColorHot = 15917525
          ButtonColorDown = 14925219
          ButtonTextColor = 2303013
          ButtonTextColorHot = 2303013
          ButtonTextColorDown = 2303013
        end
        object ckbParallel: TCheckBox
          Left = 288
          Top = 32
          Width = 113
          Height = 17
          Caption = 'Parallel'
          TabOrder = 2
        end
        object ckbMultiThreading: TCheckBox
          Left = 379
          Top = 32
          Width = 113
          Height = 17
          Caption = 'Multi Threading'
          TabOrder = 3
        end
        object ckbOptions: TCheckBox
          Left = 16
          Top = 32
          Width = 110
          Height = 17
          Caption = 'Use Options'
          TabOrder = 4
        end
      end
      object pgcSqlLoaderControlFile: TPageControl
        Left = 0
        Top = 252
        Width = 1265
        Height = 381
        ActivePage = tabViewConrolFile
        Align = alClient
        TabOrder = 2
        object tabControlFile: TTabSheet
          Caption = 'Table Control File'
          object CRDBGrid1: TCRDBGrid
            Left = 0
            Top = 0
            Width = 257
            Height = 351
            OptionsEx = [dgeEnableSort, dgeFilterBar, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeSearchBar]
            Align = alLeft
            DataSource = dsTables
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'TABLE_NAME'
                Width = 212
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 257
            Top = 0
            Width = 1000
            Height = 351
            Align = alClient
            TabOrder = 1
            object Panel2: TPanel
              Left = 1
              Top = 1
              Width = 998
              Height = 41
              Align = alTop
              TabOrder = 0
              object btnGenerateTableControl: TButton
                Left = 105
                Top = 1
                Width = 104
                Height = 39
                Align = alLeft
                Caption = 'Generate'
                TabOrder = 0
                OnClick = btnGenerateTableControlClick
              end
              object btnViewTAbleFields: TButton
                Left = 1
                Top = 1
                Width = 104
                Height = 39
                Align = alLeft
                Caption = 'View Fields'
                TabOrder = 1
                OnClick = btnViewTAbleFieldsClick
              end
              object btnGenerateCSV: TButton
                Left = 209
                Top = 1
                Width = 145
                Height = 39
                Align = alLeft
                Caption = 'Generate CSV Code'
                TabOrder = 2
                OnClick = btnGenerateCSVClick
              end
            end
            object DBGrid1: TDBGrid
              Left = 1
              Top = 42
              Width = 470
              Height = 308
              Align = alLeft
              DataSource = dsTableFields
              Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'COLUMN_NAME'
                  Width = 160
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA_TYPE'
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA_LENGTH'
                  Title.Caption = 'Length'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA_PRECISION'
                  Title.Caption = 'Precision'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA_SCALE'
                  Title.Caption = 'Scale'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COLUMN_DDL'
                  Width = 260
                  Visible = True
                end>
            end
            object pgcTableControlExport: TPageControl
              Left = 471
              Top = 42
              Width = 528
              Height = 308
              ActivePage = tabControl
              Align = alClient
              TabOrder = 2
              object tabControl: TTabSheet
                Caption = 'Control Code'
                object memTableCtrlFile: TAdvMemo
                  Left = 0
                  Top = 0
                  Width = 520
                  Height = 278
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
                  Version = '3.9.0.1'
                  WordWrap = wwNone
                end
              end
              object tabExportCode: TTabSheet
                Caption = 'Export Code'
                ImageIndex = 1
                object advMemTableCSV: TAdvMemo
                  Left = 0
                  Top = 0
                  Width = 520
                  Height = 278
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
                  Version = '3.9.0.1'
                  WordWrap = wwNone
                end
              end
              object TabSheet3: TTabSheet
                Caption = 'TabSheet3'
                ImageIndex = 2
              end
            end
          end
        end
        object tabViewConrolFile: TTabSheet
          Caption = 'View Control File'
          ImageIndex = 1
          object CRDBGrid2: TCRDBGrid
            Left = 0
            Top = 0
            Width = 257
            Height = 351
            OptionsEx = [dgeEnableSort, dgeFilterBar, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeSearchBar]
            Align = alLeft
            DataSource = dsViews
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'VIEW_NAME'
                Width = 212
                Visible = True
              end>
          end
          object Panel3: TPanel
            Left = 257
            Top = 0
            Width = 1000
            Height = 351
            Align = alClient
            TabOrder = 1
            object Panel4: TPanel
              Left = 1
              Top = 1
              Width = 998
              Height = 41
              Align = alTop
              TabOrder = 0
              object Button1: TButton
                Left = 105
                Top = 1
                Width = 104
                Height = 39
                Align = alLeft
                Caption = 'Generate'
                TabOrder = 0
              end
              object btnOpenViewFields: TButton
                Left = 1
                Top = 1
                Width = 104
                Height = 39
                Align = alLeft
                Caption = 'View Fields'
                TabOrder = 1
                OnClick = btnOpenViewFieldsClick
              end
            end
            object AdvMemo2: TAdvMemo
              Left = 337
              Top = 42
              Width = 662
              Height = 308
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
              Version = '3.9.0.1'
              WordWrap = wwNone
            end
            object DBGrid2: TDBGrid
              Left = 1
              Top = 42
              Width = 336
              Height = 308
              Align = alLeft
              DataSource = dsViewFields
              Options = [dgEditing, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'COLUMN_DDL'
                  Visible = True
                end>
            end
          end
        end
        object tabQueryControlFile: TTabSheet
          Caption = 'QueryControlFile'
          ImageIndex = 2
        end
      end
    end
    object pgcMaterializedViews: TTabSheet
      Caption = 'Materialized Views'
      ImageIndex = 1
      object pnlMViews: TPanel
        Left = 0
        Top = 0
        Width = 1265
        Height = 49
        Align = alTop
        TabOrder = 0
        object btnGenerateTableDDL: TButton
          Left = 16
          Top = 8
          Width = 201
          Height = 25
          Caption = 'Generate Table DDL'
          TabOrder = 0
          OnClick = btnGenerateTableDDLClick
        end
        object btnTableListDDL: TButton
          Left = 240
          Top = 8
          Width = 201
          Height = 25
          Caption = 'Generate Table List DDL'
          TabOrder = 1
          OnClick = btnTableListDDLClick
        end
        object btnGenerateMViewCode: TButton
          Left = 473
          Top = 7
          Width = 201
          Height = 25
          Caption = 'Generate Table DDL'
          TabOrder = 2
          OnClick = btnGenerateMViewCodeClick
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 49
        Width = 249
        Height = 584
        Align = alLeft
        Caption = 'Panel6'
        TabOrder = 1
        object btnOpenMViews: TButton
          Left = 1
          Top = 1
          Width = 247
          Height = 32
          Align = alTop
          Caption = 'Apri Lista'
          TabOrder = 0
          OnClick = btnOpenMViewsClick
        end
        object grdMviews: TCRDBGrid
          Left = 1
          Top = 33
          Width = 247
          Height = 550
          OptionsEx = [dgeEnableSort, dgeFilterBar, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeSearchBar]
          Align = alClient
          DataSource = dsMviews
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'OBJECT_NAME'
              Width = 212
              Visible = True
            end>
        end
      end
      object Panel7: TPanel
        Left = 249
        Top = 49
        Width = 224
        Height = 584
        Align = alLeft
        Caption = 'Panel7'
        TabOrder = 2
        object grdMViewConsFields: TCRDBGrid
          Left = 1
          Top = 304
          Width = 222
          Height = 152
          Filtered = False
          Align = alBottom
          DataSource = dsMViewIndexes
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'INDEX_NAME'
              Title.Caption = 'Constrained Column'
              Width = 180
              Visible = True
            end>
        end
        object grdMViewColumns: TCRDBGrid
          Left = 1
          Top = 1
          Width = 222
          Height = 303
          OptionsEx = [dgeEnableSort, dgeFilterBar, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeSearchBar]
          Align = alClient
          DataSource = dsMviewFields
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'COLUMN_NAME'
              Title.Caption = 'Column Name'
              Width = 180
              Visible = True
            end>
        end
        object grdMViewConstraints: TCRDBGrid
          Left = 1
          Top = 456
          Width = 222
          Height = 127
          Filtered = False
          Align = alBottom
          DataSource = dsMViewConstraints
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CONSTRAINT_NAME'
              Title.Caption = 'Constraint Name'
              Width = 184
              Visible = True
            end>
        end
      end
      object pnlList: TPanel
        Left = 473
        Top = 49
        Width = 185
        Height = 584
        Align = alLeft
        TabOrder = 3
        object memVMList: TMemo
          Left = 1
          Top = 1
          Width = 183
          Height = 423
          Align = alClient
          TabOrder = 0
        end
        object memVMDiscardedList: TMemo
          Left = 1
          Top = 424
          Width = 183
          Height = 159
          Align = alBottom
          TabOrder = 1
        end
      end
      object Panel8: TPanel
        Left = 658
        Top = 49
        Width = 607
        Height = 584
        Align = alClient
        Caption = 'Panel8'
        TabOrder = 4
        object memDDLMViews: TAdvMemo
          Left = 1
          Top = 1
          Width = 605
          Height = 288
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
          SyntaxStyles = AdvSQLMemoStyler
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
          Version = '3.9.0.1'
          WordWrap = wwNone
        end
        object CRDBGrid3: TCRDBGrid
          Left = 1
          Top = 392
          Width = 605
          Height = 88
          Filtered = False
          Align = alBottom
          DataSource = dsMViewConstraints
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CONSTRAINT_NAME'
              Width = 184
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONSTRAINT_TYPE'
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SEARCH_CONDITION'
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'R_OWNER'
              Width = 184
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'R_CONSTRAINT_NAME'
              Width = 184
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DELETE_RULE'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATUS'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DEFERRABLE'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DEFERRED'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALIDATED'
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GENERATED'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAD'
              Width = 27
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RELY'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LAST_CHANGE'
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INDEX_OWNER'
              Width = 184
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INDEX_NAME'
              Width = 184
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INVALID'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VIEW_RELATED'
              Width = 88
              Visible = True
            end>
        end
        object DBAdvMemo1: TDBAdvMemo
          Left = 1
          Top = 480
          Width = 605
          Height = 103
          Cursor = crIBeam
          ActiveLineSettings.ShowActiveLine = False
          ActiveLineSettings.ShowActiveLineIndicator = False
          Align = alBottom
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
          SyntaxStyles = AdvSQLMemoStyler
          TabOrder = 2
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
          Version = '3.9.0.1'
          WordWrap = wwNone
          DataField = 'METADATA'
          DataSource = dsMviewConsDDL
        end
        object memIndexesDDL: TDBAdvMemo
          Left = 1
          Top = 289
          Width = 605
          Height = 103
          Cursor = crIBeam
          ActiveLineSettings.ShowActiveLine = False
          ActiveLineSettings.ShowActiveLineIndicator = False
          Align = alBottom
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
          SyntaxStyles = AdvSQLMemoStyler
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
          Version = '3.9.0.1'
          WordWrap = wwNone
          DataField = 'METADATA'
          DataSource = dsIndexesDDL
        end
      end
    end
    object tabViewIInsertDDL: TTabSheet
      Caption = 'Views DDL'
      ImageIndex = 2
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1265
        Height = 49
        Align = alTop
        TabOrder = 0
        object lbTargetTable: TLabel
          Left = 272
          Top = 16
          Width = 62
          Height = 15
          Caption = 'Target Table'
        end
        object lbTargetSchemaDest: TLabel
          Left = 529
          Top = 16
          Width = 74
          Height = 15
          Caption = 'TargetSchema'
        end
        object Label4: TLabel
          Left = 787
          Top = 16
          Width = 34
          Height = 15
          Caption = 'Label2'
        end
        object Button4: TButton
          Left = 16
          Top = 7
          Width = 233
          Height = 25
          Caption = 'Generate Table DDL'
          TabOrder = 0
          OnClick = btnGenerateMViewCodeClick
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 49
        Width = 249
        Height = 584
        Align = alLeft
        Caption = 'Panel6'
        TabOrder = 1
        object Button2: TButton
          Left = 1
          Top = 1
          Width = 247
          Height = 32
          Align = alTop
          Caption = 'Apri Lista'
          TabOrder = 0
          OnClick = Button2Click
        end
        object CRDBGrid4: TCRDBGrid
          Left = 1
          Top = 33
          Width = 247
          Height = 550
          OptionsEx = [dgeEnableSort, dgeFilterBar, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeSearchBar]
          Align = alClient
          DataSource = dsViews
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'VIEW_NAME'
              Width = 772
              Visible = True
            end>
        end
      end
      object Panel11: TPanel
        Left = 249
        Top = 49
        Width = 1016
        Height = 584
        Align = alClient
        TabOrder = 2
        object Panel12: TPanel
          Left = 1
          Top = 1
          Width = 1014
          Height = 41
          Align = alTop
          TabOrder = 0
          object btnGenerateViewCode: TButton
            Left = 209
            Top = 1
            Width = 104
            Height = 39
            Align = alLeft
            Caption = 'Generate'
            TabOrder = 0
            OnClick = btnGenerateViewCodeClick
          end
          object Button5: TButton
            Left = 105
            Top = 1
            Width = 104
            Height = 39
            Align = alLeft
            Caption = 'View Fields'
            TabOrder = 1
            OnClick = btnOpenViewFieldsClick
          end
          object btnTestTarget: TButton
            Left = 1
            Top = 1
            Width = 104
            Height = 39
            Align = alLeft
            Caption = 'Test Target'
            TabOrder = 2
            OnClick = btnOpenViewFieldsClick
          end
        end
        object memViewCode: TAdvMemo
          Left = 395
          Top = 42
          Width = 411
          Height = 541
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
          Version = '3.9.0.1'
          WordWrap = wwNone
        end
        object DBGrid3: TDBGrid
          Left = 806
          Top = 42
          Width = 209
          Height = 541
          Align = alRight
          DataSource = dsTargetFields
          Options = [dgEditing, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'COLUMN_DDL'
              Visible = True
            end>
        end
        object Panel13: TPanel
          Left = 210
          Top = 42
          Width = 185
          Height = 541
          Align = alLeft
          TabOrder = 3
          object Memo1: TMemo
            Left = 1
            Top = 1
            Width = 183
            Height = 380
            Align = alClient
            TabOrder = 0
          end
          object Memo2: TMemo
            Left = 1
            Top = 381
            Width = 183
            Height = 159
            Align = alBottom
            TabOrder = 1
          end
        end
        object DBGrid4: TDBGrid
          Left = 1
          Top = 42
          Width = 209
          Height = 541
          Align = alLeft
          DataSource = dsViewFields
          Options = [dgEditing, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'COLUMN_NAME'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COLUMN_ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SCHEMA_NAME'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TABLE_NAME'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_TYPE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_LENGTH'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_PRECISION'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_SCALE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NULLABLE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COLUMN_DDL'
              Visible = True
            end>
        end
      end
    end
  end
  object UniConnectDialog1: TUniConnectDialog
    DatabaseLabel = 'Database'
    PortLabel = 'Port'
    ProviderLabel = 'Provider'
    Caption = 'Connect'
    UsernameLabel = 'User Name'
    PasswordLabel = 'Password'
    ServerLabel = 'Server'
    ConnectButton = 'Connect'
    CancelButton = 'Cancel'
    Left = 136
    Top = 624
  end
  object dsSchemas: TDataSource
    DataSet = dmOracleSchema.qrySchemas
    Left = 44
    Top = 395
  end
  object dsTables: TDataSource
    DataSet = dmOracleSchema.qrySchemaTables
    Left = 132
    Top = 491
  end
  object AdvSQLMemoStyler: TAdvSQLMemoStyler
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
          'Proc'
          'Procedure'
          'Begin'
          'End'
          'While'
          'BEGIN'
          'END'
          'FOR'
          'TO'
          'DO'
          'NOT'
          'IF'
          'ELSE'
          'WHILE'
          'REPEAT'
          'UNTIL'
          'BREAK'
          'CONTINUE'
          'EXEC'
          'Insert'
          'Values'
          'Update'
          'From'
          'Delete'
          'Declare'
          'Set'
          'Open'
          'Fetch'
          'Close'
          'Deallocate'
          'Return'
          'Rollback'
          'Transaction'
          'Trans'
          'and'
          'or'
          'Order'
          'By'
          'Group'
          'Having'
          'Where'
          'Left'
          'Right'
          'Join'
          'Inner'
          'Outer'
          'On'
          'Create'
          'Delete'
          'Select'
          'Like')
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
    Left = 45
    Top = 587
  end
  object dsTableFields: TDataSource
    DataSet = dmOracleSchema.qryTableFields
    Left = 44
    Top = 459
  end
  object dsViews: TDataSource
    DataSet = dmOracleSchema.qrySchemaViews
    Left = 132
    Top = 555
  end
  object dsViewFields: TDataSource
    DataSet = dmOracleSchema.qryViewFields
    Left = 44
    Top = 523
  end
  object dsMviews: TDataSource
    DataSet = dmOracleSchema.qryMaterializedView
    Left = 44
    Top = 331
  end
  object dsMviewFields: TDataSource
    DataSet = dmOracleSchema.qryMviewFields
    Left = 132
    Top = 427
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
    LineComment = '--'
    MultiCommentLeft = '/*'
    MultiCommentRight = '*/'
    CommentStyle.TextColor = clNavy
    CommentStyle.BkColor = clWhite
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clFuchsia
    NumberStyle.BkColor = clWhite
    NumberStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          'Proc'
          'Procedure'
          'Begin'
          'End'
          'While'
          'BEGIN'
          'END'
          'FOR'
          'TO'
          'DO'
          'NOT'
          'IF'
          'ELSE'
          'WHILE'
          'REPEAT'
          'UNTIL'
          'BREAK'
          'CONTINUE'
          'EXEC'
          'Insert'
          'Values'
          'Update'
          'From'
          'Delete'
          'Declare'
          'Set'
          'Open'
          'Fetch'
          'Close'
          'Deallocate'
          'Return'
          'Rollback'
          'Transaction'
          'Trans'
          'and'
          'or'
          'Order'
          'By'
          'Group'
          'Having'
          'Where'
          'Left'
          'Right'
          'Join'
          'Inner'
          'Outer'
          'On'
          'Create'
          'Delete'
          'Select'
          'Like'
          'Into'
          'As')
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
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = #39
        BracketEnd = #39
        Info = 'Single Quote'
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
    Left = 60
    Top = 227
  end
  object dsMViewIndexes: TDataSource
    DataSet = dmOracleSchema.qryMviewIndexes
    Left = 148
    Top = 291
  end
  object dsMViewConstraints: TDataSource
    DataSet = dmOracleSchema.qryMviewConstraints
    Left = 132
    Top = 363
  end
  object dsMviewConsDDL: TDataSource
    DataSet = dmOracleSchema.qryConstraintDDL
    Left = 348
    Top = 291
  end
  object dsIndexesDDL: TDataSource
    DataSet = dmOracleSchema.qryIndexDDL
    Left = 340
    Top = 371
  end
  object dsTargetFields: TDataSource
    DataSet = dmOracleSchema.qryIndexDDL
    Left = 340
    Top = 467
  end
end
