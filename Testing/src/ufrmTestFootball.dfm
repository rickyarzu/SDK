object frmTestFootball: TfrmTestFootball
  Left = 0
  Top = 0
  Caption = 'Test Football Postgres'
  ClientHeight = 789
  ClientWidth = 1037
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1037
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 22
      Width = 35
      Height = 13
      Caption = 'Season'
    end
    object Label2: TLabel
      Left = 87
      Top = 22
      Width = 35
      Height = 13
      Caption = 'League'
    end
    object Label3: TLabel
      Left = 174
      Top = 22
      Width = 19
      Height = 13
      Caption = 'Day'
    end
    object SpeedButton9: TSpeedButton
      Left = 281
      Top = 17
      Width = 57
      Height = 25
      Caption = 'Connetti'
      OnClick = SpeedButton9Click
    end
    object edSeason: TEdit
      Left = 48
      Top = 19
      Width = 33
      Height = 21
      Alignment = taRightJustify
      TabOrder = 0
      Text = '48'
    end
    object edLeague: TEdit
      Left = 128
      Top = 19
      Width = 33
      Height = 21
      Alignment = taRightJustify
      TabOrder = 1
      Text = '26'
    end
    object edMatchDay: TEdit
      Left = 199
      Top = 19
      Width = 26
      Height = 21
      Alignment = taRightJustify
      TabOrder = 2
      Text = '2'
    end
    object Button1: TButton
      Left = 416
      Top = 17
      Width = 66
      Height = 25
      Caption = 'Salva Tutto'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 344
      Top = 17
      Width = 66
      Height = 25
      Caption = 'Carica Tema'
      TabOrder = 4
      OnClick = Button2Click
    end
    object edUsername: TLabeledEdit
      Left = 488
      Top = 30
      Width = 151
      Height = 21
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'Username'
      TabOrder = 5
      Text = 'info@dilettantissimo.tv'
    end
    object edPassword: TLabeledEdit
      Left = 645
      Top = 30
      Width = 146
      Height = 21
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.Caption = 'Password'
      PasswordChar = '*'
      TabOrder = 6
      Text = 'd1l3tt4nt1ss1m0'
    end
    object ckbAlive: TCheckBox
      Left = 231
      Top = 21
      Width = 44
      Height = 17
      Caption = 'Alive'
      TabOrder = 7
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 57
    Width = 1037
    Height = 732
    ActivePage = tabJsonObject
    Align = alClient
    TabOrder = 1
    object tabJsonObject: TTabSheet
      Caption = 'Tests'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PageControl3: TPageControl
        Left = 249
        Top = 0
        Width = 780
        Height = 704
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 0
        object TabSheet3: TTabSheet
          Caption = 'Json'
          object advMemoJson: TAdvMemo
            Left = 0
            Top = 0
            Width = 772
            Height = 676
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
            Version = '3.6.1.1'
            WordWrap = wwNone
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Tables'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object CRDBGrid1: TCRDBGrid
            Left = 0
            Top = 114
            Width = 772
            Height = 562
            Align = alClient
            DataSource = dsTestFootball
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object DBNavigator1: TDBNavigator
            Left = 0
            Top = 65
            Width = 772
            Height = 49
            DataSource = dsTestFootball
            Align = alTop
            TabOrder = 1
          end
          object CRDBGrid2: TCRDBGrid
            Left = 0
            Top = 0
            Width = 772
            Height = 65
            OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting]
            Align = alTop
            DataSource = dsChampionship
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object tabHtmlResult: TTabSheet
          Caption = 'Html'
          ImageIndex = 2
          object memHtml: TAdvMemo
            Left = 0
            Top = 0
            Width = 772
            Height = 676
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
            Version = '3.6.1.1'
            WordWrap = wwNone
          end
        end
        object tabBrowser: TTabSheet
          Caption = 'Browser'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object WebBrowser1: TWebBrowser
            Left = 0
            Top = 41
            Width = 772
            Height = 635
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 534
            ExplicitHeight = 491
            ControlData = {
              4C000000CA4F0000A14100000000000000000000000000000000000000000000
              000000004C000000000000000000000001000000E0D057007335CF11AE690800
              2B2E126208000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 772
            Height = 41
            Align = alTop
            TabOrder = 1
            object btnStartWebServer: TSpeedButton
              Left = 8
              Top = 8
              Width = 137
              Height = 27
            end
          end
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 249
        Height = 704
        Align = alLeft
        TabOrder = 1
        DesignSize = (
          249
          704)
        object SpeedButton4: TSpeedButton
          Left = 3
          Top = 112
          Width = 218
          Height = 41
          Caption = 'Classifica'
          OnClick = SpeedButton4Click
        end
        object SpeedButton5: TSpeedButton
          Left = 3
          Top = 159
          Width = 218
          Height = 41
          Caption = 'Risultati'
          OnClick = SpeedButton5Click
        end
        object SpeedButton6: TSpeedButton
          Left = 3
          Top = 206
          Width = 218
          Height = 41
          Caption = 'Marcatori'
          OnClick = SpeedButton6Click
        end
        object SpeedButton7: TSpeedButton
          Left = 3
          Top = 253
          Width = 218
          Height = 41
          Caption = 'Prossimo Turno'
          OnClick = SpeedButton7Click
        end
        object SpeedButton1: TSpeedButton
          Left = 3
          Top = 16
          Width = 218
          Height = 43
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Stagioni'
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 3
          Top = 65
          Width = 218
          Height = 40
          Caption = 'Campionati'
          OnClick = SpeedButton2Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Settings'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AdvPageControl1: TAdvPageControl
        Left = 0
        Top = 0
        Width = 1029
        Height = 704
        ActivePage = tabTemplateRanking
        ActiveFont.Charset = DEFAULT_CHARSET
        ActiveFont.Color = clWindowText
        ActiveFont.Height = -11
        ActiveFont.Name = 'Tahoma'
        ActiveFont.Style = []
        Align = alClient
        DoubleBuffered = True
        TabBackGroundColor = clBtnFace
        TabMargin.RightMargin = 0
        TabOverlap = 0
        Version = '2.0.1.0'
        PersistPagesState.Location = plRegistry
        PersistPagesState.Enabled = False
        TabOrder = 0
        object tabTemplateRanking: TAdvTabSheet
          Caption = 'Ranking'
          Color = clBtnFace
          ColorTo = clNone
          TabColor = clBtnFace
          TabColorTo = clNone
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 1021
            Height = 35
            Align = alTop
            Caption = 'Template Classifica'
            TabOrder = 0
            object btnSaveTemplateRanking: TSpeedButton
              Left = 0
              Top = 7
              Width = 97
              Height = 22
              Caption = 'Salva Template'
            end
            object SpeedButton8: TSpeedButton
              Left = 103
              Top = 7
              Width = 97
              Height = 22
              Caption = 'Carica Template'
            end
          end
          object PageControl2: TPageControl
            Left = 0
            Top = 35
            Width = 1021
            Height = 641
            ActivePage = TabSheet1
            Align = alClient
            TabOrder = 1
            object TabSheet1: TTabSheet
              Caption = 'Page'
              object memRankingPage: TAdvMemo
                Left = 0
                Top = 0
                Width = 1013
                Height = 613
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
                  '<!DOCTYPE html>'
                  
                    '<html xmlns="http://www.w3.org/1999/xhtml" xml:lang=it lang=it> ' +
                    ' '
                  '$html_header$'
                  '<body>'
                  '$football_ranking_table$     '
                  '</body>  '
                  '</html>')
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
                Version = '3.6.1.1'
                WordWrap = wwNone
              end
            end
            object TabSheet5: TTabSheet
              Caption = 'Table'
              ImageIndex = 1
              object Panel13: TPanel
                Left = 0
                Top = 0
                Width = 1013
                Height = 35
                Align = alTop
                Caption = 'Template Classifica $football_ranking_table$'
                TabOrder = 0
              end
              object memRankingTableHeader: TAdvMemo
                Left = 0
                Top = 35
                Width = 1013
                Height = 578
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
                  '<table class="table_ranking sortable">'
                  
                    '<caption title="Classifica $league_name$ Stagione $season_des$">' +
                    '</caption>'
                  '<thead>'
                  '<tr>'
                  '<th colspan="3" class="team header">SQUADRA</th>           '
                  '<th class="tooltip header">PT</th>'
                  '<th class="tooltip header">G</th>'
                  '<th class="tooltip header">V</th>'
                  '<th class="tooltip header">N</th>'
                  '<th class="tooltip header">P</th>'
                  '<th class="tooltip header">F</th>'
                  '<th class="tooltip header">S</th>'
                  '<th class="tooltip header">DR</th>'
                  '<th class="tooltip header">MI</th>'
                  '<th class="tooltip details header"></th>'
                  '</tr>'
                  '</thead>'
                  '<tbody> '
                  '$football_ranking_rows$'
                  '</tbody>'
                  '</table>')
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
                SyntaxStyles = AdvHTMLMemoStyler1
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
            end
            object TabSheet6: TTabSheet
              Caption = 'Rows'
              ImageIndex = 2
              object memRankingTableRows: TAdvMemo
                Left = 0
                Top = 35
                Width = 1013
                Height = 578
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
                  '<tr class="$row_class$" data-team-id="$team_id$">'
                  '<td class="last_match">'
                  '</td>'
                  
                    '<td class="team_logo"><img alt="logo $team_name$" src="$team_log' +
                    'o$"></td>'
                  '<td class="team">                                '
                  '<a href="$team_url$">$team_name$</a>'
                  '</td>              '
                  '<td class="points">$points$</td>'
                  '<td>$played_matches$</td>           '
                  '<td>$won_matches$</td>'
                  '<td>$tied_matches$</td>'
                  '<td>$lost_matches$</td>'
                  '<td>$goal_done$</td>              '
                  '<td>$goal_lost$</td>'
                  '<td>$goal_difference$</td>'
                  
                    '<td>$scoring_average$</td>                                      ' +
                    '     '
                  '<td class="details">'
                  '</td>'
                  '</tr>                  ')
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
                Version = '3.6.1.1'
                WordWrap = wwNone
              end
              object Panel2: TPanel
                Left = 0
                Top = 0
                Width = 1013
                Height = 35
                Align = alTop
                Caption = 'Template Classifica Rows $football_ranking_rows$'
                TabOrder = 1
              end
            end
          end
        end
        object tabMatchDay: TAdvTabSheet
          Caption = 'Match Day'
          Color = clBtnFace
          ColorTo = clNone
          TabColor = clBtnFace
          TabColorTo = clNone
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object PageControl4: TPageControl
            Left = 0
            Top = 0
            Width = 1021
            Height = 676
            ActivePage = TabSheet9
            Align = alClient
            TabOrder = 0
            object TabSheet7: TTabSheet
              Caption = 'Page'
              object memTemplateMatchDayPage: TAdvMemo
                Left = 0
                Top = 0
                Width = 1013
                Height = 648
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
                  '<!DOCTYPE html>'
                  
                    '<html xmlns="http://www.w3.org/1999/xhtml" xml:lang=it lang=it> ' +
                    ' '
                  '$html_header$'
                  '<body>                     '
                  '$football_matches_table$'
                  '</body>  '
                  '</html>')
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
                Version = '3.6.1.1'
                WordWrap = wwNone
              end
            end
            object TabSheet8: TTabSheet
              Caption = 'Table'
              ImageIndex = 1
              object Panel6: TPanel
                Left = 0
                Top = 0
                Width = 1013
                Height = 35
                Align = alTop
                Caption = 'Template Match Table $football_matches_table$'
                TabOrder = 0
              end
              object memTemplateMatchDayTable: TAdvMemo
                Left = 0
                Top = 35
                Width = 1013
                Height = 613
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
                  '<div id=table_results_content>     '
                  '<table class=table_results>'
                  '<caption title="$title$"></caption>'
                  '<tbody>  '
                  '$football_matches_rows$'
                  '</tbody>'
                  '</table> '
                  '</div>                       ')
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
                SyntaxStyles = AdvHTMLMemoStyler1
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
            end
            object TabSheet9: TTabSheet
              Caption = 'Rows'
              ImageIndex = 2
              object Panel7: TPanel
                Left = 0
                Top = 0
                Width = 1013
                Height = 35
                Align = alTop
                Caption = 'Template Match Row  $football_matches_rows$'
                TabOrder = 0
              end
              object memTemplateMatchDayRows: TAdvMemo
                Left = 0
                Top = 35
                Width = 1013
                Height = 613
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
                  '<tr class=$class$>'
                  '<td class=team data-team-id=$home_id$>  '
                  '<span>    '
                  
                    '<a href="$home_team_url$" title="Vai alle informazioni sulla squ' +
                    'adra">$home_team$</a>  '
                  '</span>  '
                  '</td>'
                  '<td>'
                  '<span style=width:10px>-</span>  '
                  '</td>  '
                  '<td class=team data-team-id=$home_id$> '
                  '<span>    '
                  
                    '<a href="$visitors_team_url$" title="Vai alle informazioni sulla' +
                    ' squadra">$visitors_team$</a>  '
                  '</span>      '
                  '</td>'
                  '<td class="result tooltip" title="Partita terminata">'
                  
                    '<a href="$match_url$">                                          ' +
                    '  '
                  '<span>$goal_home$</span>               '
                  '<span style=width:10px>-</span>             '
                  '<span>$goal_visitor$</span>'
                  '</a>'
                  '</td>                                       '
                  '</tr>       ')
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
                SyntaxStyles = AdvHTMLMemoStyler1
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
            end
          end
        end
        object AdvTabSheet2: TAdvTabSheet
          Caption = 'Goal Ranking'
          Color = clBtnFace
          ColorTo = clNone
          TabColor = clBtnFace
          TabColorTo = clNone
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object pgGoalRankingSettings: TPageControl
            Left = 0
            Top = 0
            Width = 1021
            Height = 676
            ActivePage = TabSheet12
            Align = alClient
            TabOrder = 0
            object TabSheet10: TTabSheet
              Caption = 'Page'
              object memGoalRankingPage: TAdvMemo
                Left = 0
                Top = 0
                Width = 1013
                Height = 648
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
                  '<!DOCTYPE html>'
                  
                    '<html xmlns="http://www.w3.org/1999/xhtml" xml:lang=it lang=it> ' +
                    ' '
                  '$html_header$'
                  '<body>                     '
                  '$football_goalranking_table$'
                  '</body>            '
                  '</html>')
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
                Version = '3.6.1.1'
                WordWrap = wwNone
              end
            end
            object TabSheet11: TTabSheet
              Caption = 'Table'
              ImageIndex = 1
              object Panel11: TPanel
                Left = 0
                Top = 0
                Width = 1013
                Height = 35
                Align = alTop
                Caption = 'Template Match Table $football_goalranking_table$'
                TabOrder = 0
              end
              object memGoalRankingHead: TAdvMemo
                Left = 0
                Top = 35
                Width = 1013
                Height = 613
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
                  
                    '<div id="DataTables_Table_0_wrapper" class="dataTables_wrapper n' +
                    'o-footer">   '
                  
                    '<table class="table_scorers sortable dataTable no-footer" id="Da' +
                    'taTables_Table_0" role="grid" aria-describedby="DataTables_Table' +
                    '_0_info">'
                  
                    '<caption title="Classifica Marcatori $league_name$ Stagione $sea' +
                    'son_des$"></caption>'
                  '<thead>'
                  '<tr role="row">'
                  
                    '<th class="player sorting" tabindex="0" aria-controls="DataTable' +
                    's_Table_0" rowspan="1" colspan="1" aria-label="GIOCATORE: activa' +
                    'te to sort column ascending" style="width: 45%;">'
                  'GIOCATORE'
                  '</th>'
                  
                    '<th class="team sorting" tabindex="0" aria-controls="DataTables_' +
                    'Table_0" rowspan="1" colspan="1" aria-label="SQUADRA: activate t' +
                    'o sort column ascending" style="width: 45%;">'
                  'SQUADRA'
                  '</th>'
                  
                    '<th class="sorting_desc" tabindex="0" aria-controls="DataTables_' +
                    'Table_0" rowspan="1" colspan="1" aria-sort="descending" aria-lab' +
                    'el="GOL: activate to sort column ascending" style="width: 10%;">'
                  'GOL'
                  '</th>'
                  
                    '</tr>                                                           ' +
                    '                                                                ' +
                    '                                                                ' +
                    '    '
                  
                    '</thead>                                                        ' +
                    '                                                                ' +
                    '                                                                ' +
                    '     '
                  
                    '<tbody>                                                         ' +
                    '                                                                ' +
                    '                                                                ' +
                    '                                                                ' +
                    '                                                                ' +
                    '                                     '
                  '$football_goalranking_rows$'
                  '</tbody>'
                  '</table> '
                  '</div>                                        ')
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
                SyntaxStyles = AdvHTMLMemoStyler1
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
            end
            object TabSheet12: TTabSheet
              Caption = 'Rows'
              ImageIndex = 2
              object Panel12: TPanel
                Left = 0
                Top = 0
                Width = 1013
                Height = 35
                Align = alTop
                Caption = 'Template Match Row  $football_matches_rows$'
                TabOrder = 0
              end
              object memGoalRankingRows: TAdvMemo
                Left = 0
                Top = 35
                Width = 1013
                Height = 613
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
                  '<tr class=$class$ role="row">'
                  '<td class="player">'
                  '<a href="$player_url$">$family_name$ $first_name$</a>'
                  '</td>                      '
                  '<td class="team">'
                  '<a href="$team_url$">$team_name$</a>'
                  '</td>                             '
                  '<td class="gol sorting_1">$goals$</td>'
                  '</tr>                                    ')
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
                SyntaxStyles = AdvHTMLMemoStyler1
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
            end
          end
        end
        object AdvTabSheet1: TAdvTabSheet
          Caption = 'Page Header'
          Color = clBtnFace
          ColorTo = clNone
          TabColor = clBtnFace
          TabColorTo = clNone
          object memHtmlHeader: TAdvMemo
            Left = 0
            Top = 35
            Width = 1021
            Height = 641
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
              '<head>'
              
                '<title>Risultati - Liguria - Serie D Girone A - Dilettantissimo.' +
                'tv</title>'
              
                '<meta name=keywords content='#39'Risultati,2016-17,Liguria,Calcio,Di' +
                'lettanti,Campionato,Risultati,Giornate,Dilettantissimo,Calcio Di' +
                'lettantistico,News,Commenti'#39'/>'
              
                '<meta name=description content='#39'Risultati del campionato di calc' +
                'io dilettantistico Serie D Girone A in Italia, stagione 2016-17'#39 +
                '/>'
              
                '<meta http-equiv=Content-Type content='#39'text/html; charset=utf-8'#39 +
                '/>'
              '<meta http-equiv=X-UA-Compatible content='#39'IE=edge'#39'/>   '
              
                '<link rel=stylesheet type='#39'text/css'#39' href="http://151.1.24.133/s' +
                'cripts/dilettantissimo.css "/>'
              '</head>                               ')
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
            Version = '3.6.1.1'
            WordWrap = wwNone
          end
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 1021
            Height = 35
            Align = alTop
            Caption = 'Template Page Header $html_header$'
            TabOrder = 1
          end
        end
        object tabHtmlMenu: TAdvTabSheet
          Caption = 'Horiz. Menu'
          Color = clBtnFace
          ColorTo = clNone
          TabColor = clBtnFace
          TabColorTo = clNone
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 1021
            Height = 41
            Align = alTop
            Caption = 'Html Menu $html_menu$'
            TabOrder = 0
          end
        end
        object tabCss: TAdvTabSheet
          Caption = 'Css'
          Color = clBtnFace
          ColorTo = clNone
          TabColor = clBtnFace
          TabColorTo = clNone
          object Panel10: TPanel
            Left = 0
            Top = 0
            Width = 1021
            Height = 65
            Align = alTop
            TabOrder = 0
            object edCssPromotion: TLabeledEdit
              Left = 8
              Top = 24
              Width = 121
              Height = 21
              EditLabel.Width = 103
              EditLabel.Height = 13
              EditLabel.Caption = 'Campione / Promossa'
              TabOrder = 0
              Text = 'promotion'
            end
            object edPlayoff: TLabeledEdit
              Left = 152
              Top = 24
              Width = 121
              Height = 21
              EditLabel.Width = 96
              EditLabel.Height = 13
              EditLabel.Caption = 'Playoff / Champions'
              TabOrder = 1
              Text = 'playoff'
            end
            object edCssStandard: TLabeledEdit
              Left = 288
              Top = 24
              Width = 121
              Height = 21
              EditLabel.Width = 44
              EditLabel.Height = 13
              EditLabel.Caption = 'Standard'
              TabOrder = 2
            end
            object edPlayout: TLabeledEdit
              Left = 424
              Top = 24
              Width = 121
              Height = 21
              EditLabel.Width = 36
              EditLabel.Height = 13
              EditLabel.Caption = 'Playout'
              TabOrder = 3
              Text = 'playout'
            end
            object edRelegation: TLabeledEdit
              Left = 560
              Top = 24
              Width = 121
              Height = 21
              EditLabel.Width = 68
              EditLabel.Height = 13
              EditLabel.Caption = 'Retrocessione'
              TabOrder = 4
              Text = 'retrocession'
            end
          end
          object AdvMemo1: TAdvMemo
            Left = 0
            Top = 65
            Width = 1021
            Height = 611
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
              'div#last_match_ranking{width:640px;clear:both}'
              'div#ranking_title{padding:20px 0 10px;overflow:hidden}'
              'div#ranking_title span{float:left}'
              'div#ranking_title span.button{float:right}'
              'table.table_ranking{width:100%}'
              'table.table_ranking tr{border-bottom:2px solid white}'
              
                'table.table_ranking thead tr{background-color:#7f7f7f;height:36p' +
                'x;color:white;font-size:12px;font-weight:700}'
              
                'table.table_ranking tbody tr{color:#3f3f3f;font-size:13px;text-a' +
                'lign:center;background-color:#e5e5e5;height:36px}'
              'table.table_ranking tbody tr.promotion{background-color:#d2f7cb}'
              'table.table_ranking tbody tr.playoff{background-color:#cbe8fa} '
              
                'table.table_ranking tbody tr.champions{background-color:#ffefbb}' +
                ' '
              'table.table_ranking tbody tr.playout{background-color:#ffefbb} '
              
                'table.table_ranking tbody tr.retrocession{background-color:#ffba' +
                'c0}'
              'table.table_ranking th{border-left:1px solid white}'
              'table.table_ranking td{width:30px;border-left:1px solid white}'
              
                'table.table_ranking th.team{width:225px;text-align:left;padding-' +
                'left:13px;border-left:none}'
              'table.table_ranking td.team{width:180px;border-left:none}'
              
                'table.table_ranking td.team a{text-align:left;color:#193b67;font' +
                '-weight:600;font-size:13px;display:block;padding:0}'
              
                'table.table_ranking td.team a:hover{text-decoration:underline;co' +
                'lor:black}'
              
                'table.table_ranking td.team_logo{text-align:center;border-left:n' +
                'one}'
              'table.table_ranking td.points{font-weight:700;color:black}'
              
                'table.table_ranking td img{text-align:center;height:25px;max-wid' +
                'th:40px;margin:0 5px}'
              'table.table_ranking td.last_match{width:20px;padding-left:4px}'
              'table.table_ranking td.last_match img{width:10px;height:auto}'
              ''
              'ul#legend{margin:20px 35px;overflow:hidden;padding:0}'
              'ul#legend li{float:left;list-style:none}'
              
                'ul#legend li div{width:15px;height:15px;-webkit-border-radius:15' +
                'px;-moz-border-radius:8px;border-radius:15px;float:left;margin-r' +
                'ight:10px;margin-left:20px}'
              'ul#legend li span{font-size:12px;color:#3f3f3f}'
              
                'ul#legend li.promotion div{background-color:#d2f7cb;border:1px s' +
                'olid #afcfaa}'
              
                'ul#legend li.playoff div{background-color:#cbe8fa;border:1px sol' +
                'id #94caeb}'
              
                'ul#legend li.playout div{background-color:#ffefbb;border:1px sol' +
                'id #d9cba0}'
              
                'ul#legend li.retrocession div{background-color:#ffbac0;border:1p' +
                'x solid #c48f94}'
              ''
              
                'table.table_ranking tr.team_stats_row{margin:0;padding:0;backgro' +
                'und:white!important;width:100%}'
              
                'table.table_ranking tr.team_stats_row td{margin:0;padding:0;widt' +
                'h:100%}'
              
                'table.table_ranking tr.team_stats_row td div.team_stats{border:1' +
                'px solid #e5e5e5;border-top:0}'
              
                'table.table_ranking td.details{cursor:pointer;font-weight:700;fo' +
                'nt-size:18px}'
              'div#ranking div#ranking_title{padding-top:0} '
              'table.table_ranking_detailed tr{font-size:11px;border:0}'
              'table.table_ranking_detailed th{border:1px solid #a5a5a5}'
              
                'table.table_ranking_detailed tbody tr{font-size:11px;border-top:' +
                '2px solid white}'
              'table.table_ranking_detailed td{border:0}'
              
                'table.table_ranking_detailed .border_left{border-left:2px solid ' +
                'white}'
              
                'table.table_ranking_detailed td img{margin:0;height:22px;max-wid' +
                'th:30px}'
              'table.table_ranking_detailed td.team{width:110px}'
              'table.table_ranking_detailed td.team a{font-size:12px}'
              'table.table_scorers{width:510px;border-bottom:2px solid #bfbfbf}')
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
            SyntaxStyles = AdvCSSMemoStyler1
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
        end
      end
    end
    object tabTestServer: TTabSheet
      Caption = 'Test Server'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object dsSeasons: TVirtualTable
    Left = 520
    Top = 544
    Data = {04000000000000000000}
  end
  object dsLeagues: TVirtualTable
    Left = 592
    Top = 576
    Data = {04000000000000000000}
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
          'dd'
          'del'
          'dfn'
          'dir'
          'div'
          'dl'
          'doctype'
          'dt'
          'em'
          'embed'
          'fig'
          'fn'
          'font'
          'form'
          'frame'
          'frameset'
          'h1'
          'h2'
          'h3'
          'h4'
          'h5'
          'h6'
          'head'
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
          'public'
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
          'xmp')
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
          'border'
          'bordercolor'
          'bordercolordark'
          'bordercolorlight'
          'id'
          'style'
          'table'
          'td'
          'tr'
          'width')
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
    Left = 40
    Top = 568
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
          'false'
          'null'
          'true')
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
    Left = 180
    Top = 561
  end
  object tbThemes: TVirtualTable
    Left = 336
    Top = 488
    Data = {04000000000000000000}
  end
  object tbTemplates: TVirtualTable
    Left = 392
    Top = 520
    Data = {04000000000000000000}
  end
  object dsTestFootball: TDataSource
    Left = 589
    Top = 513
  end
  object dsChampionship: TDataSource
    Left = 461
    Top = 489
  end
  object AdvCSSMemoStyler1: TAdvCSSMemoStyler
    LineComment = '//'
    CommentStyle.TextColor = clNavy
    CommentStyle.BkColor = clWhite
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clFuchsia
    NumberStyle.BkColor = clWhite
    NumberStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          '.border'
          '.comment'
          '.h1'
          '.h2'
          '.h3'
          '.h4'
          '.h5')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'CSS Standard Default'
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
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ' ,;:.(){}[]=-*/^%<>#'#13#10
        Info = 'Symbols Delimiters'
      end>
    Description = 'Cascading Style Sheets (CSS)'
    Filter = 'Cascading Stylesheets (*.css)|*.css'
    DefaultExtension = '.css'
    StylerName = 'Cascading Style Sheets'
    Extensions = 'css'
    Left = 104
    Top = 528
  end
end
