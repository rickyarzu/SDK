object CRDBGrid1: TCRDBGrid
  Left = 2
  Top = 39
  Width = 721
  Height = 274
  DataSource = dmVCLPhoenixPlannerController.dsGoogleEventsSearch
  TabOrder = 0
  TitleFont.Charset = DEFAULT_CHARSET
  TitleFont.Color = clWindowText
  TitleFont.Height = -12
  TitleFont.Name = 'Segoe UI'
  TitleFont.Style = []
  Columns = <
    item
      Expanded = False
      FieldName = 'STARTTIME'
      Title.Caption = 'Dal Giorno / Ora'
      Width = 102
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'ENDTIME'
      Title.Caption = 'Al Giorno / Ora'
      Width = 97
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'SUMMARY'
      Title.Caption = 'Note Intervento'
      Width = 483
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'ID'
      Width = 772
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'ETAG'
      Width = 772
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'DESCRIPTION'
      Width = 76
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'CREATED'
      Width = 112
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'UPDATED'
      Width = 112
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'ISALLDAY'
      Width = 56
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'LOCATION'
      Width = 772
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'STATUS'
      Width = 64
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'VISIBILITY'
      Width = 64
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'RECURRENCE'
      Width = 364
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'RECURRINGID'
      Width = 364
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'SEQUENCE'
      Width = 64
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
      FieldName = 'USEDEFAULTREMINDERS'
      Width = 135
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'SENDNOTIFICATIONS'
      Width = 118
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'CALENDARID'
      Width = 772
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'Attendees'
      Width = 64
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'Reminders'
      Width = 64
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'JGUID'
      Width = 232
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'CalcColor'
      Width = 64
      Visible = True
    end
    item
      Expanded = False
      FieldName = 'FilterSearch'
      Width = 60
      Visible = True
    end>
end



object UniDataSource: TUniDataSource
  AutoEdit = False
  DataSet = dmVCLPhoenixPlannerController.qryPlannerEvents
  Left = 328
  Top = 120
end


object DBText1: TDBText
  Left = 16
  Top = 319
  Width = 113
  Height = 17
  DataField = 'DALLE_ORE'
  StyleElements = []
end
object DBText2: TDBText
  Left = 152
  Top = 319
  Width = 113
  Height = 17
  DataField = 'TECNICO_SIGLA'
  StyleElements = []
end
object DBText3: TDBText
  Left = 288
  Top = 319
  Width = 403
  Height = 17
  DataField = 'TECNICO'
  StyleElements = []
end






object pnlBottom: TPanel
  Left = 0
  Top = 344
  Width = 723
  Height = 41
  Align = alBottom
  TabOrder = 0
  StyleElements = []
  object btnOK: TButton
    Left = 616
    Top = 8
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 0
    StyleElements = []
  end
  object btnCancel: TButton
    Left = 528
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Annulla'
    ModalResult = 2
    TabOrder = 1
    StyleElements = []
  end
end
object edSearch: TButtonedEdit
  Left = 8
  Top = 11
  Width = 520
  Height = 23
  RightButton.Visible = True
  TabOrder = 1
  StyleElements = []
end
object btnFilter: TButton
  Left = 637
  Top = 8
  Width = 75
  Height = 25
  Caption = 'Ricerca'
  TabOrder = 2
  StyleElements = []
  OnClick = btnFilterClick
end
object ckbFilter: TCheckBox
  Left = 534
  Top = 16
  Width = 97
  Height = 17
  Caption = 'Filtra Tecnico'
  Checked = True
  State = cbChecked
  TabOrder = 3
  StyleElements = []
end
















inline frameVCLPhoenixGoogleCalendar1: TframeVCLPhoenixGoogleCalendar
  Left = 0
  Top = 0
  Width = 1416
  Height = 724
  Align = alClient
  TabOrder = 0
  ExplicitWidth = 1416
  ExplicitHeight = 724
  inherited PageControl1: TPageControl
    Width = 1040
    Height = 457
    ExplicitWidth = 1040
    ExplicitHeight = 457
    inherited TabSheet1: TTabSheet
      ExplicitWidth = 1032
      ExplicitHeight = 427
      inherited grpEventsList: TGroupBox
        Width = 1026
        Height = 424
        ExplicitWidth = 1026
        ExplicitHeight = 424
        inherited grdGoogleCalendar: TCRDBGrid
          AlignWithMargins = True
          Left = 8
          Top = 25
          Width = 1010
          Height = 391
          Margins.Left = 6
          Margins.Top = 8
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alClient
        end
      end
    end
    inherited tabGoogleCalendar: TTabSheet
      inherited DBPlanner1: TDBPlanner
        TMSStyle = 0
      end
    end
  end
  inherited Panel1: TPanel
    Width = 1416
    ExplicitWidth = 1416
    inherited Image1: TImage
      Left = 1379
      ExplicitLeft = 1177
    end
    inherited btnConnect: TButton
      Left = 20
      Width = 130
      ExplicitLeft = 20
      ExplicitWidth = 130
    end
    inherited btnRemove: TButton
      Width = 133
      ExplicitWidth = 133
    end
  end
  inherited grpCalendars: TGroupBox
    Width = 1410
    ExplicitWidth = 1410
    inherited grpCalendarDetails: TGroupBox
      Width = 1382
      ExplicitWidth = 1382
      inherited edCalendarLocation: TEdit
        Width = 880
        ExplicitWidth = 880
      end
      inherited edCalendarTimeZone: TEdit
        Width = 880
        ExplicitWidth = 880
      end
      inherited pnlGroupColor: TPanel
        Width = 881
        ExplicitWidth = 881
      end
    end
    inherited cbDefaultReminders: TComboBox
      Width = 757
      ExplicitWidth = 757
    end
    inherited ckbFilterCalendar: TCheckBox
      Left = 1268
      Width = 125
      ExplicitLeft = 1268
      ExplicitWidth = 125
    end
  end
  inherited pnlEventDetail: TPanel
    Left = 1040
    Height = 457
    ExplicitLeft = 1040
    ExplicitHeight = 457
    inherited grpItemDetails: TGroupBox
      Height = 454
      ExplicitHeight = 454
    end
  end
  inherited pnlFilterCalendar: TPanel
    Width = 1416
    ExplicitWidth = 1416
    inherited ckbCalendarList: TCheckListBox
      ItemHeight = 16
    end
  end
end



