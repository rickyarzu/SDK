object wwLookupDlg: TwwLookupDlg
  Left = 285
  Top = 178
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsDialog
  Caption = 'Lookup'
  ClientHeight = 343
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 15
  object wwDBGrid1: TwwDBGrid
    AlignWithMargins = True
    Left = 8
    Top = 94
    Width = 329
    Height = 202
    Margins.Left = 8
    Margins.Top = 0
    Margins.Right = 7
    IniAttributes.FileName = 'delphi32.ini.ini'
    IniAttributes.SectionName = 'wwLookupDlgwwDBGrid1'
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
    OnMouseDown = wwDBGrid1MouseDown
    OnColumnMoved = wwDBGrid1ColumnMoved
  end
  object StatusHeaderOld: THeader
    Left = 56
    Top = 252
    Width = 185
    Height = 21
    Hint = 'Table Name and current record position'
    ParentShowHint = False
    Sections.Sections = (
      #0'8'#0
      #0'8'#0)
    ShowHint = True
    TabOrder = 3
    Visible = False
  end
  object StatusHeader: TStatusBar
    Left = 112
    Top = 144
    Width = 192
    Height = 19
    Align = alNone
    Panels = <
      item
        Alignment = taCenter
        Bevel = pbRaised
        Width = 50
      end
      item
        Width = 50
      end>
    Visible = False
  end
  object pnlSearchChar: TPanel
    Left = 0
    Top = 0
    Width = 344
    Height = 47
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      344
      47)
    object SearchCharacterLabel: TLabel
      Left = 8
      Top = 4
      Width = 100
      Height = 15
      Caption = '&Search Characters'
      FocusControl = wwIncrementalSearch1
    end
    object wwIncrementalSearch1: TwwIncrementalSearch
      Left = 8
      Top = 21
      Width = 329
      Height = 20
      Hint = 'Enter characters for incremental search'
      Anchors = [akLeft, akTop, akRight]
      DataSource = DataSource1
      AutoSize = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object pnlSearchBy: TPanel
    Left = 0
    Top = 47
    Width = 344
    Height = 47
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    object SortByLabel: TLabel
      Left = 8
      Top = 6
      Width = 55
      Height = 15
      Caption = 'Search &By'
      Visible = False
    end
  end
  object pnlButton: TPanel
    AlignWithMargins = True
    Left = 8
    Top = 300
    Width = 330
    Height = 41
    Margins.Left = 8
    Margins.Top = 1
    Margins.Right = 6
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object pnlOKCancel: TPanel
      Left = 224
      Top = 0
      Width = 106
      Height = 41
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
    end
    object UserButtonPanel: TPanel
      Left = 0
      Top = 0
      Width = 224
      Height = 41
      Align = alLeft
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object UserButton1: TButton
        Left = 12
        Top = 6
        Width = 89
        Height = 26
        Caption = 'UserButton1'
        TabOrder = 0
        Visible = False
        OnClick = UserButton1Click
      end
      object UserButton2: TButton
        Left = 124
        Top = 6
        Width = 89
        Height = 26
        Caption = 'UserButton2'
        TabOrder = 1
        Visible = False
        OnClick = UserButton2Click
      end
    end
  end
  object DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 308
    Top = 308
  end
end
