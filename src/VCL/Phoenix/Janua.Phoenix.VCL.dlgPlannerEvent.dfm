inherited dlgVCLPhoenixPlannerEvent: TdlgVCLPhoenixPlannerEvent
  Caption = 'Gestione Programmazione Tecnico'
  ClientHeight = 676
  ClientWidth = 1066
  ExplicitWidth = 1082
  ExplicitHeight = 715
  TextHeight = 17
  inherited Area: TLabel
    Left = 8
    Top = 6
    Width = 119
    Caption = 'Tecnico / Calendario'
    ExplicitLeft = 8
    ExplicitTop = 6
    ExplicitWidth = 119
  end
  inherited lbActivity: TLabel
    Left = 8
    Top = 54
    Width = 84
    Caption = 'Cliente - Filiale'
    ExplicitLeft = 8
    ExplicitTop = 54
    ExplicitWidth = 84
  end
  inherited lbNote: TLabel
    Left = 786
    Top = 249
    Anchors = [akTop, akRight]
    ExplicitLeft = 786
    ExplicitTop = 249
  end
  object lbCap: TLabel [3]
    Left = 784
    Top = 6
    Width = 23
    Height = 17
    Anchors = [akTop, akRight]
    Caption = 'CAP'
  end
  object lbData: TLabel [4]
    Left = 928
    Top = 6
    Width = 27
    Height = 17
    Anchors = [akTop, akRight]
    Caption = 'Data'
  end
  inherited grdDateTime: TGroupBox
    Left = 786
    Top = 65
    Anchors = [akTop, akRight]
    ExplicitLeft = 786
    ExplicitTop = 65
  end
  inherited btnOk: TButton
    Left = 967
    Top = 635
    ExplicitLeft = 967
    ExplicitTop = 635
  end
  inherited btnCancel: TButton
    Left = 863
    Top = 635
    ExplicitLeft = 863
    ExplicitTop = 635
  end
  inherited Memo1: TMemo
    Left = 786
    Top = 272
    Width = 272
    Height = 346
    Anchors = [akTop, akRight, akBottom]
    ExplicitLeft = 786
    ExplicitTop = 272
    ExplicitWidth = 272
    ExplicitHeight = 346
  end
  inherited lkpGroups: TJvDBLookupCombo
    Left = 8
    Top = 24
    Width = 278
    EmptyValue = '-1'
    LookupField = 'RESPONSABILE'
    LookupDisplay = 'NOME_TECNICO'
    LookupSource = dsTechnicians
    OnChange = ChangeFilter
    ExplicitLeft = 8
    ExplicitTop = 24
    ExplicitWidth = 278
  end
  inherited lkpActivities: TJvDBLookupCombo
    Left = 8
    Top = 77
    Width = 745
    LookupField = 'CHIAVE'
    LookupDisplay = 'DESCRIZIONE_SCHEDA'
    LookupSource = dsCustomers
    OnClick = ChangeFilter
    ExplicitLeft = 8
    ExplicitTop = 77
    ExplicitWidth = 745
  end
  object lkpCAP: TJvDBLookupCombo [11]
    Left = 784
    Top = 24
    Width = 97
    Height = 24
    Anchors = [akTop, akRight]
    LookupField = 'CAP'
    LookupDisplay = 'CAP'
    LookupSource = dsCAP
    TabOrder = 6
    OnChange = lkpGroupsChange
    OnCloseUp = ChangeFilter
  end
  object DBCtrlGrid1: TDBCtrlGrid [12]
    Left = 8
    Top = 107
    Width = 338
    Height = 558
    Anchors = [akLeft, akTop, akBottom]
    DataSource = DataSource1
    PanelHeight = 93
    PanelWidth = 321
    TabOrder = 7
    RowCount = 6
    object pnlInterventi: TPanel
      Left = 0
      Top = 73
      Width = 321
      Height = 20
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 69
      object Label3: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 0
        Width = 29
        Height = 20
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Luci:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 17
      end
      object DBText4: TDBText
        Left = 35
        Top = 0
        Width = 29
        Height = 20
        Align = alLeft
        DataField = 'LUCI'
        DataSource = DataSource1
        ExplicitLeft = 36
        ExplicitTop = 1
        ExplicitHeight = 18
      end
      object lbIdranti: TLabel
        AlignWithMargins = True
        Left = 67
        Top = 0
        Width = 24
        Height = 20
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Idr.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 17
      end
      object DBText5: TDBText
        Left = 94
        Top = 0
        Width = 29
        Height = 20
        Align = alLeft
        DataField = 'IDRANTI'
        DataSource = DataSource1
        ExplicitLeft = 148
        ExplicitTop = 3
        ExplicitHeight = 18
      end
      object Label4: TLabel
        AlignWithMargins = True
        Left = 126
        Top = 0
        Width = 42
        Height = 20
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'E.Ord.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 17
      end
      object DBText6: TDBText
        Left = 171
        Top = 0
        Width = 29
        Height = 20
        Align = alLeft
        DataField = 'ESTINTORI_ORDINARIO'
        DataSource = DataSource1
        ExplicitLeft = 199
        ExplicitTop = 3
        ExplicitHeight = 18
      end
      object Label5: TLabel
        AlignWithMargins = True
        Left = 203
        Top = 0
        Width = 43
        Height = 20
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'E.Stra.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 17
      end
      object DBText7: TDBText
        Left = 249
        Top = 0
        Width = 29
        Height = 20
        Align = alLeft
        DataField = 'ESTINTORI_ORDINARIO'
        DataSource = DataSource1
        ExplicitLeft = 281
        ExplicitTop = 3
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 321
      Height = 73
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 48
      ExplicitTop = 16
      ExplicitWidth = 185
      ExplicitHeight = 41
      object JvSpeedButton2: TJvSpeedButton
        Left = 1
        Top = 1
        Width = 60
        Height = 71
        Align = alLeft
        Flat = True
      end
      object Panel2: TPanel
        Left = 61
        Top = 1
        Width = 259
        Height = 71
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 224
        ExplicitTop = 24
        ExplicitWidth = 185
        ExplicitHeight = 41
        object DBText1: TDBText
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 253
          Height = 17
          Align = alTop
          DataField = 'DESCRIZIONE_SCHEDA'
          DataSource = DataSource1
          ExplicitLeft = 16
          ExplicitTop = 0
          ExplicitWidth = 265
        end
        object DBText2: TDBText
          AlignWithMargins = True
          Left = 3
          Top = 26
          Width = 253
          Height = 17
          Align = alTop
          DataField = 'DATA_INTERVENTO'
          DataSource = DataSource1
          ExplicitLeft = -5
          ExplicitTop = 73
          ExplicitWidth = 306
        end
        object DBText3: TDBText
          AlignWithMargins = True
          Left = 3
          Top = 49
          Width = 253
          Height = 17
          Align = alTop
          DataField = 'INDIRIZZO'
          DataSource = DataSource1
          ExplicitTop = 90
          ExplicitWidth = 306
        end
      end
    end
  end
  object DBPlanner1: TDBPlanner [13]
    Left = 392
    Top = 107
    Width = 388
    Height = 561
    AttachementGlyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888700078888888888708880788888888808808808888888880808080
      8888888880808080888888888080808088888888808080808888888880808080
      8888888880808080888888888080808088888888808080808888888888808080
      8888888888808880888888888888000888888888888888888888}
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption.Title = 'TMS software <b>TDBPlanner</b>'
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = 4474440
    Caption.Font.Height = -13
    Caption.Font.Name = 'Verdana'
    Caption.Font.Style = []
    Caption.Background = 16575452
    Caption.BackgroundTo = 16571329
    DayNames.Strings = (
      'Sun'
      'Mon'
      'Tue'
      'Wed'
      'Thu'
      'Fri'
      'Sat')
    DefaultItem.BorderColor = 11250603
    DefaultItem.CaptionBkg = 14925219
    DefaultItem.CaptionBkgTo = 14925219
    DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
    DefaultItem.CaptionFont.Color = 4474440
    DefaultItem.CaptionFont.Height = -12
    DefaultItem.CaptionFont.Name = 'Segoe UI'
    DefaultItem.CaptionFont.Style = []
    DefaultItem.ColorTo = clWhite
    DefaultItem.Cursor = -1
    DefaultItem.Font.Charset = DEFAULT_CHARSET
    DefaultItem.Font.Color = 4474440
    DefaultItem.Font.Height = -12
    DefaultItem.Font.Name = 'Segoe UI'
    DefaultItem.Font.Style = []
    DefaultItem.ItemBegin = 16
    DefaultItem.ItemEnd = 17
    DefaultItem.ItemPos = 0
    DefaultItem.Name = 'PlannerItem0'
    DefaultItem.SelectColor = 14925219
    DefaultItem.SelectColorTo = 14925219
    DefaultItem.SelectFontColor = 3881787
    DefaultItem.Shadow = False
    DefaultItem.TrackColor = 11565130
    DefaultItem.TrackSelectColor = 11565130
    DeleteGlyph.Data = {
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
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D9ED07070707
      0707070707070707ECD9EC5E5E5E5E5E5E5E5E5E5E5E5E5E5DED070D0E161616
      161616160E0E0E0E5E07070D161656561616161616160E0E5E07070D16AF075E
      56561657B7EF0E0E5E07070D56AFF6075F565FAFF6AF160E5E07070D565EAFF6
      075FEFF6AF17160E5E07070D5E5E5EAFF607F6AF161616165E07070D5E5E5E5E
      EFF60756161616165E07070D5E5E5FEFF6EFF6075E1616165E07070D5F5F07F6
      EF5EAFF6075616165E07070D6707F6075E5656AFF60716165E07070DA7AF075F
      5E5E5E5EAFAF56165E07070DA7A7675F5F5E5E5E5E5E56165E07EDAF0D0D0D0D
      0D0D0D0D0D0D0D0D5EECD9ED070707070707070707070707EDD1}
    Display.ActiveEnd = 40
    Display.ColorActive = 16575452
    Display.ColorNonActive = clWhite
    Display.HourLineColor = 13542013
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Footer.Captions.Strings = (
      ''
      '')
    Footer.CompletionFormat = '%d%%'
    Footer.Color = clWhite
    Footer.Completion.Font.Charset = DEFAULT_CHARSET
    Footer.Completion.Font.Color = clWindowText
    Footer.Completion.Font.Height = -12
    Footer.Completion.Font.Name = 'Arial'
    Footer.Completion.Font.Style = []
    Footer.Flat = True
    Footer.Font.Charset = DEFAULT_CHARSET
    Footer.Font.Color = clWindowText
    Footer.Font.Height = -12
    Footer.Font.Name = 'Segoe UI'
    Footer.Font.Style = []
    Footer.LineColor = 16444643
    GridLeftCol = 1
    GridLineColor = clSilver
    GridTopRow = 0
    Header.ActiveColor = 16575452
    Header.ActiveColorTo = 16571329
    Header.Captions.Strings = (
      ''
      '')
    Header.Color = 16645114
    Header.ColorTo = 16643051
    Header.CustomGroups = <>
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = 4474440
    Header.Font.Height = -12
    Header.Font.Name = 'Segoe UI'
    Header.Font.Style = []
    Header.GroupHeight = 0
    Header.GroupFont.Charset = DEFAULT_CHARSET
    Header.GroupFont.Color = clWindowText
    Header.GroupFont.Height = -12
    Header.GroupFont.Name = 'Segoe UI'
    Header.GroupFont.Style = []
    HintPause = 2500
    HTMLOptions.CellFontStyle = []
    HTMLOptions.HeaderFontStyle = []
    HTMLOptions.SidebarFontStyle = []
    Items = <>
    Mode.Month = 7
    Mode.PeriodStartDay = 6
    Mode.PeriodStartMonth = 7
    Mode.PeriodStartYear = 2024
    Mode.PeriodEndDay = 7
    Mode.PeriodEndMonth = 8
    Mode.PeriodEndYear = 2024
    Mode.TimeLineStart = 45479.000000000000000000
    Mode.TimeLineNVUBegin = 0
    Mode.TimeLineNVUEnd = 0
    Mode.Year = 2024
    Mode.Day = 6
    Sidebar.ActiveColor = 16575452
    Sidebar.ActiveColorTo = 16571329
    Sidebar.Background = 16645114
    Sidebar.BackgroundTo = 16643051
    Sidebar.Border = False
    Sidebar.Font.Charset = DEFAULT_CHARSET
    Sidebar.Font.Color = 4474440
    Sidebar.Font.Height = -12
    Sidebar.Font.Name = 'Arial'
    Sidebar.Font.Style = []
    Sidebar.HourFontRatio = 1.800000000000000000
    Sidebar.LineColor = 14925219
    Sidebar.Occupied = clWhite
    Sidebar.OccupiedTo = clWhite
    Sidebar.OccupiedFontColor = 3881787
    Sidebar.SeparatorLineColor = 16444643
    Positions = 1
    PositionProps = <>
    PrintOptions.LineWidth = 0
    PrintOptions.FooterFont.Charset = DEFAULT_CHARSET
    PrintOptions.FooterFont.Color = clWindowText
    PrintOptions.FooterFont.Height = -12
    PrintOptions.FooterFont.Name = 'Segoe UI'
    PrintOptions.FooterFont.Style = []
    PrintOptions.HeaderFont.Charset = DEFAULT_CHARSET
    PrintOptions.HeaderFont.Color = clWindowText
    PrintOptions.HeaderFont.Height = -12
    PrintOptions.HeaderFont.Name = 'Segoe UI'
    PrintOptions.HeaderFont.Style = []
    SelectColor = 15917525
    TrackColor = 11565130
    URLGlyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888880000800
      0088888808F8F0F8F80888808000000000808880F070888070F0888080000000
      0080880408F8F0F8F80880CCC0000400008874CCC2222C4788887CCCC22226C0
      88887CC822222CC088887C822224642088887C888422C220888877CF8CCCC227
      888887F8F8222208888888776888208888888887777778888888}
    Version = '3.4.6.0'
    TMSStyle = 0
  end
  object Button1: TButton [14]
    Left = 930
    Top = 224
    Width = 128
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 9
  end
  object Button2: TButton [15]
    Left = 786
    Top = 224
    Width = 129
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 10
  end
  object ckbFilterTech: TCheckBox [16]
    Left = 287
    Top = 28
    Width = 18
    Height = 17
    Anchors = [akTop, akRight]
    Checked = True
    State = cbChecked
    TabOrder = 11
    OnClick = ChangeFilter
  end
  object btnAdd: TButton [17]
    Left = 356
    Top = 272
    Width = 26
    Height = 25
    Caption = '>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    StyleElements = [seClient, seBorder]
  end
  object btnRemove: TButton [18]
    Left = 356
    Top = 312
    Width = 26
    Height = 25
    Caption = '<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    StyleElements = [seClient, seBorder]
  end
  object grpStato: TRadioGroup [19]
    Left = 311
    Top = 8
    Width = 467
    Height = 51
    Columns = 6
    ItemIndex = 5
    Items.Strings = (
      'Tutti'
      'Pian.'
      'In Lav.'
      'Pronti'
      'Generati'
      'N. Ass.')
    TabOrder = 14
    OnClick = ChangeFilter
  end
  object ckbCAP: TCheckBox [20]
    Left = 887
    Top = 28
    Width = 18
    Height = 17
    Anchors = [akTop, akRight]
    Checked = True
    State = cbChecked
    TabOrder = 15
    OnClick = ChangeFilter
  end
  object ckbActivities: TCheckBox [21]
    Left = 759
    Top = 84
    Width = 18
    Height = 17
    Anchors = [akTop, akRight]
    Checked = True
    State = cbChecked
    TabOrder = 16
    OnClick = ChangeFilter
  end
  object DateTimePicker1: TDateTimePicker [22]
    Left = 928
    Top = 24
    Width = 120
    Height = 25
    Date = 45481.000000000000000000
    Time = 0.538943368053878700
    TabOrder = 17
  end
  inherited DataSource1: TDataSource
    DataSet = dmVCLPhoenixPlannerController.qryReportPlanner
    Top = 358
  end
  inherited ColorDialog1: TColorDialog
    Left = 153
    Top = 430
  end
  inherited ImageList1: TImageList
    Left = 257
    Top = 374
  end
  object dsCustomers: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryCustomers
    Left = 88
    Top = 248
  end
  object dsTechnicians: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryTech
    Left = 168
    Top = 280
  end
  object dsCAP: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryCAP
    Left = 168
    Top = 192
  end
  object DBDaySource1: TDBDaySource
    AutoIncKey = False
    ResourceMap = <>
    ReadOnly = False
    UpdateByQuery = False
    DateFormat = 'mm/dd/yyyy'
    Mode = dmMultiDay
    Left = 496
    Top = 243
  end
end
