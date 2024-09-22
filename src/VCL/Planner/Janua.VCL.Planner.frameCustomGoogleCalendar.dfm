object frameVCLCustomGoogleCalendar: TframeVCLCustomGoogleCalendar
  Left = 0
  Top = 0
  Width = 1280
  Height = 1068
  TabOrder = 0
  object PageControl1: TPageControl
    Left = 0
    Top = 267
    Width = 904
    Height = 801
    ActivePage = tabGoogleCalendar
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Google Sync'
      object grpEventsList: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 890
        Height = 768
        Margins.Bottom = 0
        Align = alClient
        Caption = 'Lista Eventi '
        TabOrder = 0
        DesignSize = (
          890
          768)
        object grdGoogleCalendar: TCRDBGrid
          Left = 13
          Top = 24
          Width = 859
          Height = 730
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = dmVCLPlannerCustomController.dsGoogleEvents
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Alias'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COLOR'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STARTTIME'
              Title.Caption = 'Dalle Ore'
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENDTIME'
              Title.Caption = 'Alle Ore'
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUMMARY'
              Title.Caption = 'Oggetto (Sintesi)'
              Width = 1024
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOCATION'
              Title.Caption = 'Luogo (Indirizzo)'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID'
              Width = 300
              Visible = True
            end>
        end
      end
    end
    object tabGoogleCalendar: TTabSheet
      Caption = 'Google Calendar'
      ImageIndex = 1
      OnShow = tabGoogleCalendarShow
      object DBPlanner1: TDBPlanner
        Left = 0
        Top = 0
        Width = 896
        Height = 771
        Align = alClient
        AttachementGlyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888700078888888888708880788888888808808808888888880808080
          8888888880808080888888888080808088888888808080808888888880808080
          8888888880808080888888888080808088888888808080808888888888808080
          8888888888808880888888888888000888888888888888888888}
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
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1280
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      1280
      41)
    object Image1: TImage
      Left = 1243
      Top = 8
      Width = 24
      Height = 24
      Anchors = [akTop, akRight]
      Picture.Data = {
        07544269746D617076060000424D760600000000000036040000280000001800
        000018000000010008000000000040020000C40E0000C40E0000000100000001
        0000B15E2F00CE6D3700FD874300FD8F4E001931A5001D37B2001934B6001531
        B9001632BA001733BA001734BC001A35B8001834BD001935BE001936BF00253B
        A800273EA9002840B3003449B000364DBE003E53B7004557B1005465BA005E6E
        B9006675BE00707DBE001A37C1001B38C1001E3AC2001D3AC4001E3BC6001F3C
        C800203CC200213FCA00223FCB002944C3002643CB002441CE002542CF002844
        CD002C48CD00304AC800314BC800314CCE003A52C5002644D1002745D3002946
        D0002B47D2002846D4002A47D6002B48D0002D4AD3002F4BD3002A48D6002C4A
        DA002D4BDB00304EDB003752D3003753DC00435CD2004A60CC004C62CD004D64
        D100556BD700596FD700596FDA006A7AC7006D7DC900677AD300DC00FF007783
        C0007685CB006F80D4007D8CD1007E8DD5006E83E600768AE600FEC3A100FFC3
        A000FBD6BF008692CE008794D5008493DB008E9AD900939ED1009CA5CF009CA5
        D100A7AFD800A2ACDC00AEB6DD00B1B9DC008C9BE40092A0E6009EABE800A0AC
        E300ABB5E500A6B3EF00A9B4EA00B2BAE200B0B9E700B8C1EB00C4C8DF00C0C6
        E200C4C9E200CBCEE200C9D0ED00D0D6EF00DADDEF00C1C9F000CDD3F200CFD6
        F300C9D1F600D7DBF100D7DCF200D7DCF500DFE1EC00DEE2F900DFE4FA00E1E3
        EF00E5E6EF00F3EBE700E4E7F300E2E5F400E6E9F700EDEDF100E8EAF500EEEF
        F600E0E4FA00E4E7F800E4E8F900EFF1F800F2F2F200F0F1F500F1F2F600F2F2
        F600F3F4F700F2F3F800F5F5F800F5F6FB00F7F7F900F7F8FB00F7F8FD00F8F9
        FA00F9F9FA00F8F9FE00F9FAFD00FAFAFC00FCFCFD00FDFDFE00FEFEFF00FFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000460707070707070707070B687D4307070707070707070746070707070707
        070707071478855407070707070707070707080808080808080808126987874B
        080808080808080808081905090A0A0A0A06177488887A2C0A0A0A0A0A0A0A0A
        0A0A8666471510040F56858A8A87490D0C0C0C0C0C0C0C0C0C0C3D53646A717F
        8C8C8C8C7E450E0E0E0E0E0E0E0E0E0E0E0E1A1A1A20137790908F723E1B1A1A
        1A1A1A1A1A1A1A1A1A1A1B1B1B1B52939393652A1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1D1D1D1D6094947B291D03020202020201000000501D1D1D1C1116185895
        956C231E020202020202020100004F501E1E578996926F6D8195512002020202
        0202020201004F4F501F9797824124212B5E8D55020202020202020202014F4F
        4F50978E4022222222276E960202020284847902028402020202976225252525
        25255D97020202020202840202840202020295422626262626265C9702020202
        028484020284020202027C3A2D2D2D2D2D2D5F97020202020202840202840202
        020273342E2E2E2E2E2F6B970202020284847902848402020202723531313131
        313F8B970202020202020202020202020202833C323232323063979702020202
        020202020202020202029459283636334A949791020202020202020202020202
        02024D756748445B9397965A0202024E0202020202024E020202373B4C617076
        8080808003020202020202020202020202033938383838383838383838383838
        3838383838383838383946383838383838383838383838383838383838383838
        3846}
      ExplicitLeft = 983
    end
    object btnConnect: TButton
      Left = 36
      Top = 8
      Width = 114
      Height = 25
      Action = dmVCLPlannerCustomController.actConnect
      ImageMargins.Left = 2
      Images = dmVCLPlannerCustomController.SVGIconImageList16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object btnRemove: TButton
      Left = 156
      Top = 8
      Width = 125
      Height = 25
      Action = dmVCLPlannerCustomController.actRemoveAccess
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageMargins.Left = 6
      Images = dmVCLPlannerCustomController.SVGIconImageList16
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object grpCalendars: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 1274
    Height = 168
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Calendari'
    TabOrder = 2
    DesignSize = (
      1274
      168)
    object lbLists: TLabel
      Left = 76
      Top = 18
      Width = 27
      Height = 15
      Caption = 'Liste:'
    end
    object lbDefaultReminders: TLabel
      Left = 392
      Top = 18
      Width = 95
      Height = 15
      Caption = 'Allarmi di Default:'
    end
    object cboCalendarsList: TComboBox
      Left = 130
      Top = 15
      Width = 246
      Height = 23
      Style = csDropDownList
      TabOrder = 0
      OnChange = cboCalendarsListChange
      OnClick = cboCalendarsListClick
    end
    object grpCalendarDetails: TGroupBox
      Left = 17
      Top = 44
      Width = 1240
      Height = 117
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Dettagli Calendario'
      TabOrder = 1
      DesignSize = (
        1240
        117)
      object Label16: TLabel
        Left = 11
        Top = 54
        Width = 63
        Height = 15
        Caption = 'Description:'
      end
      object lbSummary: TLabel
        Left = 12
        Top = 27
        Width = 95
        Height = 15
        Caption = 'Titolo (Riassunto):'
      end
      object lbLocation: TLabel
        Left = 375
        Top = 27
        Width = 92
        Height = 15
        Caption = 'Indirizzo (Luogo):'
      end
      object Label19: TLabel
        Left = 375
        Top = 54
        Width = 54
        Height = 15
        Caption = 'Timezone:'
      end
      object edCalendarDescription: TEdit
        Left = 113
        Top = 51
        Width = 246
        Height = 23
        TabOrder = 0
      end
      object edCalendarName: TEdit
        Left = 113
        Top = 22
        Width = 246
        Height = 23
        TabOrder = 1
      end
      object btAddCalendar: TButton
        Left = 12
        Top = 80
        Width = 141
        Height = 25
        Action = dmVCLPlannerCustomController.actAddCalendar
        ImageMargins.Left = 6
        Images = dmVCLPlannerCustomController.SVGIconImageList16
        TabOrder = 2
      end
      object btDeleteCalendar: TButton
        Left = 328
        Top = 80
        Width = 154
        Height = 25
        Action = dmVCLPlannerCustomController.actDeleteCalendar
        ImageMargins.Left = 6
        Images = dmVCLPlannerCustomController.SVGIconImageList16
        TabOrder = 3
      end
      object btUpdateCalendar: TButton
        Left = 159
        Top = 80
        Width = 154
        Height = 25
        Action = dmVCLPlannerCustomController.actUpdateCalendar
        ImageMargins.Left = 6
        Images = dmVCLPlannerCustomController.SVGIconImageList16
        TabOrder = 4
      end
      object edCalendarLocation: TEdit
        Left = 488
        Top = 22
        Width = 738
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
      end
      object edCalendarTimeZone: TEdit
        Left = 488
        Top = 51
        Width = 738
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 6
      end
      object pnlGroupColor: TPanel
        Left = 488
        Top = 80
        Width = 734
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Caption = 'Colore Calendario'
        TabOrder = 7
        StyleElements = []
      end
    end
    object cbDefaultReminders: TComboBox
      Left = 505
      Top = 15
      Width = 617
      Height = 23
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
    end
    object ckbFilterCalendar: TCheckBox
      Left = 1128
      Top = 21
      Width = 118
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Filtra Calendario'
      TabOrder = 3
    end
  end
  object pnlEventDetail: TPanel
    Left = 904
    Top = 267
    Width = 376
    Height = 801
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 3
    object grpItemDetails: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 370
      Height = 798
      Margins.Bottom = 0
      Align = alClient
      Caption = 'Details'
      TabOrder = 0
      DesignSize = (
        370
        798)
      object Label4: TLabel
        Left = 16
        Top = 94
        Width = 63
        Height = 15
        Caption = 'Description:'
      end
      object Label5: TLabel
        Left = 16
        Top = 139
        Width = 49
        Height = 15
        Caption = 'Location:'
      end
      object Label6: TLabel
        Left = 16
        Top = 206
        Width = 54
        Height = 15
        Caption = 'Start time:'
      end
      object Label7: TLabel
        Left = 17
        Top = 235
        Width = 50
        Height = 15
        Caption = 'End time:'
      end
      object Label11: TLabel
        Left = 16
        Top = 172
        Width = 47
        Height = 15
        Caption = 'Visibility:'
      end
      object Label10: TLabel
        Left = 16
        Top = 69
        Width = 35
        Height = 15
        Caption = 'Name:'
      end
      object Label9: TLabel
        Left = 16
        Top = 265
        Width = 32
        Height = 15
        Caption = 'Color:'
      end
      object lbID: TLabel
        Left = 21
        Top = 298
        Width = 14
        Height = 15
        Caption = 'ID:'
      end
      object lbEtag: TLabel
        Left = 21
        Top = 327
        Width = 24
        Height = 15
        Caption = 'ETag'
      end
      object lbGrp: TLabel
        Left = 21
        Top = 356
        Width = 19
        Height = 15
        Caption = 'Grp'
      end
      object edCalendarItemName: TEdit
        Left = 87
        Top = 64
        Width = 266
        Height = 23
        TabOrder = 0
      end
      object edCalendarItemLocation: TEdit
        Left = 87
        Top = 136
        Width = 266
        Height = 23
        TabOrder = 2
      end
      object StartDate: TDateTimePicker
        Left = 87
        Top = 204
        Width = 121
        Height = 21
        Date = 41171.000000000000000000
        Time = 0.620329733799735600
        TabOrder = 5
      end
      object EndDate: TDateTimePicker
        Left = 87
        Top = 231
        Width = 121
        Height = 21
        Date = 41171.000000000000000000
        Time = 0.620329733799735600
        TabOrder = 7
      end
      object StartTime: TDateTimePicker
        Left = 214
        Top = 204
        Width = 121
        Height = 21
        Date = 41165.000000000000000000
        Format = 'HH:mm'
        Time = 41165.000000000000000000
        Kind = dtkTime
        TabOrder = 6
      end
      object EndTime: TDateTimePicker
        Left = 214
        Top = 231
        Width = 121
        Height = 21
        Date = 41165.000000000000000000
        Format = 'HH:mm'
        Time = 41165.000000000000000000
        Kind = dtkTime
        TabOrder = 8
      end
      object cbVisibility: TComboBox
        Left = 87
        Top = 167
        Width = 121
        Height = 23
        Style = csDropDownList
        TabOrder = 3
        Items.Strings = (
          'Default'
          'Public'
          'Private')
      end
      object cbAllday: TCheckBox
        Left = 214
        Top = 172
        Width = 146
        Height = 17
        Caption = 'This is an all day Event'
        TabOrder = 4
      end
      object Panel2: TPanel
        Left = 2
        Top = 17
        Width = 366
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 9
        object btnGoogleEventDelete: TButton
          Left = 247
          Top = 8
          Width = 110
          Height = 25
          Action = dmVCLPlannerCustomController.actGoogleEventDelete
          ImageMargins.Left = 6
          Images = dmVCLPlannerCustomController.SVGIconImageList16
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object btnGoogleEventUpdate: TButton
          Left = 131
          Top = 8
          Width = 110
          Height = 25
          Action = dmVCLPlannerCustomController.actGoogleEventUpdate
          ImageMargins.Left = 6
          Images = dmVCLPlannerCustomController.SVGIconImageList16
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object btnGoogleEventNew: TButton
          Left = 15
          Top = 8
          Width = 110
          Height = 25
          Action = dmVCLPlannerCustomController.actGoogleEventNew
          ImageMargins.Left = 6
          Images = dmVCLPlannerCustomController.SVGIconImageList16
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
      end
      object edCalendarItemDescription: TMemo
        Left = 87
        Top = 91
        Width = 266
        Height = 39
        TabOrder = 1
      end
      object PageControl2: TPageControl
        Left = 19
        Top = 553
        Width = 334
        Height = 233
        ActivePage = tabAttendees
        Anchors = [akLeft, akRight, akBottom]
        TabOrder = 10
        object tabDettagli: TTabSheet
          Caption = 'Dettagli'
          object Label8: TLabel
            Left = 12
            Top = 95
            Width = 45
            Height = 15
            Caption = 'Method:'
          end
          object Label2: TLabel
            Left = 11
            Top = 122
            Width = 46
            Height = 15
            Caption = 'Minutes:'
          end
          object lvRem: TListView
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 320
            Height = 85
            Align = alTop
            Columns = <
              item
                Caption = 'Method'
                Width = 100
              end
              item
                Caption = 'Minutes'
                Width = 100
              end>
            ColumnClick = False
            RowSelect = True
            TabOrder = 0
            ViewStyle = vsReport
          end
          object cbRemMethod: TComboBox
            Left = 74
            Top = 95
            Width = 127
            Height = 23
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 1
            Text = 'Popup'
            Items.Strings = (
              'Popup'
              'Email'
              'SMS')
          end
          object EditRemMinutes: TEdit
            Left = 74
            Top = 124
            Width = 127
            Height = 23
            TabOrder = 2
            Text = '10'
          end
          object btAddRem: TButton
            Left = 48
            Top = 175
            Width = 110
            Height = 25
            Hint = 'Add reminder to Event'
            Caption = 'Add'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
          object btDelRem: TButton
            Left = 164
            Top = 175
            Width = 110
            Height = 25
            Hint = 'Delete Reminder from Event'
            Caption = 'Delete'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
          end
          object cbRem: TCheckBox
            Left = 56
            Top = 153
            Width = 142
            Height = 17
            Caption = 'Usa Allarmi di Default'
            Checked = True
            State = cbChecked
            TabOrder = 5
          end
        end
        object tabAttendees: TTabSheet
          Caption = 'Partecipanti'
          ImageIndex = 1
          object Label3: TLabel
            Left = 3
            Top = 98
            Width = 35
            Height = 15
            Caption = 'Name:'
          end
          object Label12: TLabel
            Left = 3
            Top = 129
            Width = 32
            Height = 15
            Caption = 'Email:'
          end
          object lvAtt: TListView
            Left = 3
            Top = 3
            Width = 353
            Height = 89
            Columns = <
              item
                Caption = 'Status'
                Width = 90
              end
              item
                Caption = 'Name'
                Width = 100
              end
              item
                Caption = 'Email'
                Width = 140
              end>
            ColumnClick = False
            RowSelect = True
            TabOrder = 0
            ViewStyle = vsReport
          end
          object EditAttName: TEdit
            Left = 40
            Top = 98
            Width = 280
            Height = 23
            TabOrder = 1
          end
          object EditAttEmail: TEdit
            Left = 40
            Top = 125
            Width = 280
            Height = 23
            TabOrder = 2
          end
          object btInvite: TButton
            Left = 40
            Top = 152
            Width = 169
            Height = 25
            Action = dmVCLPlannerCustomController.actAddAttendee
            ImageMargins.Left = 6
            Images = dmVCLPlannerCustomController.SVGIconImageList16
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
        end
      end
      object cbColors: TComboBox
        Left = 87
        Top = 261
        Width = 121
        Height = 23
        Style = csDropDownList
        TabOrder = 11
      end
      object panelColor: TPanel
        Left = 214
        Top = 261
        Width = 121
        Height = 21
        Caption = 'Sample'
        TabOrder = 12
      end
      object edID: TEdit
        Left = 51
        Top = 295
        Width = 293
        Height = 23
        TabOrder = 13
      end
      object edEtag: TEdit
        Left = 51
        Top = 324
        Width = 291
        Height = 23
        TabOrder = 14
      end
      object edGrp: TEdit
        Left = 51
        Top = 353
        Width = 291
        Height = 23
        TabOrder = 15
      end
    end
  end
  object pnlFilterCalendar: TPanel
    Left = 0
    Top = 212
    Width = 1280
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    DesignSize = (
      1280
      55)
    object lbStartDate: TLabel
      Left = 12
      Top = 4
      Width = 56
      Height = 15
      Caption = 'Dal Giorno'
    end
    object lbEndDate: TLabel
      Left = 12
      Top = 29
      Width = 50
      Height = 15
      Caption = 'Al Giorno'
    end
    object btUpdate: TButton
      Left = 1121
      Top = 16
      Width = 144
      Height = 25
      Action = dmVCLPlannerCustomController.actUpdateEvents
      Anchors = [akTop, akRight]
      ImageMargins.Left = 6
      Images = dmVCLPlannerCustomController.SVGIconImageList16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object dpCalStartDate: TDateTimePicker
      Left = 79
      Top = 3
      Width = 106
      Height = 21
      Date = 41153.000000000000000000
      Time = 0.582957546299439900
      TabOrder = 1
    end
    object dpCalEndDate: TDateTimePicker
      Left = 80
      Top = 28
      Width = 105
      Height = 21
      Date = 41274.000000000000000000
      Time = 0.582957546299439900
      TabOrder = 2
    end
    object ckbAll: TCheckBox
      AlignWithMargins = True
      Left = 191
      Top = 3
      Width = 50
      Height = 49
      Caption = 'Tutti'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object ckbCalendarList: TCheckListBox
      Left = 240
      Top = 8
      Width = 545
      Height = 41
      Columns = 6
      Items.Strings = (
        'uno'
        'due'
        'tre'
        'quattro'
        'cinque '
        'sei '
        'sette'
        'otto'
        'nove'
        'dieci'
        'undici'
        'dodici')
      TabOrder = 4
      OnClickCheck = ckbCalendarListClickCheck
    end
  end
  object ActionList1: TActionList
    Images = dmVCLPlannerCustomController.SVGIconImageList16
    Left = 492
    Top = 430
    object Action1: TAction
      Caption = 'Nuovo'
      ImageIndex = 10
      ImageName = '011-planner'
    end
  end
end
