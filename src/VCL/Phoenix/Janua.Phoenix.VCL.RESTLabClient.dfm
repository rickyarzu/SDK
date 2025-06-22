object frmPhoenixVCLRESTLabClient: TfrmPhoenixVCLRESTLabClient
  Left = 0
  Top = 0
  Caption = 'Phoenix REST Lab Client'
  ClientHeight = 855
  ClientWidth = 1491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1491
    Height = 855
    ActivePage = tabLab
    Align = alClient
    TabOrder = 0
    object tabLab: TTabSheet
      Caption = 'Laboratori'
      object PageControl2: TPageControl
        Left = 0
        Top = 57
        Width = 1483
        Height = 768
        ActivePage = tabJsonConfigurazioni
        Align = alClient
        TabOrder = 0
        object tabJsonList: TTabSheet
          Caption = 'Lista Estintori'
          object memJsonResponse: TAdvMemo
            Left = 0
            Top = 185
            Width = 1475
            Height = 553
            Cursor = crIBeam
            StyleElements = []
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
            CodeFolding.Enabled = True
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
            UIStyle = tsOffice2019White
            UrlStyle.TextColor = clBlue
            UrlStyle.BkColor = clWhite
            UrlStyle.Style = [fsUnderline]
            UseStyler = True
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
          object pnlListaEstintori: TPanel
            Left = 0
            Top = 0
            Width = 1475
            Height = 41
            Align = alTop
            TabOrder = 1
            object btnSaveJson: TButton
              Left = 1
              Top = 1
              Width = 96
              Height = 39
              Align = alLeft
              Caption = 'Save Json'
              TabOrder = 0
              OnClick = btnSaveJsonClick
            end
            object ProgressBar1: TProgressBar
              Left = 112
              Top = 8
              Width = 849
              Height = 17
              TabOrder = 1
            end
          end
          object memRawResponse: TAdvMemo
            Left = 0
            Top = 41
            Width = 1475
            Height = 144
            Cursor = crIBeam
            StyleElements = []
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alTop
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
            CodeFolding.Enabled = True
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
            UIStyle = tsOffice2019White
            UrlStyle.TextColor = clBlue
            UrlStyle.BkColor = clWhite
            UrlStyle.Style = [fsUnderline]
            UseStyler = True
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
        end
        object tabUpdateData: TTabSheet
          Caption = 'Update Data'
          ImageIndex = 4
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 1475
            Height = 41
            Align = alTop
            TabOrder = 0
          end
          object JvDBGrid1: TJvDBGrid
            Left = 0
            Top = 41
            Width = 1475
            Height = 697
            Align = alClient
            DataSource = dsLabEstintori
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 19
            TitleRowHeight = 19
            Columns = <
              item
                Expanded = False
                FieldName = 'STATINO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESTINTORE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TECNICO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRIZIONE_STATINO'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATO_STATINO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRIZIONE_ALTERNATIVA'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RESET_DATA_COLLAUDO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RESET_DATA_REVISIONE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_SMALTIMENTO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_RESTITUZIONE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONSEGNA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO_NEGATO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_STARTUP_REV'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_ESTINTORE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PROGRESSIVO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MATRICOLA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANNO_COSTRUZIONE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_STARTUP_COL'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA_APPROVATA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UBICAZIONE'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOTE_TECNICO'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_NFC'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_INTERVENTO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERIODICITA_COLLAUDO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERIODICITA_REVISIONE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA_DOWNLOAD'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RITIRATO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_RITIRO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ORARIO_RITIRO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TECNIOO_RITIRO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONSEGNATO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_LAVORAZIONE'
                Width = 64
                Visible = True
              end>
          end
        end
        object tabJsonConfigurazioni: TTabSheet
          Caption = 'Configurazioni'
          ImageIndex = 1
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 1475
            Height = 41
            Align = alTop
            TabOrder = 0
          end
          object memConfigurazioni: TAdvMemo
            Left = 0
            Top = 233
            Width = 1475
            Height = 505
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
          object memConfigurazioniHead: TAdvMemo
            Left = 0
            Top = 41
            Width = 1475
            Height = 112
            Cursor = crIBeam
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alTop
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
          object memTmpConfigurazioni: TAdvMemo
            Left = 0
            Top = 153
            Width = 1475
            Height = 80
            Cursor = crIBeam
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alTop
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
            CodeFolding.Enabled = True
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
            UseStyler = False
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
        end
        object tabUpdateReports: TTabSheet
          Caption = 'Aggiornamento Rapportini'
          ImageIndex = 2
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 1475
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object DBNavigator1: TDBNavigator
              Left = 0
              Top = 0
              Width = 249
              Height = 41
              Align = alLeft
              TabOrder = 0
            end
            object btnOpen: TButton
              Left = 249
              Top = 0
              Width = 92
              Height = 41
              Align = alLeft
              Caption = 'Apri Tabella'
              TabOrder = 1
              OnClick = btnOpenClick
            end
          end
          object DBGrid1: TDBGrid
            Left = 0
            Top = 41
            Width = 1475
            Height = 352
            Align = alTop
            DataSource = dmFDACPhoenixLab.dsMasterStatini
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'STATINO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TECNICO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRIZIONE_STATINO'
                Width = 276
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATO_STATINO'
                Width = 46
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESTINTORI'
                Width = 47
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COMUNE'
                Width = 140
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CAP'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_INTERVENTO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SOSPESO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATO_LAVORAZIONE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CHIUSURA_DA_SERVER'
                Width = 64
                Visible = True
              end>
          end
          object DBGrid2: TDBGrid
            Left = 0
            Top = 393
            Width = 1475
            Height = 345
            Align = alClient
            DataSource = dsDetailEstintori
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
          end
        end
        object tabLog: TTabSheet
          Caption = 'Log'
          ImageIndex = 3
          object memLog: TMemo
            Left = 0
            Top = 0
            Width = 1475
            Height = 738
            Align = alClient
            TabOrder = 0
          end
        end
        object tabExportConf: TTabSheet
          Caption = 'Export Configurazioni'
          ImageIndex = 5
          object memExportConf: TAdvMemo
            Left = 0
            Top = 0
            Width = 637
            Height = 738
            Cursor = crIBeam
            StyleElements = []
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alLeft
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
          object memExportConfAdapted: TAdvMemo
            Left = 637
            Top = 0
            Width = 612
            Height = 738
            Cursor = crIBeam
            StyleElements = []
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alLeft
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
          object memFinalConf: TAdvMemo
            Left = 1249
            Top = 0
            Width = 226
            Height = 738
            Cursor = crIBeam
            StyleElements = []
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
        end
        object tabExportUtenti: TTabSheet
          Caption = 'Utenti'
          ImageIndex = 6
          object memUtenti: TAdvMemo
            Left = 0
            Top = 0
            Width = 637
            Height = 738
            Cursor = crIBeam
            StyleElements = []
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alLeft
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
          object memUtentiTranslated: TAdvMemo
            Left = 637
            Top = 0
            Width = 612
            Height = 738
            Cursor = crIBeam
            StyleElements = []
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alLeft
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
          object memUtentiFinal: TAdvMemo
            Left = 1249
            Top = 0
            Width = 226
            Height = 738
            Cursor = crIBeam
            StyleElements = []
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
        end
        object tabMagazzino: TTabSheet
          Caption = 'Magazzino'
          ImageIndex = 7
          object memMagazzino: TAdvMemo
            Left = 0
            Top = 0
            Width = 637
            Height = 738
            Cursor = crIBeam
            StyleElements = []
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alLeft
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
          object memMagazzinoTranslated: TAdvMemo
            Left = 637
            Top = 0
            Width = 612
            Height = 738
            Cursor = crIBeam
            StyleElements = []
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alLeft
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
          object memMagazzinoFinal: TAdvMemo
            Left = 1249
            Top = 0
            Width = 226
            Height = 738
            Cursor = crIBeam
            StyleElements = []
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
        end
        object tabRapportini: TTabSheet
          Caption = 'Rapportini'
          ImageIndex = 8
          object EnhCRDBGrid18: TEnhCRDBGrid
            Left = 0
            Top = 0
            Width = 345
            Height = 738
            Align = alLeft
            DataSource = dsStatiniNC
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDblClick = EnhCRDBGrid3DblClick
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CHIAVE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RAGIONE_SOCIALE'
                Width = 220
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDIRIZZO'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_INTERVENTO'
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'JSON_DA_MOBILE'
                Width = 100
                Visible = True
              end>
          end
          object memReport: TAdvMemo
            Left = 345
            Top = 0
            Width = 512
            Height = 738
            Cursor = crIBeam
            StyleElements = []
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alLeft
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
          object memReportTranslated: TAdvMemo
            Left = 857
            Top = 0
            Width = 488
            Height = 738
            Cursor = crIBeam
            StyleElements = []
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alLeft
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
          object memReportFinal: TAdvMemo
            Left = 1345
            Top = 0
            Width = 130
            Height = 738
            Cursor = crIBeam
            StyleElements = []
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
        end
        object tabFinalTest: TTabSheet
          Caption = 'Test Finale'
          ImageIndex = 9
          object memTestConf: TAdvMemo
            Left = 0
            Top = 0
            Width = 465
            Height = 738
            Cursor = crIBeam
            StyleElements = []
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alLeft
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
          object memTestUtenti: TAdvMemo
            Left = 889
            Top = 0
            Width = 424
            Height = 738
            Cursor = crIBeam
            StyleElements = []
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alLeft
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
          object memTestReport: TAdvMemo
            Left = 1313
            Top = 0
            Width = 432
            Height = 738
            Cursor = crIBeam
            StyleElements = []
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alLeft
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
          object memTestProdotti: TAdvMemo
            Left = 465
            Top = 0
            Width = 424
            Height = 738
            Cursor = crIBeam
            StyleElements = []
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alLeft
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
            CodeFolding.Enabled = True
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
          object memTestTranslated: TAdvMemo
            Left = 1745
            Top = 0
            Width = 123
            Height = 738
            Cursor = crIBeam
            StyleElements = []
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
            CodeFolding.Enabled = True
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
            TabOrder = 4
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
        end
        object tabTestRESTAPI: TTabSheet
          Caption = 'Test REST API'
          ImageIndex = 10
          object pnlRestTop: TPanel
            Left = 0
            Top = 0
            Width = 1475
            Height = 49
            Align = alTop
            TabOrder = 0
            object lbGetResult: TLabel
              Left = 216
              Top = 13
              Width = 67
              Height = 15
              Caption = 'Server Status'
            end
            object spPort: TSpinEdit
              Left = 24
              Top = 8
              Width = 89
              Height = 24
              MaxValue = 65535
              MinValue = 80
              TabOrder = 0
              Value = 9513
            end
            object btnStartDMVC: TButton
              Left = 120
              Top = 8
              Width = 75
              Height = 25
              Caption = 'Start'
              TabOrder = 1
              OnClick = btnStartDMVCClick
            end
            object btnGetRestConf: TButton
              Left = 673
              Top = 8
              Width = 104
              Height = 25
              Caption = 'Configurazione'
              TabOrder = 2
              OnClick = btnGetRestConfClick
            end
            object btnUtenti: TButton
              Left = 792
              Top = 8
              Width = 95
              Height = 25
              Caption = 'Utenti'
              TabOrder = 3
              OnClick = btnUtentiClick
            end
            object btnItems: TButton
              Left = 903
              Top = 8
              Width = 90
              Height = 25
              Caption = 'Prodotti'
              TabOrder = 4
              OnClick = btnItemsClick
            end
            object btnReportREST: TButton
              Left = 1013
              Top = 8
              Width = 89
              Height = 25
              Caption = 'Rapportino'
              TabOrder = 5
              OnClick = btnReportRESTClick
            end
            object btnReportList: TButton
              Left = 1117
              Top = 8
              Width = 89
              Height = 25
              Caption = 'Lista Giorno'
              TabOrder = 6
              OnClick = btnReportListClick
            end
            object btnTestList: TButton
              Left = 1224
              Top = 8
              Width = 121
              Height = 25
              Caption = 'Test Lista Giorno'
              TabOrder = 7
              OnClick = btnTestListClick
            end
          end
          object PageControl5: TPageControl
            Left = 0
            Top = 49
            Width = 1475
            Height = 689
            ActivePage = tabConf
            Align = alClient
            TabOrder = 1
            object tabConf: TTabSheet
              Caption = 'Configurazione'
              object memJsonConfResponse: TAdvMemo
                Left = 0
                Top = 0
                Width = 753
                Height = 659
                Cursor = crIBeam
                StyleElements = []
                ActiveLineSettings.ShowActiveLine = False
                ActiveLineSettings.ShowActiveLineIndicator = False
                Align = alLeft
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
                CodeFolding.Enabled = True
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
                Version = '3.9.1.7'
                WordWrap = wwNone
              end
              object memJsonConfElaborated: TAdvMemo
                Left = 753
                Top = 0
                Width = 714
                Height = 659
                Cursor = crIBeam
                StyleElements = []
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
                CodeFolding.Enabled = True
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
                Version = '3.9.1.7'
                WordWrap = wwNone
              end
            end
            object tabUsers: TTabSheet
              Caption = 'Utenti'
              ImageIndex = 1
              object memUtentiREST: TAdvMemo
                Left = 0
                Top = 0
                Width = 753
                Height = 659
                Cursor = crIBeam
                StyleElements = []
                ActiveLineSettings.ShowActiveLine = False
                ActiveLineSettings.ShowActiveLineIndicator = False
                Align = alLeft
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
                CodeFolding.Enabled = True
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
                Version = '3.9.1.7'
                WordWrap = wwNone
              end
              object memUtentiRestObject: TAdvMemo
                Left = 753
                Top = 0
                Width = 714
                Height = 659
                Cursor = crIBeam
                StyleElements = []
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
                CodeFolding.Enabled = True
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
                Version = '3.9.1.7'
                WordWrap = wwNone
              end
            end
            object tabProdotti: TTabSheet
              Caption = 'Prodotti'
              ImageIndex = 2
              object memProdottiREST: TAdvMemo
                Left = 0
                Top = 0
                Width = 753
                Height = 659
                Cursor = crIBeam
                StyleElements = []
                ActiveLineSettings.ShowActiveLine = False
                ActiveLineSettings.ShowActiveLineIndicator = False
                Align = alLeft
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
                CodeFolding.Enabled = True
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
                Version = '3.9.1.7'
                WordWrap = wwNone
              end
              object memProdottiRestObject: TAdvMemo
                Left = 753
                Top = 0
                Width = 714
                Height = 659
                Cursor = crIBeam
                StyleElements = []
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
                CodeFolding.Enabled = True
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
                Version = '3.9.1.7'
                WordWrap = wwNone
              end
            end
            object tabReport: TTabSheet
              Caption = 'Rapportino'
              ImageIndex = 3
              object EnhCRDBGrid19: TEnhCRDBGrid
                Left = 0
                Top = 0
                Width = 345
                Height = 659
                Align = alLeft
                DataSource = dsStatiniNC
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -12
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
                OnDblClick = EnhCRDBGrid3DblClick
                HighlightBGColor = clBlack
                HighlightFont.Charset = DEFAULT_CHARSET
                HighlightFont.Color = clWindowText
                HighlightFont.Height = -12
                HighlightFont.Name = 'Segoe UI'
                HighlightFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CHIAVE'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RAGIONE_SOCIALE'
                    Width = 220
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'INDIRIZZO'
                    Width = 1534
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA_INTERVENTO'
                    Width = 107
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'JSON_DA_MOBILE'
                    Width = 100
                    Visible = True
                  end>
              end
              object memStatinoREST: TAdvMemo
                Left = 345
                Top = 0
                Width = 753
                Height = 659
                Cursor = crIBeam
                StyleElements = []
                ActiveLineSettings.ShowActiveLine = False
                ActiveLineSettings.ShowActiveLineIndicator = False
                Align = alLeft
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
                CodeFolding.Enabled = True
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
                Version = '3.9.1.7'
                WordWrap = wwNone
              end
              object memStatinoRESTObject: TAdvMemo
                Left = 1098
                Top = 0
                Width = 369
                Height = 659
                Cursor = crIBeam
                StyleElements = []
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
                CodeFolding.Enabled = True
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
                Version = '3.9.1.7'
                WordWrap = wwNone
              end
            end
            object tabRapportiniGiorno: TTabSheet
              Caption = 'Lista Giorno'
              ImageIndex = 4
              object memReportList: TAdvMemo
                Left = 0
                Top = 0
                Width = 569
                Height = 659
                Cursor = crIBeam
                StyleElements = []
                ActiveLineSettings.ShowActiveLine = False
                ActiveLineSettings.ShowActiveLineIndicator = False
                Align = alLeft
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
                CodeFolding.Enabled = True
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
                Version = '3.9.1.7'
                WordWrap = wwNone
              end
              object memReportListElaborated: TAdvMemo
                Left = 569
                Top = 0
                Width = 656
                Height = 659
                Cursor = crIBeam
                StyleElements = []
                ActiveLineSettings.ShowActiveLine = False
                ActiveLineSettings.ShowActiveLineIndicator = False
                Align = alLeft
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
                CodeFolding.Enabled = True
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
                Version = '3.9.1.7'
                WordWrap = wwNone
              end
              object memLista: TMemo
                Left = 1225
                Top = 0
                Width = 242
                Height = 659
                Align = alClient
                Lines.Strings = (
                  'memLista')
                TabOrder = 2
              end
            end
            object TabSheet6: TTabSheet
              Caption = 'TabSheet6'
              ImageIndex = 5
            end
            object TabSheet1: TTabSheet
              Caption = 'TabSheet1'
              ImageIndex = 6
            end
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1483
        Height = 57
        Align = alTop
        TabOrder = 1
        object edUsername: TLabeledEdit
          Left = 16
          Top = 18
          Width = 153
          Height = 23
          EditLabel.Width = 66
          EditLabel.Height = 15
          EditLabel.Caption = 'edUsername'
          TabOrder = 0
          Text = '***!Admin'
        end
        object edPassword: TLabeledEdit
          Left = 192
          Top = 18
          Width = 153
          Height = 23
          EditLabel.Width = 50
          EditLabel.Height = 15
          EditLabel.Caption = 'Password'
          TabOrder = 1
          Text = '***!PhoenixFly'
        end
        object edServerUrl: TLabeledEdit
          Left = 360
          Top = 18
          Width = 281
          Height = 23
          EditLabel.Width = 60
          EditLabel.Height = 15
          EditLabel.Caption = 'edServerUrl'
          TabOrder = 2
          Text = 'https://www.assoantincendio.com'
        end
        object btnRestCall: TButton
          Left = 647
          Top = 17
          Width = 98
          Height = 25
          Caption = 'REST Call'
          TabOrder = 3
          OnClick = btnRestCallClick
        end
        object btnUpdateData: TButton
          Left = 751
          Top = 17
          Width = 98
          Height = 25
          Caption = 'Update Lab'
          TabOrder = 4
          OnClick = btnUpdateDataClick
        end
        object btnConf: TButton
          Left = 863
          Top = 17
          Width = 98
          Height = 25
          Caption = 'Get Conf'
          TabOrder = 5
          OnClick = btnConfClick
        end
        object btnTestNewReport: TButton
          Left = 983
          Top = 17
          Width = 98
          Height = 25
          Caption = 'Test Report'
          TabOrder = 6
          OnClick = btnTestNewReportClick
        end
        object btnFinalTest: TButton
          Left = 1095
          Top = 17
          Width = 105
          Height = 25
          Caption = 'Test Finale'
          TabOrder = 7
          OnClick = btnFinalTestClick
        end
        object btnBuildCache: TButton
          Left = 1223
          Top = 17
          Width = 105
          Height = 25
          Caption = 'Aggiorna Cache'
          TabOrder = 8
          OnClick = btnBuildCacheClick
        end
        object btnAltreCache: TButton
          Left = 1352
          Top = 17
          Width = 87
          Height = 25
          Caption = 'Altre Cache'
          TabOrder = 9
          OnClick = btnAltreCacheClick
        end
      end
    end
    object tabTestJson: TTabSheet
      Caption = 'Test Json Structures'
      ImageIndex = 1
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 1483
        Height = 825
        ActivePage = tabConfigurazini
        Align = alClient
        TabOrder = 0
        object tabConfigurazini: TTabSheet
          Caption = 'Configurazioni'
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 1475
            Height = 41
            Align = alTop
            TabOrder = 0
            object btnTestConfigurazini: TButton
              Left = 1
              Top = 1
              Width = 96
              Height = 39
              Align = alLeft
              Caption = 'Test'
              TabOrder = 0
              OnClick = btnTestConfiguraziniClick
            end
          end
          object memJsonConfigurazioni: TAdvMemo
            Left = 0
            Top = 41
            Width = 1475
            Height = 754
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
            Version = '3.9.1.7'
            WordWrap = wwNone
          end
        end
      end
    end
    object tabTestREST: TTabSheet
      Caption = 'REST Test Page'
      ImageIndex = 2
    end
    object RemoteDB: TTabSheet
      Caption = 'Remote DB Test'
      ImageIndex = 3
      object pnlTestJson: TPanel
        Left = 0
        Top = 0
        Width = 1483
        Height = 57
        Align = alTop
        TabOrder = 0
        object DBText1: TDBText
          Left = 344
          Top = 24
          Width = 41
          Height = 15
          AutoSize = True
          DataField = 'RAGIONE_SOCIALE'
          DataSource = dsStatino
        end
        object DBText2: TDBText
          Left = 232
          Top = 24
          Width = 41
          Height = 15
          AutoSize = True
          DataField = 'STATINO'
          DataSource = dsStatino
        end
        object DBText3: TDBText
          Left = 776
          Top = 24
          Width = 41
          Height = 15
          AutoSize = True
          DataField = 'INDIRIZZO'
          DataSource = dsStatino
        end
        object btnApriTutti: TButton
          Left = 1
          Top = 1
          Width = 216
          Height = 55
          Align = alLeft
          Caption = 'Apri Tutti'
          TabOrder = 0
          OnClick = btnApriTuttiClick
        end
        object btnTestReport: TButton
          Left = 1218
          Top = 1
          Width = 132
          Height = 55
          Align = alRight
          Caption = 'Test Rapportino'
          TabOrder = 1
          OnClick = btnTestReportClick
        end
        object btnPreviewReport: TButton
          Left = 1097
          Top = 1
          Width = 121
          Height = 55
          Align = alRight
          Caption = 'Rapportino Originale'
          TabOrder = 2
          OnClick = btnPreviewReportClick
        end
        object btnJson: TButton
          Left = 1000
          Top = 1
          Width = 97
          Height = 55
          Align = alRight
          Caption = 'Verifica Json'
          TabOrder = 3
          OnClick = btnJsonClick
        end
        object btnLuci: TButton
          Left = 956
          Top = 1
          Width = 44
          Height = 55
          Align = alRight
          Caption = 'Luci'
          TabOrder = 4
          OnClick = btnLuciClick
        end
        object btnGruppi: TButton
          Left = 912
          Top = 1
          Width = 44
          Height = 55
          Align = alRight
          Caption = 'Gruppi'
          TabOrder = 5
          OnClick = btnGruppiClick
        end
        object btnPorte: TButton
          Left = 864
          Top = 1
          Width = 48
          Height = 55
          Align = alRight
          Caption = 'Porte'
          TabOrder = 6
          OnClick = btnPorteClick
        end
        object btnFumi: TButton
          Left = 824
          Top = 1
          Width = 40
          Height = 55
          Align = alRight
          Caption = 'Fumi'
          TabOrder = 7
          OnClick = btnFumiClick
        end
        object btnIdranti: TButton
          Left = 780
          Top = 1
          Width = 44
          Height = 55
          Align = alRight
          Caption = 'Idranti'
          TabOrder = 8
          OnClick = btnIdrantiClick
        end
        object btnEstintori: TButton
          Left = 736
          Top = 1
          Width = 44
          Height = 55
          Align = alRight
          Caption = 'Estintori'
          TabOrder = 9
          OnClick = btnEstintoriClick
        end
        object btnTestAllegati: TButton
          Left = 1350
          Top = 1
          Width = 132
          Height = 55
          Align = alRight
          Caption = 'Test Allegati'
          TabOrder = 10
          OnClick = btnTestAllegatiClick
        end
      end
      object PageControl4: TPageControl
        Left = 0
        Top = 57
        Width = 1483
        Height = 605
        ActivePage = tabTestLuci
        Align = alClient
        TabOrder = 1
        object tabTestLuci: TTabSheet
          Caption = 'Luci'
          object EnhCRDBGrid1: TEnhCRDBGrid
            Left = 1170
            Top = 0
            Width = 305
            Height = 575
            Align = alRight
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
          end
          object EnhCRDBGrid2: TEnhCRDBGrid
            Left = 345
            Top = 0
            Width = 825
            Height = 575
            Align = alClient
            DataSource = dmFbPhoenixJsonReport.dsInterventiLuci
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'PROGRESSIVO'
                Title.Caption = 'Progr.'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_ATTREZZATURA'
                Title.Caption = 'Tipo'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UBICAZIONE'
                Width = 240
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA_ON_DOWNLOAD'
                Title.Caption = 'Anomalia Tablet'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODELLO'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Width = 29
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHIAVE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONSEGNA'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATINO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ATTREZZATURA'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERIODI_NON_ORDINARI'
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO_NEGATO'
                Width = 159
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLIENTE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FILIALE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_LUCE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA_APPROVATA'
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AUTONOMIA'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PREC_ANOMALIA'
                Width = 99
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DES_TIPO_LUCE'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DES_MARCA_LUCE'
                Width = 1534
                Visible = True
              end>
          end
          object EnhCRDBGrid3: TEnhCRDBGrid
            Left = 0
            Top = 0
            Width = 345
            Height = 575
            Align = alLeft
            DataSource = dmFbPhoenixJsonReport.dsStatiniLuci
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnCellClick = EnhCRDBGrid3CellClick
            OnColEnter = EnhCRDBGrid3ColEnter
            OnDblClick = EnhCRDBGrid3DblClick
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'STATINO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RAGIONE_SOCIALE'
                Width = 220
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDIRIZZO'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_INTERVENTO'
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'JSON_DA_MOBILE'
                Width = 100
                Visible = True
              end>
          end
        end
        object TabTestSprinkler: TTabSheet
          Caption = 'Sprinkler'
          ImageIndex = 1
          object grSprinkler: TEnhCRDBGrid
            Left = 0
            Top = 0
            Width = 345
            Height = 575
            Align = alLeft
            DataSource = dmFbPhoenixJsonReport.DSStatiniSprinkler
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnCellClick = EnhCRDBGrid3CellClick
            OnColEnter = EnhCRDBGrid3ColEnter
            OnDblClick = EnhCRDBGrid3DblClick
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'STATINO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RAGIONE_SOCIALE'
                Width = 240
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDIRIZZO'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_INTERVENTO'
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'JSON_DA_MOBILE'
                Width = 100
                Visible = True
              end>
          end
          object EnhCRDBGrid9: TEnhCRDBGrid
            Left = 345
            Top = 0
            Width = 1130
            Height = 575
            Align = alClient
            DataSource = dmFbPhoenixJsonReport.dsInterventiSprinkler
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRIZIONE'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UBICAZIONE'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA'
                Width = 400
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODELLO'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHIAVE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATINO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ATTREZZATURA'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Width = 29
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONSEGNA'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERIODI_NON_ORDINARI'
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO_NEGATO'
                Width = 159
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TARATURA_VALVOLE'
                Width = 116
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALVOLE_RICAMBIO'
                Width = 114
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UBICAZIONE_1'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_1'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATO'
                Width = 39
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RINNOVATO_DA'
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA_APPROVATA'
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COMPRESSORE'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOTE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTITA_VALVOLE'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PREC_ANOMALIA'
                Width = 99
                Visible = True
              end>
          end
        end
        object tabGruppi: TTabSheet
          Caption = 'Gruppi'
          ImageIndex = 2
          object EnhCRDBGrid5: TEnhCRDBGrid
            Left = 0
            Top = 0
            Width = 345
            Height = 575
            Align = alLeft
            DataSource = dmFbPhoenixJsonReport.dsStatiniGruppi
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnCellClick = EnhCRDBGrid3CellClick
            OnColEnter = EnhCRDBGrid3ColEnter
            OnDblClick = EnhCRDBGrid3DblClick
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'STATINO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RAGIONE_SOCIALE'
                Width = 220
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDIRIZZO'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_INTERVENTO'
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'JSON_DA_MOBILE'
                Width = 100
                Visible = True
              end>
          end
          object grdInterventiGruppi: TEnhCRDBGrid
            Left = 345
            Top = 0
            Width = 1130
            Height = 575
            Align = alClient
            DataSource = dmFbPhoenixJsonReport.dsInterventiGruppi
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRIZIONE'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA'
                Width = 400
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Width = 29
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_POMPA_JOCKEY'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODELLO_POMPA_JOCKEY'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA_POMPA_JOCKEY'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONSEGNA'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERIODI_NON_ORDINARI'
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHIAVE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO_NEGATO'
                Width = 159
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATINO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ATTREZZATURA'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_ATTREZZATURA'
                Width = 118
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_STAZIONE'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_BATTERIE'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA_POMPA_PORTATA'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_POMPA_PORTATA'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODELLO_POMPA_PORTATA'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA_MOTOPOMPA'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_MOTOPOMPA'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODELLO_MOTOPOMPA'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VASI_ESPANSIONE'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA_MISURATORE_PORTATA'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODELLO_MISURATORE_PORTATA'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA_APPROVATA'
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOTE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SOSPESO'
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FILIALE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATO'
                Width = 39
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RINNOVATO_DA'
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PREC_ANOMALIA'
                Width = 99
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_NFC'
                Width = 604
                Visible = True
              end>
          end
        end
        object tabPorte: TTabSheet
          Caption = 'Porte'
          ImageIndex = 3
          object EnhCRDBGrid6: TEnhCRDBGrid
            Left = 0
            Top = 0
            Width = 345
            Height = 575
            Align = alLeft
            DataSource = dmFbPhoenixJsonReport.dsStatiniPorte
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnCellClick = EnhCRDBGrid3CellClick
            OnColEnter = EnhCRDBGrid3ColEnter
            OnDblClick = EnhCRDBGrid3DblClick
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'STATINO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RAGIONE_SOCIALE'
                Width = 220
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDIRIZZO'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_INTERVENTO'
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'JSON_DA_MOBILE'
                Width = 100
                Visible = True
              end>
          end
          object grdInterventiPorte: TEnhCRDBGrid
            Left = 345
            Top = 0
            Width = 1130
            Height = 575
            Align = alClient
            DataSource = dmFbPhoenixJsonReport.dsInterventiPorte
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'UBICAZIONE'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA'
                Width = 400
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOTE_TECNICO'
                Width = 400
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ATTREZZATURA'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_MANIGLIONE'
                Width = 106
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Width = 29
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONSEGNA'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERIODI_NON_ORDINARI'
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO_NEGATO'
                Width = 159
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLIENTE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FILIALE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_1'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MATRICOLA'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANNO_COSTRUZIONE'
                Width = 122
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANTE'
                Width = 33
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA_MANIGLIONE'
                Width = 123
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_SERRATURA_ANTA_PRINCIPALE'
                Width = 202
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_SERRATURA_ANTA_SECONDARIA'
                Width = 210
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_MANIGLIA_ESTERNA'
                Width = 143
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_GUARNIZIONE'
                Width = 111
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PROGRESSIVO'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATO'
                Width = 39
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RINNOVATO_DA'
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA_APPROVATA'
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA_1'
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_INSTALLAZIONE'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DIMENSIONE'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PREC_ANOMALIA'
                Width = 99
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_NFC'
                Width = 604
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHIAVE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATINO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'JGUID'
                Width = 64
                Visible = True
              end>
          end
        end
        object tabImpianti: TTabSheet
          Caption = 'Impianti'
          ImageIndex = 4
          object EnhCRDBGrid7: TEnhCRDBGrid
            Left = 0
            Top = 0
            Width = 353
            Height = 575
            Align = alLeft
            DataSource = dmFbPhoenixJsonReport.dsStatiniImpianti
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'STATINO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RAGIONE_SOCIALE'
                Width = 240
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDIRIZZO'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_INTERVENTO'
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'JSON_DA_MOBILE'
                Width = 100
                Visible = True
              end>
          end
          object EnhCRDBGrid16: TEnhCRDBGrid
            Left = 353
            Top = 0
            Width = 1122
            Height = 575
            Align = alClient
            DataSource = dmFbPhoenixJsonReport.dsInterventiImpianti
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'MODELLO'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UBICAZIONE'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRIZIONE'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHIAVE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATINO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ELEMENTO_IMPIANTO_ELETTRICO'
                Width = 186
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA'
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Width = 29
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONSEGNA'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRIZIONE_ALTERNATIVA'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO_NEGATO'
                Width = 159
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IMPIANTO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PROGRESSIVO'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_EL'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RINNOVATO_DA'
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA_APPROVATA'
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATO'
                Width = 39
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PREC_ANOMALIA'
                Width = 99
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOTE_TECNICO'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_NFC'
                Width = 604
                Visible = True
              end>
          end
        end
        object tabEstintori: TTabSheet
          Caption = 'Estintori'
          ImageIndex = 5
          object EnhCRDBGrid8: TEnhCRDBGrid
            Left = 0
            Top = 0
            Width = 345
            Height = 575
            Align = alLeft
            DataSource = dmFbPhoenixJsonReport.dsStatiniEstintori
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnCellClick = EnhCRDBGrid3CellClick
            OnColEnter = EnhCRDBGrid3ColEnter
            OnDblClick = EnhCRDBGrid3DblClick
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'STATINO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RAGIONE_SOCIALE'
                Width = 240
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDIRIZZO'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_INTERVENTO'
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'JSON_DA_MOBILE'
                Width = 100
                Visible = True
              end>
          end
          object EnhCRDBGrid4: TEnhCRDBGrid
            Left = 345
            Top = 0
            Width = 1130
            Height = 575
            Align = alClient
            DataSource = dmFbPhoenixJsonReport.dsInterventiEstintori
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'PROGRESSIVO'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UBICAZIONE'
                Width = 240
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MATRICOLA'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA'
                Width = 400
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRIZIONE'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLASSE_FUOCO'
                Width = 184
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANNO_COSTRUZIONE'
                Width = 122
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHIAVE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATINO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESTINTORE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_I'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RESET_DATA_COLLAUDO'
                Width = 137
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RESET_DATA_REVISIONE'
                Width = 131
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_RITIRO'
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_SMALTIMENTO'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_RESTITUZIONE'
                Width = 115
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONSEGNA'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO_NEGATO'
                Width = 159
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRIZIONE_ALTERNATIVA'
                Width = 1534
                Visible = True
              end>
          end
        end
        object tabIdranti: TTabSheet
          Caption = 'Idranti'
          ImageIndex = 6
          object EnhCRDBGrid10: TEnhCRDBGrid
            Left = 345
            Top = 0
            Width = 1130
            Height = 575
            Align = alClient
            DataSource = dmFbPhoenixJsonReport.dsInterventiIdranti
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_BOCCHELLO'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UBICAZIONE'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DES_BOCCHELLO'
                Width = 389
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_LANCIA'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UBICAZIONE_IDRANTE'
                Width = 124
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRIZIONE_IDRANTE'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PROVA_DINAMICA'
                Width = 105
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_ATTACCO_MOTOPOMPA'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PROVA_DINAMICA_1'
                Title.Caption = 'Pr. Dinamica'
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Width = 29
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRIZIONE_ALTERNATIVA'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RESET_DATA_COLLAUDO'
                Width = 137
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA'
                Width = 1804
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_RITIRO'
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_SMALTIMENTO'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_RESTITUZIONE'
                Width = 115
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONSEGNA'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_PRESSATURA'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO_NEGATO'
                Width = 159
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IDRANTE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_BOCCHELLO'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_LANCIA_1'
                Width = 87
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LUNGHEZZA_MANICHETTA'
                Width = 151
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MESE_STARTUP'
                Width = 86
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANNO_STARTUP'
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANNO_MANICHETTA'
                Width = 118
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RINNOVATO_DA'
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA_APPROVATA'
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA_1'
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATO'
                Width = 39
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PREC_ANOMALIA'
                Width = 99
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOTE_TECNICO'
                Width = 1804
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MESE_PRESSATURA'
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANNO_PRESSATURA'
                Width = 113
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BOCCHELLO'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHIAVE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATINO'
                Width = 64
                Visible = True
              end>
          end
          object EnhCRDBGrid14: TEnhCRDBGrid
            Left = 0
            Top = 0
            Width = 345
            Height = 575
            Align = alLeft
            DataSource = dmFbPhoenixJsonReport.dsStatiniIdranti
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnCellClick = EnhCRDBGrid3CellClick
            OnColEnter = EnhCRDBGrid3ColEnter
            OnDblClick = EnhCRDBGrid3DblClick
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'STATINO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RAGIONE_SOCIALE'
                Width = 240
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDIRIZZO'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_INTERVENTO'
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'JSON_DA_MOBILE'
                Width = 100
                Visible = True
              end>
          end
        end
        object tabRilevatoriFumi: TTabSheet
          Caption = 'Rilevatori Fumo'
          ImageIndex = 7
          object EnhCRDBGrid11: TEnhCRDBGrid
            Left = 0
            Top = 0
            Width = 345
            Height = 575
            Align = alLeft
            DataSource = dmFbPhoenixJsonReport.dsStatiniFumo
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnCellClick = EnhCRDBGrid3CellClick
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'STATINO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RAGIONE_SOCIALE'
                Width = 240
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDIRIZZO'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_INTERVENTO'
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'JSON_DA_MOBILE'
                Width = 100
                Visible = True
              end>
          end
          object EnhCRDBGrid15: TEnhCRDBGrid
            Left = 345
            Top = 0
            Width = 1130
            Height = 575
            Align = alClient
            DataSource = dmFbPhoenixJsonReport.dsInterventiFumi
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'UBICAZIONE'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA'
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA_ON_DOWNLOAD'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRIZIONE'
                Width = 400
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHIAVE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATINO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ATTREZZATURA'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Width = 29
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONSEGNA'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERIODI_NON_ORDINARI'
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CONTROLLO_NEGATO'
                Width = 159
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FILIALE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA_CENTRALE'
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_CENTRALE'
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTITA_BATTERIE'
                Width = 115
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_BATTERIE'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTITA_RILEVATORI'
                Width = 128
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_RILEVATORI'
                Width = 96
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTITA_RIL_LINEARI'
                Width = 129
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_RIL_LINEARI'
                Width = 97
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA_RIL_LINEARI'
                Width = 114
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTITA_PULSANTI'
                Width = 119
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTITA_PANNELLI_OTT_ACUST'
                Width = 187
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATO'
                Width = 39
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RINNOVATO_DA'
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA_APPROVATA'
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANOMALIA_1'
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PREC_ANOMALIA'
                Width = 99
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOTE_TECNICO'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_NFC'
                Width = 604
                Visible = True
              end>
          end
        end
        object tabSintesiEstintori: TTabSheet
          Caption = 'Report Sintesi Estintori'
          ImageIndex = 8
          object EnhCRDBGrid12: TEnhCRDBGrid
            Left = 0
            Top = 0
            Width = 1475
            Height = 575
            Align = alClient
            DataSource = dmFbPhoenixJsonReport.dsEstintoriSintesi
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRIZIONE'
                Width = 487
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ORDINARIO'
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REVISIONE'
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COLLAUDO'
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SOSTITUZIONE'
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RICARICA'
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RIPARAZIONE'
                Width = 94
                Visible = True
              end>
          end
        end
        object tabInterventiRiepilogo: TTabSheet
          Caption = 'Interventi Riepilogo'
          ImageIndex = 9
          object pnlStatiniTop: TPanel
            Left = 0
            Top = 0
            Width = 1475
            Height = 57
            Align = alTop
            TabOrder = 0
            object lbIDChiave: TLabel
              Left = 56
              Top = 16
              Width = 58
              Height = 15
              Caption = 'ID / Chiave'
            end
            object lbContratto: TLabel
              Left = 275
              Top = 16
              Width = 51
              Height = 15
              Caption = 'Contratto'
            end
            object edChiave: TEdit
              Left = 128
              Top = 16
              Width = 141
              Height = 23
              TabOrder = 0
            end
            object edLista: TButton
              Left = 595
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Lista'
              TabOrder = 1
              OnClick = edListaClick
            end
            object edContratto: TEdit
              Left = 340
              Top = 16
              Width = 237
              Height = 23
              CharCase = ecUpperCase
              TabOrder = 2
            end
          end
          object EnhCRDBGrid17: TEnhCRDBGrid
            Left = 0
            Top = 57
            Width = 1475
            Height = 518
            Align = alClient
            DataSource = dsStatini
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            HighlightBGColor = clBlack
            HighlightFont.Charset = DEFAULT_CHARSET
            HighlightFont.Color = clWindowText
            HighlightFont.Height = -12
            HighlightFont.Name = 'Segoe UI'
            HighlightFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CHIAVE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AMMINISTRATORE'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONTRATTO'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LOCAZIONE'
                Title.Caption = 'Filiale'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_TECNICO'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDIRIZZO_FILIALE'
                Title.Caption = 'Indirizzo da Visitare'
                Width = 400
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLIENTE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FILIALE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TITOLO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RAGIONE_SOCIALE'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDIRIZZO'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COMUNE'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PROVINCIA'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CAP'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TELEFONO'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CELLULARE'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOTE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ORARIO_APERTURA_DAL1'
                Width = 142
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ORARIO_APERTURA_DAL2'
                Width = 142
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ORARIO_APERTURA_AL1'
                Width = 134
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ORARIO_APERTURA_AL2'
                Width = 134
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHIUSURA'
                Width = 1534
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FATTURA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_INTERVENTO'
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'GENERAZIONE_AUTOMATICA'
                Width = 162
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TECNICO_INTERVENTO'
                Width = 126
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SCANSIONE'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REGISTRO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOTE_PER_IL_TECNICO'
                Width = 127
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SOSPESO'
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DA_ESPORTARE_SUL_WEB'
                Width = 141
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RESPONSABILE'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESPORTATO_SU_MOBILE'
                Width = 134
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOTE_DAL_TECNICO'
                Width = 115
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'JSON_DA_MOBILE'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PDF_STATINO'
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REGISTRO_IS_PDF'
                Width = 96
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VERBALE_PROVA_DINAMICA'
                Width = 157
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VERBALE_MANICHETTE'
                Width = 128
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PREVENTIVO'
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IGNORA_EVIDENZIAZIONE'
                Width = 144
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ANNULLATO_DA_TABLET'
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MOBILEWARN_NUOVA_ATTREZZATURA'
                Width = 216
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MOBILEWARN_ORDINARIA_RITIRATA'
                Width = 201
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MOBILEWARN_N_ORDIN_CONTROLLATA'
                Width = 223
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MOBILEWARN_SMALTIMENTO'
                Width = 167
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATO_LAVORAZIONE'
                Width = 123
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CHIUSURA_DA_SERVER'
                Width = 161
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHIUSURA_EXT'
                Width = 304
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHIUSURA_STATINO'
                Width = 113
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MOBILEWARN_NON_ESEGUITI'
                Width = 164
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRESA_IN_CARICO'
                Width = 103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORNITURA'
                Width = 67
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'APPUNTAMENTO_DATA'
                Width = 133
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'APPUNTAMENTO_ORA'
                Width = 127
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'JGUID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'GCAL'
                Width = 34
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'WANUMBER'
                Width = 124
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'WA'
                Width = 23
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATO_IMMAGINE'
                Width = 103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'WA_ID'
                Width = 772
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'WA_IMAGE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'WA_STATE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MESE_INTERVENTO'
                Width = 106
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_MESE'
                Width = 118
                Visible = True
              end>
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 662
        Width = 1483
        Height = 163
        Align = alBottom
        Caption = 'Panel6'
        TabOrder = 2
        object EnhCRDBGrid13: TEnhCRDBGrid
          Left = 1
          Top = 1
          Width = 1481
          Height = 161
          Align = alClient
          DataSource = dmFbPhoenixJsonReport.dsSintesiReport
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          HighlightBGColor = clBlack
          HighlightFont.Charset = DEFAULT_CHARSET
          HighlightFont.Color = clWindowText
          HighlightFont.Height = -12
          HighlightFont.Name = 'Segoe UI'
          HighlightFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'POS'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRIZIONE'
              Width = 395
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTROLLI'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ORDINARIO'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REVISIONE'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COLLAUDO'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SOSTITUZIONE'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RICARICA'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RIPARAZIONE'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRESSATURA'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUOVI'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NON_ESEGUITE'
              Width = 94
              Visible = True
            end>
        end
      end
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
    Left = 100
    Top = 267
  end
  object dsLabEstintori: TDataSource
    DataSet = dmFDACPhoenixLab.tbLabEstintori
    Left = 192
    Top = 320
  end
  object dsDetailEstintori: TDataSource
    DataSet = dmFDACPhoenixLab.qryDetailLabEstintori
    Left = 292
    Top = 283
  end
  object SaveTextFileDialog1: TSaveTextFileDialog
    DefaultExt = '*.json'
    Filter = 'Jsonn Files|*.json'
    Left = 284
    Top = 371
  end
  object dsStatino: TDataSource
    DataSet = dmFbPhoenixJsonReport.qryStatiniLuci
    Left = 300
    Top = 194
  end
  object dsStatini: TDataSource
    DataSet = dmFbPhoenixJsonReport.qElenco
    Left = 192
    Top = 237
  end
  object dsStatiniNC: TDataSource
    DataSet = dmFbPhoenixJsonReport.qryStatiniNonCompilati
    Left = 192
    Top = 429
  end
  object AdvJSONMemoStyler2: TAdvJSONMemoStyler
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
    Left = 108
    Top = 275
  end
end
