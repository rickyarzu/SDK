inherited frameTMSPhoenixPlannerCalendar: TframeTMSPhoenixPlannerCalendar
  Height = 976
  ExplicitHeight = 976
  DesignSize = (
    1440
    976)
  inherited lbGiorni: TLabel
    Left = 3
    Top = 48
    Anchors = [akLeft, akTop, akRight]
    ExplicitLeft = 3
    ExplicitTop = 48
  end
  object Area: TLabel [2]
    Left = 50
    Top = 48
    Width = 108
    Height = 15
    Caption = 'Tecnico / Calendario'
  end
  inherited edDays: TSpinEdit
    Left = 3
    Top = 64
    ExplicitLeft = 3
    ExplicitTop = 64
  end
  inherited Panel1: TPanel
    Width = 903
    ExplicitWidth = 903
    inherited btnAddMeeting: TButton
      Action = dmVCLPhoenixPlannerController.ActionAddMeeting
    end
    inherited btnAddPerson: TButton
      Action = dmVCLPhoenixPlannerController.ActionAddUser
    end
    inherited btnExport: TButton
      Caption = 'Esporta (Excel,    Pdf, Csv)'
    end
    inherited btnSendShare: TButton
      Caption = 'Invia Messaggi (Mail - WApp)'
    end
  end
  inherited grpMeeting: TGroupBox
    Top = 865
    ExplicitTop = 865
  end
  inherited Panel3: TPanel
    inherited lbSearch: TLabel
      Width = 250
    end
    inherited lbDateSelector: TLabel
      Width = 256
    end
  end
  inherited PageControl1: TPageControl
    inherited tabCalendar: TTabSheet
      inherited DBPlanner1: TDBPlanner
        TMSStyle = 0
      end
    end
    inherited tabCalendarGrid: TTabSheet
      TabVisible = True
      inherited grdCalendar: TEnhCRDBGrid
        DataSource = dmVCLPhoenixPlannerController.dsCalendarEvents
        PopupMenu = GridPopup
        Columns = <
          item
            Expanded = False
            FieldName = 'CHIAVE'
            Title.Caption = 'Chiave'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATINO'
            Title.Caption = 'Statino'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TECNICO_SIGLA'
            Title.Caption = 'Calendario'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DALLE_ORE'
            Title.Caption = 'Inizio Data/Ora'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALLE_ORE'
            Title.Caption = 'Fine Data/Ora'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBJECT'
            Title.Caption = 'Note'
            Width = 600
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GOOGLEID'
            Title.Caption = 'Google Calendar'
            Width = 300
            Visible = True
          end>
      end
    end
  end
  object cboTecnici: TJvDBLookupCombo [9]
    Left = 50
    Top = 64
    Width = 208
    Height = 24
    EmptyValue = '-1'
    LookupField = 'RESPONSABILE'
    LookupDisplay = 'NOME_TECNICO'
    LookupSource = dmVCLPhoenixPlannerController.dsTecniciCalendar
    TabOrder = 6
    OnCloseUp = cboTecniciCloseUp
  end
  object GridPopup: TPopupMenu
    Images = dmVCLPhoenixPlannerController.SVGIconImageList16
    Left = 439
    Top = 370
    object mnuGoogleSync1: TMenuItem
      Action = dmVCLPhoenixPlannerController.actEventGoogleSync
    end
  end
  object dsCAP: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryCAP
    Left = 160
    Top = 280
  end
  object dsTechnicians: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryTech
    Left = 160
    Top = 368
  end
  object dsCustomers: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryCustomers
    Left = 80
    Top = 336
  end
end
