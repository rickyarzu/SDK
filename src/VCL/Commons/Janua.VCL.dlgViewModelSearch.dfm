inherited dlgViewModelSearch: TdlgViewModelSearch
  BorderStyle = bsDialog
  Caption = 'Search Dialog Form'
  ClientHeight = 592
  ClientWidth = 685
  Position = poScreenCenter
  StyleElements = [seFont, seClient, seBorder]
  OnClose = FormClose
  ExplicitWidth = 701
  ExplicitHeight = 631
  TextHeight = 17
  inherited StatusBar: TStatusBar
    Top = 517
    Width = 685
  end
  object pnlMainSearch: TPanel
    Left = 0
    Top = 0
    Width = 685
    Height = 49
    Align = alTop
    TabOrder = 0
    object edSearchText: TEdit
      AlignWithMargins = True
      Left = 21
      Top = 5
      Width = 643
      Height = 39
      Margins.Left = 20
      Margins.Top = 4
      Margins.Right = 20
      Margins.Bottom = 4
      Align = alClient
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Insert here text to search'
      OnChange = edSearchTextChange
      ExplicitHeight = 31
    end
  end
  object grdSearch: TDBGrid
    Left = 0
    Top = 49
    Width = 685
    Height = 468
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'display_index'
        Width = 600
        Visible = True
      end>
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 536
    Width = 685
    Height = 56
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      685
      56)
    object btnOk: TButton
      Left = 546
      Top = 6
      Width = 118
      Height = 36
      Anchors = [akTop, akRight]
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TButton
      Left = 400
      Top = 6
      Width = 118
      Height = 36
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
