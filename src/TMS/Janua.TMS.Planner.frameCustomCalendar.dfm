object frameTMSCustomPlannerCalendar: TframeTMSCustomPlannerCalendar
  Left = 0
  Top = 0
  Width = 1178
  Height = 876
  TabOrder = 0
  DesignSize = (
    1178
    876)
  object lbGiorni: TLabel
    Left = 1060
    Top = 164
    Width = 32
    Height = 15
    Anchors = [akTop, akRight]
    Caption = 'Giorni'
  end
  object lbSearch: TLabel
    Left = 587
    Top = 164
    Width = 134
    Height = 15
    Anchors = [akTop, akRight]
    Caption = 'Ricerca Appuntamento ...'
  end
  object DBText2: TDBText
    Left = 11
    Top = 160
    Width = 447
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCrimson
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object DBPlanner1: TDBPlanner
    Left = 8
    Top = 184
    Width = 1161
    Height = 692
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
    Caption.Title = 
      'Premere il tasto INS Per aggiungeree Un appuntamento e il tasto ' +
      'CANC per eliminarlo'
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -13
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = [fsBold]
    Caption.Background = 16575452
    Caption.BackgroundTo = 16571329
    DayNames.Strings = (
      'Dom'
      'Lun'
      'Mar'
      'Mer'
      'Gio'
      'Ven'
      'Sab')
    DefaultItem.CaptionBkg = clYellow
    DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
    DefaultItem.CaptionFont.Color = clWindowText
    DefaultItem.CaptionFont.Height = -11
    DefaultItem.CaptionFont.Name = 'MS Sans Serif'
    DefaultItem.CaptionFont.Style = []
    DefaultItem.CaptionType = ctTime
    DefaultItem.Color = clYellow
    DefaultItem.Cursor = -1
    DefaultItem.Font.Charset = DEFAULT_CHARSET
    DefaultItem.Font.Color = clWindowText
    DefaultItem.Font.Height = -11
    DefaultItem.Font.Name = 'MS Sans Serif'
    DefaultItem.Font.Style = []
    DefaultItem.ImageID = 0
    DefaultItem.ItemBegin = 16
    DefaultItem.ItemEnd = 17
    DefaultItem.ItemPos = 0
    DefaultItem.Name = 'PlannerItem0'
    DefaultItem.PopupMenu = ItemPopup
    DefaultItem.SelectColor = clYellow
    DefaultItem.Shadow = False
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
    Display.ActiveStart = 4
    Display.ActiveEnd = 28
    Display.CurrentPosFrom = 44201
    Display.CurrentPosTo = 44201
    Display.DisplayStart = 16
    Display.DisplayEnd = 41
    Display.ColorActive = 16575452
    Display.ColorNonActive = clWhite
    Display.HourLineColor = 13542013
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Footer.Captions.Strings = (
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Footer.CompletionFormat = '%d%%'
    Footer.Completion.Font.Charset = DEFAULT_CHARSET
    Footer.Completion.Font.Color = clWindowText
    Footer.Completion.Font.Height = -11
    Footer.Completion.Font.Name = 'Arial'
    Footer.Completion.Font.Style = []
    Footer.Font.Charset = DEFAULT_CHARSET
    Footer.Font.Color = clWindowText
    Footer.Font.Height = -11
    Footer.Font.Name = 'MS Sans Serif'
    Footer.Font.Style = []
    GridLeftCol = 1
    GridLineColor = clSilver
    GridTopRow = 0
    Header.ActiveColor = 16575452
    Header.ActiveColorTo = 16571329
    Header.Captions.Strings = (
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Header.Color = 16645114
    Header.ColorTo = 16643051
    Header.CustomGroups = <>
    Header.Height = 24
    Header.Font.Charset = ANSI_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -11
    Header.Font.Name = 'Verdana'
    Header.Font.Style = [fsBold]
    Header.GroupHeight = 0
    Header.GroupFont.Charset = DEFAULT_CHARSET
    Header.GroupFont.Color = clWindowText
    Header.GroupFont.Height = -11
    Header.GroupFont.Name = 'MS Sans Serif'
    Header.GroupFont.Style = []
    Header.ItemHeight = 24
    Header.TextHeight = 24
    HintPause = 2500
    HTMLOptions.CellFontStyle = []
    HTMLOptions.HeaderFontStyle = []
    HTMLOptions.SidebarFontStyle = []
    Items = <>
    Mode.Month = 12
    Mode.PeriodStartDay = 28
    Mode.PeriodStartMonth = 4
    Mode.PeriodStartYear = 0
    Mode.PeriodEndDay = 15
    Mode.PeriodEndMonth = 6
    Mode.PeriodEndYear = 0
    Mode.TimeLineStart = 38118.000000000000000000
    Mode.TimeLineNVUBegin = 0
    Mode.TimeLineNVUEnd = 0
    Mode.Year = 1899
    Mode.Day = 30
    NavigatorButtons.Flat = False
    ShadowColor = clSilver
    Sidebar.ActiveColor = 16575452
    Sidebar.ActiveColorTo = 16571329
    Sidebar.Background = 16645114
    Sidebar.BackgroundTo = 16643051
    Sidebar.Font.Charset = DEFAULT_CHARSET
    Sidebar.Font.Color = clWindowText
    Sidebar.Font.Height = -11
    Sidebar.Font.Name = 'MS Sans Serif'
    Sidebar.Font.Style = []
    Sidebar.HourFontRatio = 1.800000000000000000
    Sidebar.Width = 48
    PictureContainer = dmVCLPlannerCustomController.PictureContainer1
    Positions = 16
    PositionProps = <>
    PrintOptions.LineWidth = 0
    PrintOptions.FooterFont.Charset = DEFAULT_CHARSET
    PrintOptions.FooterFont.Color = clWindowText
    PrintOptions.FooterFont.Height = -11
    PrintOptions.FooterFont.Name = 'MS Sans Serif'
    PrintOptions.FooterFont.Style = []
    PrintOptions.HeaderFont.Charset = DEFAULT_CHARSET
    PrintOptions.HeaderFont.Color = clWindowText
    PrintOptions.HeaderFont.Height = -11
    PrintOptions.HeaderFont.Name = 'MS Sans Serif'
    PrintOptions.HeaderFont.Style = []
    ScrollBarStyle.Color = clBtnFace
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
    OnItemCreated = DBPlanner1ItemCreated
    TMSStyle = 0
    object AdvPlannerPDFIO1: TAdvPlannerPDFIO
      Left = 528
      Top = 344
      Width = 26
      Height = 26
      Visible = True
      Planner = DBPlanner1
      Options.DefaultFont.Name = 'Arial'
      Options.Header = 'TMS PDF Header'
      Options.Footer = 'TMS PDF Footer'
      Options.Margins.Left = 20.000000000000000000
      Options.Margins.Top = 50.000000000000000000
      Options.Margins.Right = 20.000000000000000000
      Options.Margins.Bottom = 50.000000000000000000
      Options.HeaderFont.Name = 'Arial'
      Options.FooterFont.Name = 'Arial'
      Options.HeaderMargins.Left = 5.000000000000000000
      Options.HeaderMargins.Top = 5.000000000000000000
      Options.HeaderMargins.Right = 5.000000000000000000
      Options.HeaderMargins.Bottom = 5.000000000000000000
      Options.FooterMargins.Left = 5.000000000000000000
      Options.FooterMargins.Top = 5.000000000000000000
      Options.FooterMargins.Right = 5.000000000000000000
      Options.FooterMargins.Bottom = 5.000000000000000000
      Options.PageNumberMargins.Left = 10.000000000000000000
      Options.PageNumberMargins.Top = 5.000000000000000000
      Options.PageNumberMargins.Right = 10.000000000000000000
      Options.PageNumberMargins.Bottom = 5.000000000000000000
      Options.PageNumberFormat = '%d'
      Options.PageNumberFont.Name = 'Arial'
    end
  end
  object SpinEdit1: TSpinEdit
    Left = 1123
    Top = 160
    Width = 41
    Height = 24
    Anchors = [akTop, akRight]
    MaxValue = 7
    MinValue = 1
    TabOrder = 1
    Value = 7
  end
  object edMeeting: TEdit
    Left = 743
    Top = 162
    Width = 281
    Height = 23
    Anchors = [akTop, akRight]
    TabOrder = 2
  end
  object DoFilter: TCheckBox
    Left = 470
    Top = 164
    Width = 97
    Height = 17
    Anchors = [akTop, akRight]
    Caption = 'Applica Filtro'
    TabOrder = 3
  end
  object grdAnagraph: TDBCtrlGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1172
    Height = 33
    Align = alTop
    ColCount = 5
    PanelHeight = 33
    PanelWidth = 231
    TabOrder = 4
    RowCount = 1
    object DBText1: TDBText
      Left = 8
      Top = 8
      Width = 220
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      DataField = 'an_full_name'
      ExplicitWidth = 201
    end
  end
  object Panel1: TPanel
    Left = 264
    Top = 44
    Width = 911
    Height = 110
    BevelOuter = bvNone
    TabOrder = 5
    object btnAppuntamento: TButton
      Left = 0
      Top = 0
      Width = 100
      Height = 110
      Align = alLeft
      Caption = 'Aggiungi Appuntamento'
      ImageAlignment = iaTop
      ImageIndex = 31
      ImageName = '032-calendar'
      ImageMargins.Top = 6
      Images = dmVCLPlannerCustomController.SVGIconImageList48
      TabOrder = 0
      WordWrap = True
    end
    object Button1: TButton
      Left = 100
      Top = 0
      Width = 100
      Height = 110
      Align = alLeft
      Caption = 'Annulla Appuntamento'
      ImageAlignment = iaTop
      ImageIndex = 1
      ImageName = '002-time'
      ImageMargins.Top = 6
      Images = dmVCLPlannerCustomController.SVGIconImageList48
      TabOrder = 1
      WordWrap = True
    end
    object btnSearchMeeting: TButton
      Left = 200
      Top = 0
      Width = 100
      Height = 110
      Align = alLeft
      Caption = 'Cerca Appuntamento'
      ImageAlignment = iaTop
      ImageIndex = 45
      ImageName = '046-search'
      ImageMargins.Top = 6
      Images = dmVCLPlannerCustomController.SVGIconImageList48
      TabOrder = 2
      WordWrap = True
    end
    object btnAddPerson: TButton
      Left = 300
      Top = 0
      Width = 100
      Height = 110
      Align = alLeft
      Caption = 'Aggiungi Dipendente'
      ImageAlignment = iaTop
      ImageIndex = 2
      ImageName = '003-employee'
      ImageMargins.Top = 6
      Images = dmVCLPlannerCustomController.SVGIconImageList48
      TabOrder = 3
      WordWrap = True
    end
    object btnActivities: TButton
      Left = 400
      Top = 0
      Width = 100
      Height = 110
      Align = alLeft
      Caption = 'Aggiungi Una Attivit'#224
      ImageAlignment = iaTop
      ImageIndex = 35
      ImageName = '036-planner'
      ImageMargins.Top = 6
      Images = dmVCLPlannerCustomController.SVGIconImageList48
      TabOrder = 4
      WordWrap = True
    end
    object btnExport: TButton
      Left = 500
      Top = 0
      Width = 100
      Height = 110
      Align = alLeft
      Caption = 'Esporta (Excel,     Pdf, Csv)'
      ImageAlignment = iaTop
      ImageIndex = 24
      ImageName = '025-planning'
      ImageMargins.Top = 6
      Images = dmVCLPlannerCustomController.SVGIconImageList48
      TabOrder = 5
      WordWrap = True
    end
    object btnSend: TButton
      Left = 600
      Top = 0
      Width = 100
      Height = 110
      Align = alLeft
      Caption = 'Invia (Mail) Condividi'
      ImageAlignment = iaTop
      ImageIndex = 8
      ImageName = '009-email'
      ImageMargins.Top = 6
      Images = dmVCLPlannerCustomController.SVGIconImageList48
      TabOrder = 6
      WordWrap = True
    end
    object btnPrint: TButton
      Left = 700
      Top = 0
      Width = 100
      Height = 110
      Align = alLeft
      Caption = 'Stampa / Anteprima'
      ImageAlignment = iaTop
      ImageIndex = 57
      ImageName = '008-printer'
      ImageMargins.Top = 6
      Images = dmVCLPlannerCustomController.SVGIconImageList48
      TabOrder = 7
      WordWrap = True
    end
    object btnGoogleCalSync: TButton
      Left = 800
      Top = 0
      Width = 100
      Height = 110
      Action = dmVCLPlannerCustomController.ActionCalendarSync
      Align = alLeft
      ImageAlignment = iaTop
      ImageMargins.Top = 6
      Images = dmVCLPlannerCustomController.SVGIconImageList48
      TabOrder = 8
      WordWrap = True
    end
  end
  object ColorDialog1: TColorDialog
    Left = 880
    Top = 560
  end
  object ItemPopup: TPopupMenu
    Left = 536
    Top = 464
    object Color1: TMenuItem
      Action = dmVCLPlannerCustomController.actColor
    end
    object Caption1: TMenuItem
      Action = dmVCLPlannerCustomController.actCaption
    end
  end
end
