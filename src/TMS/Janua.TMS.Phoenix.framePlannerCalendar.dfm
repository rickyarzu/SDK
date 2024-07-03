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
  inherited edDays: TSpinEdit
    Top = 45
    ExplicitTop = 45
  end
  inherited Panel1: TPanel
    Width = 903
    ExplicitWidth = 903
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
  inherited Panel2: TPanel
    inherited ckbCalendarList: TCheckListBox
      ItemHeight = 16
    end
  end
  inherited PageControl1: TPageControl
    ActivePage = tabCalendarGrid
    inherited tabCalendar: TTabSheet
      inherited DBPlanner1: TDBPlanner
        TMSStyle = 0
      end
    end
    inherited tabCalendarGrid: TTabSheet
      TabVisible = True
      inherited EnhCRDBGrid1: TEnhCRDBGrid
        DataSource = dmVCLPhoenixPlannerController.dsCalendarEvents
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
end
