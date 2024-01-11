object frmPhoenixVCLReportPlanner: TfrmPhoenixVCLReportPlanner
  Left = 0
  Top = 0
  Caption = 'Programmazione Statini'
  ClientHeight = 662
  ClientWidth = 1195
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  StyleElements = [seClient, seBorder]
  OnCreate = FormCreate
  TextHeight = 15
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1195
    Height = 72
    Align = alTop
    TabOrder = 2
    object btnUpdate: TBitBtn
      Left = 1
      Top = 1
      Width = 136
      Height = 70
      Align = alLeft
      Caption = 'Aggiorna Lab'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ImageIndex = 116
      ImageName = '005-file'
      Images = dmSVGImageList.SVGIconImageList
      ParentFont = False
      TabOrder = 0
      StyleElements = [seClient, seBorder]
      OnClick = btnUpdateClick
    end
    object pnlSearch: TPanel
      Left = 137
      Top = 1
      Width = 1057
      Height = 70
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object edDateFilter: TJvDatePickerEdit
        Left = 152
        Top = 2
        Width = 97
        Height = 23
        AllowNoDate = True
        ButtonFlat = True
        Checked = True
        Flat = True
        ParentFlat = False
        TabOrder = 0
      end
      object ckbFilterDate: TCheckBox
        Left = 255
        Top = 5
        Width = 96
        Height = 17
        Caption = 'Filtra Data'
        TabOrder = 1
      end
      object lkbTechnicianID: TJvDBLookupCombo
        Left = 345
        Top = 2
        Width = 159
        Height = 24
        LookupField = 'RESPONSABILE'
        LookupDisplay = 'NOME_TECNICO'
        LookupSource = dsTechnicians
        TabOrder = 2
      end
      object ckbFilterTecnician: TCheckBox
        Left = 510
        Top = 5
        Width = 96
        Height = 17
        Caption = 'Filtra Tecnico'
        TabOrder = 3
      end
      object lkpCustomer: TJvDBLookupCombo
        Left = 607
        Top = 2
        Width = 347
        Height = 24
        LookupField = 'CHIAVE'
        LookupDisplay = 'DESCRIZIONE_SCHEDA'
        LookupSource = dsCustomers
        TabOrder = 4
      end
      object ckbFilterCustomer: TCheckBox
        Left = 960
        Top = 5
        Width = 96
        Height = 17
        Caption = 'Filtra Cliente'
        TabOrder = 5
      end
      object btnSearch: TBitBtn
        Left = 0
        Top = 0
        Width = 135
        Height = 70
        Align = alLeft
        Caption = 'Filtra Ricerca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ImageIndex = 95
        ImageName = '037-search'
        Images = dmSVGImageList.SVGIconImageList
        ParentFont = False
        TabOrder = 6
        StyleElements = [seClient, seBorder]
        OnClick = btnSearchClick
      end
      object ckbCAP: TCheckBox
        Left = 255
        Top = 38
        Width = 96
        Height = 17
        Caption = 'Filtra Cap'
        TabOrder = 7
      end
      object grpStato: TRadioGroup
        Left = 344
        Top = 28
        Width = 705
        Height = 37
        Columns = 6
        ItemIndex = 0
        Items.Strings = (
          'Tutti'
          'Pianificati'
          'In Lav.'
          'Pronti'
          'Generati'
          'Non Assegnati')
        TabOrder = 8
      end
      object lkpCAP: TJvDBLookupCombo
        Left = 152
        Top = 35
        Width = 97
        Height = 22
        LookupField = 'CAP'
        LookupDisplay = 'CAP'
        LookupSource = dsCAP
        TabOrder = 9
      end
    end
  end
  inline frameVCLCRDBGrid: TframeVCLCRDBGrid
    Left = 0
    Top = 72
    Width = 1195
    Height = 549
    Align = alClient
    TabOrder = 0
    ExplicitTop = 72
    ExplicitWidth = 1195
    ExplicitHeight = 549
    inherited CRDBGrid: TEnhCRDBGrid
      Width = 1195
      Height = 524
      Color = clNone
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      PopupMenu = PopupMenu1
      OnDrawColumnCell = frameVCLCRDBGridCRDBGridDrawColumnCell
      OnDblClick = frameVCLCRDBGridCRDBGridDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CAP'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHIAVE'
          Title.Caption = 'Statino'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATO'
          Title.Caption = 'S.'
          Width = 16
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Caption = 'Id. Cliente'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRIZIONE_SCHEDA'
          Title.Caption = 'Cliente'
          Width = 226
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Filiale'
          Width = 219
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RESPONSABILE'
          Title.Caption = ' Tec. ID'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_TECNICO'
          Title.Caption = 'Nome Tecnico'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOTE_PER_IL_TECNICO'
          Title.Caption = 'Note per il Tecnico'
          Width = 222
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTINTORI_ORDINARIO'
          Title.Caption = 'Est. Ord.'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTINTORI_STRAORDINARIO'
          Title.Caption = 'Est. Str.'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDRANTI'
          Title.Caption = 'Idranti'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FUMI'
          Title.Caption = 'Fumi'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRUPPI_ELETTR'
          Title.Caption = 'Gruppi'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LUCI'
          Title.Caption = 'Luci'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORARIO_APERTURA_DAL1'
          Title.Caption = 'Apertura da:'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORARIO_APERTURA_AL1'
          Title.Caption = 'Apertura al:'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORARIO_APERTURA_DAL2'
          Title.Caption = 'Apertura Dal'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORARIO_APERTURA_AL2'
          Title.Caption = 'Apertura Al:'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APPUNTAMENTO_DATA'
          Title.Caption = 'Data Appuntamento'
          Width = 126
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APPUNTAMENTO_ORA'
          Title.Caption = 'Ora Appuntamento'
          Width = 110
          Visible = True
        end>
    end
    inherited Panel1: TPanel
      Width = 1195
      ExplicitWidth = 1195
      inherited Panel2: TPanel
        Width = 369
        ExplicitWidth = 369
        inherited btClose: TSpeedButton
          Left = 49
          Width = 64
          Caption = 'Aggiorna'
          ExplicitLeft = 49
          ExplicitTop = 0
          ExplicitWidth = 64
          ExplicitHeight = 25
        end
        inherited btOpen: TSpeedButton
          Width = 49
          Caption = 'Apri'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 49
          ExplicitHeight = 25
        end
        inherited DBNavigator1: TDBNavigator
          Left = 113
          Hints.Strings = ()
          ExplicitLeft = 113
        end
      end
      inherited Panel3: TPanel
        Left = 369
        Width = 826
        ExplicitLeft = 369
        ExplicitWidth = 826
        inherited chkFiltered: TCheckBox
          Caption = 'Filtrato'
          ParentFont = False
        end
        inherited chkFilterBar: TCheckBox
          Width = 112
          Caption = 'Mostra Filtri'
          ExplicitWidth = 112
        end
        inherited chkSearchBar: TCheckBox
          Left = 193
          Width = 128
          Caption = 'Barra di Ricerca'
          ExplicitLeft = 193
          ExplicitWidth = 128
        end
        inherited chkRecCount: TCheckBox
          Left = 321
          Width = 136
          Caption = 'Conteggio Record'
          ExplicitLeft = 321
          ExplicitWidth = 136
        end
        inherited chkStretch: TCheckBox
          Left = 457
          Width = 136
          Caption = 'Adatta Larghezza'
          ExplicitLeft = 457
          ExplicitWidth = 136
        end
      end
    end
    inherited UniDataSource: TUniDataSource
      DataSet = dmPhoenixIBPlanner.qryReportPlanner
      Top = 120
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 621
    Width = 1195
    Height = 41
    Align = alBottom
    TabOrder = 1
    object lbFilter: TLabel
      Left = 24
      Top = 16
      Width = 6
      Height = 15
      Caption = '  '
    end
  end
  object dsTechnicians: TUniDataSource
    DataSet = dmPhoenixIBPlanner.qryTech
    Left = 512
    Top = 192
  end
  object dsCustomers: TUniDataSource
    DataSet = dmPhoenixIBPlanner.qryCustomers
    Left = 424
    Top = 152
  end
  object dsCAP: TUniDataSource
    DataSet = dmPhoenixIBPlanner.qryCAP
    Left = 416
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 304
    object Modifica1: TMenuItem
      Caption = 'Modifica'
      OnClick = frameVCLCRDBGridCRDBGridDblClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object AnnullaAppuntamento1: TMenuItem
      Caption = 'Annulla Appuntamento'
      OnClick = AnnullaAppuntamento1Click
    end
  end
end
