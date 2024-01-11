object frmTestCreationComponents: TfrmTestCreationComponents
  Left = 0
  Top = 0
  Caption = 'frmTestCreationComponents'
  ClientHeight = 547
  ClientWidth = 934
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 934
    Height = 49
    Align = alTop
    TabOrder = 0
    object edUsername: TLabeledEdit
      Left = 8
      Top = 22
      Width = 121
      Height = 21
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'Username'
      TabOrder = 0
      Text = 'rickyarzu@gmail.com'
    end
    object edPassword: TLabeledEdit
      Left = 152
      Top = 22
      Width = 121
      Height = 21
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.Caption = 'Password'
      TabOrder = 1
      Text = 'f4nkul0'
    end
    object edAppName: TLabeledEdit
      Left = 296
      Top = 22
      Width = 121
      Height = 21
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.Caption = 'AppName'
      TabOrder = 2
      Text = 'dico33.com'
    end
    object edCustomDir: TLabeledEdit
      Left = 440
      Top = 22
      Width = 193
      Height = 21
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = 'Custom Dir'
      TabOrder = 3
      Text = 'c:\januaproject\Test'
    end
    object Button1: TButton
      Left = 639
      Top = 18
      Width = 114
      Height = 25
      Caption = 'test'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 49
    Width = 934
    Height = 498
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Core'
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 926
        Height = 470
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 0
        object TabSheet3: TTabSheet
          Caption = 'Core OS'
          object memCoreOS: TMemo
            Left = 0
            Top = 0
            Width = 918
            Height = 442
            Align = alClient
            Lines.Strings = (
              'Memo1')
            TabOrder = 0
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Logger'
          ImageIndex = 1
          object memLogger: TMemo
            Left = 0
            Top = 0
            Width = 918
            Height = 442
            Align = alClient
            Lines.Strings = (
              'Memo1')
            TabOrder = 0
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Application'
          ImageIndex = 2
          object memApplication: TMemo
            Left = 0
            Top = 0
            Width = 918
            Height = 442
            Align = alClient
            Lines.Strings = (
              'Memo1')
            TabOrder = 0
          end
        end
        object JanuaVirtualDataset: TTabSheet
          Caption = 'TabSheet5'
          ImageIndex = 4
          object memVirtualDataset: TMemo
            Left = 0
            Top = 0
            Width = 918
            Height = 442
            Align = alClient
            Lines.Strings = (
              'Memo1')
            TabOrder = 0
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Health Booking'
          ImageIndex = 4
        end
        object TabUserProfile: TTabSheet
          Caption = 'User Profile'
          ImageIndex = 5
          object AdvSplitter1: TAdvSplitter
            Left = 489
            Top = 0
            Height = 442
            Appearance.BorderColor = clNone
            Appearance.BorderColorHot = clNone
            Appearance.Color = clWhite
            Appearance.ColorTo = clSilver
            Appearance.ColorHot = clWhite
            Appearance.ColorHotTo = clGray
            GripStyle = sgDots
            ExplicitLeft = 400
            ExplicitHeight = 462
          end
          object memUserProfile: TAdvMemo
            Left = 492
            Top = 0
            Width = 489
            Height = 442
            Cursor = crIBeam
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alLeft
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
            BorderColor = 15987699
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
            Gutter.BorderColor = 15987699
            Gutter.GutterColor = clWhite
            Gutter.GutterColorTo = clNone
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
            SelColor = clBlack
            SelBkColor = clNavy
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
            Version = '3.6.6.0'
            WordWrap = wwNone
          end
          object memUserProfileTarget: TAdvMemo
            Left = 0
            Top = 0
            Width = 489
            Height = 442
            Cursor = crIBeam
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alLeft
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
            BorderColor = 15987699
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
            Gutter.BorderColor = 15987699
            Gutter.GutterColor = clWhite
            Gutter.GutterColorTo = clNone
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
            SelColor = clBlack
            SelBkColor = clNavy
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
            Version = '3.6.6.0'
            WordWrap = wwNone
          end
        end
        object tabGoogleGeoCoding: TTabSheet
          Caption = 'tabGoogleGeoCoding'
          ImageIndex = 6
          object PageControl4: TPageControl
            Left = 0
            Top = 0
            Width = 918
            Height = 442
            ActivePage = tabGoogleCompletion
            Align = alClient
            TabOrder = 0
            object tabGoogleCompletion: TTabSheet
              Caption = 'tabGoogleCompletion'
              object Panel3: TPanel
                Left = 0
                Top = 0
                Width = 910
                Height = 41
                Align = alTop
                TabOrder = 0
                object edGoogleAddress: TEdit
                  Left = 8
                  Top = 8
                  Width = 313
                  Height = 21
                  TabOrder = 0
                  TextHint = 'Srivere qui indirizzo da Cercare'
                end
                object Button4: TButton
                  Left = 327
                  Top = 8
                  Width = 155
                  Height = 25
                  Caption = 'Esegui'
                  TabOrder = 1
                  OnClick = Button4Click
                end
              end
              object memAddresses: TAdvMemo
                Left = 0
                Top = 41
                Width = 350
                Height = 373
                Cursor = crIBeam
                ActiveLineSettings.ShowActiveLine = False
                ActiveLineSettings.ShowActiveLineIndicator = False
                Align = alLeft
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
                BorderColor = 15987699
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
                Gutter.BorderColor = 15987699
                Gutter.GutterColor = clWhite
                Gutter.GutterColorTo = clNone
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
                SelColor = clBlack
                SelBkColor = clNavy
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
                Version = '3.6.6.0'
                WordWrap = wwNone
              end
              object memJsonAddresses: TAdvMemo
                Left = 350
                Top = 41
                Width = 560
                Height = 373
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
                BorderColor = 15987699
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
                Gutter.BorderColor = 15987699
                Gutter.GutterColor = clWhite
                Gutter.GutterColorTo = clNone
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
                SelColor = clBlack
                SelBkColor = clNavy
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
                Version = '3.6.6.0'
                WordWrap = wwNone
              end
            end
            object tabGoogleGeoCodingAddress: TTabSheet
              Caption = 'tabGoogleGeoCodingAddress'
              ImageIndex = 1
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 910
                Height = 41
                Align = alTop
                TabOrder = 0
                object lbLatitude: TLabel
                  Left = 488
                  Top = 8
                  Width = 16
                  Height = 13
                  Caption = '0.0'
                end
                object lbLongitude: TLabel
                  Left = 688
                  Top = 8
                  Width = 16
                  Height = 13
                  Caption = '0.0'
                end
                object edGoogleSearchAddress: TEdit
                  Left = 8
                  Top = 8
                  Width = 313
                  Height = 21
                  TabOrder = 0
                  TextHint = 'Srivere qui indirizzo da Cercare'
                end
                object Button5: TButton
                  Left = 327
                  Top = 8
                  Width = 155
                  Height = 25
                  Caption = 'Esegui'
                  TabOrder = 1
                  OnClick = Button5Click
                end
              end
              object memGoogleCoordinates: TAdvMemo
                Left = 0
                Top = 41
                Width = 910
                Height = 373
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
                BorderColor = 15987699
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
                Gutter.BorderColor = 15987699
                Gutter.GutterColor = clWhite
                Gutter.GutterColorTo = clNone
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
                SelColor = clBlack
                SelBkColor = clNavy
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
                Version = '3.6.6.0'
                WordWrap = wwNone
              end
            end
          end
        end
        object tabMetronic: TTabSheet
          Caption = 'Metronic'
          ImageIndex = 7
          object PageControl5: TPageControl
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 912
            Height = 436
            ActivePage = TabSheet8
            Align = alClient
            TabOrder = 0
            object TabSheet8: TTabSheet
              Caption = 'Icons'
              object Panel5: TPanel
                Left = 0
                Top = 0
                Width = 904
                Height = 41
                Align = alTop
                TabOrder = 0
                object Button6: TButton
                  Left = 8
                  Top = 8
                  Width = 106
                  Height = 25
                  Caption = 'Test'
                  TabOrder = 0
                  OnClick = Button6Click
                end
              end
              object MemoIcon3: TMemo
                Left = 610
                Top = 41
                Width = 305
                Height = 367
                Align = alLeft
                TabOrder = 1
              end
              object MemoIcon2: TMemo
                Left = 305
                Top = 41
                Width = 305
                Height = 367
                Align = alLeft
                TabOrder = 2
              end
              object MemoIcon1: TMemo
                Left = 0
                Top = 41
                Width = 305
                Height = 367
                Align = alLeft
                TabOrder = 3
              end
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Postgres'
      ImageIndex = 1
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 926
        Height = 470
        ActivePage = TabSheet11
        Align = alClient
        TabOrder = 0
        object TabSheet11: TTabSheet
          Caption = 'System'
          ImageIndex = 3
          object memSystem: TMemo
            Left = 0
            Top = 0
            Width = 918
            Height = 442
            Align = alClient
            Lines.Strings = (
              'Memo1')
            TabOrder = 0
          end
        end
        object tabHealth: TTabSheet
          Caption = 'Health Booking'
          ImageIndex = 4
          object memHealthBooking: TMemo
            Left = 0
            Top = 0
            Width = 918
            Height = 442
            Align = alClient
            Lines.Strings = (
              'Memo1')
            TabOrder = 0
          end
        end
        object tabUserProfileSystem: TTabSheet
          Caption = 'tabUserProfileSystem'
          ImageIndex = 2
        end
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Controllers'
      ImageIndex = 2
      object Edit1: TEdit
        Left = 24
        Top = 24
        Width = 177
        Height = 21
        TabOrder = 0
        Text = 'Prova'
      end
      object Edit2: TEdit
        Left = 207
        Top = 24
        Width = 177
        Height = 21
        TabOrder = 1
        Text = 'Prova2'
      end
      object Edit3: TEdit
        Left = 390
        Top = 24
        Width = 177
        Height = 21
        TabOrder = 2
        Text = 'Prova3'
      end
      object Edit4: TEdit
        Left = 584
        Top = 24
        Width = 177
        Height = 21
        TabOrder = 3
        Text = 'Prova4'
      end
      object Memo6: TMemo
        Left = 24
        Top = 88
        Width = 360
        Height = 145
        Lines.Strings = (
          ''
          'Prova'
          'Prova2'
          'Prova3'
          'Prova4')
        TabOrder = 4
      end
      object Button2: TButton
        Left = 24
        Top = 57
        Width = 177
        Height = 25
        Caption = 'TestComponent'
        TabOrder = 5
        OnClick = Button2Click
      end
      object AdvMemo1: TAdvMemo
        Left = 399
        Top = 88
        Width = 362
        Height = 145
        Cursor = crIBeam
        ActiveLineSettings.ShowActiveLine = False
        ActiveLineSettings.ShowActiveLineIndicator = False
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
        BorderColor = 15987699
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
        Gutter.BorderColor = 15987699
        Gutter.GutterColor = clWhite
        Gutter.GutterColorTo = clNone
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
        SelColor = clBlack
        SelBkColor = clNavy
        ShowRightMargin = True
        SmartTabs = False
        SyntaxStyles = AdvJSONMemoStyler1
        TabOrder = 6
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
        Version = '3.6.6.0'
        WordWrap = wwNone
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Test Grids'
      ImageIndex = 3
      object EnhCRDBGrid1: TEnhCRDBGrid
        Left = 0
        Top = 41
        Width = 926
        Height = 153
        Align = alTop
        DataSource = DataSource1
        TabOrder = 0
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
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 926
        Height = 41
        Align = alTop
        Caption = 'Panel2'
        TabOrder = 1
        object Button3: TButton
          Left = 4
          Top = 4
          Width = 121
          Height = 27
          Caption = 'Test'
          TabOrder = 0
          OnClick = Button3Click
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 194
        Width = 926
        Height = 127
        Align = alTop
        DataSource = DataSource1
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object EnhDBGrid1: TEnhDBGrid
        Left = 0
        Top = 321
        Width = 926
        Height = 149
        Align = alClient
        DataSource = DataSource1
        HighlightBGColor = clBlack
        HighlightFont.Charset = DEFAULT_CHARSET
        HighlightFont.Color = clWindowText
        HighlightFont.Height = -11
        HighlightFont.Name = 'Tahoma'
        HighlightFont.Style = []
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Test Oracle'
      ImageIndex = 4
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 926
        Height = 41
        Align = alTop
        TabOrder = 0
        object LabeledEdit1: TLabeledEdit
          Left = 16
          Top = 16
          Width = 177
          Height = 21
          EditLabel.Width = 61
          EditLabel.Height = 13
          EditLabel.Caption = 'LabeledEdit1'
          TabOrder = 0
        end
        object Button7: TButton
          Left = 199
          Top = 8
          Width = 138
          Height = 25
          Caption = 'Test Open Datasets'
          TabOrder = 1
          OnClick = Button7Click
        end
      end
      object EnhCRDBGrid2: TEnhCRDBGrid
        Left = 0
        Top = 41
        Width = 926
        Height = 429
        Align = alClient
        DataSource = OrdDataSource
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
    object TabSheet10: TTabSheet
      Caption = 'Test Html'
      ImageIndex = 5
      object PageControl6: TPageControl
        Left = 0
        Top = 0
        Width = 926
        Height = 470
        ActivePage = TabSheet13
        Align = alClient
        TabOrder = 0
        object TabSheet13: TTabSheet
          Caption = 'Test Html5'
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 145
            Height = 442
            Align = alLeft
            Caption = 'Panel7'
            TabOrder = 0
            object Button8: TButton
              Left = 1
              Top = 1
              Width = 143
              Height = 32
              Align = alTop
              Caption = 'Pagina Semplice'
              TabOrder = 0
              OnClick = Button8Click
            end
            object Button9: TButton
              Left = 1
              Top = 33
              Width = 143
              Height = 32
              Align = alTop
              Caption = 'Simple H1 Tag'
              TabOrder = 1
              OnClick = Button9Click
            end
          end
          object PageControl7: TPageControl
            Left = 145
            Top = 0
            Width = 773
            Height = 442
            ActivePage = TabSheet16
            Align = alClient
            TabOrder = 1
            object TabSheet16: TTabSheet
              Caption = 'Codice'
              object memHtml5: TAdvMemo
                Left = 0
                Top = 0
                Width = 765
                Height = 414
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
                BorderColor = 15987699
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
                Gutter.BorderColor = 15987699
                Gutter.GutterColor = clWhite
                Gutter.GutterColorTo = clNone
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
                SelColor = clBlack
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
                Version = '3.6.6.0'
                WordWrap = wwNone
              end
            end
            object TabSheet17: TTabSheet
              Caption = 'Windows Browser'
              ImageIndex = 1
              object WebBrowser1: TWebBrowser
                Left = 0
                Top = 0
                Width = 765
                Height = 414
                Align = alClient
                TabOrder = 0
                ExplicitLeft = 296
                ExplicitTop = 104
                ExplicitWidth = 300
                ExplicitHeight = 150
                ControlData = {
                  4C000000114F0000CA2A00000000000000000000000000000000000000000000
                  000000004C000000000000000000000001000000E0D057007335CF11AE690800
                  2B2E126208000000000000004C0000000114020000000000C000000000000046
                  8000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000100000000000000000000000000000000000000}
              end
              object WebBrowser2: TWebBrowser
                Left = 0
                Top = 0
                Width = 765
                Height = 414
                Align = alClient
                TabOrder = 1
                ExplicitLeft = 104
                ExplicitTop = 16
                ExplicitWidth = 300
                ExplicitHeight = 150
                ControlData = {
                  4C000000114F0000CA2A00000000000000000000000000000000000000000000
                  000000004C000000000000000000000001000000E0D057007335CF11AE690800
                  2B2E126208000000000000004C0000000114020000000000C000000000000046
                  8000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000100000000000000000000000000000000000000}
              end
            end
            object TabSheet18: TTabSheet
              Caption = 'TabSheet18'
              ImageIndex = 2
            end
          end
        end
        object TabSheet14: TTabSheet
          Caption = 'Test Bootstrap'
          ImageIndex = 1
        end
        object TabSheet15: TTabSheet
          Caption = 'Test Metronic 5'
          ImageIndex = 2
        end
        object tabTestHtmlFunctions: TTabSheet
          Caption = 'Html Functions'
          ImageIndex = 3
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 153
            Height = 442
            Align = alLeft
            TabOrder = 0
            object Button10: TButton
              Left = 1
              Top = 1
              Width = 151
              Height = 40
              Align = alTop
              Caption = 'Test Css'
              TabOrder = 0
              OnClick = Button10Click
            end
          end
          object AdvMemo2: TAdvMemo
            Left = 153
            Top = 0
            Width = 765
            Height = 442
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
            BorderColor = 15987699
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
            Gutter.BorderColor = 15987699
            Gutter.GutterColor = clWhite
            Gutter.GutterColorTo = clNone
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
            SelColor = clBlack
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
            Version = '3.6.6.0'
            WordWrap = wwNone
          end
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 280
    Top = 168
    object est1: TMenuItem
      Caption = 'Test'
      object ComponentiBase1: TMenuItem
        Caption = 'Componenti Base'
        OnClick = Button1Click
      end
      object PostgresHealth1: TMenuItem
        Caption = 'Postgres Health'
        OnClick = PostgresHealth1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object FreeBaseComponents1: TMenuItem
        Caption = 'Free Base Components'
        OnClick = FreeBaseComponents1Click
      end
    end
  end
  object JanuaCoreLogger1: TJanuaCoreLogger
    Component = Owner
    LogType = jltError
    AutoFileName = True
    IsCustomServer = False
    ErrorFileName = 'Error'
    LogFileName = 'Log'
    Left = 296
    Top = 424
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
    Left = 544
    Top = 152
  end
  object DataSource1: TDataSource
    Left = 600
    Top = 344
  end
  object JanuaGridController1: TJanuaGridController
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    DBGrid = EnhCRDBGrid1
    OnNeedColor = JanuaGridController1NeedColor
    Left = 388
    Top = 177
  end
  object JanuaGridController2: TJanuaGridController
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    DBGrid = EnhDBGrid1
    OnNeedColor = JanuaGridController2NeedColor
    Left = 396
    Top = 337
  end
  object JanuaGridController3: TJanuaGridController
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    DBGrid = DBGrid1
    Left = 396
    Top = 401
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
    Left = 720
    Top = 168
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
          '.h1'
          '.h2'
          '.h3'
          '.h4'
          '.h5'
          '.border'
          '.comment')
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
    Left = 568
    Top = 256
  end
  object JanuaGoogleGeoCoding1: TJanuaGoogleGeoCoding
    Verbose = False
    LogToFile = False
    Language = jlaItalian
    TestMode = False
    ISOLanguage.Verbose = False
    ISOLanguage.ID = 1
    ISOLanguage.LanguageName = 'Italiano'
    ISOLanguage.Code = 'it'
    ISOLanguage.IsoCode3 = 'ita'
    ISOLanguage.Language = jlaItalian
    ISOCountry.Verbose = False
    ISOCountry.isoCountry = jicItalia
    GoogleKey = 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c'
    Left = 416
    Top = 248
  end
  object VirtualTable1: TVirtualTable
    Left = 696
    Top = 280
    Data = {04000000000000000000}
  end
  object OracleUniProvider1: TOracleUniProvider
    Left = 72
    Top = 192
  end
  object table: TJanuaUniConnection
    ProviderName = 'oracle'
    SpecificOptions.Strings = (
      'oracle.Direct=True')
    Username = 'buttega'
    Server = 'ora.januaservers.com:58521:XE'
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 248
    EncryptedPassword = 'BDFF8AFF8BFF8BFFCCFF98FFCBFF'
  end
  object UniTable1: TUniTable
    TableName = 'DOCUMENTI_TIPO'
    Connection = table
    Left = 72
    Top = 312
  end
  object OrdDataSource: TUniDataSource
    Left = 72
    Top = 384
  end
end
