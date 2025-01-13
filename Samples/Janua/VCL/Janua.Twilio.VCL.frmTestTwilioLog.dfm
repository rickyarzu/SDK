object frmVCLJanuaTestTwilioLog: TfrmVCLJanuaTestTwilioLog
  Left = 0
  Top = 0
  Caption = 'Test Twilio Log'
  ClientHeight = 961
  ClientWidth = 1346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 15
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1346
    Height = 57
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1346
      57)
    object btnMax: TButton
      Left = 1
      Top = 1
      Width = 136
      Height = 55
      Align = alLeft
      Caption = 'Max'
      TabOrder = 0
      OnClick = btnMaxClick
    end
    object DBEdit1: TDBEdit
      Left = 1212
      Top = 17
      Width = 121
      Height = 23
      Anchors = [akTop, akRight]
      DataField = 'MAX_ID'
      DataSource = dsMax
      TabOrder = 1
    end
    object btnOpenDatasets: TButton
      Left = 137
      Top = 1
      Width = 136
      Height = 55
      Align = alLeft
      Caption = 'Open Data'
      TabOrder = 2
      OnClick = btnOpenDatasetsClick
    end
    object btnSync: TButton
      Left = 273
      Top = 1
      Width = 136
      Height = 55
      Align = alLeft
      Caption = 'Sync'
      TabOrder = 3
      OnClick = btnSyncClick
    end
    object btnWebNook: TButton
      Left = 409
      Top = 1
      Width = 136
      Height = 55
      Align = alLeft
      Caption = 'WebNook'
      TabOrder = 4
      OnClick = btnWebNookClick
    end
    object btnSyncMessages: TButton
      Left = 545
      Top = 1
      Width = 136
      Height = 55
      Align = alLeft
      Caption = 'Sync Status'
      TabOrder = 5
      OnClick = btnSyncMessagesClick
    end
    object btnSetIcons: TButton
      Left = 681
      Top = 1
      Width = 136
      Height = 55
      Align = alLeft
      Caption = 'Set Icons - Status'
      TabOrder = 6
      OnClick = btnSetIconsClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 57
    Width = 345
    Height = 904
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 343
      Height = 40
      Align = alTop
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 1
      Top = 718
      Width = 343
      Height = 185
      Align = alBottom
      DataField = 'body_received'
      DataSource = dsTwilioLog
      TabOrder = 1
    end
    object CRDBGrid1: TCRDBGrid
      Left = 1
      Top = 41
      Width = 343
      Height = 208
      Align = alTop
      DataSource = dsTwilioLog
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'action'
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'insert_date'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'update_date'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'db_schema_id'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'user_insert'
          Width = 772
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'user_update'
          Width = 772
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'deleted'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jguid'
          Width = 232
          Visible = True
        end>
    end
    object DBAdvMemo2: TDBAdvMemo
      Left = 1
      Top = 462
      Width = 343
      Height = 256
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
      DataField = 'memTwilioJson'
      DataSource = dsTwilioClone
    end
    object grdTwilioClone: TCRDBGrid
      Left = 1
      Top = 249
      Width = 343
      Height = 213
      Align = alClient
      DataSource = dsTwilioClone
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ACTION'
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INSERT_DATE'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UPDATE_DATE'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JGUID'
          Width = 232
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 345
    Top = 57
    Width = 345
    Height = 904
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 2
    object DBNavigator2: TDBNavigator
      Left = 1
      Top = 1
      Width = 343
      Height = 40
      DataSource = dsWebHook
      Align = alTop
      TabOrder = 0
    end
    object DBMemo2: TDBMemo
      Left = 1
      Top = 718
      Width = 343
      Height = 185
      Align = alBottom
      DataField = 'body_received'
      DataSource = dsWebHook
      TabOrder = 1
    end
    object DBAdvMemo1: TDBAdvMemo
      Left = 1
      Top = 462
      Width = 343
      Height = 256
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
      SyntaxStyles = AdvJSONMemoStyler1
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
      Version = '3.9.1.1'
      WordWrap = wwNone
      DataField = 'memTwilioJson'
      DataSource = dsWebHook
    end
    object CRDBGrid3: TCRDBGrid
      Left = 1
      Top = 41
      Width = 343
      Height = 421
      Align = alClient
      DataSource = dsWebHook
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ACTION'
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INSERT_DATE'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UPDATE_DATE'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JGUID'
          Width = 232
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 1035
    Top = 57
    Width = 311
    Height = 904
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 3
    object DBHTMLabel1: TDBHTMLabel
      Left = 1
      Top = 640
      Width = 309
      Height = 24
      Align = alBottom
      HTMLText.Strings = (
        '<#calcLabel>')
      Images = ImageList1
      Transparent = True
      Version = '1.4.1.0'
      Datasource = dsWhatsAppMessage
      SelectFontColor = clBlack
      ExplicitWidth = 343
    end
    object DBMemo3: TDBMemo
      Left = 1
      Top = 664
      Width = 309
      Height = 239
      Align = alBottom
      DataField = 'WAMESSAGE'
      DataSource = dsWhatsAppMessage
      TabOrder = 0
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 309
      Height = 639
      ActivePage = tabStatini
      Align = alClient
      TabOrder = 1
      object tabMessages: TTabSheet
        Caption = 'Messaggi'
        object CRDBGrid2: TCRDBGrid
          Left = 0
          Top = 40
          Width = 301
          Height = 569
          Align = alClient
          DataSource = dsWhatsAppMessage
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'WA_NAME'
              Width = 160
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WANUMBER'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INSERT_DATE'
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REPORT_ID'
              Title.Caption = 'Rep. ID.'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IN_OUT'
              Title.Caption = 'I/O'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WA_STATE'
              Title.Caption = 'W.St.'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATE'
              Title.Caption = ' St.'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WAREAD'
              Title.Caption = 'Read'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'READ_DATE'
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WA_ID'
              Width = 120
              Visible = True
            end>
        end
        object DBNavigator3: TDBNavigator
          Left = 0
          Top = 0
          Width = 301
          Height = 40
          Align = alTop
          TabOrder = 1
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 1
        object pnlStatus: TPanel
          Left = 0
          Top = 40
          Width = 301
          Height = 32
          Align = alTop
          TabOrder = 0
          object SpeedButton1: TSpeedButton
            Left = 277
            Top = 1
            Width = 23
            Height = 30
            Align = alRight
            ImageIndex = 4
            Images = ImageList1
            OnClick = SpeedButton1Click
            ExplicitLeft = 271
            ExplicitTop = 6
            ExplicitHeight = 22
          end
          object scDBImage1: TscDBImage
            AlignWithMargins = True
            Left = 225
            Top = 4
            Width = 49
            Height = 24
            Align = alRight
            FluentUIOpaque = False
            TabOrder = 0
            CustomImageIndex = -1
            DragForm = False
            DragTopForm = True
            StyleKind = scpsPanel
            ShowCaption = False
            BorderStyle = scpbsLoweredBevel
            WallpaperIndex = -1
            LightBorderColor = clBtnHighlight
            ShadowBorderColor = clBtnShadow
            CaptionGlowEffect.Enabled = False
            CaptionGlowEffect.Color = clBtnShadow
            CaptionGlowEffect.AlphaValue = 255
            CaptionGlowEffect.GlowSize = 7
            CaptionGlowEffect.Offset = 0
            CaptionGlowEffect.Intensive = True
            CaptionGlowEffect.StyleColors = True
            Caption = 'scDBImage1'
            StorePaintBuffer = False
            WordWrap = False
            DataField = 'IMAGE'
            DataSource = dsWhatsAppStates
          end
          object DBEdit2: TDBEdit
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 40
            Height = 24
            Align = alLeft
            DataField = 'ID'
            DataSource = dsWhatsAppStates
            TabOrder = 1
            ExplicitHeight = 23
          end
          object DBEdit3: TDBEdit
            AlignWithMargins = True
            Left = 50
            Top = 4
            Width = 169
            Height = 24
            Align = alClient
            DataField = 'DESCRIPTION'
            DataSource = dsWhatsAppStates
            TabOrder = 2
            ExplicitHeight = 23
          end
        end
        object DBNavigator5: TDBNavigator
          Left = 0
          Top = 0
          Width = 301
          Height = 40
          DataSource = dsWhatsAppStates
          Align = alTop
          TabOrder = 1
        end
        object CRDBGrid5: TCRDBGrid
          Left = 0
          Top = 72
          Width = 301
          Height = 537
          Align = alClient
          DataSource = dsWhatsAppStates
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRIPTION'
              Width = 190
              Visible = True
            end>
        end
      end
      object tabStatini: TTabSheet
        Caption = 'Statini'
        ImageIndex = 2
        object DBCtrlGrid1: TDBCtrlGrid
          Left = 0
          Top = 0
          Width = 301
          Height = 609
          Align = alClient
          DataSource = dmPgTWilioSync.dsStatini
          PanelHeight = 60
          PanelWidth = 284
          TabOrder = 0
          RowCount = 10
          object DBText1: TDBText
            Left = 16
            Top = 8
            Width = 161
            Height = 17
            DataField = 'WA_ID'
            DataSource = dmPgTWilioSync.dsStatini
          end
          object DBText2: TDBText
            Left = 144
            Top = 31
            Width = 33
            Height = 17
            DataField = 'WA_STATE'
            DataSource = dmPgTWilioSync.dsStatini
          end
          object DBText3: TDBText
            Left = 16
            Top = 31
            Width = 97
            Height = 17
            DataField = 'CHIAVE'
            DataSource = dmPgTWilioSync.dsStatini
          end
          object scDBImage2: TscDBImage
            AlignWithMargins = True
            Left = 232
            Top = 3
            Width = 49
            Height = 54
            Align = alRight
            FluentUIOpaque = False
            TabOrder = 0
            CustomImageIndex = -1
            DragForm = False
            DragTopForm = True
            StyleKind = scpsPanel
            ShowCaption = False
            BorderStyle = scpbsLoweredBevel
            WallpaperIndex = -1
            LightBorderColor = clBtnHighlight
            ShadowBorderColor = clBtnShadow
            CaptionGlowEffect.Enabled = False
            CaptionGlowEffect.Color = clBtnShadow
            CaptionGlowEffect.AlphaValue = 255
            CaptionGlowEffect.GlowSize = 7
            CaptionGlowEffect.Offset = 0
            CaptionGlowEffect.Intensive = True
            CaptionGlowEffect.StyleColors = True
            Caption = 'scDBImage1'
            StorePaintBuffer = False
            WordWrap = False
            Ctl3D = True
            DataField = 'WA_IMAGE'
            DataSource = dmPgTWilioSync.dsStatini
            ParentCtl3D = False
          end
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 690
    Top = 57
    Width = 345
    Height = 904
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 4
    object DBNavigator4: TDBNavigator
      Left = 1
      Top = 1
      Width = 343
      Height = 40
      DataSource = dsTwilioStatus
      Align = alTop
      TabOrder = 0
    end
    object DBMemo4: TDBMemo
      Left = 1
      Top = 718
      Width = 343
      Height = 185
      Align = alBottom
      DataField = 'body_received'
      DataSource = dsTwilioStatus
      TabOrder = 1
    end
    object DBAdvMemo3: TDBAdvMemo
      Left = 1
      Top = 462
      Width = 343
      Height = 256
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
      SyntaxStyles = AdvJSONMemoStyler1
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
      Version = '3.9.1.1'
      WordWrap = wwNone
      DataField = 'memTwilioJson'
      DataSource = dsTwilioStatus
    end
    object CRDBGrid4: TCRDBGrid
      Left = 1
      Top = 41
      Width = 343
      Height = 421
      Align = alClient
      DataSource = dsTwilioStatus
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ACTION'
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INSERT_DATE'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UPDATE_DATE'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JGUID'
          Width = 232
          Visible = True
        end>
    end
  end
  object dsMax: TDataSource
    DataSet = dmPgTWilioSync.qryMaxTwilioLog
    Left = 968
    Top = 16
  end
  object dsTwilioLog: TDataSource
    DataSet = dmPgTWilioSync.qryTwilioLog
    Left = 184
    Top = 160
  end
  object dsTwilioClone: TDataSource
    DataSet = dmPgTWilioSync.qryPhoenixLogClone
    Left = 104
    Top = 368
  end
  object dsWhatsAppMessage: TDataSource
    DataSet = dmPgTWilioSync.qryMessageList
    Left = 1208
    Top = 312
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
    Left = 425
    Top = 353
  end
  object dsWebHook: TDataSource
    DataSet = dmPgTWilioSync.qryWebHook
    Left = 536
    Top = 200
  end
  object dsTwilioStatus: TDataSource
    DataSet = dmPgTWilioSync.qryMessageStatus
    Left = 824
    Top = 256
  end
  object PictureContainer1: TPictureContainer
    Items = <>
    Version = '2.1.1.0'
    Left = 1155
    Top = 409
  end
  object ImageList1: TImageList
    Left = 1155
    Top = 201
    Bitmap = {
      494C010105000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      000000000000000000000000000000000000000000001E96CB001E96CB001E96
      CB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E96CB0092E7F40054D8F00044C4
      E50039B7E0001E96CB001E96CB000D8EC7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E96CB00B4EFF70084FFFF0083FE
      FF0080F8FF0079F3FE006AE2F7004DCBEA001E96CB001E96CB000D8EC7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E96CB0075CBE60096FFFF0075F6
      FF0079F4FF0078F3FF0079F3FF007DF6FF007BF4FF0076EEFF006BE7FB001E96
      CB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D8EC70028A4D300A0F8FC0073F7
      FF0079F4FF0077F3FF0076F0FF0074EFFF0073EFFF0073EFFF0077E3EE0068E5
      FF001FA1D4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D8EC7001E96CB0052C1E10084FE
      FF0077F4FF0077F3FF0076F0FF0074EFFF0073F3FF0076CED00083BAAF0060CC
      E6001E96CB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D8EC7001E96CB004CB6DC00A1FF
      FF006DF4FF0072F3FF0072EFFF0073F3FF0078CFD00089C2BA0097DACF0076B4
      B40070D9EB001E96CB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D8EC70057D0F6001E96CB0088D8
      EB009AF4FB0092F2FB0090FAFF007FD4D5007FCAC50097E0D80097DCD00082C6
      C20087BFB2001E96CB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D8EC70068DDFA0040C1EF001E96
      CB001E96CB001E96CB004099B4007DC4BD0084EBF00086DEDD0093DCD1007EC6
      C5008BCBBA0087C4B0001E96CB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D8EC7007AEFFF005BD9F8004DCA
      F60042C4F40070756B00922B01001E96CB005AC9D5009EE5EA00AFE5D50095CF
      CC009CD0C000AAE3C4001E96CB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D8EC70089FFFF007EFCFF0068EE
      FF005DADB500922B0100E6AA7A00726C62001E96CB001896CA001896CA0084BF
      CC0083BAC40086BFC4001E96CB00922B01000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D8EC7008AFFFF007AFAFF0079F4
      FF0069F3FF0069AFB100922B0100AD8877005D6249000E84570004B4E3001896
      CA001896CA001896CA00922B0100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D8EC7009FFCFE007DFEFF007AF8
      FF007DF8FF0065EEFF0052919D00922B0100EABC9800A7936500079168003CC4
      BF00F8982900922B010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001896CA0083EAF40080EA
      F70082EEFA0027A6D5000D8EC70000000000922B0100FFD8AA00697B4C00148B
      5C00922B01000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001490C9001896
      CA001996CC000D8EC700000000000000000000000000922B0100C9967500862D
      0500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000922B01000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000732DE000732DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000081818100818181000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000732DE000732DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000732DE000732DE00000000000000000081818100818181000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008181810081818100000000009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000732DE000732DE000732
      DE00000000000000000000000000000000000000000000000000000000000000
      00000732DE000732DE0000000000000000000000000081818100818181008181
      8100000000000000000000000000000000000000000000000000000000000000
      0000818181008181810000000000000000000000000099330000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000630000006300000000000000000000000000000000
      000000000000000000000000000000000000000000000732DE000732DD000732
      DE000732DE000000000000000000000000000000000000000000000000000732
      DE000732DE000000000000000000000000000000000081818100818181008181
      8100818181000000000000000000000000000000000000000000000000008181
      8100818181000000000000000000000000000000000000000000993300009933
      0000993300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063000018B5310018B531000063000000000000000000000000
      00000000000000000000000000000000000000000000000000000534ED000732
      DF000732DE000732DE00000000000000000000000000000000000732DE000732
      DE00000000000000000000000000000000000000000000000000888888008282
      8200818181008181810000000000000000000000000000000000818181008181
      8100000000000000000000000000000000000000000000000000000000009933
      0000AA5F1F009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000063000031C64A0021B5390018B5290021B5310000630000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000732DE000732DE000732DD00000000000732DD000732DE000732DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000818181008181810081818100000000008181810081818100818181000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000BA7D480099330000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000063
      000042D66B0039CE5A0021AD39000063000018AD290018B53100006300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000732DD000633E6000633E6000633E9000732DC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008181810085858500858585008686860080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CDA27C00D8B596009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000006300004AD6
      7B0052DE7B0031B54A00006300000000000000630000109C210018AD31000063
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000633E3000732E3000534EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000083838300848484008989890000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000E1C6B000ECDCCD00EDDDD100993300000000
      0000000000000000000000000000000000000000000000000000000000000063
      000042C6630000630000CE6B6B00B539390000000000000000000063000018AD
      2900006300000000000000000000000000000000000000000000000000000000
      0000000000000732DD000534ED000533E9000434EF000434F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000818181008888880086868600888888008B8B8B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000F4E9E200FDF9F500FBF4EC009933
      000099330000000000000000000000000000000000000000000000000000B539
      390000630000CE6B6B00CE6B6B00CE6B6B00B539390000000000000000000063
      0000109C21000063000000000000000000000000000000000000000000000000
      00000434F4000534EF000533EB0000000000000000000434F4000335F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B8B8B00898989008787870000000000000000008B8B8B008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000E1C0AB00F7E9DA00F4E0CC00E1BA
      9C00993300009933000000000000000000000000000000000000B5393900DE94
      9400D6848400CE6B6B00B5393900CE636300CE6B6B00B5393900000000000000
      0000000000000063000000630000000000000000000000000000000000000335
      FC000534EF000434F800000000000000000000000000000000000335FC000335
      FB00000000000000000000000000000000000000000000000000000000008E8E
      8E00898989008D8D8D00000000000000000000000000000000008E8E8E008E8E
      8E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000F6E6D600F3DEC800F0D5BA00E3B995009933
      00000000000000000000000000000000000000000000B5393900DE949400DE9C
      9C00D6737300B539390000000000B5393900CE5A5A00CE6B6B00B53939000000
      00000000000000000000006300000063000000000000000000000335FB000335
      FB000335FC000000000000000000000000000000000000000000000000000335
      FB000335FB0000000000000000000000000000000000000000008E8E8E008E8E
      8E008E8E8E000000000000000000000000000000000000000000000000008E8E
      8E008E8E8E000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000EDCAA800EAC19900E7B98B00DFA8
      7500993300000000000000000000000000000000000000000000B5393900D684
      8400B539390000000000000000000000000000000000B5393900CE636300B539
      390000000000000000000000000000000000000000000335FB000335FB000335
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000335FB000000000000000000000000008E8E8E008E8E8E008E8E
      8E00000000000000000000000000000000000000000000000000000000000000
      0000000000008E8E8E0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000E3AE7900E0A56B00DD9C
      5C00DA944F00993300000000000000000000000000000000000000000000B539
      3900000000000000000000000000000000000000000000000000B5393900CE5A
      5A00B53939000000000000000000000000000335FB000335FB000335FB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008E8E8E008E8E8E008E8E8E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5393900B539390000000000000000000335FB000335FB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008E8E8E008E8E8E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5393900B5393900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF008FFF00000000000000FF000000000000
      001F000000000000000F00000000000000070000000000000007000000000000
      0003000000000000000300000000000000010000000000000001000000000000
      0000000000000000000100000000000000030000000000008107000000000000
      C38F000000000000FFDF000000000000FFFCFFFCFFFFFFFF9FF99FF97FFFFFFF
      8FF38FF39FFFFCFF87E787E7C7FFF87FC3CFC3CFE3FFF03FF11FF11FF0FFE01F
      F83FF83FF83FC10FFC7FFC7FFC1FE0C7F83FF83FFE07E063F19FF19FFE03C039
      E3CFE3CFFC0F821CC7E7C7E7FE07C78F8FFB8FFBFF03EFC71FFF1FFFFF81FFF3
      3FFF3FFFFFFFFFF9FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dsWhatsAppStates: TDataSource
    DataSet = dmPgTWilioSync.tbWhatsAppStates
    Left = 1088
    Top = 284
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 1208
    Top = 204
  end
end
