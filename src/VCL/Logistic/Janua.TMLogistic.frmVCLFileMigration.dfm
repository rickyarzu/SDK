inherited frmTMLogisticVCLFileMigration: TfrmTMLogisticVCLFileMigration
  Caption = 'File Manager Cloud'
  ClientHeight = 708
  ClientWidth = 1146
  OnCreate = FormCreate
  ExplicitWidth = 1162
  ExplicitHeight = 747
  PixelsPerInch = 96
  TextHeight = 17
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1146
    Height = 547
    ActivePage = tsNewFileMoving
    Align = alClient
    TabOrder = 0
    object tabConnection: TTabSheet
      Caption = 'GDrive Connection'
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 223
        Top = 3
        Width = 912
        Height = 509
        Align = alClient
        TabOrder = 0
        DesignSize = (
          912
          509)
        object ProgressLabel: TLabel
          Left = 400
          Top = 218
          Width = 177
          Height = 13
          AutoSize = False
        end
        object lbPathPratiche: TLabel
          Left = 680
          Top = 206
          Width = 46
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'Pratiche'
        end
        object lbPathLocationEntrate: TLabel
          Left = 680
          Top = 252
          Width = 46
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'Pratiche'
        end
        object TreeView1: TTreeView
          Left = 6
          Top = 16
          Width = 635
          Height = 320
          Anchors = [akLeft, akTop, akRight, akBottom]
          HideSelection = False
          Indent = 19
          TabOrder = 0
          OnChange = TreeView1Change
          OnClick = TreeView1Click
        end
        object GroupBox1: TGroupBox
          Left = 6
          Top = 342
          Width = 895
          Height = 136
          Anchors = [akLeft, akRight, akBottom]
          Caption = 'Details'
          TabOrder = 1
          object Label1: TLabel
            Left = 16
            Top = 32
            Width = 38
            Height = 17
            Caption = 'Name:'
          end
          object Label2: TLabel
            Left = 16
            Top = 64
            Width = 30
            Height = 17
            Caption = 'Date:'
          end
          object Label3: TLabel
            Left = 16
            Top = 96
            Width = 26
            Height = 17
            Caption = 'Size:'
          end
          object FileName: TLabel
            Left = 72
            Top = 32
            Width = 4
            Height = 17
          end
          object Created: TLabel
            Left = 72
            Top = 64
            Width = 4
            Height = 17
          end
          object Size: TLabel
            Left = 72
            Top = 96
            Width = 4
            Height = 17
          end
        end
        object DownloadBtn: TButton
          Left = 680
          Top = 57
          Width = 217
          Height = 25
          Hint = 'Download selected file'
          Anchors = [akTop, akRight]
          Caption = 'Download'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = DownloadBtnClick
        end
        object UploadBtn: TButton
          Left = 680
          Top = 97
          Width = 217
          Height = 25
          Hint = 'Upload a file in the root or selected folder'
          Anchors = [akTop, akRight]
          Caption = 'Upload'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = UploadBtnClick
        end
        object CreateFolderBtn: TButton
          Left = 680
          Top = 12
          Width = 217
          Height = 25
          Hint = 'Create folder under root or selected folder'
          Anchors = [akTop, akRight]
          Caption = 'Create folder'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = CreateFolderBtnClick
        end
        object DeleteBtn: TButton
          Left = 680
          Top = 140
          Width = 217
          Height = 25
          Hint = 'Delete the selected file'
          Anchors = [akTop, akRight]
          Caption = 'Delete'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = DeleteBtnClick
        end
        object edCustomPath: TCheckBox
          Left = 680
          Top = 183
          Width = 217
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'Use Custom Path'
          Checked = True
          State = cbChecked
          TabOrder = 6
        end
        object edPathLocationPratiche: TEdit
          Left = 680
          Top = 225
          Width = 217
          Height = 25
          Anchors = [akTop, akRight]
          TabOrder = 7
          Text = 'Z:\RDPConnect\Softnet\PRATICHE'
        end
        object edPathLocationEntrate: TEdit
          Left = 680
          Top = 271
          Width = 217
          Height = 25
          Anchors = [akTop, akRight]
          TabOrder = 8
          Text = 'Z:\RDPConnect\Softnet\ENTRATE'
        end
        object Edit1: TEdit
          Left = 680
          Top = 329
          Width = 220
          Height = 25
          Anchors = [akTop, akRight]
          TabOrder = 9
          Text = 'Edit1'
        end
        object btnSearchAndOpen: TButton
          Left = 680
          Top = 298
          Width = 220
          Height = 25
          Hint = 'Delete the selected file'
          Anchors = [akTop, akRight]
          Caption = 'Search And Open File'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = btnSearchAndOpenClick
        end
      end
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 214
        Height = 509
        Align = alLeft
        TabOrder = 1
        object ConnectBtn: TButton
          Left = 8
          Top = 206
          Width = 185
          Height = 25
          Hint = 'Connect to the selected cloud storage'
          Caption = 'Connect'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = ConnectBtnClick
        end
        object DisconnectBtn: TButton
          Left = 8
          Top = 237
          Width = 185
          Height = 25
          Hint = 'Disconnect from cloud storage'
          Caption = 'Disconnect'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = DisconnectBtnClick
        end
        object clrAccess: TCheckBox
          Left = 10
          Top = 268
          Width = 121
          Height = 17
          Caption = 'Clear access token'
          TabOrder = 2
        end
        object RadioGroup1: TRadioGroup
          Left = 8
          Top = 16
          Width = 185
          Height = 184
          Caption = 'Select cloud storage'
          ItemIndex = 1
          Items.Strings = (
            'DropBox'
            'Google Drive'
            'Microsoft OneDrive'
            'Box'
            'Hubic'
            'HiDrive'
            'Yandex Disk')
          TabOrder = 3
        end
      end
    end
    object tabPratiche: TTabSheet
      Caption = 'Pratiche'
      ImageIndex = 1
      object pnlPratiche: TPanel
        Left = 0
        Top = 0
        Width = 1138
        Height = 57
        Align = alTop
        TabOrder = 0
        object DBNavigator1: TDBNavigator
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 256
          Height = 49
          Align = alLeft
          TabOrder = 0
        end
        object btnWorks: TButton
          AlignWithMargins = True
          Left = 423
          Top = 4
          Width = 151
          Height = 49
          Align = alLeft
          Caption = 'Registra Pratiche'
          TabOrder = 1
          OnClick = btnWorksClick
        end
        object btnTestWorkUpload: TButton
          AlignWithMargins = True
          Left = 266
          Top = 4
          Width = 151
          Height = 49
          Align = alLeft
          Caption = 'Test Doc Pratica'
          TabOrder = 2
          OnClick = btnTestWorkUploadClick
        end
      end
      object grdReceiptsAttachments: TDBGrid
        AlignWithMargins = True
        Left = 455
        Top = 60
        Width = 680
        Height = 452
        Align = alClient
        DataSource = dsDocumentiPratiche
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'anno'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codfiliale'
            Title.Caption = 'cfl'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codattivita'
            Title.Caption = 'att'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contatore'
            Title.Caption = 'cont'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataacquisizione'
            Width = 132
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipodoc'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'note'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'path'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomefile'
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'flgvisibile'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jguid'
            Visible = True
          end>
      end
      object grdReceiptsFiles: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 60
        Width = 446
        Height = 452
        Align = alLeft
        DataSource = dsWorkAttachments
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'work_id'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'blob_id'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'location'
            Title.Caption = 'L'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'filename'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'description'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'context'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'extension'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'blob_jguid'
            Visible = True
          end>
      end
    end
    object tabEntrate: TTabSheet
      Caption = 'Entrate'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1138
        Height = 57
        Align = alTop
        TabOrder = 0
        object DBNavigator2: TDBNavigator
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 256
          Height = 49
          Align = alLeft
          TabOrder = 0
        end
        object btnReceipts: TButton
          AlignWithMargins = True
          Left = 423
          Top = 4
          Width = 151
          Height = 49
          Align = alLeft
          Caption = 'Registra Documenti'
          TabOrder = 1
          OnClick = btnReceiptsClick
        end
        object btnTestReceipts: TButton
          AlignWithMargins = True
          Left = 266
          Top = 4
          Width = 151
          Height = 49
          Align = alLeft
          Caption = 'Test Doc Entrate'
          TabOrder = 2
          OnClick = btnTestReceiptsClick
        end
      end
      object grdDocReceipts: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 60
        Width = 446
        Height = 452
        Align = alLeft
        DataSource = dsDocumentsAttachments
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'doc_id'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'blob_id'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'blob_jguid'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'filename'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'location'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'extension'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'context'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'description'
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 455
        Top = 60
        Width = 680
        Height = 452
        Align = alClient
        DataSource = dsDocumentiEntrate
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'anno'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contatore'
            Title.Caption = 'cont'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataacquisizione'
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipodoc'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'note'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'path'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomefile'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'flgvisibile'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jguid'
            Visible = True
          end>
      end
    end
    object tabLog: TTabSheet
      Caption = 'Log'
      ImageIndex = 3
      object advMemoLog: TAdvMemo
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1132
        Height = 509
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
        RightMargin = 120
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
        Version = '3.7.5.0'
        WordWrap = wwNone
      end
    end
    object tabFileMoving: TTabSheet
      Caption = 'FileMoving'
      ImageIndex = 4
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1138
        Height = 57
        Align = alTop
        TabOrder = 0
        DesignSize = (
          1138
          57)
        object Label4: TLabel
          Left = 192
          Top = 13
          Width = 164
          Height = 17
          Caption = 'Select Directory for Working'
        end
        object lbTargetReceipts: TLabel
          Left = 704
          Top = 13
          Width = 90
          Height = 17
          Caption = 'Target Receipts'
        end
        object btnSelectFolder: TButton
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 169
          Height = 49
          Align = alLeft
          Caption = 'Select and Populate Folder'
          TabOrder = 0
          OnClick = btnSelectFolderClick
        end
        object edRootDirectory: TAdvDirectoryEdit
          Left = 192
          Top = 32
          Width = 337
          Height = 25
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          ShortCut = 0
          TabOrder = 1
          Text = 'G:\Il mio Drive'
          Visible = True
          Version = '1.7.0.0'
          ButtonStyle = bsButton
          ButtonWidth = 18
          Flat = False
          Etched = False
          Glyph.Data = {
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
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
            FDFDFDFDFDFDFDFDFDFDB7B76F67676767676767676767B7FDFD6FFDBFBFBFBF
            BFBFBFBFBFB7FD6FFDFD6FFDBFBFBFBFBF7F7F7F7777FD6FFDFD6FFDBFBFBFBF
            BFBFBFBF7F7FFD6FFDFD6FFDFDFDBFBFBFBFBFBFBF7FFD6FFDFD6FFDFDFDFDFD
            BFBFBFBFBFBFFD6FFDFD6FFDB76F6FAFFDFDFDFDFDFDFD6FFDFD6FFDBFBFBFB7
            6F6F6F6F6F6F6F6F525277FDBFBFBFBFFD9BF79B52F75AA49B4977FDFDFDFDFD
            FD9BF5A35B6D9BF5A35177B7B7B7B7B7779BF5F7A4089BEDF75AFDFDFDFDFDFD
            FD9B9B5252A452525249FDFDFDFDFDFDFDF75AED9BA39AF75AA4FDFDFDFDFDFD
            FDFD9BA352A452A452FDFDFDFDFDFDFDFDFDFDA39B089B9BFDFD}
          ReadOnly = False
          BrowseDialogText = 'Select Directory'
        end
        object btnMoveReceipts: TButton
          Left = 535
          Top = 3
          Width = 83
          Height = 49
          Anchors = [akLeft, akTop, akBottom]
          Caption = 'Move Receipts Files'
          TabOrder = 2
          WordWrap = True
          OnClick = btnMoveReceiptsClick
        end
        object btnOpen: TButton
          Left = 624
          Top = 2
          Width = 74
          Height = 49
          Anchors = [akLeft, akTop, akBottom]
          Caption = 'Open Files'
          TabOrder = 3
          WordWrap = True
          OnClick = btnOpenClick
        end
        object btnMoveWorks: TButton
          Left = 895
          Top = 2
          Width = 83
          Height = 49
          Anchors = [akLeft, akTop, akBottom]
          Caption = 'Move WorKs Files'
          TabOrder = 4
          WordWrap = True
          OnClick = btnMoveWorksClick
        end
        object btnOpenWorks: TButton
          Left = 984
          Top = 2
          Width = 74
          Height = 49
          Anchors = [akLeft, akTop, akBottom]
          Caption = 'Open Files'
          TabOrder = 5
          WordWrap = True
          OnClick = btnOpenWorksClick
        end
      end
      object EnhDBGrid1: TEnhDBGrid
        Left = 0
        Top = 57
        Width = 417
        Height = 458
        Align = alLeft
        DataSource = UniDataSource1
        HighlightBGColor = clBlack
        HighlightFont.Charset = DEFAULT_CHARSET
        HighlightFont.Color = clWindowText
        HighlightFont.Height = -11
        HighlightFont.Name = 'Tahoma'
        HighlightFont.Style = []
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FileName'
            Width = 380
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 889
        Top = 57
        Width = 249
        Height = 458
        Align = alClient
        Caption = 'Panel5'
        TabOrder = 2
        object EnhDBGrid2: TEnhDBGrid
          Left = 1
          Top = 1
          Width = 247
          Height = 128
          Align = alTop
          DataSource = dmTMMigration.dsWorks
          HighlightBGColor = clBlack
          HighlightFont.Charset = DEFAULT_CHARSET
          HighlightFont.Color = clWindowText
          HighlightFont.Height = -11
          HighlightFont.Name = 'Tahoma'
          HighlightFont.Style = []
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'workdate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'year'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'type_id'
              Visible = True
            end>
        end
        object EnhDBGrid3: TEnhDBGrid
          Left = 1
          Top = 129
          Width = 247
          Height = 328
          Align = alClient
          DataSource = dsWorkAttach
          HighlightBGColor = clBlack
          HighlightFont.Charset = DEFAULT_CHARSET
          HighlightFont.Color = clWindowText
          HighlightFont.Height = -11
          HighlightFont.Name = 'Tahoma'
          HighlightFont.Style = []
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'blob_id'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cblb_jguid'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'file_ext'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'blob_filename'
              Visible = True
            end>
        end
      end
      object Panel6: TPanel
        Left = 417
        Top = 57
        Width = 472
        Height = 458
        Align = alLeft
        Caption = 'Panel5'
        TabOrder = 3
        object EnhDBGrid4: TEnhDBGrid
          Left = 1
          Top = 1
          Width = 470
          Height = 128
          Align = alTop
          DataSource = dmTMMigration.dsDocuments
          HighlightBGColor = clBlack
          HighlightFont.Charset = DEFAULT_CHARSET
          HighlightFont.Color = clWindowText
          HighlightFont.Height = -11
          HighlightFont.Name = 'Tahoma'
          HighlightFont.Style = []
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'doc_date'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'doc_year'
              Visible = True
            end>
        end
        object EnhDBGrid5: TEnhDBGrid
          Left = 1
          Top = 129
          Width = 470
          Height = 328
          Align = alClient
          DataSource = dsAttachments
          HighlightBGColor = clBlack
          HighlightFont.Charset = DEFAULT_CHARSET
          HighlightFont.Color = clWindowText
          HighlightFont.Height = -11
          HighlightFont.Name = 'Tahoma'
          HighlightFont.Style = []
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'blob_filename'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cblb_jguid'
              Width = 204
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'file_ext'
              Width = 94
              Visible = True
            end>
        end
      end
    end
    object tsNewFileMoving: TTabSheet
      Caption = 'tsNewFileMoving'
      ImageIndex = 5
      object pnlFileMoving: TPanel
        Left = 0
        Top = 0
        Width = 1138
        Height = 57
        Align = alTop
        TabOrder = 0
        object lbMoveFile: TLabel
          Left = 440
          Top = 4
          Width = 313
          Height = 17
          Caption = 'Select Directory for Moving WH Receipts Attachments'
        end
        object lbCounter: TLabel
          Left = 1122
          Top = 1
          Width = 15
          Height = 55
          Align = alRight
          Caption = '0'
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ExplicitLeft = 1019
          ExplicitHeight = 37
        end
        object edDocAttachmentsDestRoot: TAdvDirectoryEdit
          Left = 440
          Top = 27
          Width = 433
          Height = 25
          BorderColor = 11250603
          EmptyTextStyle = []
          FlatLineColor = 11250603
          FocusColor = clWindow
          FocusFontColor = 3881787
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          ShortCut = 0
          TabOrder = 0
          Text = 'G:\Il mio Drive'
          Visible = True
          Version = '1.7.0.0'
          ButtonStyle = bsButton
          ButtonWidth = 18
          Flat = False
          Etched = False
          Glyph.Data = {
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
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
            FDFDFDFDFDFDFDFDFDFDB7B76F67676767676767676767B7FDFD6FFDBFBFBFBF
            BFBFBFBFBFB7FD6FFDFD6FFDBFBFBFBFBF7F7F7F7777FD6FFDFD6FFDBFBFBFBF
            BFBFBFBF7F7FFD6FFDFD6FFDFDFDBFBFBFBFBFBFBF7FFD6FFDFD6FFDFDFDFDFD
            BFBFBFBFBFBFFD6FFDFD6FFDB76F6FAFFDFDFDFDFDFDFD6FFDFD6FFDBFBFBFB7
            6F6F6F6F6F6F6F6F525277FDBFBFBFBFFD9BF79B52F75AA49B4977FDFDFDFDFD
            FD9BF5A35B6D9BF5A35177B7B7B7B7B7779BF5F7A4089BEDF75AFDFDFDFDFDFD
            FD9B9B5252A452525249FDFDFDFDFDFDFDF75AED9BA39AF75AA4FDFDFDFDFDFD
            FDFD9BA352A452A452FDFDFDFDFDFDFDFDFDFDA39B089B9BFDFD}
          ReadOnly = False
          ButtonColor = clWhite
          ButtonColorHot = 15917525
          ButtonColorDown = 14925219
          ButtonTextColor = 4474440
          ButtonTextColorHot = 2303013
          ButtonTextColorDown = 2303013
          BrowseDialogText = 'Select Directory'
        end
        object btnMoveDocAttachments: TButton
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 169
          Height = 49
          Align = alLeft
          Caption = 'Select and Populate Folder'
          TabOrder = 1
          OnClick = btnMoveDocAttachmentsClick
        end
        object btnStopTask: TButton
          AlignWithMargins = True
          Left = 179
          Top = 4
          Width = 169
          Height = 49
          Align = alLeft
          Caption = 'Stop Task'
          TabOrder = 2
          OnClick = btnStopTaskClick
        end
      end
      object EnhDBGrid6: TEnhDBGrid
        Left = 0
        Top = 57
        Width = 689
        Height = 458
        Align = alLeft
        DataSource = dsDocAttachmentsMoving
        HighlightBGColor = clBlack
        HighlightFont.Charset = DEFAULT_CHARSET
        HighlightFont.Color = clWindowText
        HighlightFont.Height = -11
        HighlightFont.Name = 'Tahoma'
        HighlightFont.Style = []
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'destination'
            Width = 331
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'origin'
            Width = 519
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'blob_id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'blob_file'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'blob_size'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'db_schema_id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'blob_key'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'db_user_id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ispublic'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cblb_jguid'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cblb_deleted'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'file_ext'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'filename'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'isresource'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'is_external'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ex_location'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jguid'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'insert_date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'description'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'flg_stored'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'directory_id'
            Visible = True
          end>
      end
      object memFile: TMemo
        Left = 689
        Top = 57
        Width = 449
        Height = 458
        Align = alClient
        Lines.Strings = (
          'memFile')
        TabOrder = 2
      end
    end
  end
  object ProgressBar1: TAdvProgress
    AlignWithMargins = True
    Left = 3
    Top = 618
    Width = 1140
    Height = 25
    Align = alBottom
    BarColor = clHighlight
    TabOrder = 1
    BkColor = clWindow
    Version = '1.2.0.0'
  end
  object DBGrid3: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 550
    Width = 1140
    Height = 62
    Align = alBottom
    DataSource = dsBlobFiles
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object prgOverall: TAdvProgress
    AlignWithMargins = True
    Left = 3
    Top = 649
    Width = 1140
    Height = 25
    Align = alBottom
    Max = 10000
    BarColor = clHighlight
    TabOrder = 3
    BkColor = clWindow
    Version = '1.2.0.0'
  end
  object prgOverallReceipts: TAdvProgress
    AlignWithMargins = True
    Left = 3
    Top = 680
    Width = 1140
    Height = 25
    Align = alBottom
    Max = 10000
    BarColor = clHighlight
    TabOrder = 4
    BkColor = clWindow
    Version = '1.2.0.0'
  end
  object AdvDropBox1: TAdvDropBox
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\DTOKENS.INI'
    Logging = True
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Language = dlEnglish
    Mode = dmRoot
    ExternalBrowser = False
    Left = 32
    Top = 352
  end
  object AdvBoxNetDrive1: TAdvBoxNetDrive
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\BTOKENS.INI'
    Logging = True
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 112
    Top = 352
  end
  object AdvGDrive1: TAdvGDrive
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8889/'
    App.CallBackPort = 8889
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\GTOKENS.INI'
    Scopes.Strings = (
      'https://www.googleapis.com/auth/drive'
      'https://www.googleapis.com/auth/drive.file'
      'https://www.googleapis.com/auth/userinfo.profile'
      'https://www.googleapis.com/auth/userinfo.email')
    Logging = True
    OnUploadProgress = AdvGDrive1UploadProgress
    OnDownloadProgress = AdvGDrive1DownloadProgress
    OnConnected = AdvGDrive1Connected
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    OnAuthFormClose = AdvGDrive1AuthFormClose
    ExternalBrowser = False
    Left = 112
    Top = 416
  end
  object AdvSkyDrive1: TAdvSkyDrive
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'https://login.live.com/oauth20_desktop.srf'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\STOKENS.INI'
    Scopes.Strings = (
      'wl.signin'
      'wl.basic'
      'wl.offline_access'
      'wl.skydrive'
      'wl.skydrive_update')
    Logging = True
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 32
    Top = 416
  end
  object AdvYandexDisk1: TAdvYandexDisk
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'https://oauth.yandex.com/verification_code'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\YTOKENS.INI'
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 32
    Top = 472
  end
  object CloudTreeViewAdapter1: TCloudTreeViewAdapter
    Left = 648
    Top = 280
  end
  object AdvHubic1: TAdvHubic
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://localhost:8888/'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\HTOKENS.INI'
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 648
    Top = 160
  end
  object OpenDialog1: TOpenDialog
    Left = 544
    Top = 192
  end
  object ImageList1: TImageList
    Left = 544
    Top = 256
    Bitmap = {
      494C010103000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000948B85A7A46534FFA46534FFA465
      34FFA46534FFA46534FFA46534FFA46534FFA46534FFA46534FFA46534FFA465
      34FFA46534FFA46534FFAD754AE3EEE4DB2C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008A8D8CBF535755FF535755FF5357
      55FF535755FF535755FF535755FF535755FF535755FF535755FF535755FF5357
      55FF535755FF535755FF8A8D8CBF00000000B4B4B4B4818181FF818181FF8181
      81FF818181FF818181FF818181FF818181FF818181FF818181FF818181FF8181
      81FF818181FFB9B9B9A800000000000000005F5E5EE0997F6AFFA56839FFC38F
      60FFC48E5CFFC38C59FFC38C59FFC38C59FFC38C59FFC38C59FFC38C59FFC38C
      59FFC38C59FFC38C59FFB47947FFC6A0819F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFD3DBDBFFBAC7C6FFBAC7
      C6FFD2DDDCFFD2DDDCFFD2DDDCFFD2DEDCFFBAC7C6FFBAC7C6FFBAC7C6FFD2DD
      DDFFD2DDDCFFE5EBEBFF535755FF00000000818181FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF818181FF00000000000000005F5F5FE0999999FF9F8068FFBD8F
      68FFDFBD9DFFD9B08BFFD5AA82FFD5A981FFD5A981FFD5A981FFD5A981FFD5A9
      81FFD5A981FFD6AB84FFD4AB86FFB1794FE10000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFD1DCDBFF94AAA8FF94AA
      A8FF94AAA8FFB7C9C7FFB6C8C7FFB7C8C7FFB7C8C7FF94AAA8FF94AAA8FF94AA
      A8FFB7C9C7FFD6DFDFFF535755FF00000000818181FFFFFFFFFFEDEDEDFFEDED
      EDFFEEEEEEFFEFEFEFFFEFEFEFFFF0F0F0FFF0F0F0FFF1F1F1FFF2F2F2FFF2F2
      F2FFFFFFFFFF818181FF00000000000000005C5C5CE29B9B9BFF9B948FFFAE79
      4FFFE4C8AEFFDBB593FFDBB492FFD9B08CFFD6AC85FFD4A87FFFD4A77EFFD4A7
      7EFFD4A77EFFD5AA82FFDFBFA2FFA76B3CF70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFD0DBDAFFB4C7C5FF95AC
      AAFF95ACAAFF95ACAAFFB5C6C5FFB4C6C5FFB5C7C5FFB5C6C5FF95ACAAFF95AC
      AAFF95ACAAFFD4DEDEFF535755FF00000000818181FFFFFFFFFFEDEDEDFFC6C6
      C6FFC7C7C7FFC7C7C7FFC8C8C8FFC8C8C8FFC8C8C8FFF1F1F1FFF1F1F1FFF2F2
      F2FFFFFFFFFF818181FF00000000000000005E5E5EE4A1A1A1FF9B9B9BFFA86D
      40FFEBD7C4FFDEBB9BFFDEBB9BFFDEBB9BFFDEBB9BFFDEBB9BFFDCB694FFD9B0
      8BFFD8AE88FFDAB18DFFE7CFB8FFA76939F90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFCEDAD9FFB2C4C3FFB3C5
      C3FF96AEACFF96AEADFF96AEACFFB2C4C3FFB3C4C3FFB3C4C3FFB2C4C3FF96AE
      ACFF96AEADFFC3D0D0FF535755FF00000000818181FFFFFFFFFFECECECFFEDED
      EDFFEEEEEEFFEEEEEEFFEFEFEFFFEFEFEFFFF0F0F0FFF1F1F1FFF1F1F1FFF1F1
      F1FFFFFFFFFF818181FF0000000000000000626262E5A4A5A5FF9C9C9CFFA56A
      3CFFEAD5C1FFDCB794FFDCB794FFDCB794FFDCB794FFDCB794FFDCB794FFDCB7
      94FFDAB38EFFD8AE86FFE6CDB5FFA66838FB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFCDD8D7FFB0C3C1FFB1C3
      C1FFB0C2C1FF97B0AFFF97B0AFFF97B0AFFFB0C3C1FFB0C2C1FFB1C3C1FFB1C2
      C1FF97B0AFFFC3D2D1FF535755FF00000000818181FFFFFFFFFFECECECFFC6C6
      C6FFC6C6C6FFC6C6C6FFC7C7C7FFC7C7C7FFC8C8C8FFC8C8C8FFC8C8C8FFF0F0
      F0FFFFFFFFFF818181FF0000000000000000656565E7A9A9A9FF9E9E9EFFA468
      39FFE9D3BEFFDBB692FFDBB591FFDBB592FFDBB692FFDBB692FFDBB692FFDBB6
      92FFDBB693FFDCB895FFE6CBB3FFA66737FC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFD1DCDCFFAEC0BFFFAEC0
      BFFFAEC1BFFFAEC1BFFF98B2B1FF98B2B1FF98B2B1FFAFC1BFFFAFC1BFFFAFC0
      BFFFAEC1BFFFC4D3D2FF535755FF00000000818181FFFFFFFFFFECECECFFECEC
      ECFFEDEDEDFFEDEDEDFFEEEEEEFFEEEEEEFFEFEFEFFFEFEFEFFFEFEFEFFFF0F0
      F0FFFFFFFFFF818181FF0000000000000000696969E9AEAEAEFFA0A0A0FFA568
      38FFE6CCB4FFE7CEB7FFE7CEB7FFE7CFB7FFE6CEB7FFE6CEB7FFE6CEB7FFE6CE
      B7FFE6CEB7FFE6CEB7FFE4CAB1FFA56534FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFBDCECDFF98B2B1FFACBE
      BDFFADBFBDFFACBEBDFFACBEBDFF98B2B1FF98B2B1FF98B2B1FFACBFBDFFACBE
      BCFFACBEBDFFD0DAD9FF535755FF00000000818181FFFFFFFFFFEBEBEBFFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFEEEEEEFFEEEEEEFFE6EDEDFFEEEEEEFFF0F0
      F0FFFFFFFFFF818181FF00000000000000006C6C6CE9B3B3B3FFA3A3A3FFA571
      49FFA56839FFA56839FFA56839FFA56839FFA56839FFA56839FFA56839FFA568
      39FFA56839FFA36637FFA76A3CF7B58057D60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFBDCECDFF98B2B1FF98B2
      B1FFAABCBBFFABBCBBFFAABDBAFFAABCBBFF98B2B1FF98B2B1FF98B2B1FFAABD
      BBFFAABDBAFFCED8D8FF535755FF00000000818181FFFFFFFFFFEBEBEBFFEBEB
      EBFFECECECFFECECECFFEDEDEDFFEDEDEDFFE5EDEDFFECECECFFEEEEEEFFF0F0
      F0FFFFFFFFFF818181FF0000000000000000717171EBB7B7B7FFA6A6A6FFA3A3
      A3FFA0A0A0FF9D9D9DFF9C9C9CFF9B9B9BFF9A9A9AFF9B9B9BFF9C9C9CFF9E9E
      9EFF9E9E9EFF5E5E5EFAFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFC8D3D2FF98B2B1FF98B2
      B1FF98B2B1FFA8BBB9FFA8BBB9FFA8BBB9FFA8BBB9FF98B2B1FF98B2B1FF98B2
      B1FFA8BBB9FFCDD8D7FF535755FF00000000818181FFFFFFFFFFEBEBEBFFC5C5
      C5FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC7C7C7FFF0F0
      F0FFFFFFFFFF818181FF0000000000000000757575ECBDBDBDFFA9A9A9FFA6A6
      A6FFA3A3A3FFA1A1A1FFA0A0A0FF9F9F9FFF9F9F9FFFA0A0A0FFA1A1A1FFA3A3
      A3FFA3A3A3FF626262FAFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFC6D2D1FFA6B8B7FF98B2
      B1FF98B2B1FF98B2B1FFA6B9B7FFA5B8B7FFA6B8B7FFA6B9B7FF98B2B1FF98B2
      B1FF98B2B1FFCCD6D6FF535755FF00000000818181FFFFFFFFFFEAEAEAFFEBEB
      EBFFEBEBEBFFECECECFFECECECFFECECECFFEDEDEDFFEDEDEDFFEEEEEEFFF0F0
      F0FFFFFFFFFF818181FF0000000000000000777777EEC0C1C1FFACACACFFAAAA
      AAFFA7A7A7FFA5A5A5FFA4A4A4FFA9A9A9FFBABABAFFC5C5C5FFC8C8C8FFCACA
      CAFFC0C0C0FF676767FBFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFC5D1D0FFA4B7B5FFA4B7
      B5FF98B2B1FFC4D3D2FFBDCECDFFC5D1D0FFC5D1D0FFC5D1D0FFC5D1D0FFBDCE
      CDFFBDCECDFFCAD7D6FF535755FF00000000818181FFFFFFFFFFEAEAEAFFC4C4
      C4FFC5C5C5FFC5C5C5FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC7C7C7FFF0F0
      F0FFFFFFFFFF818181FF00000000000000007B7B7BEFC5C5C5FFB0B0B0FFADAD
      ADFFABABABFFAAAAAAFFAAAAAAFF808080F36E6E6EFC6D6D6DFC6C6C6CFC6C6C
      6CFC6B6B6BFC898989CFFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFC5D1D0FFA4B7B5FFA4B7
      B5FFA4B7B5FFBDCECDFF535755FF535755FF535755FF535755FF535755FF5357
      55FF535755FF535755FF8A8D8CBF00000000818181FFFFFFFFFFECECECFFEAEA
      EAFFEAEAEAFFEBEBEBFFEBEBEBFFEBEBEBFFECECECFFECECECFFEDEDEDFFF0F0
      F0FFFFFFFFFF818181FF00000000000000007F7F7FF0C9C9C9FFC7C7C7FFC5C5
      C5FFC4C4C4FFC4C4C4FFB2B2B2FF999999BCFBFBFB08FBFBFB08FBFBFB08FAFA
      FA08FAFAFA08FEFEFE01FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFC4D3D2FFC5D1D0FFC5D1
      D0FFC5D1D0FFCBD6D4FF535755FF000000000000000000000000000000000000
      000000000000000000000000000000000000818181FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF818181FF0000000000000000ACACAC9F828282EC828282EC8282
      82EC828282EC828282EC888888E2E1E1E137FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7E7CDF535755FF535755FF5357
      55FF535755FF535755FF808381D5000000000000000000000000000000000000
      000000000000000000000000000000000000BABABAAC818181FF818181FF8181
      81FF818181FF818181FF818181FF818181FF818181FF818181FF818181FF8181
      81FF818181FFD4D4D4560000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000000001000300000000
      0001000300000000000100030000000000010003000000000001000300000000
      0001000300000000000100030000000000010003000000000001000300000000
      0001000300000000000100030000000000010003000000000001000300000000
      01FF00030000000001FF00030000000000000000000000000000000000000000
      000000000000}
  end
  object AdvHiDrive1: TAdvHiDrive
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://localhost:80/'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\HITOKENS.INI'
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 648
    Top = 216
  end
  object dsDocumentiPratiche: TDataSource
    DataSet = dmTMMigration.qryAttachmentsPratiche
    Left = 312
    Top = 136
  end
  object dsDocumentiEntrate: TDataSource
    DataSet = dmTMMigration.qryAttachmentsEntrate
    Left = 320
    Top = 192
  end
  object dsWorkAttachments: TDataSource
    DataSet = dmTMMigration.tbWorkFlowAttachments
    Left = 408
    Top = 160
  end
  object dsDocumentsAttachments: TDataSource
    DataSet = dmTMMigration.tbDocumentsAttachments
    Left = 408
    Top = 224
  end
  object dsBlobFiles: TDataSource
    DataSet = dmTMMigration.qryBlobFile
    Left = 408
    Top = 288
  end
  object ImageList: TImageList
    Left = 544
    Top = 136
  end
  object vtFiles: TVirtualTable
    Left = 544
    Top = 344
    Data = {04000000000000000000}
    object vtFilesFileName: TStringField
      FieldName = 'FileName'
      Size = 1024
    end
  end
  object UniDataSource1: TUniDataSource
    DataSet = vtFiles
    Left = 544
    Top = 408
  end
  object dsAttachments: TUniDataSource
    DataSet = dmTMMigration.qryDocAttachments
    Left = 624
    Top = 424
  end
  object dsWorkAttach: TUniDataSource
    DataSet = dmTMMigration.qryWorkAttachments
    Left = 712
    Top = 456
  end
  object dsDocAttachmentsMoving: TDataSource
    DataSet = dmTMMigration.qryDocAttachmentsFileMove
    Left = 320
    Top = 248
  end
end
