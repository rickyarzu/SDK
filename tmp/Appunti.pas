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


