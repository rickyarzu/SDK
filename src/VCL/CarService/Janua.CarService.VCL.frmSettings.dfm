object frmVCLCarServiceSettings: TfrmVCLCarServiceSettings
  Left = 0
  Top = 0
  Caption = 'Car Service Booking List'
  ClientHeight = 732
  ClientWidth = 1212
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object spl1: TSplitter
    Left = 0
    Top = 0
    Width = 6
    Height = 732
    ExplicitLeft = 169
    ExplicitHeight = 738
  end
  object pgcMessageSender: TPageControl
    Left = 6
    Top = 0
    Width = 1206
    Height = 732
    ActivePage = tabBooking
    Align = alClient
    TabOrder = 0
    object tabBooking: TTabSheet
      Caption = 'Booking List'
      DesignSize = (
        1198
        702)
      object lblCellPhone: TLabel
        Left = 768
        Top = 120
        Width = 206
        Height = 15
        Alignment = taCenter
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = 'Cell Phone Customer'
        ExplicitLeft = 648
      end
      object lblDriverPhone: TLabel
        Left = 768
        Top = 200
        Width = 206
        Height = 15
        Alignment = taCenter
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = 'Cell Phone Driver'
        ExplicitLeft = 623
      end
      object CRDBGrid1: TCRDBGrid
        Left = 8
        Top = 16
        Width = 745
        Height = 493
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsBooking
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object btnGenerateTinyUrl: TButton
        Left = 768
        Top = 48
        Width = 206
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Generate Tiny Url'
        TabOrder = 1
      end
      object edtTinyUrl: TEdit
        Left = 768
        Top = 79
        Width = 206
        Height = 23
        Anchors = [akTop, akRight]
        TabOrder = 2
        Text = 'edtTinyUrl'
      end
      object edtCustomerPhone: TEdit
        Left = 768
        Top = 151
        Width = 206
        Height = 23
        Anchors = [akTop, akRight]
        TabOrder = 3
        Text = 'edtTinyUrl'
      end
      object edtDriverPhone: TEdit
        Left = 768
        Top = 231
        Width = 206
        Height = 23
        Anchors = [akTop, akRight]
        TabOrder = 4
        Text = 'edtTinyUrl'
      end
      object btnSendMessageCustomer: TButton
        Left = 768
        Top = 272
        Width = 206
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Send Message Customer'
        TabOrder = 5
      end
      object btnSendMessageDriver: TButton
        Left = 768
        Top = 320
        Width = 206
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Send Message Driver'
        TabOrder = 6
      end
      object grdTimeTable: TDBCtrlGrid
        Left = 759
        Top = 360
        Width = 217
        Height = 200
        Anchors = [akTop, akRight]
        DataSource = dsPickup
        PanelHeight = 100
        TabOrder = 7
        RowCount = 2
        object dbedtworkingday: TDBEdit
          Left = 8
          Top = 26
          Width = 185
          Height = 23
          DataField = 'workingday'
          DataSource = dsPickup
          TabOrder = 0
        end
        object dbedtslot_des: TDBEdit
          Left = 8
          Top = 55
          Width = 57
          Height = 23
          DataField = 'slot_des'
          DataSource = dsPickup
          TabOrder = 1
        end
        object dbedtan_cellular: TDBEdit
          Left = 71
          Top = 55
          Width = 122
          Height = 23
          DataField = 'an_cellular'
          DataSource = dsPickup
          TabOrder = 2
        end
      end
      object AdvRichEditor1: TAdvRichEditor
        Left = 759
        Top = 566
        Width = 215
        Height = 136
        Cursor = crIBeam
        HorzScrollBar.Tracking = True
        VertScrollBar.Range = 6
        VertScrollBar.Tracking = True
        Anchors = [akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 8
        TabStop = True
        SelectionColor = clHighlight
        SelectionTextColor = clHighlightText
        Color = clWindow
        ParentFont = False
        Version = '1.8.9.11'
      end
      object AdvMemo1: TAdvMemo
        Left = 3
        Top = 526
        Width = 385
        Height = 176
        Cursor = crIBeam
        ActiveLineSettings.ShowActiveLine = False
        ActiveLineSettings.ShowActiveLineIndicator = False
        Anchors = [akLeft, akBottom]
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
          'Egr. con la presente vi informiamo che '
          'passeremo in data <pickup date> alle ore '
          '<pickup time> a prelevare il veicolo '
          'targato <targa> per conto di <filiale>. '
          'Per informazioni <link> ')
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
        TabOrder = 9
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
        WordWrap = wwClientWidth
      end
      object AdvMemo2: TAdvMemo
        Left = 408
        Top = 526
        Width = 345
        Height = 176
        Cursor = crIBeam
        ActiveLineSettings.ShowActiveLine = False
        ActiveLineSettings.ShowActiveLineIndicator = False
        Anchors = [akLeft, akRight, akBottom]
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
          'Richiesta '
          'prenotazione '
          'per ritiro '
          'veicolo '
          'in data '
          '<pickup '
          'date> '
          'cliccare sul '
          'link o usare '
          'la App '
          'per '
          'confermare: '
          '<link>')
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
        TabOrder = 10
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
        WordWrap = wwClientWidth
      end
    end
    object tabMailMessage: TTabSheet
      Caption = 'Mail Message'
      ImageIndex = 1
      object TMSFNCCloudSendGrid1: TTMSFNCCloudSendGrid
        Left = 329
        Top = 432
        Width = 26
        Height = 26
        Visible = True
      end
      object pgcMailSettings: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 71
        Width = 1192
        Height = 628
        ActivePage = tabMailUser
        Align = alClient
        TabOrder = 1
        object tabMailUser: TTabSheet
          Caption = 'Customer Mail'
          inline frameCustomerMailMessageConfig: TframeVCLMailMessageConfig
            Left = 0
            Top = 0
            Width = 1184
            Height = 598
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1184
            ExplicitHeight = 598
            inherited Label1: TLabel
              Top = 520
              Width = 1184
              ExplicitTop = 520
            end
            inherited pnlCustomerMail: TPanel
              Width = 1184
              ExplicitWidth = 1170
              inherited lblMaillMailCustomerBCC: TLabel
                Left = 894
                ExplicitLeft = 922
              end
              inherited lblMailReply: TLabel
                Left = 667
                ExplicitLeft = 695
              end
              inherited lblMailImagesURL: TLabel
                Left = 667
                ExplicitLeft = 695
              end
              inherited lblMaillMailCustomerCC: TLabel
                Left = 894
                ExplicitLeft = 922
              end
              inherited btnSaveConfig: TButton
                OnClick = frameCustomerMailMessageConfigbtnSaveConfigClick
              end
              inherited edtCustomerFromMail: TEdit
                Width = 327
                ExplicitWidth = 313
              end
              inherited edtCustomerTestRecipients: TEdit
                Left = 716
                ExplicitLeft = 702
              end
              inherited edtlMailCC: TEdit
                Left = 926
                Width = 318
                ExplicitLeft = 912
                ExplicitWidth = 318
              end
              inherited edtlMailBCC: TEdit
                Left = 926
                Width = 318
                ExplicitLeft = 912
                ExplicitWidth = 318
              end
              inherited edtMailCustomerTo: TEdit
                Width = 371
                ExplicitWidth = 357
              end
              inherited edtMailSubject: TEdit
                Width = 592
                ExplicitWidth = 578
              end
              inherited edtReplyTo: TEdit
                Left = 716
                ExplicitLeft = 702
              end
            end
            inherited pgcCustomerMail: TPageControl
              Width = 999
              Height = 363
              ExplicitWidth = 999
              ExplicitHeight = 363
              inherited tabEditor: TTabSheet
                ExplicitWidth = 991
                ExplicitHeight = 333
                inherited frameHTMLEditor1: TframeHTMLEditor
                  Width = 991
                  Height = 333
                  ExplicitWidth = 991
                  ExplicitHeight = 333
                  inherited Splitter1: TSplitter
                    Top = 112
                    Height = 199
                    ExplicitTop = 112
                    ExplicitHeight = 277
                  end
                  inherited ToolBar1: TToolBar
                    Width = 991
                    ExplicitWidth = 991
                  end
                  inherited ToolBar2: TToolBar
                    Width = 991
                    Height = 56
                    ExplicitWidth = 991
                    ExplicitHeight = 56
                    inherited ToolButton9: TToolButton
                      Left = 0
                      Wrap = True
                      ExplicitLeft = 0
                      ExplicitHeight = 30
                    end
                    inherited HeaderBtn: TToolButton
                      Left = 0
                      Top = 30
                      ExplicitLeft = 0
                      ExplicitTop = 30
                    end
                    inherited HtTextColorCombo1: THtTextColorCombo
                      Left = 51
                      Top = 30
                      ExplicitLeft = 51
                      ExplicitTop = 30
                    end
                    inherited HtBgColorCombo1: THtBgColorCombo
                      Left = 117
                      Top = 30
                      ExplicitLeft = 117
                      ExplicitTop = 30
                    end
                    inherited HtBorderCombo1: THtBorderCombo
                      Left = 180
                      Top = 30
                      ExplicitLeft = 180
                      ExplicitTop = 30
                    end
                    inherited NewTagBtn: TToolButton
                      Left = 240
                      Top = 30
                      ExplicitLeft = 240
                      ExplicitTop = 30
                    end
                    inherited HighlightBtn: TToolButton
                      Left = 293
                      Top = 30
                      ExplicitLeft = 293
                      ExplicitTop = 30
                    end
                    inherited ToolButton10: TToolButton
                      Left = 374
                      Top = 30
                      ExplicitLeft = 374
                      ExplicitTop = 30
                    end
                    inherited LoadSampleBtn: TToolButton
                      Left = 382
                      Top = 30
                      ExplicitLeft = 382
                      ExplicitTop = 30
                    end
                    inherited CanvasCombo: TComboBox
                      Left = 607
                      Top = 30
                      ExplicitLeft = 607
                      ExplicitTop = 30
                    end
                    inherited TemplateCombo: TComboBox
                      Left = 721
                      Top = 30
                      ExplicitLeft = 721
                      ExplicitTop = 30
                    end
                  end
                  inherited E: THtmlEditor
                    Top = 112
                    Width = 713
                    Height = 199
                    ExplicitTop = 254
                    ExplicitWidth = 713
                    ExplicitHeight = 57
                  end
                  inherited pnlFooter: TPanel
                    Top = 311
                    Width = 991
                    ExplicitTop = 311
                    ExplicitWidth = 991
                    inherited TrackBar1: TTrackBar
                      Left = 627
                      OnChange = nil
                      ExplicitLeft = 613
                    end
                  end
                  inherited LeftPages: TPageControl
                    Top = 112
                    Height = 199
                    ExplicitTop = 112
                    ExplicitHeight = 199
                    inherited tabTag: TTabSheet
                      ExplicitHeight = 171
                      inherited pnlLists: TPanel
                        Height = 171
                        ExplicitHeight = 171
                      end
                    end
                  end
                end
              end
              inherited tabCustomerMailPreview: TTabSheet
                inherited brwModelMessage: TTMSFNCWebBrowser
                  DoubleBuffered = True
                end
              end
              inherited tabCustomerTestMail: TTabSheet
                inherited pnlMailTest: TPanel
                  ExplicitWidth = 1147
                end
                inherited pgcTestPreview: TPageControl
                  ExplicitHeight = 432
                  inherited tabPagePreview: TTabSheet
                    inherited brwTestMessage: TTMSFNCWebBrowser
                      DoubleBuffered = True
                    end
                  end
                  inherited tabHtmlPreview: TTabSheet
                    inherited advmMailHtmlPreview: TAdvMemo
                      ExplicitHeight = 402
                    end
                  end
                  inherited tabJsonPreview: TTabSheet
                    inherited advmMailJsonPreview: TAdvMemo
                      ExplicitHeight = 402
                    end
                  end
                end
              end
              inherited tabAdvanced: TTabSheet
                inherited pgcAdvanced: TPageControl
                  ExplicitHeight = 502
                  inherited tabAdvancedHtml: TTabSheet
                    inherited advmMailHtml: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                      ExplicitHeight = 472
                    end
                  end
                  inherited tabAdvancedJson: TTabSheet
                    inherited advmMailJson: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                      ExplicitHeight = 472
                    end
                  end
                  inherited tabJsonLog: TTabSheet
                    inherited memJsonLog: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                      ExplicitHeight = 472
                    end
                  end
                end
              end
            end
            inherited grpURL: TGroupBox
              Width = 1178
              ExplicitWidth = 1164
              inherited edtCustomerMobileUrl: TEdit
                Top = 20
                Width = 216
                ExplicitTop = 20
                ExplicitWidth = 216
              end
              inherited btnTestUrl: TButton
                Left = 347
                Top = 19
                ExplicitLeft = 347
                ExplicitTop = 19
              end
              inherited edtCustomerMobileUrl1: TEdit
                Left = 411
                Top = 20
                Width = 277
                ExplicitLeft = 411
                ExplicitTop = 20
                ExplicitWidth = 263
              end
              inherited edtTestTinyUrl: TEdit
                Left = 619
                Top = 20
                Width = 349
                Anchors = [akLeft, akTop, akRight]
                ExplicitLeft = 619
                ExplicitTop = 20
                ExplicitWidth = 335
              end
            end
            inherited pnlLists: TPanel
              Height = 363
              ExplicitHeight = 363
            end
            inherited grdMaster: TDBGrid
              Top = 535
              Width = 1184
            end
          end
        end
        object tabDriverMail: TTabSheet
          Caption = 'Driver Mail'
          ImageIndex = 1
          object pgcDriversMail: TPageControl
            Left = 0
            Top = 0
            Width = 1184
            Height = 598
            ActivePage = tabDriver1Mail
            Align = alClient
            TabOrder = 0
            object tabDriver1Mail: TTabSheet
              Caption = 'Driver 1'
              inline frameDriver1MailMessageConfig: TframeVCLMailMessageConfig
                Left = 0
                Top = 0
                Width = 1176
                Height = 568
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 1176
                ExplicitHeight = 568
                inherited Label1: TLabel
                  Top = 490
                  Width = 1176
                  ExplicitTop = 490
                end
                inherited pnlCustomerMail: TPanel
                  Width = 1176
                  ExplicitWidth = 1176
                  inherited lblMaillMailCustomerBCC: TLabel
                    Left = 908
                    ExplicitLeft = 922
                  end
                  inherited lblMailReply: TLabel
                    Left = 681
                    ExplicitLeft = 695
                  end
                  inherited lblMailImagesURL: TLabel
                    Left = 681
                    ExplicitLeft = 695
                  end
                  inherited lblMaillMailCustomerCC: TLabel
                    Left = 908
                    ExplicitLeft = 922
                  end
                  inherited edtCustomerFromMail: TEdit
                    Width = 341
                    ExplicitWidth = 341
                  end
                  inherited edtCustomerTestRecipients: TEdit
                    Left = 730
                    ExplicitLeft = 730
                  end
                  inherited edtlMailCC: TEdit
                    Left = 940
                    Width = 380
                    ExplicitLeft = 940
                    ExplicitWidth = 380
                  end
                  inherited edtlMailBCC: TEdit
                    Left = 940
                    Width = 380
                    ExplicitLeft = 940
                    ExplicitWidth = 380
                  end
                  inherited edtMailCustomerTo: TEdit
                    Width = 447
                    ExplicitWidth = 447
                  end
                  inherited edtMailSubject: TEdit
                    Width = 606
                    ExplicitWidth = 606
                  end
                  inherited edtReplyTo: TEdit
                    Left = 730
                    ExplicitLeft = 730
                  end
                end
                inherited pgcCustomerMail: TPageControl
                  Width = 991
                  Height = 333
                  ExplicitWidth = 991
                  ExplicitHeight = 333
                  inherited tabEditor: TTabSheet
                    ExplicitWidth = 983
                    ExplicitHeight = 303
                    inherited frameHTMLEditor1: TframeHTMLEditor
                      Width = 983
                      Height = 303
                      ExplicitWidth = 983
                      ExplicitHeight = 303
                      inherited Splitter1: TSplitter
                        Top = 112
                        Height = 169
                        ExplicitTop = 112
                        ExplicitHeight = 247
                      end
                      inherited ToolBar1: TToolBar
                        Width = 983
                        ExplicitWidth = 983
                      end
                      inherited ToolBar2: TToolBar
                        Width = 983
                        Height = 56
                        ExplicitWidth = 983
                        ExplicitHeight = 56
                        inherited ToolButton9: TToolButton
                          Left = 0
                          Wrap = True
                          ExplicitLeft = 0
                          ExplicitHeight = 30
                        end
                        inherited HeaderBtn: TToolButton
                          Left = 0
                          Top = 30
                          ExplicitLeft = 0
                          ExplicitTop = 30
                        end
                        inherited HtTextColorCombo1: THtTextColorCombo
                          Left = 51
                          Top = 30
                          ExplicitLeft = 51
                          ExplicitTop = 30
                        end
                        inherited HtBgColorCombo1: THtBgColorCombo
                          Left = 117
                          Top = 30
                          ExplicitLeft = 117
                          ExplicitTop = 30
                        end
                        inherited HtBorderCombo1: THtBorderCombo
                          Left = 180
                          Top = 30
                          ExplicitLeft = 180
                          ExplicitTop = 30
                        end
                        inherited NewTagBtn: TToolButton
                          Left = 240
                          Top = 30
                          ExplicitLeft = 240
                          ExplicitTop = 30
                        end
                        inherited HighlightBtn: TToolButton
                          Left = 293
                          Top = 30
                          ExplicitLeft = 293
                          ExplicitTop = 30
                        end
                        inherited ToolButton10: TToolButton
                          Left = 374
                          Top = 30
                          ExplicitLeft = 374
                          ExplicitTop = 30
                        end
                        inherited LoadSampleBtn: TToolButton
                          Left = 382
                          Top = 30
                          ExplicitLeft = 382
                          ExplicitTop = 30
                        end
                        inherited CanvasCombo: TComboBox
                          Left = 607
                          Top = 30
                          ExplicitLeft = 607
                          ExplicitTop = 30
                        end
                        inherited TemplateCombo: TComboBox
                          Left = 721
                          Top = 30
                          ExplicitLeft = 721
                          ExplicitTop = 30
                        end
                      end
                      inherited E: THtmlEditor
                        Top = 112
                        Width = 705
                        Height = 169
                        ExplicitTop = 254
                        ExplicitWidth = 705
                        ExplicitHeight = 27
                      end
                      inherited pnlFooter: TPanel
                        Top = 281
                        Width = 983
                        ExplicitTop = 281
                        ExplicitWidth = 983
                        inherited TrackBar1: TTrackBar
                          Left = 619
                          OnChange = nil
                          ExplicitLeft = 804
                        end
                      end
                      inherited LeftPages: TPageControl
                        Top = 112
                        Height = 169
                        ExplicitTop = 112
                        ExplicitHeight = 169
                        inherited tabTag: TTabSheet
                          ExplicitHeight = 141
                          inherited pnlLists: TPanel
                            Height = 141
                            ExplicitHeight = 141
                          end
                        end
                      end
                    end
                  end
                  inherited tabCustomerMailPreview: TTabSheet
                    inherited brwModelMessage: TTMSFNCWebBrowser
                      DoubleBuffered = True
                    end
                  end
                  inherited tabCustomerTestMail: TTabSheet
                    inherited pnlMailTest: TPanel
                      inherited edtTestMailFromName: TEdit
                        Width = 553
                        ExplicitWidth = 553
                      end
                    end
                    inherited pgcTestPreview: TPageControl
                      ExplicitHeight = 432
                      inherited tabPagePreview: TTabSheet
                        inherited brwTestMessage: TTMSFNCWebBrowser
                          DoubleBuffered = True
                        end
                      end
                      inherited tabHtmlPreview: TTabSheet
                        inherited advmMailHtmlPreview: TAdvMemo
                          ExplicitHeight = 402
                        end
                      end
                      inherited tabJsonPreview: TTabSheet
                        inherited advmMailJsonPreview: TAdvMemo
                          ExplicitHeight = 402
                        end
                      end
                    end
                  end
                  inherited tabAdvanced: TTabSheet
                    inherited pgcAdvanced: TPageControl
                      ExplicitHeight = 502
                      inherited tabAdvancedHtml: TTabSheet
                        inherited advmMailHtml: TAdvMemo
                          BorderColor = clGray
                          Gutter.BorderColor = clGray
                          Gutter.GutterColor = clBtnFace
                          ExplicitHeight = 472
                        end
                      end
                      inherited tabAdvancedJson: TTabSheet
                        inherited advmMailJson: TAdvMemo
                          BorderColor = clGray
                          Gutter.BorderColor = clGray
                          Gutter.GutterColor = clBtnFace
                          ExplicitHeight = 472
                        end
                      end
                      inherited tabJsonLog: TTabSheet
                        inherited memJsonLog: TAdvMemo
                          BorderColor = clGray
                          Gutter.BorderColor = clGray
                          Gutter.GutterColor = clBtnFace
                          ExplicitHeight = 472
                        end
                      end
                    end
                  end
                end
                inherited grpURL: TGroupBox
                  Width = 1170
                  ExplicitWidth = 1170
                  inherited edtCustomerMobileUrl: TEdit
                    Width = 216
                    ExplicitWidth = 216
                  end
                  inherited edtCustomerMobileUrl1: TEdit
                    Width = 302
                    ExplicitWidth = 302
                  end
                  inherited edtTestTinyUrl: TEdit
                    Left = 579
                    Width = 269
                    ExplicitLeft = 579
                    ExplicitWidth = 269
                  end
                end
                inherited pnlLists: TPanel
                  Height = 333
                  ExplicitHeight = 333
                end
                inherited grdMaster: TDBGrid
                  Top = 505
                  Width = 1176
                end
              end
            end
            object tabDriver2Mail: TTabSheet
              Caption = 'Driver 2'
              ImageIndex = 1
              inline frameDriver2MailMessageConfig: TframeVCLMailMessageConfig
                Left = 0
                Top = 0
                Width = 1176
                Height = 568
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 1176
                ExplicitHeight = 568
                inherited Label1: TLabel
                  Top = 490
                  Width = 1176
                  ExplicitTop = 490
                end
                inherited pnlCustomerMail: TPanel
                  Width = 1176
                  ExplicitWidth = 1176
                  inherited lblMaillMailCustomerBCC: TLabel
                    Left = 908
                    ExplicitLeft = 922
                  end
                  inherited lblMailReply: TLabel
                    Left = 681
                    ExplicitLeft = 695
                  end
                  inherited lblMailImagesURL: TLabel
                    Left = 681
                    ExplicitLeft = 695
                  end
                  inherited lblMaillMailCustomerCC: TLabel
                    Left = 908
                    ExplicitLeft = 922
                  end
                  inherited edtCustomerFromMail: TEdit
                    Width = 341
                    ExplicitWidth = 341
                  end
                  inherited edtCustomerTestRecipients: TEdit
                    Left = 730
                    ExplicitLeft = 730
                  end
                  inherited edtlMailCC: TEdit
                    Left = 940
                    Width = 380
                    ExplicitLeft = 940
                    ExplicitWidth = 380
                  end
                  inherited edtlMailBCC: TEdit
                    Left = 940
                    Width = 380
                    ExplicitLeft = 940
                    ExplicitWidth = 380
                  end
                  inherited edtMailCustomerTo: TEdit
                    Width = 447
                    ExplicitWidth = 447
                  end
                  inherited edtMailSubject: TEdit
                    Width = 606
                    ExplicitWidth = 606
                  end
                  inherited edtReplyTo: TEdit
                    Left = 730
                    ExplicitLeft = 730
                  end
                end
                inherited pgcCustomerMail: TPageControl
                  Width = 991
                  Height = 333
                  ExplicitWidth = 991
                  ExplicitHeight = 333
                  inherited tabEditor: TTabSheet
                    ExplicitWidth = 983
                    ExplicitHeight = 303
                    inherited frameHTMLEditor1: TframeHTMLEditor
                      Width = 983
                      Height = 303
                      ExplicitWidth = 983
                      ExplicitHeight = 303
                      inherited Splitter1: TSplitter
                        Top = 112
                        Height = 169
                        ExplicitTop = 112
                        ExplicitHeight = 247
                      end
                      inherited ToolBar1: TToolBar
                        Width = 983
                        ExplicitWidth = 983
                      end
                      inherited ToolBar2: TToolBar
                        Width = 983
                        Height = 56
                        ExplicitWidth = 983
                        ExplicitHeight = 56
                        inherited ToolButton9: TToolButton
                          Left = 0
                          Wrap = True
                          ExplicitLeft = 0
                          ExplicitHeight = 30
                        end
                        inherited HeaderBtn: TToolButton
                          Left = 0
                          Top = 30
                          ExplicitLeft = 0
                          ExplicitTop = 30
                        end
                        inherited HtTextColorCombo1: THtTextColorCombo
                          Left = 51
                          Top = 30
                          ExplicitLeft = 51
                          ExplicitTop = 30
                        end
                        inherited HtBgColorCombo1: THtBgColorCombo
                          Left = 117
                          Top = 30
                          ExplicitLeft = 117
                          ExplicitTop = 30
                        end
                        inherited HtBorderCombo1: THtBorderCombo
                          Left = 180
                          Top = 30
                          ExplicitLeft = 180
                          ExplicitTop = 30
                        end
                        inherited NewTagBtn: TToolButton
                          Left = 240
                          Top = 30
                          ExplicitLeft = 240
                          ExplicitTop = 30
                        end
                        inherited HighlightBtn: TToolButton
                          Left = 293
                          Top = 30
                          ExplicitLeft = 293
                          ExplicitTop = 30
                        end
                        inherited ToolButton10: TToolButton
                          Left = 374
                          Top = 30
                          ExplicitLeft = 374
                          ExplicitTop = 30
                        end
                        inherited LoadSampleBtn: TToolButton
                          Left = 382
                          Top = 30
                          ExplicitLeft = 382
                          ExplicitTop = 30
                        end
                        inherited CanvasCombo: TComboBox
                          Left = 607
                          Top = 30
                          ExplicitLeft = 607
                          ExplicitTop = 30
                        end
                        inherited TemplateCombo: TComboBox
                          Left = 721
                          Top = 30
                          ExplicitLeft = 721
                          ExplicitTop = 30
                        end
                      end
                      inherited E: THtmlEditor
                        Top = 112
                        Width = 705
                        Height = 169
                        ExplicitTop = 254
                        ExplicitWidth = 705
                        ExplicitHeight = 27
                      end
                      inherited pnlFooter: TPanel
                        Top = 281
                        Width = 983
                        ExplicitTop = 281
                        ExplicitWidth = 983
                        inherited TrackBar1: TTrackBar
                          Left = 619
                          OnChange = nil
                          ExplicitLeft = 804
                        end
                      end
                      inherited LeftPages: TPageControl
                        Top = 112
                        Height = 169
                        ExplicitTop = 112
                        ExplicitHeight = 169
                        inherited tabTag: TTabSheet
                          ExplicitHeight = 141
                          inherited pnlLists: TPanel
                            Height = 141
                            ExplicitHeight = 141
                          end
                        end
                      end
                    end
                  end
                  inherited tabCustomerMailPreview: TTabSheet
                    inherited brwModelMessage: TTMSFNCWebBrowser
                      DoubleBuffered = True
                    end
                  end
                  inherited tabCustomerTestMail: TTabSheet
                    inherited pnlMailTest: TPanel
                      inherited edtTestMailFromName: TEdit
                        Width = 553
                        ExplicitWidth = 553
                      end
                    end
                    inherited pgcTestPreview: TPageControl
                      ExplicitHeight = 432
                      inherited tabPagePreview: TTabSheet
                        inherited brwTestMessage: TTMSFNCWebBrowser
                          DoubleBuffered = True
                        end
                      end
                      inherited tabHtmlPreview: TTabSheet
                        inherited advmMailHtmlPreview: TAdvMemo
                          ExplicitHeight = 402
                        end
                      end
                      inherited tabJsonPreview: TTabSheet
                        inherited advmMailJsonPreview: TAdvMemo
                          ExplicitHeight = 402
                        end
                      end
                    end
                  end
                  inherited tabAdvanced: TTabSheet
                    inherited pgcAdvanced: TPageControl
                      ExplicitHeight = 502
                      inherited tabAdvancedHtml: TTabSheet
                        inherited advmMailHtml: TAdvMemo
                          BorderColor = clGray
                          Gutter.BorderColor = clGray
                          Gutter.GutterColor = clBtnFace
                          ExplicitHeight = 472
                        end
                      end
                      inherited tabAdvancedJson: TTabSheet
                        inherited advmMailJson: TAdvMemo
                          BorderColor = clGray
                          Gutter.BorderColor = clGray
                          Gutter.GutterColor = clBtnFace
                          ExplicitHeight = 472
                        end
                      end
                      inherited tabJsonLog: TTabSheet
                        inherited memJsonLog: TAdvMemo
                          BorderColor = clGray
                          Gutter.BorderColor = clGray
                          Gutter.GutterColor = clBtnFace
                          ExplicitHeight = 472
                        end
                      end
                    end
                  end
                end
                inherited grpURL: TGroupBox
                  Width = 1170
                  ExplicitWidth = 1170
                  inherited edtCustomerMobileUrl: TEdit
                    Width = 216
                    ExplicitWidth = 216
                  end
                  inherited btnTestUrl: TButton
                    Left = 347
                    ExplicitLeft = 347
                  end
                  inherited edtCustomerMobileUrl1: TEdit
                    Width = 302
                    ExplicitWidth = 302
                  end
                  inherited edtTestTinyUrl: TEdit
                    Left = 708
                    Width = 277
                    ExplicitLeft = 708
                    ExplicitWidth = 277
                  end
                end
                inherited pnlLists: TPanel
                  Height = 333
                  ExplicitHeight = 333
                end
                inherited grdMaster: TDBGrid
                  Top = 505
                  Width = 1176
                end
              end
            end
          end
        end
        object tabCompanyMail: TTabSheet
          Caption = 'Company Mail'
          ImageIndex = 2
          inline frameCompanyMailMessageConfig: TframeVCLMailMessageConfig
            Left = 0
            Top = 0
            Width = 1184
            Height = 598
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1184
            ExplicitHeight = 598
            inherited Label1: TLabel
              Top = 520
              Width = 1184
              ExplicitTop = 520
            end
            inherited pnlCustomerMail: TPanel
              Width = 1184
              ExplicitWidth = 1184
              inherited lblMaillMailCustomerBCC: TLabel
                Left = 908
                ExplicitLeft = 922
              end
              inherited lblMailReply: TLabel
                Left = 681
                ExplicitLeft = 695
              end
              inherited lblMailImagesURL: TLabel
                Left = 681
                ExplicitLeft = 695
              end
              inherited lblMaillMailCustomerCC: TLabel
                Left = 908
                ExplicitLeft = 922
              end
              inherited edtCustomerFromMail: TEdit
                Width = 341
                ExplicitWidth = 341
              end
              inherited edtCustomerTestRecipients: TEdit
                Left = 730
                ExplicitLeft = 730
              end
              inherited edtlMailCC: TEdit
                Left = 940
                Width = 388
                ExplicitLeft = 940
                ExplicitWidth = 388
              end
              inherited edtlMailBCC: TEdit
                Left = 940
                Width = 388
                ExplicitLeft = 940
                ExplicitWidth = 388
              end
              inherited edtMailCustomerTo: TEdit
                Width = 455
                ExplicitWidth = 455
              end
              inherited edtMailSubject: TEdit
                Width = 606
                ExplicitWidth = 606
              end
              inherited edtReplyTo: TEdit
                Left = 730
                ExplicitLeft = 730
              end
            end
            inherited pgcCustomerMail: TPageControl
              Width = 999
              Height = 363
              ExplicitWidth = 999
              ExplicitHeight = 363
              inherited tabEditor: TTabSheet
                ExplicitWidth = 991
                ExplicitHeight = 333
                inherited frameHTMLEditor1: TframeHTMLEditor
                  Width = 991
                  Height = 333
                  ExplicitWidth = 991
                  ExplicitHeight = 333
                  inherited Splitter1: TSplitter
                    Top = 112
                    Height = 199
                    ExplicitTop = 112
                    ExplicitHeight = 277
                  end
                  inherited ToolBar1: TToolBar
                    Width = 991
                    ExplicitWidth = 991
                  end
                  inherited ToolBar2: TToolBar
                    Width = 991
                    Height = 56
                    ExplicitWidth = 991
                    ExplicitHeight = 56
                    inherited ToolButton9: TToolButton
                      Left = 0
                      Wrap = True
                      ExplicitLeft = 0
                      ExplicitHeight = 30
                    end
                    inherited HeaderBtn: TToolButton
                      Left = 0
                      Top = 30
                      ExplicitLeft = 0
                      ExplicitTop = 30
                    end
                    inherited HtTextColorCombo1: THtTextColorCombo
                      Left = 51
                      Top = 30
                      ExplicitLeft = 51
                      ExplicitTop = 30
                    end
                    inherited HtBgColorCombo1: THtBgColorCombo
                      Left = 117
                      Top = 30
                      ExplicitLeft = 117
                      ExplicitTop = 30
                    end
                    inherited HtBorderCombo1: THtBorderCombo
                      Left = 180
                      Top = 30
                      ExplicitLeft = 180
                      ExplicitTop = 30
                    end
                    inherited NewTagBtn: TToolButton
                      Left = 240
                      Top = 30
                      ExplicitLeft = 240
                      ExplicitTop = 30
                    end
                    inherited HighlightBtn: TToolButton
                      Left = 293
                      Top = 30
                      ExplicitLeft = 293
                      ExplicitTop = 30
                    end
                    inherited ToolButton10: TToolButton
                      Left = 374
                      Top = 30
                      ExplicitLeft = 374
                      ExplicitTop = 30
                    end
                    inherited LoadSampleBtn: TToolButton
                      Left = 382
                      Top = 30
                      ExplicitLeft = 382
                      ExplicitTop = 30
                    end
                    inherited CanvasCombo: TComboBox
                      Left = 607
                      Top = 30
                      ExplicitLeft = 607
                      ExplicitTop = 30
                    end
                    inherited TemplateCombo: TComboBox
                      Left = 721
                      Top = 30
                      ExplicitLeft = 721
                      ExplicitTop = 30
                    end
                  end
                  inherited E: THtmlEditor
                    Top = 112
                    Width = 713
                    Height = 199
                    ExplicitTop = 254
                    ExplicitWidth = 713
                    ExplicitHeight = 57
                  end
                  inherited pnlFooter: TPanel
                    Top = 311
                    Width = 991
                    ExplicitTop = 311
                    ExplicitWidth = 991
                    inherited TrackBar1: TTrackBar
                      Left = 627
                      OnChange = nil
                      ExplicitLeft = 812
                    end
                  end
                  inherited LeftPages: TPageControl
                    Top = 112
                    Height = 199
                    ExplicitTop = 112
                    ExplicitHeight = 199
                    inherited tabTag: TTabSheet
                      ExplicitHeight = 171
                      inherited pnlLists: TPanel
                        Height = 171
                        ExplicitHeight = 171
                      end
                    end
                  end
                end
              end
              inherited tabCustomerMailPreview: TTabSheet
                inherited brwModelMessage: TTMSFNCWebBrowser
                  DoubleBuffered = True
                end
              end
              inherited tabCustomerTestMail: TTabSheet
                inherited pnlMailTest: TPanel
                  inherited edtTestMailFromName: TEdit
                    Width = 545
                    ExplicitWidth = 545
                  end
                end
                inherited pgcTestPreview: TPageControl
                  ExplicitHeight = 432
                  inherited tabPagePreview: TTabSheet
                    inherited brwTestMessage: TTMSFNCWebBrowser
                      DoubleBuffered = True
                    end
                  end
                  inherited tabHtmlPreview: TTabSheet
                    inherited advmMailHtmlPreview: TAdvMemo
                      ExplicitHeight = 402
                    end
                  end
                  inherited tabJsonPreview: TTabSheet
                    inherited advmMailJsonPreview: TAdvMemo
                      ExplicitHeight = 402
                    end
                  end
                end
              end
              inherited tabAdvanced: TTabSheet
                inherited pgcAdvanced: TPageControl
                  ExplicitHeight = 502
                  inherited tabAdvancedHtml: TTabSheet
                    inherited advmMailHtml: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                      ExplicitHeight = 472
                    end
                  end
                  inherited tabAdvancedJson: TTabSheet
                    inherited advmMailJson: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                      ExplicitHeight = 472
                    end
                  end
                  inherited tabJsonLog: TTabSheet
                    inherited memJsonLog: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                      ExplicitHeight = 472
                    end
                  end
                end
              end
            end
            inherited grpURL: TGroupBox
              Width = 1178
              ExplicitWidth = 1178
              inherited edtCustomerMobileUrl: TEdit
                Width = 317
                Anchors = [akLeft, akTop, akRight]
                ExplicitWidth = 317
              end
              inherited edtCustomerMobileUrl1: TEdit
                Width = 445
                ExplicitWidth = 445
              end
              inherited edtTestTinyUrl: TEdit
                Width = 411
                Anchors = [akLeft, akTop, akRight]
                ExplicitWidth = 411
              end
            end
            inherited pnlLists: TPanel
              Height = 363
              ExplicitHeight = 363
            end
            inherited grdMaster: TDBGrid
              Top = 535
              Width = 1184
            end
          end
        end
        object tabServiceMail: TTabSheet
          Caption = 'Service Mail'
          ImageIndex = 3
          inline frameServiceMailMessageConfig: TframeVCLMailMessageConfig
            Left = 0
            Top = 0
            Width = 1184
            Height = 598
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1184
            ExplicitHeight = 598
            inherited Label1: TLabel
              Top = 520
              Width = 1184
              ExplicitTop = 520
            end
            inherited pnlCustomerMail: TPanel
              Width = 1184
              ExplicitWidth = 1184
              inherited lblMaillMailCustomerBCC: TLabel
                Left = 908
                ExplicitLeft = 922
              end
              inherited lblMailReply: TLabel
                Left = 681
                ExplicitLeft = 695
              end
              inherited lblMailImagesURL: TLabel
                Left = 681
                ExplicitLeft = 695
              end
              inherited lblMaillMailCustomerCC: TLabel
                Left = 908
                ExplicitLeft = 922
              end
              inherited edtCustomerFromMail: TEdit
                Width = 341
                ExplicitWidth = 341
              end
              inherited edtCustomerTestRecipients: TEdit
                Left = 730
                ExplicitLeft = 730
              end
              inherited edtlMailCC: TEdit
                Left = 940
                Width = 388
                ExplicitLeft = 940
                ExplicitWidth = 388
              end
              inherited edtlMailBCC: TEdit
                Left = 940
                Width = 388
                ExplicitLeft = 940
                ExplicitWidth = 388
              end
              inherited edtMailCustomerTo: TEdit
                Width = 455
                ExplicitWidth = 455
              end
              inherited edtMailSubject: TEdit
                Width = 606
                ExplicitWidth = 606
              end
              inherited edtReplyTo: TEdit
                Left = 730
                ExplicitLeft = 730
              end
            end
            inherited pgcCustomerMail: TPageControl
              Width = 999
              Height = 363
              ExplicitWidth = 999
              ExplicitHeight = 363
              inherited tabEditor: TTabSheet
                ExplicitWidth = 991
                ExplicitHeight = 333
                inherited frameHTMLEditor1: TframeHTMLEditor
                  Width = 991
                  Height = 333
                  ExplicitWidth = 991
                  ExplicitHeight = 333
                  inherited Splitter1: TSplitter
                    Top = 112
                    Height = 199
                    ExplicitTop = 112
                    ExplicitHeight = 277
                  end
                  inherited ToolBar1: TToolBar
                    Width = 991
                    ExplicitWidth = 991
                  end
                  inherited ToolBar2: TToolBar
                    Width = 991
                    Height = 56
                    ExplicitWidth = 991
                    ExplicitHeight = 56
                    inherited ToolButton9: TToolButton
                      Left = 0
                      Wrap = True
                      ExplicitLeft = 0
                      ExplicitHeight = 30
                    end
                    inherited HeaderBtn: TToolButton
                      Left = 0
                      Top = 30
                      ExplicitLeft = 0
                      ExplicitTop = 30
                    end
                    inherited HtTextColorCombo1: THtTextColorCombo
                      Left = 51
                      Top = 30
                      ExplicitLeft = 51
                      ExplicitTop = 30
                    end
                    inherited HtBgColorCombo1: THtBgColorCombo
                      Left = 117
                      Top = 30
                      ExplicitLeft = 117
                      ExplicitTop = 30
                    end
                    inherited HtBorderCombo1: THtBorderCombo
                      Left = 180
                      Top = 30
                      ExplicitLeft = 180
                      ExplicitTop = 30
                    end
                    inherited NewTagBtn: TToolButton
                      Left = 240
                      Top = 30
                      ExplicitLeft = 240
                      ExplicitTop = 30
                    end
                    inherited HighlightBtn: TToolButton
                      Left = 293
                      Top = 30
                      ExplicitLeft = 293
                      ExplicitTop = 30
                    end
                    inherited ToolButton10: TToolButton
                      Left = 374
                      Top = 30
                      ExplicitLeft = 374
                      ExplicitTop = 30
                    end
                    inherited LoadSampleBtn: TToolButton
                      Left = 382
                      Top = 30
                      ExplicitLeft = 382
                      ExplicitTop = 30
                    end
                    inherited CanvasCombo: TComboBox
                      Left = 607
                      Top = 30
                      ExplicitLeft = 607
                      ExplicitTop = 30
                    end
                    inherited TemplateCombo: TComboBox
                      Left = 721
                      Top = 30
                      ExplicitLeft = 721
                      ExplicitTop = 30
                    end
                  end
                  inherited E: THtmlEditor
                    Top = 112
                    Width = 713
                    Height = 199
                    ExplicitTop = 254
                    ExplicitWidth = 713
                    ExplicitHeight = 57
                  end
                  inherited pnlFooter: TPanel
                    Top = 311
                    Width = 991
                    ExplicitTop = 311
                    ExplicitWidth = 991
                    inherited TrackBar1: TTrackBar
                      Left = 627
                      OnChange = nil
                      ExplicitLeft = 812
                    end
                  end
                  inherited LeftPages: TPageControl
                    Top = 112
                    Height = 199
                    ExplicitTop = 112
                    ExplicitHeight = 199
                    inherited tabTag: TTabSheet
                      ExplicitHeight = 171
                      inherited pnlLists: TPanel
                        Height = 171
                        ExplicitHeight = 171
                      end
                    end
                  end
                end
              end
              inherited tabCustomerMailPreview: TTabSheet
                inherited brwModelMessage: TTMSFNCWebBrowser
                  DoubleBuffered = True
                end
              end
              inherited tabCustomerTestMail: TTabSheet
                inherited pnlMailTest: TPanel
                  inherited edtTestMailFromName: TEdit
                    Width = 545
                    ExplicitWidth = 545
                  end
                end
                inherited pgcTestPreview: TPageControl
                  ExplicitHeight = 432
                  inherited tabPagePreview: TTabSheet
                    inherited brwTestMessage: TTMSFNCWebBrowser
                      DoubleBuffered = True
                    end
                  end
                  inherited tabHtmlPreview: TTabSheet
                    inherited advmMailHtmlPreview: TAdvMemo
                      ExplicitHeight = 402
                    end
                  end
                  inherited tabJsonPreview: TTabSheet
                    inherited advmMailJsonPreview: TAdvMemo
                      ExplicitHeight = 402
                    end
                  end
                end
              end
              inherited tabAdvanced: TTabSheet
                inherited pgcAdvanced: TPageControl
                  ExplicitHeight = 502
                  inherited tabAdvancedHtml: TTabSheet
                    inherited advmMailHtml: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                      ExplicitHeight = 472
                    end
                  end
                  inherited tabAdvancedJson: TTabSheet
                    inherited advmMailJson: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                      ExplicitHeight = 472
                    end
                  end
                  inherited tabJsonLog: TTabSheet
                    inherited memJsonLog: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                      ExplicitHeight = 472
                    end
                  end
                end
              end
            end
            inherited grpURL: TGroupBox
              Width = 1178
              ExplicitWidth = 1178
              inherited edtCustomerMobileUrl: TEdit
                Width = 317
                Anchors = [akLeft, akTop, akRight]
                ExplicitWidth = 317
              end
              inherited edtCustomerMobileUrl1: TEdit
                Width = 445
                ExplicitWidth = 445
              end
              inherited edtTestTinyUrl: TEdit
                Width = 411
                Anchors = [akLeft, akTop, akRight]
                ExplicitWidth = 411
              end
            end
            inherited pnlLists: TPanel
              Height = 363
              ExplicitHeight = 363
            end
            inherited grdMaster: TDBGrid
              Top = 535
              Width = 1184
            end
          end
        end
        object tabCheckConfiguration: TTabSheet
          Caption = 'Test Configurations'
          ImageIndex = 4
          object DBAdvNavigator1: TDBAdvNavigator
            Left = 0
            Top = 0
            Width = 1184
            Height = 33
            AutoThemeAdapt = False
            DataSource = dsConfiguration
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbSearch, nbSetBookmark, nbGotoBookMark]
            Align = alTop
            Color = clBtnFace
            ColorTo = clNone
            ColorDown = 14210002
            ColorDownTo = clNone
            ColorHot = 13289415
            ColorHotTo = clNone
            DeleteDisabled = False
            InsertDisabled = False
            GlyphSize = gsSmall
            GlyphCustomSize = 0
            Orientation = noHorizontal
            TabOrder = 0
            Version = '1.3.1.2'
          end
          object DBAdvMemo1: TDBAdvMemo
            Left = 0
            Top = 193
            Width = 1184
            Height = 405
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
            ReadOnly = False
            RightMarginColor = 14869218
            ScrollHint = False
            SelColor = clHighlightText
            SelBkColor = clHighlight
            ShowRightMargin = True
            SmartTabs = False
            SyntaxStyles = astJson
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
            Version = '3.9.1.1'
            WordWrap = wwNone
            DataField = 'conf'
            DataSource = dsConfiguration
          end
          object CRDBGrid2: TCRDBGrid
            Left = 0
            Top = 33
            Width = 1184
            Height = 160
            Align = alTop
            DataSource = dsConfiguration
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'db_schema_id'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'key'
                Width = 576
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'jguid'
                Width = 232
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'deleted'
                Width = 43
                Visible = True
              end>
          end
        end
        object tabLog: TTabSheet
          Caption = 'Message Sending Log'
          ImageIndex = 5
          object advmLog: TAdvMemo
            Left = 0
            Top = 0
            Width = 1184
            Height = 598
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
      object grpSendgrid: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1192
        Height = 62
        Align = alTop
        Caption = 'Send Grid'
        TabOrder = 2
        ExplicitWidth = 1178
        DesignSize = (
          1192
          62)
        object edtAPIKey: TEdit
          Left = 341
          Top = 24
          Width = 624
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          Text = 
            'SG.PTSsUPYoQwGH6Lc56g7i4A.pcMP1F5svCMdH2iDzMDDPikR6def4gaTNnNuuk' +
            'X5ih8'
          TextHint = 'APIKey'
          ExplicitWidth = 610
        end
        object btnSendgridAPIKeySave: TButton
          Left = 16
          Top = 24
          Width = 97
          Height = 25
          Caption = 'Save API Key'
          TabOrder = 1
          OnClick = btnSendgridAPIKeySaveClick
        end
        object btnSendgridAPIKeyLoad1: TButton
          Left = 119
          Top = 24
          Width = 97
          Height = 25
          Caption = 'Load API Key'
          TabOrder = 2
          OnClick = btnSendgridAPIKeyLoad1Click
        end
      end
    end
    object tabTestConf: TTabSheet
      Caption = 'Test Configuration'
      ImageIndex = 2
      object pgcTestConfigurations: TPageControl
        Left = 0
        Top = 0
        Width = 1198
        Height = 702
        ActivePage = tbConfigParams
        Align = alClient
        TabOrder = 0
        object tabSerizlizer: TTabSheet
          Caption = 'Serializer'
          object btnDeserialize1: TButton
            Left = 432
            Top = 16
            Width = 121
            Height = 25
            Caption = 'Deserialize'
            TabOrder = 0
            OnClick = btnDeserialize1Click
          end
          object AdvMemo5: TAdvMemo
            Left = 423
            Top = 303
            Width = 401
            Height = 171
            Cursor = crIBeam
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
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
            UseStyler = False
            Version = '3.9.1.1'
            WordWrap = wwNone
          end
          object AdvMemo4: TAdvMemo
            Left = 423
            Top = 47
            Width = 401
            Height = 250
            Cursor = crIBeam
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
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
            UseStyler = False
            Version = '3.9.1.1'
            WordWrap = wwNone
          end
          object AdvMemo3: TAdvMemo
            Left = 16
            Top = 47
            Width = 401
            Height = 346
            Cursor = crIBeam
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
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
            Version = '3.9.1.1'
            WordWrap = wwNone
          end
          object btnSerialize1: TButton
            Left = 16
            Top = 16
            Width = 121
            Height = 25
            Caption = 'Serialize'
            TabOrder = 4
            OnClick = btnSerialize1Click
          end
        end
        object tabConfiguration: TTabSheet
          Caption = 'CarService Main Configuration'
          ImageIndex = 2
          DesignSize = (
            1190
            672)
          object Button1: TButton
            Left = 24
            Top = 3
            Width = 97
            Height = 25
            Caption = 'Save API Key'
            TabOrder = 0
            OnClick = btnSendgridAPIKeySaveClick
          end
          object Button2: TButton
            Left = 127
            Top = 3
            Width = 97
            Height = 25
            Caption = 'Load API Key'
            TabOrder = 1
            OnClick = btnSendgridAPIKeyLoad1Click
          end
          object GroupBox1: TGroupBox
            Left = 3
            Top = 26
            Width = 960
            Height = 146
            Anchors = [akLeft, akTop, akRight]
            Caption = 'URL'
            TabOrder = 2
            DesignSize = (
              960
              146)
            object Label2: TLabel
              Left = 39
              Top = 27
              Width = 116
              Height = 15
              Caption = 'Mobile Customer URL'
            end
            object Label3: TLabel
              Left = 39
              Top = 67
              Width = 95
              Height = 15
              Caption = 'Mobile Driver URL'
            end
            object Label4: TLabel
              Left = 39
              Top = 107
              Width = 66
              Height = 15
              Caption = 'Back End Url'
            end
            object Edit2: TEdit
              Left = 173
              Top = 24
              Width = 575
              Height = 23
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 0
              Text = 'https://caruser.januaservers.com'
              TextHint = 'APIKey'
            end
            object Edit3: TEdit
              Left = 173
              Top = 64
              Width = 575
              Height = 23
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              Text = 'https://caruser.januaservers.com'
              TextHint = 'APIKey'
            end
            object Edit4: TEdit
              Left = 173
              Top = 104
              Width = 575
              Height = 23
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
              Text = 'https://caruser.januaservers.com'
              TextHint = 'APIKey'
            end
          end
        end
        object tbConfigParams: TTabSheet
          Caption = 'Configurations'
          ImageIndex = 2
          object pnlDBConfiguration: TPanel
            Left = 0
            Top = 0
            Width = 1190
            Height = 41
            Align = alTop
            Caption = 'Database Configuration'
            TabOrder = 0
          end
          object scDBNavigator1: TscDBNavigator
            Left = 0
            Top = 41
            Width = 1190
            Height = 40
            Align = alTop
            FluentUIOpaque = False
            TabOrder = 1
            CustomImageIndex = -1
            DragForm = False
            DragTopForm = True
            StyleKind = scpsToolBar
            ShowCaption = False
            BorderStyle = scpbsNone
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
            Color = clBtnFace
            StorePaintBuffer = False
            WordWrap = False
            DataSource = dsConfiguration
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
          end
          object scDBGrid1: TscDBGrid
            Left = 0
            Top = 81
            Width = 1190
            Height = 271
            Align = alTop
            FluentUIOpaque = False
            TabOrder = 2
            AlternateRow = False
            SelectionStyle = scstStyled
            TransparentEditor = False
            WallpaperIndex = -1
            BackgroundStyle = scgbColor
            ShowFocusRect = True
            LinesColor = clNone
            CustomBackgroundImageIndex = -1
            CustomOverContentImageIndex = -1
            DataSource = dsConfiguration
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'db_schema_id'
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'deleted'
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'jguid'
                Width = 295
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'key'
                Width = 342
                Visible = True
              end>
          end
          object DBAdvMemo2: TDBAdvMemo
            Left = 0
            Top = 352
            Width = 1190
            Height = 320
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
            ReadOnly = False
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
            UseStyler = True
            Version = '3.9.1.1'
            WordWrap = wwNone
            DataField = 'conf'
            DataSource = dsConfiguration
          end
        end
      end
    end
    object tabLandingPages: TTabSheet
      Caption = 'Landing Pages'
      ImageIndex = 3
      object pgcLandingPages: TPageControl
        Left = 0
        Top = 0
        Width = 1198
        Height = 702
        ActivePage = tabLandingCustomer
        Align = alClient
        TabOrder = 0
        object tabLandingCustomer: TTabSheet
          Caption = 'Customer '
          inline frameLandingCustomer: TFrameVCLLandingMessageConfig
            Left = 0
            Top = 0
            Width = 1190
            Height = 672
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1190
            ExplicitHeight = 672
            inherited pnlButtons: TPanel
              Width = 1190
              ExplicitWidth = 1176
              inherited edtLandingUrl: TEdit
                Left = 151
                Width = 727
                ExplicitLeft = 151
                ExplicitWidth = 713
              end
              inherited btnGenerateTinyUrl: TButton
                Left = 891
                ExplicitLeft = 877
              end
              inherited edtTinyUrl: TEdit
                Left = 891
                ExplicitLeft = 877
              end
            end
            inherited pgcCustomerMail: TPageControl
              Width = 1005
              Height = 519
              ExplicitWidth = 1005
              ExplicitHeight = 519
              inherited tabEditor: TTabSheet
                ExplicitWidth = 997
                ExplicitHeight = 489
                inherited frameHTMLEditor1: TframeHTMLEditor
                  Width = 997
                  Height = 489
                  ExplicitWidth = 997
                  ExplicitHeight = 489
                  inherited Splitter1: TSplitter
                    Top = 112
                    Height = 355
                    ExplicitTop = 112
                    ExplicitHeight = 427
                  end
                  inherited ToolBar1: TToolBar
                    Width = 997
                    ExplicitWidth = 997
                  end
                  inherited ToolBar2: TToolBar
                    Width = 997
                    Height = 56
                    ExplicitWidth = 997
                    ExplicitHeight = 56
                    inherited ToolButton9: TToolButton
                      Left = 0
                      Wrap = True
                      ExplicitLeft = 0
                      ExplicitHeight = 30
                    end
                    inherited HeaderBtn: TToolButton
                      Left = 0
                      Top = 30
                      ExplicitLeft = 0
                      ExplicitTop = 30
                    end
                    inherited HtTextColorCombo1: THtTextColorCombo
                      Left = 51
                      Top = 30
                      ExplicitLeft = 51
                      ExplicitTop = 30
                    end
                    inherited HtBgColorCombo1: THtBgColorCombo
                      Left = 117
                      Top = 30
                      ExplicitLeft = 117
                      ExplicitTop = 30
                    end
                    inherited HtBorderCombo1: THtBorderCombo
                      Left = 180
                      Top = 30
                      ExplicitLeft = 180
                      ExplicitTop = 30
                    end
                    inherited NewTagBtn: TToolButton
                      Left = 240
                      Top = 30
                      ExplicitLeft = 240
                      ExplicitTop = 30
                    end
                    inherited HighlightBtn: TToolButton
                      Left = 293
                      Top = 30
                      ExplicitLeft = 293
                      ExplicitTop = 30
                    end
                    inherited ToolButton10: TToolButton
                      Left = 374
                      Top = 30
                      ExplicitLeft = 374
                      ExplicitTop = 30
                    end
                    inherited LoadSampleBtn: TToolButton
                      Left = 382
                      Top = 30
                      ExplicitLeft = 382
                      ExplicitTop = 30
                    end
                    inherited CanvasCombo: TComboBox
                      Left = 607
                      Top = 30
                      ExplicitLeft = 607
                      ExplicitTop = 30
                    end
                    inherited TemplateCombo: TComboBox
                      Left = 721
                      Top = 30
                      ExplicitLeft = 721
                      ExplicitTop = 30
                    end
                  end
                  inherited E: THtmlEditor
                    Top = 112
                    Width = 719
                    Height = 355
                    ExplicitTop = 254
                    ExplicitWidth = 719
                    ExplicitHeight = 213
                  end
                  inherited pnlFooter: TPanel
                    Top = 467
                    Width = 997
                    ExplicitTop = 467
                    ExplicitWidth = 997
                    inherited TrackBar1: TTrackBar
                      Left = 633
                      OnChange = nil
                      ExplicitLeft = 804
                    end
                  end
                  inherited LeftPages: TPageControl
                    Top = 112
                    Height = 355
                    ExplicitTop = 112
                    ExplicitHeight = 355
                    inherited tabTag: TTabSheet
                      ExplicitHeight = 327
                      inherited pnlLists: TPanel
                        Height = 327
                        ExplicitHeight = 327
                      end
                    end
                  end
                end
              end
              inherited tabCustomerMailPreview: TTabSheet
                inherited brwModelMessage: TTMSFNCWebBrowser
                  DoubleBuffered = True
                end
              end
              inherited tabCustomerTestMail: TTabSheet
                inherited pgcTestPreview: TPageControl
                  inherited tabPagePreview: TTabSheet
                    inherited brwTestMessage: TTMSFNCWebBrowser
                      DoubleBuffered = True
                    end
                  end
                end
              end
              inherited tabAdvanced: TTabSheet
                inherited pgAdvanced: TPageControl
                  inherited tabAdvancedHtml: TTabSheet
                    inherited advmMailHtml: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                  inherited tabAdvancedJson: TTabSheet
                    inherited advmMailJson: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                  inherited tabAdvancedLog: TTabSheet
                    inherited advmLogMessage: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                end
              end
            end
            inherited pnlLists: TPanel
              Height = 519
              ExplicitHeight = 519
            end
            inherited grdMaster: TDBGrid
              Top = 600
              Width = 1190
            end
          end
        end
        object tabLandingDriver1: TTabSheet
          Caption = 'Driver '
          ImageIndex = 1
          inline frameLandingDriver: TFrameVCLLandingMessageConfig
            Left = 0
            Top = 0
            Width = 1190
            Height = 672
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1190
            ExplicitHeight = 672
            inherited pnlButtons: TPanel
              Width = 1190
              ExplicitWidth = 1190
              inherited edtLandingUrl: TEdit
                Left = 151
                Width = 727
                ExplicitLeft = 151
                ExplicitWidth = 727
              end
              inherited btnGenerateTinyUrl: TButton
                Left = 891
                ExplicitLeft = 891
              end
              inherited edtTinyUrl: TEdit
                Left = 891
                ExplicitLeft = 891
              end
            end
            inherited pgcCustomerMail: TPageControl
              Width = 1005
              Height = 519
              ExplicitWidth = 1005
              ExplicitHeight = 519
              inherited tabEditor: TTabSheet
                ExplicitWidth = 997
                ExplicitHeight = 489
                inherited frameHTMLEditor1: TframeHTMLEditor
                  Width = 997
                  Height = 489
                  ExplicitWidth = 997
                  ExplicitHeight = 489
                  inherited Splitter1: TSplitter
                    Top = 112
                    Height = 355
                    ExplicitTop = 112
                    ExplicitHeight = 427
                  end
                  inherited ToolBar1: TToolBar
                    Width = 997
                    ExplicitWidth = 997
                  end
                  inherited ToolBar2: TToolBar
                    Width = 997
                    Height = 56
                    ExplicitWidth = 997
                    ExplicitHeight = 56
                    inherited ToolButton9: TToolButton
                      Left = 0
                      Wrap = True
                      ExplicitLeft = 0
                      ExplicitHeight = 30
                    end
                    inherited HeaderBtn: TToolButton
                      Left = 0
                      Top = 30
                      ExplicitLeft = 0
                      ExplicitTop = 30
                    end
                    inherited HtTextColorCombo1: THtTextColorCombo
                      Left = 51
                      Top = 30
                      ExplicitLeft = 51
                      ExplicitTop = 30
                    end
                    inherited HtBgColorCombo1: THtBgColorCombo
                      Left = 117
                      Top = 30
                      ExplicitLeft = 117
                      ExplicitTop = 30
                    end
                    inherited HtBorderCombo1: THtBorderCombo
                      Left = 180
                      Top = 30
                      ExplicitLeft = 180
                      ExplicitTop = 30
                    end
                    inherited NewTagBtn: TToolButton
                      Left = 240
                      Top = 30
                      ExplicitLeft = 240
                      ExplicitTop = 30
                    end
                    inherited HighlightBtn: TToolButton
                      Left = 293
                      Top = 30
                      ExplicitLeft = 293
                      ExplicitTop = 30
                    end
                    inherited ToolButton10: TToolButton
                      Left = 374
                      Top = 30
                      ExplicitLeft = 374
                      ExplicitTop = 30
                    end
                    inherited LoadSampleBtn: TToolButton
                      Left = 382
                      Top = 30
                      ExplicitLeft = 382
                      ExplicitTop = 30
                    end
                    inherited CanvasCombo: TComboBox
                      Left = 607
                      Top = 30
                      ExplicitLeft = 607
                      ExplicitTop = 30
                    end
                    inherited TemplateCombo: TComboBox
                      Left = 721
                      Top = 30
                      ExplicitLeft = 721
                      ExplicitTop = 30
                    end
                  end
                  inherited E: THtmlEditor
                    Top = 112
                    Width = 719
                    Height = 355
                    ExplicitTop = 254
                    ExplicitWidth = 719
                    ExplicitHeight = 213
                  end
                  inherited pnlFooter: TPanel
                    Top = 467
                    Width = 997
                    ExplicitTop = 467
                    ExplicitWidth = 997
                    inherited TrackBar1: TTrackBar
                      Left = 633
                      OnChange = nil
                      ExplicitLeft = 818
                    end
                  end
                  inherited LeftPages: TPageControl
                    Top = 112
                    Height = 355
                    ExplicitTop = 112
                    ExplicitHeight = 355
                    inherited tabTag: TTabSheet
                      ExplicitHeight = 327
                      inherited pnlLists: TPanel
                        Height = 327
                        ExplicitHeight = 327
                      end
                    end
                  end
                end
              end
              inherited tabCustomerMailPreview: TTabSheet
                inherited brwModelMessage: TTMSFNCWebBrowser
                  DoubleBuffered = True
                end
              end
              inherited tabCustomerTestMail: TTabSheet
                inherited pgcTestPreview: TPageControl
                  inherited tabPagePreview: TTabSheet
                    inherited brwTestMessage: TTMSFNCWebBrowser
                      DoubleBuffered = True
                    end
                  end
                end
              end
              inherited tabAdvanced: TTabSheet
                inherited pgAdvanced: TPageControl
                  inherited tabAdvancedHtml: TTabSheet
                    inherited advmMailHtml: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                  inherited tabAdvancedJson: TTabSheet
                    inherited advmMailJson: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                  inherited tabAdvancedLog: TTabSheet
                    inherited advmLogMessage: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                end
              end
            end
            inherited pnlLists: TPanel
              Height = 519
              ExplicitHeight = 519
            end
            inherited grdMaster: TDBGrid
              Top = 600
              Width = 1190
            end
          end
        end
        object tsLandingBooking: TTabSheet
          Caption = 'Booking Confirmation'
          ImageIndex = 2
          inline frameLandingBooking: TFrameVCLLandingMessageConfig
            Left = 0
            Top = 0
            Width = 1190
            Height = 672
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1190
            ExplicitHeight = 672
            inherited pnlButtons: TPanel
              Width = 1190
              ExplicitWidth = 1190
              inherited edtLandingUrl: TEdit
                Width = 694
                ExplicitWidth = 694
              end
              inherited btnGenerateTinyUrl: TButton
                Left = 807
                ExplicitLeft = 807
              end
              inherited edtTinyUrl: TEdit
                Left = 807
                ExplicitLeft = 807
              end
            end
            inherited pgcCustomerMail: TPageControl
              Width = 1005
              Height = 519
              ActivePage = frameLandingBooking.tabCustomerTestMail
              ExplicitWidth = 1005
              ExplicitHeight = 519
              inherited tabEditor: TTabSheet
                ExplicitWidth = 997
                ExplicitHeight = 489
                inherited frameHTMLEditor1: TframeHTMLEditor
                  Width = 997
                  Height = 489
                  ExplicitWidth = 997
                  ExplicitHeight = 489
                  inherited Splitter1: TSplitter
                    Top = 112
                    Height = 355
                    ExplicitTop = 112
                    ExplicitHeight = 427
                  end
                  inherited ToolBar1: TToolBar
                    Width = 997
                    ExplicitWidth = 997
                  end
                  inherited ToolBar2: TToolBar
                    Width = 997
                    Height = 56
                    ExplicitWidth = 997
                    ExplicitHeight = 56
                    inherited ToolButton9: TToolButton
                      Left = 0
                      Wrap = True
                      ExplicitLeft = 0
                      ExplicitHeight = 30
                    end
                    inherited HeaderBtn: TToolButton
                      Left = 0
                      Top = 30
                      ExplicitLeft = 0
                      ExplicitTop = 30
                    end
                    inherited HtTextColorCombo1: THtTextColorCombo
                      Left = 51
                      Top = 30
                      ExplicitLeft = 51
                      ExplicitTop = 30
                    end
                    inherited HtBgColorCombo1: THtBgColorCombo
                      Left = 117
                      Top = 30
                      ExplicitLeft = 117
                      ExplicitTop = 30
                    end
                    inherited HtBorderCombo1: THtBorderCombo
                      Left = 180
                      Top = 30
                      ExplicitLeft = 180
                      ExplicitTop = 30
                    end
                    inherited NewTagBtn: TToolButton
                      Left = 240
                      Top = 30
                      ExplicitLeft = 240
                      ExplicitTop = 30
                    end
                    inherited HighlightBtn: TToolButton
                      Left = 293
                      Top = 30
                      ExplicitLeft = 293
                      ExplicitTop = 30
                    end
                    inherited ToolButton10: TToolButton
                      Left = 374
                      Top = 30
                      ExplicitLeft = 374
                      ExplicitTop = 30
                    end
                    inherited LoadSampleBtn: TToolButton
                      Left = 382
                      Top = 30
                      ExplicitLeft = 382
                      ExplicitTop = 30
                    end
                    inherited CanvasCombo: TComboBox
                      Left = 607
                      Top = 30
                      ExplicitLeft = 607
                      ExplicitTop = 30
                    end
                    inherited TemplateCombo: TComboBox
                      Left = 721
                      Top = 30
                      ExplicitLeft = 721
                      ExplicitTop = 30
                    end
                  end
                  inherited E: THtmlEditor
                    Top = 112
                    Width = 719
                    Height = 355
                    ExplicitTop = 254
                    ExplicitWidth = 719
                    ExplicitHeight = 213
                  end
                  inherited pnlFooter: TPanel
                    Top = 467
                    Width = 997
                    ExplicitTop = 467
                    ExplicitWidth = 997
                    inherited TrackBar1: TTrackBar
                      Left = 633
                      OnChange = nil
                      ExplicitLeft = 818
                    end
                  end
                  inherited LeftPages: TPageControl
                    Top = 112
                    Height = 355
                    ExplicitTop = 112
                    ExplicitHeight = 355
                    inherited tabTag: TTabSheet
                      ExplicitHeight = 327
                      inherited pnlLists: TPanel
                        Height = 327
                        ExplicitHeight = 327
                      end
                    end
                  end
                end
              end
              inherited tabCustomerMailPreview: TTabSheet
                inherited brwModelMessage: TTMSFNCWebBrowser
                  DoubleBuffered = True
                end
              end
              inherited tabCustomerTestMail: TTabSheet
                ExplicitWidth = 997
                ExplicitHeight = 489
                inherited edtMailTestSubject: TEdit
                  Width = 991
                  ExplicitWidth = 1176
                end
                inherited pnlMailTest: TPanel
                  Width = 997
                  ExplicitWidth = 1182
                end
                inherited pgcTestPreview: TPageControl
                  Width = 997
                  Height = 419
                  ActivePage = frameLandingBooking.tabJsonPreview
                  ExplicitWidth = 997
                  ExplicitHeight = 419
                  inherited tabPagePreview: TTabSheet
                    ExplicitWidth = 989
                    ExplicitHeight = 389
                    inherited brwTestMessage: TTMSFNCWebBrowser
                      Width = 989
                      Height = 389
                      DoubleBuffered = True
                      ExplicitWidth = 1174
                      ExplicitHeight = 461
                    end
                  end
                  inherited tabHtmlPreview: TTabSheet
                    inherited advmMailHtmlPreview: TAdvMemo
                      SyntaxStyles = frameLandingBooking.astHtml
                      UseStyler = True
                    end
                  end
                  inherited tabJsonPreview: TTabSheet
                    ExplicitWidth = 989
                    ExplicitHeight = 389
                    inherited advmMailJsonPreview: TAdvMemo
                      Width = 989
                      Height = 389
                      SyntaxStyles = frameLandingBooking.astJson
                      UseStyler = True
                      ExplicitWidth = 989
                      ExplicitHeight = 389
                    end
                  end
                end
              end
              inherited tabAdvanced: TTabSheet
                inherited pgAdvanced: TPageControl
                  inherited tabAdvancedHtml: TTabSheet
                    inherited advmMailHtml: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                  inherited tabAdvancedJson: TTabSheet
                    inherited advmMailJson: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                  inherited tabAdvancedLog: TTabSheet
                    inherited advmLogMessage: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                end
              end
            end
            inherited pnlLists: TPanel
              Height = 519
              ExplicitHeight = 519
            end
            inherited grdMaster: TDBGrid
              Top = 600
              Width = 1190
            end
          end
        end
      end
    end
    object tabSMSMessages: TTabSheet
      Caption = 'SMS Messages'
      ImageIndex = 4
      object pgcSmsMessage: TPageControl
        Left = 0
        Top = 201
        Width = 1198
        Height = 501
        ActivePage = tabSmsDriver2
        Align = alClient
        TabOrder = 0
        object tabSmsCustomer: TTabSheet
          Caption = 'Sms Customer'
          inline frameSMSCustomer: TframeVCLSMSMessageConfig
            Left = 0
            Top = 0
            Width = 1190
            Height = 471
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1190
            ExplicitHeight = 471
            inherited Panel1: TPanel
              Height = 471
              ExplicitHeight = 471
              inherited pnlLists: TPanel
                Height = 469
                ExplicitHeight = 469
              end
            end
            inherited Panel2: TPanel
              Width = 973
              Height = 471
              ExplicitWidth = 973
              ExplicitHeight = 471
              inherited lblMsgTo: TLabel
                Left = 800
                ExplicitLeft = 800
              end
              inherited grpURL: TGroupBox
                Width = 965
                ExplicitWidth = 1184
                inherited btnTestUrl: TButton
                  OnClick = frameSMSCustomerbtnTestUrlClick
                end
                inherited edtCustomerMobileUrl1: TEdit
                  Width = 378
                  ExplicitWidth = 378
                end
                inherited edtTestTinyUrl: TEdit
                  Left = 920
                  Width = 274
                  ExplicitLeft = 920
                  ExplicitWidth = 274
                end
              end
              inherited advmSMSTemplate: TAdvMemo
                Width = 1002
                BorderColor = clGray
                Gutter.BorderColor = clGray
                Gutter.GutterColor = clBtnFace
                ExplicitWidth = 1002
              end
              inherited btnSendMailTo: TButton
                OnClick = frameSMSCustomerbtnSendMailToClick
              end
              inherited edPhoneCustomerTo: TEdit
                Left = 848
                Top = 73
                Width = 170
                ExplicitLeft = 848
                ExplicitTop = 73
                ExplicitWidth = 184
              end
              inherited rgEngine: TRadioGroup
                Left = 632
                Width = 162
                ExplicitLeft = 632
                ExplicitWidth = 162
              end
              inherited Panel3: TPanel
                Width = 1013
                ExplicitWidth = 1013
                inherited dbgrdParams: TDBGrid
                  Width = 544
                end
                inherited edTestSMSTo: TEdit
                  Width = 564
                  ExplicitWidth = 564
                end
                inherited advmSMSTest: TAdvMemo
                  Width = 564
                  BorderColor = clGray
                  Gutter.BorderColor = clGray
                  Gutter.GutterColor = clBtnFace
                  Gutter.GutterColorTo = clBtnFace
                  ExplicitWidth = 564
                end
                inherited advmJson: TAdvMemo
                  Top = 301
                  Width = 530
                  Height = 161
                  BorderColor = clGray
                  Gutter.BorderColor = clGray
                  Gutter.GutterColor = clBtnFace
                  ExplicitTop = 301
                  ExplicitWidth = 530
                  ExplicitHeight = 161
                end
              end
              inherited DBGrid1: TDBGrid
                Top = 390
                Width = 971
              end
            end
          end
        end
        object tabSmsDriver1: TTabSheet
          Caption = 'Driver 1 Sms'
          ImageIndex = 1
          inline frameSmsDriver1: TframeVCLSMSMessageConfig
            Left = 0
            Top = 0
            Width = 1190
            Height = 471
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1190
            ExplicitHeight = 471
            inherited Panel1: TPanel
              Height = 471
              ExplicitHeight = 471
              inherited pnlLists: TPanel
                Height = 469
                ExplicitHeight = 469
              end
            end
            inherited Panel2: TPanel
              Width = 973
              Height = 471
              ExplicitWidth = 973
              ExplicitHeight = 471
              inherited lblMsgTo: TLabel
                Left = 850
                ExplicitLeft = 850
              end
              inherited grpURL: TGroupBox
                Width = 965
                ExplicitWidth = 1184
                inherited edtCustomerMobileUrl1: TEdit
                  Width = 427
                  ExplicitWidth = 427
                end
                inherited edtTestTinyUrl: TEdit
                  Left = 969
                  Width = 225
                  ExplicitLeft = 969
                  ExplicitWidth = 225
                end
              end
              inherited advmSMSTemplate: TAdvMemo
                Width = 1002
                BorderColor = clGray
                Gutter.BorderColor = clGray
                Gutter.GutterColor = clBtnFace
                ExplicitWidth = 1002
              end
              inherited edPhoneCustomerTo: TEdit
                Left = 900
                Width = 145
                ExplicitLeft = 900
                ExplicitWidth = 159
              end
              inherited rgEngine: TRadioGroup
                Width = 167
                ExplicitWidth = 167
              end
              inherited Panel3: TPanel
                Width = 1013
                ExplicitWidth = 1013
                inherited dbgrdParams: TDBGrid
                  Width = 476
                end
                inherited edTestSMSTo: TEdit
                  Width = 564
                  ExplicitWidth = 564
                end
                inherited advmSMSTest: TAdvMemo
                  Width = 564
                  BorderColor = clGray
                  Gutter.BorderColor = clGray
                  Gutter.GutterColor = clBtnFace
                  Gutter.GutterColorTo = clBtnFace
                  ExplicitWidth = 564
                end
                inherited advmJson: TAdvMemo
                  Width = 716
                  Height = 169
                  BorderColor = clGray
                  Gutter.BorderColor = clGray
                  Gutter.GutterColor = clBtnFace
                  ExplicitWidth = 716
                  ExplicitHeight = 169
                end
              end
              inherited DBGrid1: TDBGrid
                Top = 390
                Width = 971
              end
            end
          end
        end
        object tabSmsDriver2: TTabSheet
          Caption = 'Driver 2 Sms'
          ImageIndex = 2
          inline frameSMSDriver2: TframeVCLSMSMessageConfig
            Left = 0
            Top = 0
            Width = 1190
            Height = 471
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1190
            ExplicitHeight = 471
            inherited Panel1: TPanel
              Height = 471
              ExplicitHeight = 471
              inherited pnlLists: TPanel
                Height = 469
                ExplicitHeight = 469
              end
            end
            inherited Panel2: TPanel
              Width = 973
              Height = 471
              ExplicitWidth = 973
              ExplicitHeight = 471
              inherited lblMsgTo: TLabel
                Left = 856
                Top = 80
                ExplicitLeft = 856
                ExplicitTop = 80
              end
              inherited grpURL: TGroupBox
                Width = 965
                ExplicitWidth = 965
                inherited btnTestUrl: TButton
                  Left = 678
                  ExplicitLeft = 678
                end
                inherited edtCustomerMobileUrl1: TEdit
                  Width = 245
                  ExplicitWidth = 245
                end
                inherited edtTestTinyUrl: TEdit
                  Left = 750
                  Width = 210
                  ExplicitLeft = 750
                  ExplicitWidth = 210
                end
              end
              inherited advmSMSTemplate: TAdvMemo
                Width = 1002
                BorderColor = clGray
                Gutter.BorderColor = clGray
                Gutter.GutterColor = clBtnFace
                ExplicitWidth = 1002
              end
              inherited edPhoneCustomerTo: TEdit
                Left = 900
                Top = 78
                Width = 145
                ExplicitLeft = 900
                ExplicitTop = 78
                ExplicitWidth = 145
              end
              inherited rgEngine: TRadioGroup
                Width = 180
                ExplicitWidth = 180
              end
              inherited Panel3: TPanel
                Width = 1013
                ExplicitWidth = 1013
                inherited dbgrdParams: TDBGrid
                  Width = 558
                end
                inherited edTestSMSTo: TEdit
                  Width = 564
                  ExplicitWidth = 564
                end
                inherited advmSMSTest: TAdvMemo
                  Width = 564
                  BorderColor = clGray
                  Gutter.BorderColor = clGray
                  Gutter.GutterColor = clBtnFace
                  Gutter.GutterColorTo = clBtnFace
                  ExplicitWidth = 564
                end
                inherited advmJson: TAdvMemo
                  Width = 716
                  Height = 169
                  BorderColor = clGray
                  Gutter.BorderColor = clGray
                  Gutter.GutterColor = clBtnFace
                  ExplicitWidth = 716
                  ExplicitHeight = 169
                end
              end
              inherited DBGrid1: TDBGrid
                Top = 390
                Width = 971
              end
            end
            inherited fdmParams: TFDMemTable
              Left = 556
              Top = 171
            end
            inherited dsParams: TDataSource
              Left = 620
              Top = 203
            end
          end
        end
      end
      inline frameVCLMailSmsSenderConfig1: TframeVCLMailSmsSenderConfig
        Left = 0
        Top = 0
        Width = 1198
        Height = 201
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 1198
        ExplicitHeight = 201
        inherited advmJson: TAdvMemo
          Width = 740
          Height = 195
          ExplicitWidth = 740
          ExplicitHeight = 195
        end
        inherited grpSettings: TGroupBox
          Height = 195
          ExplicitHeight = 195
        end
      end
    end
    object tabContracts: TTabSheet
      Caption = 'Contracts'
      ImageIndex = 5
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 1198
        Height = 702
        ActivePage = tabCustomerContract
        Align = alClient
        TabOrder = 0
        object tabCustomerContract: TTabSheet
          Caption = 'Customer Contract'
          inline frameCustomerContract: TFrameVCLLandingMessageConfig
            Left = 0
            Top = 0
            Width = 1190
            Height = 672
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1190
            ExplicitHeight = 672
            inherited pnlButtons: TPanel
              Width = 1190
              ExplicitWidth = 1190
              inherited edtLandingUrl: TEdit
                Width = 764
                ExplicitWidth = 764
              end
              inherited btnGenerateTinyUrl: TButton
                Left = 877
                ExplicitLeft = 877
              end
              inherited edtTinyUrl: TEdit
                Left = 877
                ExplicitLeft = 877
              end
            end
            inherited pgcCustomerMail: TPageControl
              Width = 1005
              Height = 519
              ExplicitWidth = 1005
              ExplicitHeight = 519
              inherited tabEditor: TTabSheet
                ExplicitWidth = 997
                ExplicitHeight = 489
                inherited frameHTMLEditor1: TframeHTMLEditor
                  Width = 997
                  Height = 489
                  ExplicitWidth = 997
                  ExplicitHeight = 489
                  inherited Splitter1: TSplitter
                    Top = 112
                    Height = 355
                    ExplicitTop = 112
                    ExplicitHeight = 427
                  end
                  inherited ToolBar1: TToolBar
                    Width = 997
                    ExplicitWidth = 997
                  end
                  inherited ToolBar2: TToolBar
                    Width = 997
                    Height = 56
                    ExplicitWidth = 997
                    ExplicitHeight = 56
                    inherited ToolButton9: TToolButton
                      Left = 0
                      Wrap = True
                      ExplicitLeft = 0
                      ExplicitHeight = 30
                    end
                    inherited HeaderBtn: TToolButton
                      Left = 0
                      Top = 30
                      ExplicitLeft = 0
                      ExplicitTop = 30
                    end
                    inherited HtTextColorCombo1: THtTextColorCombo
                      Left = 51
                      Top = 30
                      ExplicitLeft = 51
                      ExplicitTop = 30
                    end
                    inherited HtBgColorCombo1: THtBgColorCombo
                      Left = 117
                      Top = 30
                      ExplicitLeft = 117
                      ExplicitTop = 30
                    end
                    inherited HtBorderCombo1: THtBorderCombo
                      Left = 180
                      Top = 30
                      ExplicitLeft = 180
                      ExplicitTop = 30
                    end
                    inherited NewTagBtn: TToolButton
                      Left = 240
                      Top = 30
                      ExplicitLeft = 240
                      ExplicitTop = 30
                    end
                    inherited HighlightBtn: TToolButton
                      Left = 293
                      Top = 30
                      ExplicitLeft = 293
                      ExplicitTop = 30
                    end
                    inherited ToolButton10: TToolButton
                      Left = 374
                      Top = 30
                      ExplicitLeft = 374
                      ExplicitTop = 30
                    end
                    inherited LoadSampleBtn: TToolButton
                      Left = 382
                      Top = 30
                      ExplicitLeft = 382
                      ExplicitTop = 30
                    end
                    inherited CanvasCombo: TComboBox
                      Left = 607
                      Top = 30
                      ExplicitLeft = 607
                      ExplicitTop = 30
                    end
                    inherited TemplateCombo: TComboBox
                      Left = 721
                      Top = 30
                      ExplicitLeft = 721
                      ExplicitTop = 30
                    end
                  end
                  inherited E: THtmlEditor
                    Top = 112
                    Width = 719
                    Height = 355
                    ExplicitTop = 112
                    ExplicitWidth = 719
                    ExplicitHeight = 355
                  end
                  inherited pnlFooter: TPanel
                    Top = 467
                    Width = 997
                    ExplicitTop = 467
                    ExplicitWidth = 997
                    inherited TrackBar1: TTrackBar
                      Left = 633
                      OnChange = nil
                      ExplicitLeft = 633
                    end
                  end
                  inherited LeftPages: TPageControl
                    Top = 112
                    Height = 355
                    ExplicitTop = 112
                    ExplicitHeight = 355
                    inherited tabTag: TTabSheet
                      ExplicitHeight = 327
                      inherited pnlLists: TPanel
                        Height = 327
                        ExplicitHeight = 327
                      end
                    end
                  end
                end
              end
              inherited tabCustomerMailPreview: TTabSheet
                inherited brwModelMessage: TTMSFNCWebBrowser
                  DoubleBuffered = True
                end
              end
              inherited tabCustomerTestMail: TTabSheet
                inherited pgcTestPreview: TPageControl
                  inherited tabPagePreview: TTabSheet
                    inherited brwTestMessage: TTMSFNCWebBrowser
                      DoubleBuffered = True
                    end
                  end
                end
              end
              inherited tabAdvanced: TTabSheet
                inherited pgAdvanced: TPageControl
                  inherited tabAdvancedHtml: TTabSheet
                    inherited advmMailHtml: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                  inherited tabAdvancedJson: TTabSheet
                    inherited advmMailJson: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                  inherited tabAdvancedLog: TTabSheet
                    inherited advmLogMessage: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                end
              end
            end
            inherited pnlLists: TPanel
              Height = 519
              ExplicitHeight = 519
            end
            inherited grdMaster: TDBGrid
              Top = 600
              Width = 1190
            end
          end
        end
        object tabDriverContract: TTabSheet
          Caption = 'Driver Contract'
          ImageIndex = 1
          OnContextPopup = tabDriverContractContextPopup
          inline frameDriverContract: TFrameVCLLandingMessageConfig
            Left = 0
            Top = 0
            Width = 1190
            Height = 672
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1190
            ExplicitHeight = 672
            inherited pnlButtons: TPanel
              Width = 1190
              ExplicitWidth = 1190
              inherited edtLandingUrl: TEdit
                Width = 778
                ExplicitWidth = 778
              end
              inherited btnGenerateTinyUrl: TButton
                Left = 891
                ExplicitLeft = 891
              end
              inherited edtTinyUrl: TEdit
                Left = 891
                ExplicitLeft = 891
              end
            end
            inherited pgcCustomerMail: TPageControl
              Width = 1005
              Height = 519
              ExplicitWidth = 1005
              ExplicitHeight = 519
              inherited tabEditor: TTabSheet
                ExplicitWidth = 997
                ExplicitHeight = 489
                inherited frameHTMLEditor1: TframeHTMLEditor
                  Width = 997
                  Height = 489
                  ExplicitWidth = 997
                  ExplicitHeight = 489
                  inherited Splitter1: TSplitter
                    Top = 112
                    Height = 355
                    ExplicitTop = 112
                    ExplicitHeight = 427
                  end
                  inherited ToolBar1: TToolBar
                    Width = 997
                    ExplicitWidth = 997
                  end
                  inherited ToolBar2: TToolBar
                    Width = 997
                    Height = 56
                    ExplicitWidth = 997
                    ExplicitHeight = 56
                    inherited ToolButton9: TToolButton
                      Left = 0
                      Wrap = True
                      ExplicitLeft = 0
                      ExplicitHeight = 30
                    end
                    inherited HeaderBtn: TToolButton
                      Left = 0
                      Top = 30
                      ExplicitLeft = 0
                      ExplicitTop = 30
                    end
                    inherited HtTextColorCombo1: THtTextColorCombo
                      Left = 51
                      Top = 30
                      ExplicitLeft = 51
                      ExplicitTop = 30
                    end
                    inherited HtBgColorCombo1: THtBgColorCombo
                      Left = 117
                      Top = 30
                      ExplicitLeft = 117
                      ExplicitTop = 30
                    end
                    inherited HtBorderCombo1: THtBorderCombo
                      Left = 180
                      Top = 30
                      ExplicitLeft = 180
                      ExplicitTop = 30
                    end
                    inherited NewTagBtn: TToolButton
                      Left = 240
                      Top = 30
                      ExplicitLeft = 240
                      ExplicitTop = 30
                    end
                    inherited HighlightBtn: TToolButton
                      Left = 293
                      Top = 30
                      ExplicitLeft = 293
                      ExplicitTop = 30
                    end
                    inherited ToolButton10: TToolButton
                      Left = 374
                      Top = 30
                      ExplicitLeft = 374
                      ExplicitTop = 30
                    end
                    inherited LoadSampleBtn: TToolButton
                      Left = 382
                      Top = 30
                      ExplicitLeft = 382
                      ExplicitTop = 30
                    end
                    inherited CanvasCombo: TComboBox
                      Left = 607
                      Top = 30
                      ExplicitLeft = 607
                      ExplicitTop = 30
                    end
                    inherited TemplateCombo: TComboBox
                      Left = 721
                      Top = 30
                      ExplicitLeft = 721
                      ExplicitTop = 30
                    end
                  end
                  inherited E: THtmlEditor
                    Top = 112
                    Width = 719
                    Height = 355
                    ExplicitTop = 254
                    ExplicitWidth = 719
                    ExplicitHeight = 213
                  end
                  inherited pnlFooter: TPanel
                    Top = 467
                    Width = 997
                    ExplicitTop = 467
                    ExplicitWidth = 997
                    inherited TrackBar1: TTrackBar
                      Left = 633
                      OnChange = nil
                      ExplicitLeft = 818
                    end
                  end
                  inherited LeftPages: TPageControl
                    Top = 112
                    Height = 355
                    ExplicitTop = 112
                    ExplicitHeight = 355
                    inherited tabTag: TTabSheet
                      ExplicitHeight = 327
                      inherited pnlLists: TPanel
                        Height = 327
                        ExplicitHeight = 327
                      end
                    end
                  end
                end
              end
              inherited tabCustomerMailPreview: TTabSheet
                inherited brwModelMessage: TTMSFNCWebBrowser
                  DoubleBuffered = True
                end
              end
              inherited tabCustomerTestMail: TTabSheet
                inherited pgcTestPreview: TPageControl
                  inherited tabPagePreview: TTabSheet
                    inherited brwTestMessage: TTMSFNCWebBrowser
                      DoubleBuffered = True
                    end
                  end
                end
              end
              inherited tabAdvanced: TTabSheet
                inherited pgAdvanced: TPageControl
                  inherited tabAdvancedHtml: TTabSheet
                    inherited advmMailHtml: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                  inherited tabAdvancedJson: TTabSheet
                    inherited advmMailJson: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                  inherited tabAdvancedLog: TTabSheet
                    inherited advmLogMessage: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                end
              end
            end
            inherited pnlLists: TPanel
              Height = 519
              ExplicitHeight = 519
            end
            inherited grdMaster: TDBGrid
              Top = 600
              Width = 1190
            end
          end
        end
        object tabServiceContract: TTabSheet
          Caption = 'Service Contract'
          ImageIndex = 2
          inline frameServiceContract: TFrameVCLLandingMessageConfig
            Left = 0
            Top = 0
            Width = 1190
            Height = 672
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1190
            ExplicitHeight = 672
            inherited pnlButtons: TPanel
              Width = 1190
              ExplicitWidth = 1190
              inherited edtLandingUrl: TEdit
                Width = 758
                ExplicitWidth = 758
              end
              inherited btnGenerateTinyUrl: TButton
                Left = 871
                ExplicitLeft = 871
              end
              inherited edtTinyUrl: TEdit
                Left = 871
                ExplicitLeft = 871
              end
            end
            inherited pgcCustomerMail: TPageControl
              Width = 1005
              Height = 519
              ExplicitWidth = 1005
              ExplicitHeight = 519
              inherited tabEditor: TTabSheet
                ExplicitWidth = 997
                ExplicitHeight = 489
                inherited frameHTMLEditor1: TframeHTMLEditor
                  Width = 997
                  Height = 489
                  ExplicitWidth = 997
                  ExplicitHeight = 489
                  inherited Splitter1: TSplitter
                    Top = 112
                    Height = 355
                    ExplicitTop = 112
                    ExplicitHeight = 427
                  end
                  inherited ToolBar1: TToolBar
                    Width = 997
                    ExplicitWidth = 997
                  end
                  inherited ToolBar2: TToolBar
                    Width = 997
                    Height = 56
                    ExplicitWidth = 997
                    ExplicitHeight = 56
                    inherited ToolButton9: TToolButton
                      Left = 0
                      Wrap = True
                      ExplicitLeft = 0
                      ExplicitHeight = 30
                    end
                    inherited HeaderBtn: TToolButton
                      Left = 0
                      Top = 30
                      ExplicitLeft = 0
                      ExplicitTop = 30
                    end
                    inherited HtTextColorCombo1: THtTextColorCombo
                      Left = 51
                      Top = 30
                      ExplicitLeft = 51
                      ExplicitTop = 30
                    end
                    inherited HtBgColorCombo1: THtBgColorCombo
                      Left = 117
                      Top = 30
                      ExplicitLeft = 117
                      ExplicitTop = 30
                    end
                    inherited HtBorderCombo1: THtBorderCombo
                      Left = 180
                      Top = 30
                      ExplicitLeft = 180
                      ExplicitTop = 30
                    end
                    inherited NewTagBtn: TToolButton
                      Left = 240
                      Top = 30
                      ExplicitLeft = 240
                      ExplicitTop = 30
                    end
                    inherited HighlightBtn: TToolButton
                      Left = 293
                      Top = 30
                      ExplicitLeft = 293
                      ExplicitTop = 30
                    end
                    inherited ToolButton10: TToolButton
                      Left = 374
                      Top = 30
                      ExplicitLeft = 374
                      ExplicitTop = 30
                    end
                    inherited LoadSampleBtn: TToolButton
                      Left = 382
                      Top = 30
                      ExplicitLeft = 382
                      ExplicitTop = 30
                    end
                    inherited CanvasCombo: TComboBox
                      Left = 607
                      Top = 30
                      ExplicitLeft = 607
                      ExplicitTop = 30
                    end
                    inherited TemplateCombo: TComboBox
                      Left = 721
                      Top = 30
                      ExplicitLeft = 721
                      ExplicitTop = 30
                    end
                  end
                  inherited E: THtmlEditor
                    Top = 112
                    Width = 719
                    Height = 355
                    ExplicitTop = 254
                    ExplicitWidth = 719
                    ExplicitHeight = 213
                  end
                  inherited pnlFooter: TPanel
                    Top = 467
                    Width = 997
                    ExplicitTop = 467
                    ExplicitWidth = 997
                    inherited TrackBar1: TTrackBar
                      Left = 633
                      OnChange = nil
                      ExplicitLeft = 818
                    end
                  end
                  inherited LeftPages: TPageControl
                    Top = 112
                    Height = 355
                    ExplicitTop = 112
                    ExplicitHeight = 355
                    inherited tabTag: TTabSheet
                      ExplicitHeight = 327
                      inherited pnlLists: TPanel
                        Height = 327
                        ExplicitHeight = 327
                      end
                    end
                  end
                end
              end
              inherited tabCustomerMailPreview: TTabSheet
                inherited brwModelMessage: TTMSFNCWebBrowser
                  DoubleBuffered = True
                end
              end
              inherited tabCustomerTestMail: TTabSheet
                inherited pgcTestPreview: TPageControl
                  inherited tabPagePreview: TTabSheet
                    inherited brwTestMessage: TTMSFNCWebBrowser
                      DoubleBuffered = True
                    end
                  end
                end
              end
              inherited tabAdvanced: TTabSheet
                inherited pgAdvanced: TPageControl
                  inherited tabAdvancedHtml: TTabSheet
                    inherited advmMailHtml: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                  inherited tabAdvancedJson: TTabSheet
                    inherited advmMailJson: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                  inherited tabAdvancedLog: TTabSheet
                    inherited advmLogMessage: TAdvMemo
                      BorderColor = clGray
                      Gutter.BorderColor = clGray
                      Gutter.GutterColor = clBtnFace
                    end
                  end
                end
              end
            end
            inherited pnlLists: TPanel
              Height = 519
              ExplicitHeight = 519
            end
            inherited grdMaster: TDBGrid
              Top = 600
              Width = 1190
            end
          end
        end
      end
    end
  end
  object PgErgoConnection: TJanuaUniConnection
    AutoCommit = False
    DataTypeMap = <
      item
        DBType = 521
        FieldType = ftTimeStamp
      end
      item
        DBType = 520
        FieldType = ftTimeStamp
      end>
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'ergomercator'
    SpecificOptions.Strings = (
      'PostgreSQL.Schema=public'
      'PostgreSQL.UseUnicode=True')
    Options.DisconnectedMode = True
    PoolingOptions.MinPoolSize = 100
    PoolingOptions.MaxPoolSize = 10000
    PoolingOptions.ConnectionLifetime = 300000
    Pooling = True
    Username = 'ergo'
    Server = 'pg.januaservers.com'
    LoginPrompt = False
    SchemaID = 36
    SchemaParamKey = 'system.db_schema_id'
    SchemaSQL = 'SET SESSION "%s" = %s; '
    SchemaParams = <>
    Left = 256
    Top = 464
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object PgUni: TPostgreSQLUniProvider
    Left = 96
    Top = 552
  end
  object dsPickup: TDataSource
    DataSet = dmCarserviceUniPgSettings.qryTimeTable
    Left = 80
    Top = 416
  end
  object dsBooking: TDataSource
    DataSet = dmCarserviceUniPgSettings.qryBooking
    Left = 80
    Top = 360
  end
  object astHtml: TAdvHTMLMemoStyler
    AutoFormat = False
    LineComment = '//'
    MultiCommentLeft = '<!--'
    MultiCommentRight = '-->'
    CommentStyle.TextColor = clSilver
    CommentStyle.BkColor = clNone
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clBlack
    NumberStyle.BkColor = clNone
    NumberStyle.Style = []
    HighlightStyle.TextColor = clWhite
    HighlightStyle.BkColor = clRed
    HighlightStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          '&lt'
          'ABREV'
          'ACRONYM'
          'ADDRESS'
          'APPLET'
          'AREA'
          'AU'
          'AUTHOR'
          'B'
          'BANNER'
          'BASE'
          'BASEFONT'
          'BGSOUND'
          'BIG'
          'BLINK'
          'BLOCKQUOTE'
          'BODY'
          'BQ'
          'BR'
          'CAPTION'
          'CENTER'
          'CITE'
          'CODE'
          'COL'
          'COLGROUP'
          'COMMENT'
          'CREDIT'
          'DEL'
          'DFN'
          'DIR'
          'DIV'
          'DL'
          'DT'
          'DD'
          'EM'
          'EMBED'
          'FIG'
          'FN'
          'FONT'
          'FORM'
          'FRAME'
          'FRAMESET'
          'HEAD'
          'H1'
          'H2'
          'H3'
          'H4'
          'H5'
          'H6'
          'HR'
          'HTML'
          'I'
          'IFRAME'
          'IMG'
          'INPUT'
          'INS'
          'ISINDEX'
          'KBD'
          'LANG'
          'LH'
          'LI'
          'LINK'
          'LISTING'
          'MAP'
          'MARQUEE'
          'MATH'
          'MENU'
          'META'
          'MULTICOL'
          'NOBR'
          'NOFRAMES'
          'NOTE'
          'OL'
          'OVERLAY'
          'P'
          'PARAM'
          'PERSON'
          'PLAINTEXT'
          'PRE'
          'Q'
          'RANGE'
          'SAMP'
          'SCRIPT'
          'SELECT'
          'SMALL'
          'SPACER'
          'SPOT'
          'STRIKE'
          'STRONG'
          'SUB'
          'SUP'
          'TAB'
          'TBODY'
          'TEXTAREA'
          'TEXTFLOW'
          'TFOOT'
          'TH'
          'THEAD'
          'TITLE'
          'TT'
          'U'
          'UL'
          'VAR'
          'WBR'
          'XMP'
          'DOCTYPE'
          'PUBLIC')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clNone
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'HTML Standard Default'
      end
      item
        KeyWords.Strings = (
          'TABLE'
          'BORDER'
          'TD'
          'TR'
          'STYLE'
          'BORDERCOLOR'
          'WIDTH'
          'ID'
          'BORDERCOLORLIGHT'
          'BORDERCOLORDARK')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clOlive
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clNone
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'HTML Table Keywords'
      end
      item
        KeyWords.Strings = (
          'A'
          'HREF')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clNone
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
        BGColor = clNone
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
        BGColor = clNone
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
    Left = 252
    Top = 326
  end
  object astJson: TAdvJSONMemoStyler
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
    Left = 252
    Top = 533
  end
  object dsConfiguration: TUniDataSource
    DataSet = dmCarserviceUniPgSettings.qryConfiguration
    Left = 80
    Top = 484
  end
end
