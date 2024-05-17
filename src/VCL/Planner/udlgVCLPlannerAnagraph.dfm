object dlgVCLPlannerAnagraph: TdlgVCLPlannerAnagraph
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Planner Anagraph'
  ClientHeight = 518
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 17
  object lbNome: TLabel
    Left = 32
    Top = 307
    Width = 36
    Height = 17
    Caption = 'Nome'
  end
  object Cognome: TLabel
    Left = 32
    Top = 334
    Width = 57
    Height = 17
    Caption = 'Cognome'
  end
  object lbPostalCode: TLabel
    Left = 32
    Top = 362
    Width = 23
    Height = 17
    Caption = 'CAP'
  end
  object lbTown: TLabel
    Left = 199
    Top = 362
    Width = 86
    Height = 17
    Caption = 'Citt'#224' (Comune)'
  end
  object lbAddress: TLabel
    Left = 32
    Top = 389
    Width = 49
    Height = 17
    Caption = 'Indirizzo'
  end
  object Telefono: TLabel
    Left = 32
    Top = 420
    Width = 50
    Height = 17
    Caption = 'Telefono'
  end
  object lbEmail: TLabel
    Left = 311
    Top = 416
    Width = 37
    Height = 17
    Caption = 'e-Mail'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 750
    Height = 57
    DataSource = dmPgPlannerStorage.dsAnagraph
    Align = alTop
    TabOrder = 0
  end
  object grdAnagraph: TEnhDBGrid
    Left = 0
    Top = 57
    Width = 750
    Height = 232
    Align = alTop
    DataSource = dmPgPlannerStorage.dsAnagraph
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -11
    HighlightFont.Name = 'Tahoma'
    HighlightFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'an_name'
        Title.Caption = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'an_last_name'
        Title.Caption = 'Cognome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'an_town'
        Title.Caption = 'Citt'#224
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'an_postal_code'
        Title.Caption = 'CAP'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'an_address'
        Title.Caption = 'Indirizzo'
        Width = 300
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 120
    Top = 304
    Width = 601
    Height = 25
    DataField = 'an_name'
    DataSource = dmPgPlannerStorage.dsAnagraph
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 120
    Top = 331
    Width = 601
    Height = 25
    DataField = 'an_last_name'
    DataSource = dmPgPlannerStorage.dsAnagraph
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 312
    Top = 358
    Width = 409
    Height = 25
    DataSource = dmPgPlannerStorage.dsAnagraph
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 120
    Top = 358
    Width = 73
    Height = 25
    DataField = 'an_postal_code'
    DataSource = dmPgPlannerStorage.dsAnagraph
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 120
    Top = 385
    Width = 601
    Height = 25
    DataField = 'an_address'
    DataSource = dmPgPlannerStorage.dsAnagraph
    TabOrder = 6
  end
  object btnOk: TButton
    Left = 646
    Top = 475
    Width = 75
    Height = 25
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 7
  end
  object DBEdit6: TDBEdit
    Left = 120
    Top = 416
    Width = 185
    Height = 25
    DataField = 'an_cellular'
    DataSource = dmPgPlannerStorage.dsAnagraph
    TabOrder = 8
  end
  object DBEdit7: TDBEdit
    Left = 354
    Top = 416
    Width = 367
    Height = 25
    DataField = 'an_email'
    DataSource = dmPgPlannerStorage.dsAnagraph
    TabOrder = 9
  end
  object DataSource1: TDataSource
    DataSet = dmPgPlannerStorage.qryAnagraphs
    Left = 368
    Top = 136
  end
end
