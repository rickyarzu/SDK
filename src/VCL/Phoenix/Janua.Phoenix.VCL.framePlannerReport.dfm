inherited frameVCLPhoenixPlanneReport: TframeVCLPhoenixPlanneReport
  Width = 848
  Height = 927
  ExplicitWidth = 848
  ExplicitHeight = 927
  DesignSize = (
    848
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
    Width = 108
    Height = 15
    Caption = 'Tecnico / Calendario'
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
    Width = 826
    Height = 812
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
    PanelHeight = 116
    PanelWidth = 809
    TabOrder = 2
    RowCount = 7
    SelectedColor = clAntiquewhite
    object pnlInterventi: TPanel
      Left = 0
      Top = 96
      Width = 809
      Height = 20
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 424
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
        Width = 20
        Height = 20
        Align = alLeft
        DataField = 'LUCI'
        DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
      end
      object lbIdranti: TLabel
        AlignWithMargins = True
        Left = 58
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
        Left = 85
        Top = 0
        Width = 20
        Height = 20
        Align = alLeft
        DataField = 'IDRANTI'
        DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
      end
      object Label4: TLabel
        AlignWithMargins = True
        Left = 108
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
        Left = 153
        Top = 0
        Width = 20
        Height = 20
        Align = alLeft
        DataField = 'ESTINTORI_ORDINARIO'
        DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
      end
      object Label5: TLabel
        AlignWithMargins = True
        Left = 176
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
        Left = 222
        Top = 0
        Width = 20
        Height = 20
        Align = alLeft
        DataField = 'ESTINTORI_STRAORDINARIO'
        DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
        ExplicitLeft = 219
        ExplicitTop = 2
      end
      object DBText2: TDBText
        AlignWithMargins = True
        Left = 744
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
      object Label6: TLabel
        AlignWithMargins = True
        Left = 245
        Top = 0
        Width = 35
        Height = 20
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Fumi:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 17
      end
      object DBText10: TDBText
        Left = 283
        Top = 0
        Width = 20
        Height = 20
        Align = alLeft
        DataField = 'FUMI'
        DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
        ExplicitLeft = 306
        ExplicitTop = 5
      end
      object Label7: TLabel
        AlignWithMargins = True
        Left = 306
        Top = 0
        Width = 26
        Height = 20
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Grp:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 17
      end
      object DBText11: TDBText
        Left = 335
        Top = 0
        Width = 20
        Height = 20
        Align = alLeft
        DataField = 'GRUPPI_ELETTR'
        DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
        ExplicitLeft = 358
        ExplicitTop = 2
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 809
      Height = 96
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 424
      object Panel2: TPanel
        Left = 78
        Top = 1
        Width = 730
        Height = 94
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        OnDblClick = DBText1DblClick
        ExplicitWidth = 345
        object DBText1: TDBText
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 724
          Height = 17
          Align = alTop
          DataField = 'DESCRIZIONE_SCHEDA'
          DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
          OnDblClick = DBText1DblClick
          ExplicitLeft = 6
          ExplicitWidth = 291
        end
        object DBText3: TDBText
          AlignWithMargins = True
          Left = 3
          Top = 26
          Width = 724
          Height = 15
          Align = alTop
          DataField = 'calcIndirizzo'
          DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
          OnDblClick = DBText1DblClick
          ExplicitLeft = 6
          ExplicitTop = 15
          ExplicitWidth = 291
        end
        object Panel3: TPanel
          Left = 0
          Top = 72
          Width = 730
          Height = 22
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 345
          object DBText8: TDBText
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 135
            Height = 16
            Align = alLeft
            DataField = 'calcAppuntamentoDataOra'
            DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
            OnDblClick = DBText1DblClick
          end
          object DBText9: TDBText
            AlignWithMargins = True
            Left = 144
            Top = 3
            Width = 583
            Height = 16
            Align = alClient
            DataField = 'NOME_TECNICO'
            DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
            OnDblClick = DBText1DblClick
            ExplicitLeft = 153
            ExplicitTop = 1
            ExplicitWidth = 84
          end
        end
      end
      object btnImage: TDBImage
        Left = 1
        Top = 1
        Width = 77
        Height = 94
        Align = alLeft
        DataField = 'calcImage'
        DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
        TabOrder = 1
        OnDblClick = DBText1DblClick
        OnMouseDown = btnImageMouseDown
      end
    end
  end
  object grpStato: TRadioGroup
    Left = 239
    Top = 1
    Width = 418
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
    Width = 225
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
    Left = 137
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
    Width = 99
    Height = 25
    Caption = 'Messaggi'
    ImageIndex = 12
    ImageName = '013-alarm'
    Images = dmVCLPhoenixPlannerController.SVGIconImageList16
    TabOrder = 6
    OnClick = btnWhatsAppMessagesClick
  end
  object edDateFilter: TJvDatePickerEdit
    Left = 670
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
    Left = 670
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
