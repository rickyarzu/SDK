object frmVCLGeneraliVisualCall: TfrmVCLGeneraliVisualCall
  Left = 0
  Top = 0
  Caption = 'Generali Visual Call'
  ClientHeight = 775
  ClientWidth = 1098
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1098
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 985
    object btnLogin: TButton
      Left = 1
      Top = 1
      Width = 128
      Height = 55
      Align = alLeft
      Caption = 'Login'
      TabOrder = 0
      OnClick = btnLoginClick
      ExplicitLeft = -2
      ExplicitTop = -4
    end
    object Panel5: TPanel
      Left = 129
      Top = 1
      Width = 264
      Height = 55
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitHeight = 47
      object lbSchemaSelection: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 2
        Width = 258
        Height = 24
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
        Top = 30
        Width = 258
        Height = 22
        Align = alBottom
        LookupField = 'SCHEMA_NAME'
        LookupDisplay = 'SCHEMA_NAME'
        LookupSource = dsSchemas
        TabOrder = 0
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 57
    Width = 1098
    Height = 718
    ActivePage = tabPvandyq
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 985
    ExplicitHeight = 636
    object tabPvandyq: TTabSheet
      Caption = 'Scripts SQL'
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 377
        Height = 688
        Align = alLeft
        Caption = 'Panel6'
        TabOrder = 0
        ExplicitHeight = 606
        object Button2: TButton
          Left = 1
          Top = 1
          Width = 375
          Height = 32
          Align = alTop
          Caption = 'Apri Lista'
          TabOrder = 0
          OnClick = Button2Click
          ExplicitTop = -5
          ExplicitWidth = 247
        end
        object CRDBGrid4: TCRDBGrid
          Left = 1
          Top = 33
          Width = 375
          Height = 654
          OptionsEx = [dgeEnableSort, dgeFilterBar, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeSearchBar]
          Align = alClient
          DataSource = dsScripts
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
              FieldName = 'DESCQ'
              Title.Caption = 'Titolo Query'
              Width = 772
              Visible = True
            end>
        end
      end
      object pnlMemo: TPanel
        Left = 377
        Top = 0
        Width = 713
        Height = 688
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 382
        object CRDBGrid1: TCRDBGrid
          Left = 1
          Top = 588
          Width = 711
          Height = 99
          Align = alBottom
          DataSource = dsScripts
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'MODULEIDQ'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROGQ'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCQ'
              Width = 304
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DYQUERY'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_OPERATORE'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_TIMESTAMP_INIZIO_VAL'
              Width = 149
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_FUNZIONE'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_OPERAZIONE'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_STATO_ELAB'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_LOCK'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_COMMENTO'
              Width = 124
              Visible = True
            end>
        end
        object DBAdvMemo1: TDBAdvMemo
          Left = 1
          Top = 42
          Width = 711
          Height = 546
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
          Gutter.LineNumberTextColor = 3881787
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
          SelColor = clWhite
          SelBkColor = clNavy
          ShowRightMargin = True
          SmartTabs = False
          SyntaxStyles = AdvSQLMemoStyler1
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
          DataField = 'DYQUERY'
          DataSource = dsScripts
          ExplicitLeft = 2
          ExplicitTop = 41
          ExplicitHeight = 555
        end
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 711
          Height = 41
          Align = alTop
          Caption = 'Panel1'
          TabOrder = 2
          ExplicitLeft = 56
          ExplicitTop = 56
          ExplicitWidth = 185
          object tbnShowVisualCallDialog: TButton
            Left = 121
            Top = 1
            Width = 120
            Height = 39
            Align = alLeft
            Caption = 'New Record'
            TabOrder = 0
            OnClick = tbnShowVisualCallDialogClick
            ExplicitLeft = 115
            ExplicitTop = -4
          end
          object DBNavigator1: TDBNavigator
            Left = 241
            Top = 1
            Width = 469
            Height = 39
            DataSource = dsScripts
            Align = alClient
            TabOrder = 1
            ExplicitLeft = 2
            ExplicitTop = 9
            ExplicitWidth = 709
            ExplicitHeight = 32
          end
          object btnEditRecord: TButton
            Left = 1
            Top = 1
            Width = 120
            Height = 39
            Align = alLeft
            Caption = 'Edit Record'
            TabOrder = 2
            OnClick = btnEditRecordClick
            ExplicitLeft = 4
            ExplicitTop = -4
          end
        end
      end
    end
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
    Left = 68
    Top = 211
  end
  object dsSchemas: TDataSource
    DataSet = dmOracleSchema.qrySchemas
    Left = 60
    Top = 291
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
    Left = 160
    Top = 248
  end
  object dsScripts: TDataSource
    DataSet = dmOracleVisualCall.qryScripts
    Left = 156
    Top = 323
  end
end
