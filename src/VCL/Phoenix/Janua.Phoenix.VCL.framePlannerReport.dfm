inherited frameVCLPhoenixPlanneReport: TframeVCLPhoenixPlanneReport
  Width = 670
  Height = 927
  ExplicitWidth = 670
  ExplicitHeight = 927
  DesignSize = (
    670
    927)
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
    Top = 103
    Width = 659
    Height = 816
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
    PanelHeight = 102
    PanelWidth = 642
    TabOrder = 2
    RowCount = 8
    SelectedColor = clAntiquewhite
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 642
      Height = 102
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 809
      ExplicitHeight = 96
      object Panel2: TPanel
        Left = 78
        Top = 1
        Width = 563
        Height = 100
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        OnDblClick = DBText1DblClick
        ExplicitWidth = 730
        ExplicitHeight = 94
        object pnlStatino: TPanel
          Left = 0
          Top = 0
          Width = 441
          Height = 100
          Align = alLeft
          TabOrder = 0
          ExplicitHeight = 72
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
          object DBText12: TDBText
            AlignWithMargins = True
            Left = 4
            Top = 50
            Width = 433
            Height = 17
            Align = alTop
            DataField = 'calcAppuntamentoDataOra'
            DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
            OnDblClick = DBText1DblClick
          end
          object pnlInterventi: TPanel
            Left = 1
            Top = 70
            Width = 439
            Height = 20
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = 0
            ExplicitTop = 96
            ExplicitWidth = 809
            object DBText2: TDBText
              AlignWithMargins = True
              Left = 374
              Top = 0
              Width = 63
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
              ExplicitLeft = 361
            end
            object DBText8: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 368
              Height = 14
              Align = alClient
              DataField = 'NOME_TECNICO'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              OnDblClick = DBText1DblClick
              ExplicitLeft = 4
              ExplicitTop = 73
              ExplicitWidth = 433
              ExplicitHeight = 17
            end
          end
        end
        object Panel4: TPanel
          Left = 441
          Top = 0
          Width = 122
          Height = 100
          Align = alClient
          TabOrder = 1
          ExplicitLeft = 528
          ExplicitTop = 8
          ExplicitWidth = 185
          ExplicitHeight = 41
          object Panel3: TPanel
            Left = 1
            Top = 1
            Width = 72
            Height = 98
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 92
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              Caption = 'Luci:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 48
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
              Caption = 'Idranti:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
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
              Caption = 'E.Ord.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitTop = 33
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
              Caption = 'E.Stra.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
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
              Caption = 'Fumi:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
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
              Caption = 'Grp:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object Panel5: TPanel
            Left = 73
            Top = 1
            Width = 48
            Height = 98
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 55
            ExplicitWidth = 66
            ExplicitHeight = 92
            object DBText9: TDBText
              Left = 0
              Top = 0
              Width = 48
              Height = 16
              Align = alTop
              DataField = 'LUCI'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              ExplicitWidth = 66
            end
            object DBText5: TDBText
              Left = 0
              Top = 16
              Width = 48
              Height = 16
              Align = alTop
              DataField = 'IDRANTI'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
            end
            object DBText6: TDBText
              Left = 0
              Top = 32
              Width = 48
              Height = 16
              Align = alTop
              DataField = 'ESTINTORI_ORDINARIO'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              ExplicitTop = 36
            end
            object DBText7: TDBText
              Left = 0
              Top = 48
              Width = 48
              Height = 16
              Align = alTop
              DataField = 'ESTINTORI_STRAORDINARIO'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
            end
            object DBText10: TDBText
              Left = 0
              Top = 64
              Width = 48
              Height = 16
              Align = alTop
              DataField = 'FUMI'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
            end
            object DBText11: TDBText
              Left = 0
              Top = 80
              Width = 48
              Height = 20
              Align = alTop
              DataField = 'GRUPPI_ELETTR'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              ExplicitWidth = 32
            end
          end
        end
      end
      object btnImage: TDBImage
        Left = 1
        Top = 1
        Width = 77
        Height = 100
        Align = alLeft
        DataField = 'STATO_IMMAGINE'
        DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
        TabOrder = 1
        OnDblClick = DBText1DblClick
        OnMouseDown = btnImageMouseDown
        ExplicitHeight = 94
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
    Width = 155
    Height = 25
    Caption = 'Messaggi'
    ImageIndex = 12
    ImageName = '013-alarm'
    Images = dmVCLPhoenixPlannerController.SVGIconImageList16
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
    Left = 432
    Top = 176
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
