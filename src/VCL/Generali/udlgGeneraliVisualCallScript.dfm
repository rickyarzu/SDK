object dlgGeneraliVisualCallScript: TdlgGeneraliVisualCallScript
  Left = 0
  Top = 0
  Caption = 'Generali Visual Call Scripts'
  ClientHeight = 763
  ClientWidth = 1141
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
    Width = 1141
    Height = 153
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1141
      153)
    object Label1: TLabel
      Left = 8
      Top = 19
      Width = 68
      Height = 15
      Caption = 'MODULEIDQ'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 149
      Top = 19
      Width = 40
      Height = 15
      Caption = 'PROGQ'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 8
      Top = 72
      Width = 37
      Height = 15
      Caption = 'DESCQ'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 310
      Top = 19
      Width = 79
      Height = 15
      Caption = 'ID_OPERATORE'
      FocusControl = DBEdit4
    end
    object Label6: TLabel
      Left = 470
      Top = 19
      Width = 143
      Height = 15
      Caption = 'ID_TIMESTAMP_INIZIO_VAL'
      FocusControl = DBEdit5
    end
    object Label7: TLabel
      Left = 632
      Top = 19
      Width = 73
      Height = 15
      Caption = 'ID_FUNZIONE'
      FocusControl = DBEdit6
    end
    object Label8: TLabel
      Left = 787
      Top = 19
      Width = 32
      Height = 15
      Caption = 'ID_OP'
      FocusControl = DBEdit7
    end
    object Label9: TLabel
      Left = 840
      Top = 19
      Width = 34
      Height = 15
      Caption = 'ID_STE'
      FocusControl = DBEdit8
    end
    object Label10: TLabel
      Left = 904
      Top = 19
      Width = 46
      Height = 15
      Caption = 'ID_LOCK'
      FocusControl = DBEdit9
    end
    object Label11: TLabel
      Left = 984
      Top = 19
      Width = 84
      Height = 15
      Caption = 'ID_COMMENTO'
      FocusControl = DBEdit10
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 40
      Width = 124
      Height = 23
      DataField = 'MODULEIDQ'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 150
      Top = 40
      Width = 154
      Height = 23
      DataField = 'PROGQ'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 88
      Width = 1105
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      DataField = 'DESCQ'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 310
      Top = 40
      Width = 154
      Height = 23
      DataField = 'ID_OPERATORE'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 470
      Top = 40
      Width = 143
      Height = 23
      DataField = 'ID_TIMESTAMP_INIZIO_VAL'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 632
      Top = 40
      Width = 154
      Height = 23
      DataField = 'ID_FUNZIONE'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 800
      Top = 40
      Width = 19
      Height = 23
      DataField = 'ID_OPERAZIONE'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 840
      Top = 40
      Width = 19
      Height = 23
      DataField = 'ID_STATO_ELAB'
      DataSource = DataSource1
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 880
      Top = 40
      Width = 84
      Height = 23
      DataField = 'ID_LOCK'
      DataSource = DataSource1
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 984
      Top = 40
      Width = 129
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      DataField = 'ID_COMMENTO'
      DataSource = DataSource1
      TabOrder = 9
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 127
      Width = 1139
      Height = 25
      DataSource = DataSource1
      Align = alBottom
      TabOrder = 10
      ExplicitLeft = 2
      ExplicitTop = 122
    end
  end
  object CRDBGrid1: TCRDBGrid
    Left = 0
    Top = 664
    Width = 1141
    Height = 99
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 1
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
    Left = 0
    Top = 153
    Width = 1141
    Height = 511
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
    MarkerList.ImageTransparentColor = -1
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
    DataField = 'DYQUERY'
    DataSource = DataSource1
    ExplicitTop = 147
  end
  object DataSource1: TDataSource
    DataSet = dmOracleVisualCall.qryScripts
    Left = 848
    Top = 432
  end
  object AdvMemoSource1: TAdvMemoSource
    ReadOnly = False
    Left = 152
    Top = 136
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
    Left = 568
    Top = 384
  end
end
