object dlgVCLCloudWhatsAppTestSetting: TdlgVCLCloudWhatsAppTestSetting
  Left = 0
  Top = 0
  Caption = 'Impostazioni e Test WhatsApp Message'
  ClientHeight = 359
  ClientWidth = 1037
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    1037
    359)
  TextHeight = 15
  object lbKey: TLabel
    Left = 32
    Top = 32
    Width = 144
    Height = 15
    Caption = 'Twilio WhatsApp Key (User)'
  end
  object Label1: TLabel
    Left = 32
    Top = 72
    Width = 122
    Height = 15
    Caption = 'Twilio WhatsApp Token'
  end
  object lbMetaWhatsAppPhone: TLabel
    Left = 32
    Top = 112
    Width = 122
    Height = 15
    Caption = 'Meta WhatsApp Phone'
  end
  object lbDefaultMessage: TLabel
    Left = 439
    Top = 8
    Width = 168
    Height = 15
    Caption = 'Messaggio approvato di Default'
  end
  object lbTestMessageID: TLabel
    Left = 32
    Top = 152
    Width = 134
    Height = 15
    Caption = 'Test Message Template ID'
  end
  object lbMessageTemplateID: TLabel
    Left = 32
    Top = 192
    Width = 152
    Height = 15
    Caption = 'Default Message Template ID'
  end
  object edKey: TEdit
    Left = 192
    Top = 29
    Width = 241
    Height = 23
    TabOrder = 0
  end
  object edToken: TEdit
    Left = 192
    Top = 69
    Width = 241
    Height = 23
    TabOrder = 1
  end
  object edPhone: TEdit
    Left = 192
    Top = 112
    Width = 241
    Height = 23
    TabOrder = 2
  end
  object btnOK: TButton
    Left = 923
    Top = 326
    Width = 97
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Salva'
    ModalResult = 1
    TabOrder = 3
  end
  object btnUndo: TButton
    Left = 811
    Top = 326
    Width = 97
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Annulla'
    ModalResult = 2
    TabOrder = 4
  end
  object btnSendTest: TButton
    Left = 697
    Top = 326
    Width = 97
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Invia Test TMS'
    TabOrder = 5
    OnClick = btnSendTestClick
  end
  object grpTestMessage: TGroupBox
    Left = 32
    Top = 228
    Width = 593
    Height = 84
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Test Messaggio'
    TabOrder = 6
    object lbDate: TLabel
      Left = 176
      Top = 31
      Width = 81
      Height = 15
      Caption = 'Data Intervento'
    end
    object edRecipient: TLabeledEdit
      Left = 32
      Top = 48
      Width = 121
      Height = 23
      EditLabel.Width = 105
      EditLabel.Height = 15
      EditLabel.Caption = 'Telefono Test (Dest.)'
      TabOrder = 0
      Text = '+393409111351'
    end
    object edDate: TDateTimePicker
      Left = 176
      Top = 48
      Width = 144
      Height = 23
      Date = 45595.000000000000000000
      Time = 0.728173495372175200
      TabOrder = 1
    end
    object edAddress: TLabeledEdit
      Left = 336
      Top = 48
      Width = 239
      Height = 23
      EditLabel.Width = 67
      EditLabel.Height = 15
      EditLabel.Caption = 'Indirizzo Test'
      TabOrder = 2
      Text = 'Via Ernesto Cabruna 43, 16166, Genova'
    end
  end
  object edTestMessageID: TEdit
    Left = 192
    Top = 152
    Width = 241
    Height = 23
    TabOrder = 7
  end
  object edDefaultMessageID: TEdit
    Left = 192
    Top = 192
    Width = 241
    Height = 23
    TabOrder = 8
  end
  object btnTestCustom: TButton
    Left = 576
    Top = 326
    Width = 115
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Invia Test Custom'
    TabOrder = 9
    OnClick = btnTestCustomClick
  end
  object btnTestDefault: TButton
    Left = 464
    Top = 326
    Width = 106
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Invia Test Default'
    TabOrder = 10
    OnClick = btnTestDefaultClick
  end
  object PageControl1: TPageControl
    Left = 439
    Top = 29
    Width = 581
    Height = 193
    ActivePage = tabMessage
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 11
    object tabMessage: TTabSheet
      Caption = 'Message'
      object edWAMesage: TMemo
        Left = 0
        Top = 0
        Width = 573
        Height = 163
        Align = alClient
        Lines.Strings = (
          'edWAMesage')
        TabOrder = 0
      end
    end
    object tabLog: TTabSheet
      Caption = 'Log'
      ImageIndex = 1
      object AdvMemo1: TAdvMemo
        Left = 0
        Top = 0
        Width = 573
        Height = 163
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
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 631
    Top = 228
    Width = 378
    Height = 84
    Anchors = [akRight, akBottom]
    Caption = 'Test Messaggio'
    TabOrder = 12
    object edMessageID: TLabeledEdit
      Left = 32
      Top = 48
      Width = 329
      Height = 23
      EditLabel.Width = 105
      EditLabel.Height = 15
      EditLabel.Caption = 'Telefono Test (Dest.)'
      TabOrder = 0
      Text = ''
    end
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
    Left = 555
    Top = 87
  end
end
