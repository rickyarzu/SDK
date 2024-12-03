inherited frameVCLPhoenixPlanneReport: TframeVCLPhoenixPlanneReport
  Width = 670
  Height = 1080
  ExplicitWidth = 670
  ExplicitHeight = 1080
  DesignSize = (
    670
    1080)
  object lbCap: TLabel
    Left = 438
    Top = 58
    Width = 23
    Height = 15
    Caption = 'CAP'
  end
  object Area: TLabel
    Left = 8
    Top = 8
    Width = 40
    Height = 15
    Caption = 'Tecnico'
  end
  object lbActivity: TLabel
    Left = 8
    Top = 58
    Width = 78
    Height = 15
    Caption = 'Cliente - Filiale'
  end
  object lkpCAP: TJvDBLookupCombo
    Left = 438
    Top = 72
    Width = 66
    Height = 25
    LookupField = 'CAP'
    LookupDisplay = 'CAP'
    LookupSource = dsCAP
    TabOrder = 0
    OnCloseUp = ChangeFilter
  end
  object grdReportList: TDBCtrlGrid
    Left = 8
    Top = 128
    Width = 659
    Height = 937
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
    PanelHeight = 104
    PanelWidth = 642
    TabOrder = 2
    RowCount = 9
    SelectedColor = clAntiquewhite
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 642
      Height = 104
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 102
      object Panel2: TPanel
        Left = 78
        Top = 1
        Width = 563
        Height = 102
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        OnDblClick = DBText1DblClick
        ExplicitHeight = 100
        object pnlStatino: TPanel
          Left = 0
          Top = 0
          Width = 441
          Height = 102
          Align = alLeft
          TabOrder = 0
          ExplicitHeight = 100
          object DBText3: TDBText
            AlignWithMargins = True
            Left = 4
            Top = 27
            Width = 433
            Height = 17
            Align = alTop
            DataField = 'calcIndirizzo'
            DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
            OnDblClick = DBText1DblClick
          end
          object DBText1: TDBText
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 433
            Height = 17
            Align = alTop
            DataField = 'DESCRIZIONE_SCHEDA'
            DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
            OnDblClick = DBText1DblClick
            ExplicitLeft = 6
            ExplicitTop = 3
            ExplicitWidth = 291
          end
          object btnNewMeeting: TJvSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 110
            Height = 28
            Action = dmVCLPhoenixPlannerController.actNewMeeting
            Align = alLeft
            Layout = blGlyphLeft
            MenuPosition = dmpRight
            ExplicitHeight = 25
          end
          object btnUndoMeeting: TJvSpeedButton
            AlignWithMargins = True
            Left = 120
            Top = 70
            Width = 80
            Height = 28
            Action = dmVCLPhoenixPlannerController.actUndoMeeting
            Align = alLeft
            Caption = ' Annulla'
            Layout = blGlyphLeft
            ExplicitHeight = 25
          end
          object btnContract: TJvSpeedButton
            AlignWithMargins = True
            Left = 206
            Top = 70
            Width = 120
            Height = 28
            Action = dmVCLPhoenixPlannerController.actContract
            Align = alLeft
            Layout = blGlyphLeft
            ExplicitLeft = 256
            ExplicitHeight = 26
          end
          object btnWhatsApp: TJvSpeedButton
            AlignWithMargins = True
            Left = 332
            Top = 70
            Width = 104
            Height = 28
            Action = dmVCLPhoenixPlannerController.actWhatsAppMsg
            Align = alLeft
            Layout = blGlyphLeft
            ExplicitHeight = 25
          end
          object pnlInterventi: TPanel
            Left = 1
            Top = 47
            Width = 439
            Height = 20
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitTop = 70
            object DBText2: TDBText
              AlignWithMargins = True
              Left = 320
              Top = 0
              Width = 117
              Height = 20
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 2
              Margins.Bottom = 0
              Align = alRight
              DataField = 'calcStato'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMediumblue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
            object DBText8: TDBText
              AlignWithMargins = True
              Left = 114
              Top = 3
              Width = 203
              Height = 14
              Align = alRight
              DataField = 'NOME_TECNICO'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              OnDblClick = DBText1DblClick
              ExplicitLeft = 168
            end
            object DBText12: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 105
              Height = 14
              Align = alClient
              DataField = 'calcAppuntamentoDataOra'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              OnDblClick = DBText1DblClick
              ExplicitLeft = 4
              ExplicitTop = 50
              ExplicitWidth = 433
              ExplicitHeight = 17
            end
          end
        end
        object Panel4: TPanel
          Left = 441
          Top = 0
          Width = 122
          Height = 102
          Align = alClient
          TabOrder = 1
          ExplicitHeight = 100
          object Panel3: TPanel
            Left = 1
            Top = 1
            Width = 72
            Height = 100
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 98
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'Luci:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 16
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'Idranti:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 32
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'E.Ord.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 48
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'E.Stra.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 64
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'Irai:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 80
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'G.p.a.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
          end
          object Panel5: TPanel
            Left = 73
            Top = 1
            Width = 48
            Height = 100
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 98
            object DBText9: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 42
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'LUCI'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitWidth = 66
            end
            object DBText5: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 16
              Width = 42
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'IDRANTI'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitWidth = 48
            end
            object DBText6: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 32
              Width = 42
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'ESTINTORI_ORDINARIO'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitTop = 36
              ExplicitWidth = 48
            end
            object DBText7: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 48
              Width = 42
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'ESTINTORI_STRAORDINARIO'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitWidth = 48
            end
            object DBText10: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 64
              Width = 42
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'FUMI'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitWidth = 48
            end
            object DBText11: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 80
              Width = 42
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'GRUPPI_ELETTR'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitWidth = 48
            end
          end
        end
      end
      object btnImage: TDBImage
        Left = 1
        Top = 1
        Width = 77
        Height = 102
        Align = alLeft
        DataField = 'STATO_IMMAGINE'
        DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
        TabOrder = 1
        OnDblClick = DBText1DblClick
        OnMouseDown = btnImageMouseDown
        ExplicitHeight = 100
      end
    end
  end
  object grpStato: TRadioGroup
    Left = 164
    Top = 1
    Width = 389
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
    TabOrder = 1
    OnClick = ChangeFilter
  end
  object cboTecnici: TJvDBLookupCombo
    Left = 8
    Top = 28
    Width = 150
    Height = 24
    EmptyValue = '-1'
    LookupField = 'RESPONSABILE'
    LookupDisplay = 'NOME_TECNICO'
    LookupSource = dsTechnicians
    TabOrder = 3
    OnChange = cboTecniciChange
  end
  object cboCustomers: TJvDBLookupCombo
    Left = 8
    Top = 73
    Width = 424
    Height = 24
    LookupField = 'CHIAVE'
    LookupDisplay = 'DESCRIZIONE_SCHEDA'
    LookupSource = dsCustomers
    TabOrder = 4
    OnClick = ChangeFilter
  end
  object cbkFilterReport: TCheckBox
    Left = 60
    Top = 6
    Width = 90
    Height = 16
    Caption = 'Filtra Tecnico'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = cbkFilterReportClick
  end
  object btnWhatsAppMessages: TAdvBadgeButton
    Left = 510
    Top = 72
    Width = 146
    Height = 50
    Caption = 'Messaggi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ImageIndex = 12
    ImageName = '013-alarm'
    ImageMargins.Left = 8
    Images = dmVCLPhoenixPlannerController.SVGIconImageList48
    ParentFont = False
    TabOrder = 6
    OnClick = btnWhatsAppMessagesClick
  end
  object edDateFilter: TJvDatePickerEdit
    Left = 559
    Top = 28
    Width = 97
    Height = 23
    AllowNoDate = True
    ButtonFlat = True
    Checked = True
    Flat = True
    ParentFlat = False
    TabOrder = 7
  end
  object ckbFilterDate: TCheckBox
    Left = 559
    Top = 5
    Width = 95
    Height = 17
    Caption = 'Filtra Data'
    TabOrder = 8
  end
  object SearchBox1: TSearchBox
    Left = 9
    Top = 100
    Width = 495
    Height = 24
    TabOrder = 9
    Text = 'SearchBox1'
  end
  object dsCustomers: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryCustomers
    Left = 88
    Top = 248
  end
  object dsTechnicians: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryTecniciCalendar
    Left = 184
    Top = 280
  end
  object dsCAP: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryCAP
    Left = 264
    Top = 304
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    Left = 480
    Top = 264
  end
  object PopupItems: TPopupMenu
    Images = dmVCLPhoenixPlannerController.SVGIconImageList16
    Left = 600
    Top = 347
    object Colore1: TMenuItem
      Action = dmVCLPhoenixPlannerController.actDlgColorAction
    end
    object ModificaAppuntamento1: TMenuItem
      Action = dmVCLPhoenixPlannerController.actDlgEditAction
    end
    object ModificaAppuntamento2: TMenuItem
      Caption = 'Annulla Appuntamento'
      ImageIndex = 49
      ImageName = '050-stopwatch'
    end
    object InviaMsgWhatsApp1: TMenuItem
      Action = dmVCLPhoenixPlannerController.actDlgMessage
    end
    object ConfermaAppuntmento1: TMenuItem
      Action = dmVCLPhoenixPlannerController.actGridConfirmEvent
    end
  end
  object TimerEventUpdate: TTimer
    Interval = 300
    OnTimer = TimerEventUpdateTimer
    Left = 416
    Top = 312
  end
  object WATimer: TTimer
    Interval = 300000
    OnTimer = WATimerTimer
    Left = 416
    Top = 448
  end
end
