object frmVCLCarServiceBookingList: TfrmVCLCarServiceBookingList
  Left = 0
  Top = 0
  Caption = 'Car Service Booking List'
  ClientHeight = 738
  ClientWidth = 1098
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object spl1: TSplitter
    Left = 169
    Top = 0
    Width = 6
    Height = 738
  end
  object pgcMessageSender: TPageControl
    Left = 175
    Top = 0
    Width = 923
    Height = 738
    ActivePage = tabSMSMessages
    Align = alClient
    TabOrder = 0
    object tabBooking: TTabSheet
      Caption = 'Booking List'
      DesignSize = (
        915
        708)
      object lblCellPhone: TLabel
        Left = 687
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
        Left = 687
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
        Width = 664
        Height = 499
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
        Left = 687
        Top = 40
        Width = 206
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Generate Tiny Url'
        TabOrder = 1
      end
      object edtTinyUrl: TEdit
        Left = 687
        Top = 79
        Width = 206
        Height = 23
        Anchors = [akTop, akRight]
        TabOrder = 2
        Text = 'edtTinyUrl'
      end
      object edtCustomerPhone: TEdit
        Left = 687
        Top = 151
        Width = 206
        Height = 23
        Anchors = [akTop, akRight]
        TabOrder = 3
        Text = 'edtTinyUrl'
      end
      object edtDriverPhone: TEdit
        Left = 687
        Top = 231
        Width = 206
        Height = 23
        Anchors = [akTop, akRight]
        TabOrder = 4
        Text = 'edtTinyUrl'
      end
      object btnSendMessageCustomer: TButton
        Left = 687
        Top = 272
        Width = 206
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Send Message Customer'
        TabOrder = 5
      end
      object btnSendMessageDriver: TButton
        Left = 687
        Top = 320
        Width = 206
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Send Message Driver'
        TabOrder = 6
      end
      object grdTimeTable: TDBCtrlGrid
        Left = 676
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
        Left = 678
        Top = 566
        Width = 215
        Height = 142
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
        Version = '1.8.9.1'
      end
      object AdvMemo1: TAdvMemo
        Left = 3
        Top = 532
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
        Version = '3.8.4.8'
        WordWrap = wwClientWidth
      end
      object AdvMemo2: TAdvMemo
        Left = 408
        Top = 532
        Width = 264
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
          'Richiesta prenotazione '
          'per ritiro veicolo '
          'in data <pickup date> '
          'cliccare sul '
          'link o usare la App per '
          'confermare: <link>')
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
        Version = '3.8.4.8'
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
        Width = 909
        Height = 634
        ActivePage = tabDriverMail
        Align = alClient
        TabOrder = 1
        object tabMailUser: TTabSheet
          Caption = 'Customer Mail'
          inline frameCustomerMailMessageConfig: TframeVCLMailMessageConfig
            Left = 0
            Top = 0
            Width = 901
            Height = 604
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 901
            ExplicitHeight = 604
            inherited pnlCustomerMail: TPanel
              Width = 901
              ExplicitWidth = 901
              inherited btnSaveConfig: TButton
                OnClick = frameCustomerMailMessageConfigbtnSaveConfigClick
              end
              inherited edtlMailCC: TEdit
                Width = 147
                ExplicitWidth = 147
              end
              inherited edtlMailBCC: TEdit
                Width = 147
                ExplicitWidth = 147
              end
              inherited edtMailCustomerTo: TEdit
                Width = 242
                ExplicitWidth = 242
              end
            end
            inherited pgcCustomerMail: TPageControl
              Width = 901
              Height = 447
              ExplicitWidth = 901
              ExplicitHeight = 447
              inherited tabMailCustomerHtml: TTabSheet
                ExplicitWidth = 893
                ExplicitHeight = 417
                inherited advmMailHtml: TAdvMemo
                  Width = 475
                  Height = 417
                  ExplicitWidth = 475
                  ExplicitHeight = 417
                end
                inherited dbgrdParams: TDBGrid
                  Left = 475
                  Height = 417
                end
              end
            end
            inherited grpURL: TGroupBox
              Width = 895
              ExplicitWidth = 895
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
                Width = 182
                ExplicitLeft = 411
                ExplicitTop = 20
                ExplicitWidth = 182
              end
              inherited edtTestTinyUrl: TEdit
                Left = 619
                Top = 20
                Width = 254
                Anchors = [akLeft, akTop, akRight]
                ExplicitLeft = 619
                ExplicitTop = 20
                ExplicitWidth = 254
              end
            end
          end
        end
        object tabDriverMail: TTabSheet
          Caption = 'Driver Mail'
          ImageIndex = 1
          object pgcDriversMail: TPageControl
            Left = 0
            Top = 0
            Width = 901
            Height = 604
            ActivePage = tabDriver1Mail
            Align = alClient
            TabOrder = 0
            object tabDriver1Mail: TTabSheet
              Caption = 'Driver 1'
              inline frameDriver1MailMessageConfig: TframeVCLMailMessageConfig
                Left = 0
                Top = 0
                Width = 893
                Height = 574
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 893
                ExplicitHeight = 574
                inherited pnlCustomerMail: TPanel
                  Width = 893
                  ExplicitWidth = 893
                  inherited edtlMailCC: TEdit
                    Width = 139
                    ExplicitWidth = 139
                  end
                  inherited edtlMailBCC: TEdit
                    Width = 139
                    ExplicitWidth = 139
                  end
                  inherited edtMailCustomerTo: TEdit
                    Width = 234
                    ExplicitWidth = 234
                  end
                end
                inherited pgcCustomerMail: TPageControl
                  Width = 893
                  Height = 417
                  ExplicitWidth = 893
                  ExplicitHeight = 417
                  inherited tabMailCustomerHtml: TTabSheet
                    ExplicitWidth = 885
                    ExplicitHeight = 387
                    inherited advmMailHtml: TAdvMemo
                      Width = 467
                      Height = 387
                      ExplicitWidth = 467
                      ExplicitHeight = 387
                    end
                    inherited dbgrdParams: TDBGrid
                      Left = 467
                      Height = 387
                    end
                  end
                end
                inherited grpURL: TGroupBox
                  Width = 887
                  ExplicitWidth = 887
                  inherited edtCustomerMobileUrl: TEdit
                    Width = 216
                    ExplicitWidth = 216
                  end
                  inherited edtCustomerMobileUrl1: TEdit
                    Width = 193
                    ExplicitWidth = 193
                  end
                  inherited edtTestTinyUrl: TEdit
                    Left = 607
                    Width = 269
                    ExplicitLeft = 607
                    ExplicitWidth = 269
                  end
                end
              end
            end
            object tabDriver2Mail: TTabSheet
              Caption = 'Driver 2'
              ImageIndex = 1
              inline frameDriver2MailMessageConfig: TframeVCLMailMessageConfig
                Left = 0
                Top = 0
                Width = 893
                Height = 574
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 893
                ExplicitHeight = 574
                inherited pnlCustomerMail: TPanel
                  Width = 893
                  ExplicitWidth = 893
                  inherited edtlMailCC: TEdit
                    Width = 139
                    ExplicitWidth = 139
                  end
                  inherited edtlMailBCC: TEdit
                    Width = 139
                    ExplicitWidth = 139
                  end
                  inherited edtMailCustomerTo: TEdit
                    Width = 234
                    ExplicitWidth = 234
                  end
                end
                inherited pgcCustomerMail: TPageControl
                  Width = 893
                  Height = 417
                  ExplicitWidth = 893
                  ExplicitHeight = 417
                  inherited tabMailCustomerHtml: TTabSheet
                    ExplicitWidth = 885
                    ExplicitHeight = 387
                    inherited advmMailHtml: TAdvMemo
                      Width = 467
                      Height = 387
                      ExplicitWidth = 467
                      ExplicitHeight = 387
                    end
                    inherited dbgrdParams: TDBGrid
                      Left = 467
                      Height = 387
                    end
                  end
                end
                inherited grpURL: TGroupBox
                  Width = 887
                  ExplicitWidth = 887
                  inherited edtCustomerMobileUrl: TEdit
                    Width = 216
                    ExplicitWidth = 216
                  end
                  inherited btnTestUrl: TButton
                    Left = 347
                    ExplicitLeft = 347
                  end
                  inherited edtCustomerMobileUrl1: TEdit
                    Width = 193
                    ExplicitWidth = 193
                  end
                  inherited edtTestTinyUrl: TEdit
                    Left = 599
                    Width = 277
                    Anchors = [akTop, akRight]
                    ExplicitLeft = 599
                    ExplicitWidth = 277
                  end
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
            Width = 901
            Height = 604
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 901
            ExplicitHeight = 604
            inherited pnlCustomerMail: TPanel
              Width = 901
              ExplicitWidth = 901
              inherited edtlMailCC: TEdit
                Width = 147
                ExplicitWidth = 147
              end
              inherited edtlMailBCC: TEdit
                Width = 147
                ExplicitWidth = 147
              end
              inherited edtMailCustomerTo: TEdit
                Width = 242
                ExplicitWidth = 242
              end
            end
            inherited pgcCustomerMail: TPageControl
              Width = 901
              Height = 447
              ExplicitWidth = 901
              ExplicitHeight = 447
              inherited tabMailCustomerHtml: TTabSheet
                ExplicitWidth = 893
                ExplicitHeight = 417
                inherited advmMailHtml: TAdvMemo
                  Width = 475
                  Height = 417
                  ExplicitWidth = 475
                  ExplicitHeight = 417
                end
                inherited dbgrdParams: TDBGrid
                  Left = 475
                  Height = 417
                end
              end
            end
            inherited grpURL: TGroupBox
              Width = 895
              ExplicitWidth = 895
              inherited edtCustomerMobileUrl: TEdit
                Width = 208
                Anchors = [akLeft, akTop, akRight]
                ExplicitWidth = 208
              end
              inherited edtCustomerMobileUrl1: TEdit
                Width = 336
                ExplicitWidth = 336
              end
              inherited edtTestTinyUrl: TEdit
                Width = 302
                Anchors = [akLeft, akTop, akRight]
                ExplicitWidth = 302
              end
            end
          end
        end
        object tabServiceMail: TTabSheet
          Caption = 'Service Mail'
          ImageIndex = 3
          inline frameServiceMailMessageConfig: TframeVCLMailMessageConfig
            Left = 0
            Top = 0
            Width = 901
            Height = 604
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 901
            ExplicitHeight = 604
            inherited pnlCustomerMail: TPanel
              Width = 901
              ExplicitWidth = 901
              inherited edtlMailCC: TEdit
                Width = 147
                ExplicitWidth = 147
              end
              inherited edtlMailBCC: TEdit
                Width = 147
                ExplicitWidth = 147
              end
              inherited edtMailCustomerTo: TEdit
                Width = 242
                ExplicitWidth = 242
              end
            end
            inherited pgcCustomerMail: TPageControl
              Width = 901
              Height = 447
              ExplicitWidth = 901
              ExplicitHeight = 447
              inherited tabMailCustomerHtml: TTabSheet
                ExplicitWidth = 893
                ExplicitHeight = 417
                inherited advmMailHtml: TAdvMemo
                  Width = 475
                  Height = 417
                  ExplicitWidth = 475
                  ExplicitHeight = 417
                end
                inherited dbgrdParams: TDBGrid
                  Left = 475
                  Height = 417
                end
              end
            end
            inherited grpURL: TGroupBox
              Width = 895
              ExplicitWidth = 895
              inherited edtCustomerMobileUrl: TEdit
                Width = 208
                Anchors = [akLeft, akTop, akRight]
                ExplicitWidth = 208
              end
              inherited edtCustomerMobileUrl1: TEdit
                Width = 336
                ExplicitWidth = 336
              end
              inherited edtTestTinyUrl: TEdit
                Width = 302
                Anchors = [akLeft, akTop, akRight]
                ExplicitWidth = 302
              end
            end
          end
        end
        object tabCheckConfiguration: TTabSheet
          Caption = 'Test Configurations'
          ImageIndex = 4
          object DBAdvNavigator1: TDBAdvNavigator
            Left = 0
            Top = 0
            Width = 901
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
            Width = 901
            Height = 411
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
            Version = '3.8.4.8'
            WordWrap = wwNone
            DataField = 'conf'
            DataSource = dsConfiguration
          end
          object CRDBGrid2: TCRDBGrid
            Left = 0
            Top = 33
            Width = 901
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
            Width = 901
            Height = 604
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
            Version = '3.8.4.8'
            WordWrap = wwNone
          end
        end
      end
      object grpSendgrid: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 909
        Height = 62
        Align = alTop
        Caption = 'Send Grid'
        TabOrder = 2
        DesignSize = (
          909
          62)
        object edtAPIKey: TEdit
          Left = 341
          Top = 24
          Width = 543
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          Text = 
            'SG.PTSsUPYoQwGH6Lc56g7i4A.pcMP1F5svCMdH2iDzMDDPikR6def4gaTNnNuuk' +
            'X5ih8'
          TextHint = 'APIKey'
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
        Width = 915
        Height = 708
        ActivePage = tabSerizlizer
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
            Version = '3.8.4.8'
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
            Version = '3.8.4.8'
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
            Version = '3.8.4.8'
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
        object tabTwilio: TTabSheet
          Caption = 'Twilio'
          ImageIndex = 1
        end
        object tabConfiguration: TTabSheet
          Caption = 'CarService Main Configuration'
          ImageIndex = 2
          DesignSize = (
            907
            678)
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
            Width = 879
            Height = 146
            Anchors = [akLeft, akTop, akRight]
            Caption = 'URL'
            TabOrder = 2
            DesignSize = (
              879
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
              Width = 494
              Height = 23
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 0
              Text = 'https://caruser.januaservers.com'
              TextHint = 'APIKey'
            end
            object Edit3: TEdit
              Left = 173
              Top = 64
              Width = 494
              Height = 23
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              Text = 'https://caruser.januaservers.com'
              TextHint = 'APIKey'
            end
            object Edit4: TEdit
              Left = 173
              Top = 104
              Width = 494
              Height = 23
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
              Text = 'https://caruser.januaservers.com'
              TextHint = 'APIKey'
            end
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
        Width = 915
        Height = 708
        ActivePage = tsBookingEnd
        Align = alClient
        TabOrder = 0
        object tabLandingCustomer: TTabSheet
          Caption = 'Customer '
          inline frameLandingCustomer: TFrameVCLLandingMessageConfig
            Left = 0
            Top = 0
            Width = 907
            Height = 678
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 907
            ExplicitHeight = 678
            inherited pnlButtons: TPanel
              Width = 907
              ExplicitWidth = 907
              inherited edtLandingUrl: TEdit
                Left = 151
                ExplicitLeft = 151
              end
              inherited btnGenerateTinyUrl: TButton
                Left = 678
                ExplicitLeft = 678
              end
              inherited edtTinyUrl: TEdit
                Left = 678
                ExplicitLeft = 678
              end
            end
            inherited pgcCustomerMail: TPageControl
              Width = 489
              Height = 597
              ExplicitWidth = 489
              ExplicitHeight = 597
              inherited tabMailCustomerHtml: TTabSheet
                ExplicitWidth = 481
                ExplicitHeight = 567
                inherited advmMailHtml: TAdvMemo
                  Width = 481
                  Height = 567
                  ExplicitWidth = 481
                  ExplicitHeight = 567
                end
              end
            end
            inherited dbgrdParams: TDBGrid
              Left = 489
              Height = 597
            end
          end
        end
        object tabLandingDriver1: TTabSheet
          Caption = 'Driver '
          ImageIndex = 1
          inline frameLandingDriver: TFrameVCLLandingMessageConfig
            Left = 0
            Top = 0
            Width = 907
            Height = 678
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 907
            ExplicitHeight = 678
            inherited pnlButtons: TPanel
              Width = 907
              ExplicitWidth = 907
              inherited edtLandingUrl: TEdit
                Left = 151
                ExplicitLeft = 151
              end
              inherited btnGenerateTinyUrl: TButton
                Left = 678
                ExplicitLeft = 678
              end
              inherited edtTinyUrl: TEdit
                Left = 678
                ExplicitLeft = 678
              end
            end
            inherited pgcCustomerMail: TPageControl
              Width = 489
              Height = 597
              ExplicitWidth = 489
              ExplicitHeight = 597
              inherited tabMailCustomerHtml: TTabSheet
                ExplicitWidth = 481
                ExplicitHeight = 567
                inherited advmMailHtml: TAdvMemo
                  Width = 481
                  Height = 567
                  ExplicitWidth = 481
                  ExplicitHeight = 567
                end
              end
            end
            inherited dbgrdParams: TDBGrid
              Left = 489
              Height = 597
            end
          end
        end
        object tsBookingEnd: TTabSheet
          Caption = 'Booking End'
          ImageIndex = 2
          inline frameLandingBookingEnd: TFrameVCLLandingMessageConfig
            Left = 0
            Top = 0
            Width = 907
            Height = 678
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 907
            ExplicitHeight = 678
            inherited pnlButtons: TPanel
              Width = 907
              ExplicitWidth = 893
              inherited edtLandingUrl: TEdit
                Width = 565
                ExplicitWidth = 551
              end
              inherited btnGenerateTinyUrl: TButton
                Left = 678
                ExplicitLeft = 664
              end
              inherited edtTinyUrl: TEdit
                Left = 678
                ExplicitLeft = 664
              end
            end
            inherited pgcCustomerMail: TPageControl
              Width = 489
              Height = 597
              ExplicitWidth = 475
              ExplicitHeight = 591
              inherited tabMailCustomerHtml: TTabSheet
                ExplicitWidth = 481
                ExplicitHeight = 567
                inherited advmMailHtml: TAdvMemo
                  Width = 481
                  Height = 567
                  ExplicitWidth = 467
                  ExplicitHeight = 561
                end
              end
            end
            inherited dbgrdParams: TDBGrid
              Left = 489
              Height = 597
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
        Width = 915
        Height = 507
        ActivePage = tabSmsCustomer
        Align = alClient
        TabOrder = 0
        object tabSmsCustomer: TTabSheet
          Caption = 'Sms Customer'
          inline frameSMSCustomer: TframeVCLSMSMessageConfig
            Left = 0
            Top = 0
            Width = 907
            Height = 477
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 907
            ExplicitHeight = 477
            inherited grpURL: TGroupBox
              Width = 901
              ExplicitWidth = 901
              inherited btnTestUrl: TButton
                OnClick = frameSMSCustomerbtnTestUrlClick
              end
              inherited edtCustomerMobileUrl1: TEdit
                Width = 81
                ExplicitWidth = 81
              end
              inherited edtTestTinyUrl: TEdit
                Left = 623
                Width = 274
                ExplicitLeft = 623
                ExplicitWidth = 274
              end
            end
            inherited btnSendMailTo: TButton
              OnClick = frameSMSCustomerbtnSendMailToClick
            end
            inherited edPhoneCustomerTo: TEdit
              Width = 502
              ExplicitWidth = 502
            end
            inherited dbgrdParams: TDBGrid
              Width = 381
              Height = 202
            end
            inherited advmJson: TAdvMemo
              Top = 301
              Width = 392
              Height = 167
              ExplicitTop = 301
              ExplicitWidth = 392
              ExplicitHeight = 167
            end
          end
        end
        object tabSmsDriver1: TTabSheet
          Caption = 'Driver 1 Sms'
          ImageIndex = 1
          inline frameSmsDriver1: TframeVCLSMSMessageConfig
            Left = 0
            Top = 0
            Width = 907
            Height = 477
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 907
            ExplicitHeight = 477
            inherited grpURL: TGroupBox
              Width = 901
              ExplicitWidth = 901
              inherited edtTestTinyUrl: TEdit
                Width = 96
                ExplicitWidth = 96
              end
            end
            inherited edPhoneCustomerTo: TEdit
              Width = 502
              ExplicitWidth = 502
            end
            inherited dbgrdParams: TDBGrid
              Width = 381
              Height = 477
            end
            inherited advmJson: TAdvMemo
              Width = 635
              Height = 175
              ExplicitWidth = 635
              ExplicitHeight = 175
            end
          end
        end
        object tabSmsDriver2: TTabSheet
          Caption = 'Driver 2 Sms'
          ImageIndex = 2
          inline frameSMSDriver2: TframeVCLSMSMessageConfig
            Left = 0
            Top = 0
            Width = 907
            Height = 477
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 907
            ExplicitHeight = 477
            inherited grpURL: TGroupBox
              Width = 901
              ExplicitWidth = 901
              inherited edtTestTinyUrl: TEdit
                Width = 82
                ExplicitWidth = 82
              end
            end
            inherited edPhoneCustomerTo: TEdit
              Width = 395
              ExplicitWidth = 395
            end
            inherited dbgrdParams: TDBGrid
              Width = 395
              Height = 477
            end
            inherited advmJson: TAdvMemo
              Width = 635
              Height = 175
              ExplicitWidth = 635
              ExplicitHeight = 175
            end
          end
        end
      end
      inline frameVCLMailSmsSenderConfig1: TframeVCLMailSmsSenderConfig
        Left = 0
        Top = 0
        Width = 915
        Height = 201
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 915
        ExplicitHeight = 201
        inherited advmJson: TAdvMemo
          Width = 457
          Height = 195
          ExplicitWidth = 457
          ExplicitHeight = 195
        end
        inherited grpSettings: TGroupBox
          Height = 195
          ExplicitHeight = 195
        end
      end
    end
  end
  object pnlLists: TPanel
    Left = 0
    Top = 0
    Width = 169
    Height = 738
    Align = alLeft
    TabOrder = 1
    ExplicitHeight = 732
    object spl2: TSplitter
      Left = 1
      Top = 537
      Width = 167
      Height = 6
      Cursor = crVSplit
      Align = alTop
    end
    object lst1: TListBox
      Left = 1
      Top = 1
      Width = 167
      Height = 536
      Align = alTop
      ItemHeight = 15
      TabOrder = 0
    end
    object lst2: TListBox
      Left = 1
      Top = 543
      Width = 167
      Height = 194
      Align = alClient
      ItemHeight = 15
      TabOrder = 1
      ExplicitHeight = 188
    end
  end
  object qryBooking: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO carservice.booking_head_view'
      
        '  (id, office_id, jguid, db_schema_id, user_insert, insert_date,' +
        ' customer_id, state_id, branch_id, vehicle_model, vehicle_color,' +
        ' vehicle_numberplate, an_last_name, an_vat_id, an_address, an_po' +
        'stal_code, an_fiscal_code, an_town, an_phone, branch_address, br' +
        'anch_postal_code, branch_town, branch_phone, cust_first_name, cu' +
        'st_last_name, full_address, cust_cellular, cust_email)'
      'VALUES'
      
        '  (:id, :office_id, :jguid, :db_schema_id, :user_insert, :insert' +
        '_date, :customer_id, :state_id, :branch_id, :vehicle_model, :veh' +
        'icle_color, :vehicle_numberplate, :an_last_name, :an_vat_id, :an' +
        '_address, :an_postal_code, :an_fiscal_code, :an_town, :an_phone,' +
        ' :branch_address, :branch_postal_code, :branch_town, :branch_pho' +
        'ne, :cust_first_name, :cust_last_name, :full_address, :cust_cell' +
        'ular, :cust_email)')
    SQLDelete.Strings = (
      'DELETE FROM carservice.booking_head_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE carservice.booking_head_view'
      'SET'
      
        '  id = :id, office_id = :office_id, jguid = :jguid, db_schema_id' +
        ' = :db_schema_id, user_insert = :user_insert, insert_date = :ins' +
        'ert_date, customer_id = :customer_id, state_id = :state_id, bran' +
        'ch_id = :branch_id, vehicle_model = :vehicle_model, vehicle_colo' +
        'r = :vehicle_color, vehicle_numberplate = :vehicle_numberplate, ' +
        'an_last_name = :an_last_name, an_vat_id = :an_vat_id, an_address' +
        ' = :an_address, an_postal_code = :an_postal_code, an_fiscal_code' +
        ' = :an_fiscal_code, an_town = :an_town, an_phone = :an_phone, br' +
        'anch_address = :branch_address, branch_postal_code = :branch_pos' +
        'tal_code, branch_town = :branch_town, branch_phone = :branch_pho' +
        'ne, cust_first_name = :cust_first_name, cust_last_name = :cust_l' +
        'ast_name, full_address = :full_address, cust_cellular = :cust_ce' +
        'llular, cust_email = :cust_email'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM carservice.booking_head_view'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, office_id, jguid, db_schema_id, user_insert, insert_d' +
        'ate, customer_id, state_id, branch_id, vehicle_model, vehicle_co' +
        'lor, vehicle_numberplate, an_last_name, an_vat_id, an_address, a' +
        'n_postal_code, an_fiscal_code, an_town, an_phone, branch_address' +
        ', branch_postal_code, branch_town, branch_phone, cust_first_name' +
        ', cust_last_name, full_address, cust_cellular, cust_email FROM c' +
        'arservice.booking_head_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM carservice.booking_head_view'
      ''
      ') t')
    DataTypeMap = <
      item
        DBType = 517
        FieldType = ftWideString
        FieldLength = 1024
      end
      item
        DBType = 520
        FieldType = ftDateTime
      end
      item
        DBType = 521
        FieldType = ftDateTime
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from carservice.booking_head_view'
      'order by id desc'
      '')
    Left = 184
    Top = 360
    object qryBookingid: TLargeintField
      FieldName = 'id'
    end
    object qryBookingoffice_id: TIntegerField
      FieldName = 'office_id'
    end
    object qryBookingjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryBookingdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryBookinguser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qryBookinginsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryBookingcustomer_id: TIntegerField
      FieldName = 'customer_id'
    end
    object qryBookingstate_id: TSmallintField
      FieldName = 'state_id'
    end
    object qryBookingbranch_id: TIntegerField
      FieldName = 'branch_id'
    end
    object qryBookingvehicle_model: TWideStringField
      FieldName = 'vehicle_model'
      Size = 128
    end
    object qryBookingvehicle_color: TWideStringField
      FieldName = 'vehicle_color'
      Size = 64
    end
    object qryBookingvehicle_numberplate: TWideStringField
      FieldName = 'vehicle_numberplate'
      Size = 24
    end
    object qryBookingpickup_day: TDateField
      FieldName = 'pickup_day'
    end
    object qryBookingpickup_slot_id: TSmallintField
      FieldName = 'pickup_slot_id'
    end
    object qryBookingreturn_day: TDateField
      FieldName = 'return_day'
    end
    object qryBookingreturn_slot_id: TSmallintField
      FieldName = 'return_slot_id'
    end
    object qryBookingan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Size = 128
    end
    object qryBookingan_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qryBookingan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qryBookingan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
    end
    object qryBookingan_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qryBookingan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qryBookingservice_name: TWideStringField
      FieldName = 'service_name'
      Size = 128
    end
    object qryBookingservice_address: TWideStringField
      FieldName = 'service_address'
      Size = 1024
    end
    object qryBookingan_phone: TWideStringField
      FieldName = 'an_phone'
      Size = 30
    end
    object qryBookingan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryBookingan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryBookingbranch_address: TWideStringField
      FieldName = 'branch_address'
      Size = 256
    end
    object qryBookingbranch_postal_code: TWideStringField
      FieldName = 'branch_postal_code'
    end
    object qryBookingbranch_town: TWideStringField
      FieldName = 'branch_town'
      Size = 128
    end
    object qryBookingbranch_phone: TWideStringField
      FieldName = 'branch_phone'
      Size = 30
    end
    object qryBookingcust_first_name: TWideStringField
      FieldName = 'cust_first_name'
      Size = 128
    end
    object qryBookingcust_last_name: TWideStringField
      FieldName = 'cust_last_name'
      Size = 128
    end
    object qryBookingfull_address: TWideStringField
      FieldName = 'full_address'
      Size = 256
    end
    object qryBookingcust_cellular: TWideStringField
      FieldName = 'cust_cellular'
    end
    object qryBookingcust_email: TWideStringField
      FieldName = 'cust_email'
      Size = 256
    end
    object qryBookingpickup_address: TWideStringField
      FieldName = 'pickup_address'
      Size = 1024
    end
    object qryBookingreturn_address: TWideStringField
      FieldName = 'return_address'
      Size = 1024
    end
    object qryBookingpickup_time: TWideStringField
      FieldName = 'pickup_time'
      Size = 6
    end
    object qryBookingreturn_time: TWideStringField
      FieldName = 'return_time'
      Size = 6
    end
    object qryBookingpickup_date: TDateField
      FieldName = 'pickup_date'
    end
    object qryBookingreturn_date: TDateField
      FieldName = 'return_date'
    end
    object qryBookingdriver1_id: TIntegerField
      FieldName = 'driver1_id'
    end
    object qryBookingdriver2_id: TIntegerField
      FieldName = 'driver2_id'
    end
    object qryBookingdriver1_email: TWideStringField
      FieldName = 'driver1_email'
      Size = 256
    end
    object qryBookingdriver2_email: TWideStringField
      FieldName = 'driver2_email'
      Size = 256
    end
    object qryBookingdriver1_cellular: TWideStringField
      FieldName = 'driver1_cellular'
    end
    object qryBookingdriver2_cellular: TWideStringField
      FieldName = 'driver2_cellular'
    end
    object qryBookingpickup_jguid: TGuidField
      FieldName = 'pickup_jguid'
      Size = 38
    end
    object qryBookingreturn_jguid: TGuidField
      FieldName = 'return_jguid'
      Size = 38
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
    Left = 104
    Top = 384
  end
  object dsPickup: TDataSource
    DataSet = qryTimeTable
    Left = 256
    Top = 400
  end
  object dsBooking: TDataSource
    DataSet = qryBooking
    Left = 184
    Top = 424
  end
  object qryTimeTable: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO carservice.timetable_view'
      
        '  (workingday, slot_id, booking_id, from_id, to_id, state_id, sl' +
        'ot_des, booked)'
      'VALUES'
      
        '  (:workingday, :slot_id, :booking_id, :from_id, :to_id, :state_' +
        'id, :slot_des, :booked)')
    SQLDelete.Strings = (
      'DELETE FROM carservice.timetable_view'
      'WHERE'
      '  workingday = :Old_workingday AND slot_id = :Old_slot_id')
    SQLUpdate.Strings = (
      'UPDATE carservice.timetable_view'
      'SET'
      
        '  workingday = :workingday, slot_id = :slot_id, booking_id = :bo' +
        'oking_id, from_id = :from_id, to_id = :to_id, state_id = :state_' +
        'id, slot_des = :slot_des, booked = :booked'
      'WHERE'
      '  workingday = :Old_workingday AND slot_id = :Old_slot_id')
    SQLLock.Strings = (
      'SELECT * FROM carservice.timetable_view'
      'WHERE'
      '  workingday = :Old_workingday AND slot_id = :Old_slot_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT workingday, slot_id, booking_id, from_id, to_id, state_id' +
        ', slot_des, booked FROM carservice.timetable_view'
      'WHERE'
      '  workingday = :workingday AND slot_id = :slot_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM carservice.timetable_view'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from carservice.timetable_booking_view v1'
      'where '
      ' booking_id = :id')
    MasterSource = dsBooking
    MasterFields = 'id'
    DetailFields = 'booking_id'
    Left = 184
    Top = 492
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = 41
      end>
    object DateField1: TDateField
      FieldName = 'workingday'
      ReadOnly = True
    end
    object SmallintField1: TSmallintField
      FieldName = 'slot_id'
      ReadOnly = True
    end
    object LargeintField1: TLargeintField
      FieldName = 'booking_id'
    end
    object IntegerField1: TIntegerField
      FieldName = 'from_id'
    end
    object IntegerField2: TIntegerField
      FieldName = 'to_id'
    end
    object SmallintField2: TSmallintField
      FieldName = 'state_id'
    end
    object BooleanField1: TBooleanField
      FieldName = 'booked'
    end
    object WideStringField1: TWideStringField
      FieldName = 'slot_des'
      ReadOnly = True
      Size = 6
    end
    object GuidField1: TGuidField
      FieldName = 'jguid'
      ReadOnly = True
      Size = 38
    end
    object qryTimeTabledriver_anagraph_id: TIntegerField
      FieldName = 'driver_anagraph_id'
    end
    object qryTimeTablean_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryTimeTablepickup_an_id: TIntegerField
      FieldName = 'pickup_an_id'
    end
    object qryTimeTablepickup_first_name: TWideStringField
      FieldName = 'pickup_first_name'
      Size = 128
    end
    object qryTimeTablepickup_vat_id: TSmallintField
      FieldName = 'pickup_vat_id'
    end
    object qryTimeTablepickup_address: TWideStringField
      FieldName = 'pickup_address'
      Size = 256
    end
    object qryTimeTablepickup_postal_code: TWideStringField
      FieldName = 'pickup_postal_code'
    end
    object qryTimeTablepickup_fiscal_code: TWideStringField
      FieldName = 'pickup_fiscal_code'
      Size = 16
    end
    object qryTimeTablepickup_town: TWideStringField
      FieldName = 'pickup_town'
      Size = 128
    end
    object qryTimeTablepickup_last_name: TWideStringField
      FieldName = 'pickup_last_name'
      Size = 128
    end
    object qryTimeTablepickup_full_address: TWideMemoField
      FieldName = 'pickup_full_address'
      BlobType = ftWideMemo
    end
    object qryTimeTablepickup_phone: TWideStringField
      FieldName = 'pickup_phone'
      Size = 30
    end
    object qryTimeTablepickup_email: TWideStringField
      FieldName = 'pickup_email'
      Size = 256
    end
    object qryTimeTablepickup_cellular: TWideStringField
      FieldName = 'pickup_cellular'
    end
    object qryTimeTabledelivery_an_id: TIntegerField
      FieldName = 'delivery_an_id'
    end
    object qryTimeTabledelivery_first_name: TWideStringField
      FieldName = 'delivery_first_name'
      Size = 128
    end
    object qryTimeTabledelivery_vat_id: TSmallintField
      FieldName = 'delivery_vat_id'
    end
    object qryTimeTabledelivery_address: TWideStringField
      FieldName = 'delivery_address'
      Size = 256
    end
    object qryTimeTabledelivery_postal_code: TWideStringField
      FieldName = 'delivery_postal_code'
    end
    object qryTimeTabledelivery_fiscal_code: TWideStringField
      FieldName = 'delivery_fiscal_code'
      Size = 16
    end
    object qryTimeTabledelivery_town: TWideStringField
      FieldName = 'delivery_town'
      Size = 128
    end
    object qryTimeTabledelivery_last_name: TWideStringField
      FieldName = 'delivery_last_name'
      Size = 128
    end
    object qryTimeTabledelivery_full_address: TWideMemoField
      FieldName = 'delivery_full_address'
      BlobType = ftWideMemo
    end
    object qryTimeTabledelivery_phone: TWideStringField
      FieldName = 'delivery_phone'
      Size = 30
    end
    object qryTimeTabledelivery_email: TWideStringField
      FieldName = 'delivery_email'
      Size = 256
    end
    object qryTimeTabledelivery_cellular: TWideStringField
      FieldName = 'delivery_cellular'
    end
    object qryTimeTablepickup_time: TWideStringField
      FieldName = 'pickup_time'
      Size = 6
    end
    object qryTimeTablepickup_date: TDateField
      FieldName = 'pickup_date'
    end
    object qryTimeTabledriver_id: TIntegerField
      FieldName = 'driver_id'
    end
    object qryTimeTabledriver_email: TWideStringField
      FieldName = 'driver_email'
      Size = 256
    end
    object qryTimeTabledriver1_cellular: TWideStringField
      FieldName = 'driver1_cellular'
    end
    object qryTimeTabledriver_jguid: TGuidField
      FieldName = 'driver_jguid'
      Size = 38
    end
    object qryTimeTablevehicle_numberplate: TWideStringField
      FieldName = 'vehicle_numberplate'
      Size = 24
    end
    object qryTimeTablevehicle_model: TWideStringField
      FieldName = 'vehicle_model'
      Size = 128
    end
    object qryTimeTablevehicle_color: TWideStringField
      FieldName = 'vehicle_color'
      Size = 64
    end
    object qryTimeTablepickup_day: TDateField
      FieldName = 'pickup_day'
    end
    object qryTimeTablepickup_slot_id: TSmallintField
      FieldName = 'pickup_slot_id'
    end
    object qryTimeTablereturn_day: TDateField
      FieldName = 'return_day'
    end
  end
  object astHtml: TAdvHTMLMemoStyler
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
  object qryConfiguration: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO carservice.timetable_view'
      
        '  (workingday, slot_id, booking_id, from_id, to_id, state_id, sl' +
        'ot_des, booked)'
      'VALUES'
      
        '  (:workingday, :slot_id, :booking_id, :from_id, :to_id, :state_' +
        'id, :slot_des, :booked)')
    SQLDelete.Strings = (
      'DELETE FROM carservice.timetable_view'
      'WHERE'
      '  workingday = :Old_workingday AND slot_id = :Old_slot_id')
    SQLUpdate.Strings = (
      'UPDATE carservice.timetable_view'
      'SET'
      
        '  workingday = :workingday, slot_id = :slot_id, booking_id = :bo' +
        'oking_id, from_id = :from_id, to_id = :to_id, state_id = :state_' +
        'id, slot_des = :slot_des, booked = :booked'
      'WHERE'
      '  workingday = :Old_workingday AND slot_id = :Old_slot_id')
    SQLLock.Strings = (
      'SELECT * FROM carservice.timetable_view'
      'WHERE'
      '  workingday = :Old_workingday AND slot_id = :Old_slot_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT workingday, slot_id, booking_id, from_id, to_id, state_id' +
        ', slot_des, booked FROM carservice.timetable_view'
      'WHERE'
      '  workingday = :workingday AND slot_id = :slot_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM carservice.timetable_view'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT db_schema_id, key, conf, jguid, deleted'
      #9'FROM system.db_schema_config_view;')
    Left = 184
    Top = 564
    object qryConfigurationdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryConfigurationkey: TWideStringField
      FieldName = 'key'
      Size = 128
    end
    object qryConfigurationconf: TWideMemoField
      FieldName = 'conf'
      BlobType = ftWideMemo
    end
    object qryConfigurationjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryConfigurationdeleted: TBooleanField
      FieldName = 'deleted'
    end
  end
  object dsConfiguration: TUniDataSource
    DataSet = qryConfiguration
    Left = 256
    Top = 604
  end
  object qryConfigTimetable: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO carservice.booking_head_view'
      
        '  (id, office_id, jguid, db_schema_id, user_insert, insert_date,' +
        ' customer_id, state_id, branch_id, vehicle_model, vehicle_color,' +
        ' vehicle_numberplate, an_last_name, an_vat_id, an_address, an_po' +
        'stal_code, an_fiscal_code, an_town, an_phone, branch_address, br' +
        'anch_postal_code, branch_town, branch_phone, cust_first_name, cu' +
        'st_last_name, full_address, cust_cellular, cust_email)'
      'VALUES'
      
        '  (:id, :office_id, :jguid, :db_schema_id, :user_insert, :insert' +
        '_date, :customer_id, :state_id, :branch_id, :vehicle_model, :veh' +
        'icle_color, :vehicle_numberplate, :an_last_name, :an_vat_id, :an' +
        '_address, :an_postal_code, :an_fiscal_code, :an_town, :an_phone,' +
        ' :branch_address, :branch_postal_code, :branch_town, :branch_pho' +
        'ne, :cust_first_name, :cust_last_name, :full_address, :cust_cell' +
        'ular, :cust_email)')
    SQLDelete.Strings = (
      'DELETE FROM carservice.booking_head_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE carservice.booking_head_view'
      'SET'
      
        '  id = :id, office_id = :office_id, jguid = :jguid, db_schema_id' +
        ' = :db_schema_id, user_insert = :user_insert, insert_date = :ins' +
        'ert_date, customer_id = :customer_id, state_id = :state_id, bran' +
        'ch_id = :branch_id, vehicle_model = :vehicle_model, vehicle_colo' +
        'r = :vehicle_color, vehicle_numberplate = :vehicle_numberplate, ' +
        'an_last_name = :an_last_name, an_vat_id = :an_vat_id, an_address' +
        ' = :an_address, an_postal_code = :an_postal_code, an_fiscal_code' +
        ' = :an_fiscal_code, an_town = :an_town, an_phone = :an_phone, br' +
        'anch_address = :branch_address, branch_postal_code = :branch_pos' +
        'tal_code, branch_town = :branch_town, branch_phone = :branch_pho' +
        'ne, cust_first_name = :cust_first_name, cust_last_name = :cust_l' +
        'ast_name, full_address = :full_address, cust_cellular = :cust_ce' +
        'llular, cust_email = :cust_email'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM carservice.booking_head_view'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, office_id, jguid, db_schema_id, user_insert, insert_d' +
        'ate, customer_id, state_id, branch_id, vehicle_model, vehicle_co' +
        'lor, vehicle_numberplate, an_last_name, an_vat_id, an_address, a' +
        'n_postal_code, an_fiscal_code, an_town, an_phone, branch_address' +
        ', branch_postal_code, branch_town, branch_phone, cust_first_name' +
        ', cust_last_name, full_address, cust_cellular, cust_email FROM c' +
        'arservice.booking_head_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM carservice.booking_head_view'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'insert_date'
        FieldType = ftDateTime
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM carservice.timetable_summary_view '
      'where jguid = :jguid'
      '')
    Left = 184
    Top = 632
    ParamData = <
      item
        DataType = ftString
        Name = 'jguid'
        Value = '693a14cd-fad0-4889-9054-b78259af301e'
      end>
    object qryConfigTimetablepickup_an_id: TIntegerField
      FieldName = 'pickup_an_id'
    end
    object qryConfigTimetablepickup_first_name: TWideStringField
      FieldName = 'pickup_first_name'
      Size = 128
    end
    object qryConfigTimetablepickup_vat_id: TSmallintField
      FieldName = 'pickup_vat_id'
    end
    object qryConfigTimetablepickup_address: TWideStringField
      FieldName = 'pickup_address'
      Size = 256
    end
    object qryConfigTimetablepickup_postal_code: TWideStringField
      FieldName = 'pickup_postal_code'
    end
    object qryConfigTimetablepickup_fiscal_code: TWideStringField
      FieldName = 'pickup_fiscal_code'
      Size = 16
    end
    object qryConfigTimetablepickup_town: TWideStringField
      FieldName = 'pickup_town'
      Size = 128
    end
    object qryConfigTimetablepickup_last_name: TWideStringField
      FieldName = 'pickup_last_name'
      Size = 128
    end
    object qryConfigTimetablepickup_full_address: TWideMemoField
      FieldName = 'pickup_full_address'
      BlobType = ftWideMemo
    end
    object qryConfigTimetablepickup_phone: TWideStringField
      FieldName = 'pickup_phone'
      Size = 30
    end
    object qryConfigTimetablepickup_email: TWideStringField
      FieldName = 'pickup_email'
      Size = 256
    end
    object qryConfigTimetablepickup_cellular: TWideStringField
      FieldName = 'pickup_cellular'
    end
    object qryConfigTimetabledelivery_an_id: TIntegerField
      FieldName = 'delivery_an_id'
    end
    object qryConfigTimetabledelivery_first_name: TWideStringField
      FieldName = 'delivery_first_name'
      Size = 128
    end
    object qryConfigTimetabledelivery_vat_id: TSmallintField
      FieldName = 'delivery_vat_id'
    end
    object qryConfigTimetabledelivery_address: TWideStringField
      FieldName = 'delivery_address'
      Size = 256
    end
    object qryConfigTimetabledelivery_postal_code: TWideStringField
      FieldName = 'delivery_postal_code'
    end
    object qryConfigTimetabledelivery_fiscal_code: TWideStringField
      FieldName = 'delivery_fiscal_code'
      Size = 16
    end
    object qryConfigTimetabledelivery_town: TWideStringField
      FieldName = 'delivery_town'
      Size = 128
    end
    object qryConfigTimetabledelivery_last_name: TWideStringField
      FieldName = 'delivery_last_name'
      Size = 128
    end
    object qryConfigTimetabledelivery_full_address: TWideMemoField
      FieldName = 'delivery_full_address'
      BlobType = ftWideMemo
    end
    object qryConfigTimetabledelivery_phone: TWideStringField
      FieldName = 'delivery_phone'
      Size = 30
    end
    object qryConfigTimetabledelivery_email: TWideStringField
      FieldName = 'delivery_email'
      Size = 256
    end
    object qryConfigTimetabledelivery_cellular: TWideStringField
      FieldName = 'delivery_cellular'
    end
    object qryConfigTimetablejguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryConfigTimetablepickup_time: TWideStringField
      FieldName = 'pickup_time'
      Size = 6
    end
    object qryConfigTimetablepickup_date: TDateField
      FieldName = 'pickup_date'
    end
    object qryConfigTimetabledriver_id: TIntegerField
      FieldName = 'driver_id'
    end
    object qryConfigTimetablebooking_id: TLargeintField
      FieldName = 'booking_id'
    end
    object qryConfigTimetabledriver_email: TWideStringField
      FieldName = 'driver_email'
      Size = 256
    end
    object qryConfigTimetabledriver1_cellular: TWideStringField
      FieldName = 'driver1_cellular'
    end
    object qryConfigTimetabledriver_jguid: TGuidField
      FieldName = 'driver_jguid'
      Size = 38
    end
  end
end
