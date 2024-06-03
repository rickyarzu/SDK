object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Google Sheets to TAdvStringGrid adapter demo'
  ClientHeight = 697
  ClientWidth = 1086
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1086
    Height = 41
    Align = alTop
    TabOrder = 0
    object lblWorking: TLabel
      Left = 273
      Top = 12
      Width = 6
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object btnConnect: TButton
      Left = 10
      Top = 10
      Width = 110
      Height = 25
      Caption = 'Connect To GDrive'
      TabOrder = 0
      OnClick = btnConnectClick
    end
    object btnRemoveAccess: TButton
      Left = 126
      Top = 10
      Width = 123
      Height = 25
      Caption = 'Remove Access'
      TabOrder = 1
      OnClick = btnRemoveAccessClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 400
    Height = 656
    Align = alLeft
    Caption = 'Files'
    TabOrder = 1
    object Label2: TLabel
      Left = 173
      Top = 15
      Width = 28
      Height = 13
      Caption = 'Type:'
    end
    object lblType: TLabel
      Left = 173
      Top = 34
      Width = 3
      Height = 13
    end
    object Label3: TLabel
      Left = 173
      Top = 90
      Width = 15
      Height = 13
      Caption = 'ID:'
      Visible = False
    end
    object Label1: TLabel
      Left = 178
      Top = 320
      Width = 46
      Height = 13
      Caption = 'Filename:'
    end
    object treeFiles: TTreeView
      Left = 2
      Top = 15
      Width = 165
      Height = 639
      Margins.Bottom = 30
      Align = alLeft
      HideSelection = False
      Indent = 19
      MultiSelect = True
      TabOrder = 0
      OnChange = treeFilesChange
    end
    object txtWorksheetId: TEdit
      Left = 173
      Top = 109
      Width = 224
      Height = 21
      TabOrder = 1
      TextHint = 'Worksheet ID'
      Visible = False
    end
    object btnShowWorksheet: TButton
      Left = 173
      Top = 59
      Width = 224
      Height = 25
      Caption = 'Refresh grid'
      TabOrder = 2
      OnClick = btnShowWorksheetClick
    end
    object btnLoadGrid: TButton
      Left = 173
      Top = 144
      Width = 110
      Height = 25
      Caption = 'Load sample data'
      TabOrder = 3
      OnClick = btnLoadGridClick
    end
    object btnExportGrid: TButton
      Left = 287
      Top = 144
      Width = 110
      Height = 25
      Caption = 'Export grid to sheet'
      TabOrder = 4
      OnClick = btnExportGridClick
    end
    object btnUploadFile: TButton
      Left = 173
      Top = 339
      Width = 227
      Height = 25
      Caption = 'Export grid to new sheet'
      TabOrder = 5
      OnClick = btnUploadFileClick
    end
    object txtFileName: TEdit
      Left = 230
      Top = 317
      Width = 167
      Height = 21
      TabOrder = 6
      TextHint = 'Filename to save'
    end
  end
  object GroupBox2: TGroupBox
    Left = 400
    Top = 41
    Width = 686
    Height = 656
    Align = alClient
    Caption = 'Worksheet'
    TabOrder = 2
    object AdvStringGrid1: TAdvStringGrid
      Left = 2
      Top = 15
      Width = 682
      Height = 639
      Cursor = crDefault
      Align = alClient
      DrawingStyle = gdsClassic
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ScrollBars = ssBoth
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = 15387318
      ControlLook.FixedGradientFrom = clWhite
      ControlLook.FixedGradientTo = clBtnFace
      ControlLook.FixedGradientHoverFrom = 13619409
      ControlLook.FixedGradientHoverTo = 12502728
      ControlLook.FixedGradientHoverMirrorFrom = 12502728
      ControlLook.FixedGradientHoverMirrorTo = 11254975
      ControlLook.FixedGradientDownFrom = 8816520
      ControlLook.FixedGradientDownTo = 7568510
      ControlLook.FixedGradientDownMirrorFrom = 7568510
      ControlLook.FixedGradientDownMirrorTo = 6452086
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'Tahoma'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'Tahoma'
      FilterDropDown.Font.Style = []
      FilterDropDown.TextChecked = 'Checked'
      FilterDropDown.TextUnChecked = 'Unchecked'
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Larger than'
        'Smaller than'
        'Clear')
      FixedRowHeight = 22
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'Tahoma'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'Tahoma'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'Tahoma'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'Tahoma'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.ColorTo = 15790320
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'Tahoma'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurrence'
      SearchFooter.HintFindPrev = 'Find previous occurrence'
      SearchFooter.HintHighlight = 'Highlight occurrences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SortSettings.DefaultFormat = ssAutomatic
      Version = '7.8.1.0'
    end
  end
  object ckLiveEdit: TCheckBox
    Left = 173
    Top = 224
    Width = 97
    Height = 17
    Caption = 'Live edit'
    TabOrder = 3
    OnClick = ckLiveEditClick
  end
  object AdvGDrive1: TAdvGDrive
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8889/'
    App.CallBackPort = 8889
    PersistTokens.Location = plIniFile
    Scopes.Strings = (
      'https://www.googleapis.com/auth/drive'
      'https://www.googleapis.com/auth/drive.file'
      'https://www.googleapis.com/auth/userinfo.profile'
      'https://www.googleapis.com/auth/userinfo.email')
    Logging = False
    OnReceivedAccessToken = AdvGDrive1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 536
  end
  object OpenDialog1: TOpenDialog
    Left = 596
  end
  object AdvGSheets1: TAdvCloudGSheetsGridAdapter
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8889/'
    App.CallBackPort = 8889
    PersistTokens.Location = plIniFile
    Scopes.Strings = (
      'https://www.googleapis.com/auth/drive'
      'https://www.googleapis.com/auth/drive.file'
      'https://www.googleapis.com/auth/userinfo.profile'
      'https://www.googleapis.com/auth/userinfo.email')
    Logging = False
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Grid = AdvStringGrid1
    ImportFixedCells = False
    LiveEdit = False
    Left = 660
  end
end
