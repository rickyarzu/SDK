object dlgVCLPlannerActivities: TdlgVCLPlannerActivities
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gestione Attivit'#224' in Agenda'
  ClientHeight = 422
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 17
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 421
    Height = 33
    DataSource = dmPgPlannerStorage.dsActivitiesGroups
    Align = alTop
    TabOrder = 0
  end
  object grdActivityGroups: TDBGrid
    Left = 0
    Top = 33
    Width = 421
    Height = 136
    Align = alTop
    DataSource = dmPgPlannerStorage.dsActivitiesGroups
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = 'Gruppo di Attivit'#224
        Width = 360
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 0
    Top = 169
    Width = 421
    Height = 32
    DataSource = dmPgPlannerStorage.dsActivities
    Align = alTop
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 201
    Width = 421
    Height = 174
    Align = alTop
    DataSource = dmPgPlannerStorage.dsActivities
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = 'Attivit'#224' da Svolgere'
        Width = 360
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 312
    Top = 381
    Width = 91
    Height = 33
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 4
  end
end
