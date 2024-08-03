object frmPhoenixVCLReportPlanner: TfrmPhoenixVCLReportPlanner
  Left = 0
  Top = 0
  Caption = 'Programmazione Statini'
  ClientHeight = 845
  ClientWidth = 1448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  StyleElements = [seClient, seBorder]
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1448
    Height = 845
    ActivePage = tabCalendariTecnici
    Align = alClient
    TabOrder = 0
    object tabTicketsList: TTabSheet
      Caption = 'Elenco Interventi'
      object pnlTop: TPanel
        Left = 0
        Top = 0
        Width = 1440
        Height = 72
        Align = alTop
        TabOrder = 0
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
          Width = 1302
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
        Width = 1440
        Height = 702
        Align = alClient
        TabOrder = 1
        ExplicitTop = 72
        ExplicitWidth = 1440
        ExplicitHeight = 702
        inherited CRDBGrid: TEnhCRDBGrid
          Width = 1440
          Height = 677
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
            end
            item
              Expanded = False
              FieldName = 'GCAL'
              Title.Caption = 'G.'
              Width = 15
              Visible = True
            end>
        end
        inherited Panel1: TPanel
          Width = 1440
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 1440
          inherited Panel2: TPanel
            Width = 369
            StyleElements = [seFont, seClient, seBorder]
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
            Width = 1071
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 369
            ExplicitWidth = 1071
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
          DataSet = dmVCLPhoenixPlannerController.qryReportPlanner
          Top = 120
        end
        inherited ActionList1: TActionList
          Left = 224
          Top = 313
        end
      end
      object pnlBottom: TPanel
        Left = 0
        Top = 774
        Width = 1440
        Height = 41
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 844
        object lbFilter: TLabel
          Left = 24
          Top = 16
          Width = 6
          Height = 15
          Caption = '  '
        end
      end
    end
    object tabCalendariTecnici: TTabSheet
      Caption = 'Calendari Tecnici'
      ImageIndex = 3
      inline frameVCLPhoenixPlannerEvent: TframeVCLPhoenixPlannerEvent
        Left = 0
        Top = 0
        Width = 800
        Height = 815
        Align = alLeft
        TabOrder = 1
        ExplicitHeight = 815
        inherited lbCap: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited lbData: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited Area: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited lbActivity: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited DBCtrlGrid1: TDBCtrlGrid
          Height = 588
          PanelHeight = 84
          ExplicitHeight = 588
          inherited pnlInterventi: TPanel
            Top = 64
            StyleElements = [seFont, seClient, seBorder]
            ExplicitTop = 64
            inherited Label3: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText4: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited lbIdranti: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText5: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label4: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText6: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label5: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText7: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
          end
          inherited Panel1: TPanel
            Height = 64
            StyleElements = [seFont, seClient, seBorder]
            ExplicitHeight = 64
            inherited Panel2: TPanel
              Height = 62
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 62
              inherited DBText1: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText3: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText8: TDBText
                Top = 44
                StyleElements = [seFont, seClient, seBorder]
              end
            end
            inherited btnImage: TDBImage
              Height = 62
              ExplicitHeight = 62
            end
          end
        end
        inherited DBPlanner1: TDBPlanner
          Height = 588
          ExplicitHeight = 588
          TMSStyle = 0
        end
        inherited btnEditMeeting: TButton
          Top = 734
          ExplicitTop = 734
        end
        inherited btnDeleteMeeting: TButton
          Top = 704
          ExplicitTop = 704
        end
        inherited Memo1: TMemo
          Top = 700
          StyleElements = [seFont, seClient, seBorder]
          ExplicitTop = 700
        end
        inherited grdDateTime: TGroupBox
          Top = 700
          Height = 112
          ExplicitTop = 700
          ExplicitHeight = 112
          inherited lbDateFrom: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited lbDateTo: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited lbStartHours: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited Label1: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited lbMin: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited Label2: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited cboHourFrom: TComboBox
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited cboHourTo: TComboBox
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited cboMinsFrom: TComboBox
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited cboMinsTo: TComboBox
            StyleElements = [seFont, seClient, seBorder]
          end
        end
        inherited btnSearch: TBitBtn
          Top = 764
          DoubleBuffered = True
          ExplicitTop = 764
        end
      end
      object AdvWebBrowser1: TAdvWebBrowser
        Left = 800
        Top = 0
        Width = 640
        Height = 815
        Align = alClient
        ParentDoubleBuffered = False
        DoubleBuffered = True
        TabOrder = 0
        Settings.EnableContextMenu = True
        Settings.EnableShowDebugConsole = True
        Settings.EnableAcceleratorKeys = True
        Settings.AllowExternalDrop = True
        Settings.UsePopupMenuAsContextMenu = False
      end
    end
    object tabPlannerCalendar: TTabSheet
      Caption = 'Pianificazione Tecnici'
      ImageIndex = 1
      inline frameTMSPhoenixPlannerTecnici: TframeTMSPhoenixPlannerCalendar
        Left = 0
        Top = 0
        Width = 1440
        Height = 815
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 815
        inherited lbGiorni: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited lbCalendarList: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited Area: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited edDays: TSpinEdit
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited Panel1: TPanel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited grpMeeting: TGroupBox
          Top = 704
          ExplicitTop = 774
        end
        inherited Panel2: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited ckbCalendarList: TCheckListBox
            StyleElements = [seFont, seClient, seBorder]
          end
        end
        inherited Panel3: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited lbSearch: TLabel
            Width = 250
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited lbDateSelector: TLabel
            Width = 256
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited edMeeting: TEdit
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited Panel4: TPanel
            StyleElements = [seFont, seClient, seBorder]
          end
        end
        inherited PageControl1: TPageControl
          Left = 0
          Width = 1440
          Height = 544
          ExplicitLeft = 0
          ExplicitWidth = 1440
          ExplicitHeight = 544
          inherited tabCalendar: TTabSheet
            ExplicitWidth = 1432
            ExplicitHeight = 514
            inherited DBPlanner1: TDBPlanner
              Width = 1432
              Height = 514
              ExplicitWidth = 1432
              ExplicitHeight = 514
              TMSStyle = 0
            end
          end
        end
        inherited GridPopup: TPopupMenu
          Left = 575
          Top = 442
        end
      end
    end
    object tabPlannerEvents: TTabSheet
      Caption = 'Calendari'
      ImageIndex = 3
      inline frameVCLPhoenixPlannerCalendari: TframeVCLPhoenixPlannerCalendar2
        Left = 0
        Top = 0
        Width = 1440
        Height = 815
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1440
        ExplicitHeight = 815
        inherited lbGiorni: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited lbCalendarList: TLabel
          Width = 1434
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited Area: TLabel
          Width = 57
          Caption = 'Calendario'
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 57
        end
        inherited edDays: TSpinEdit
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited Panel1: TPanel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited grpMeeting: TGroupBox
          Top = 704
          Width = 1440
          ExplicitTop = 774
          ExplicitWidth = 1440
        end
        inherited Panel2: TPanel
          Width = 1440
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 1440
          inherited ckbCalendarList: TCheckListBox
            Width = 1381
            ItemHeight = 16
            StyleElements = [seFont, seClient, seBorder]
            ExplicitWidth = 1381
          end
        end
        inherited Panel3: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited lbSearch: TLabel
            Width = 250
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited lbDateSelector: TLabel
            Width = 256
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited edMeeting: TEdit
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited Panel4: TPanel
            StyleElements = [seFont, seClient, seBorder]
          end
        end
        inherited PageControl1: TPageControl
          Left = 0
          Width = 1440
          Height = 544
          ExplicitLeft = 0
          ExplicitWidth = 1440
          ExplicitHeight = 544
          inherited tabCalendar: TTabSheet
            ExplicitWidth = 1432
            ExplicitHeight = 514
            inherited DBPlanner1: TDBPlanner
              Width = 1432
              Height = 514
              ExplicitWidth = 1432
              ExplicitHeight = 514
              TMSStyle = 0
            end
          end
        end
        inherited GridPopup: TPopupMenu
          Left = 423
          Top = 450
        end
      end
    end
  end
  object dsTechnicians: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryTech
    Left = 168
    Top = 280
  end
  object dsCustomers: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryCustomers
    Left = 88
    Top = 248
  end
  object dsCAP: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryCAP
    Left = 168
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 584
    Top = 392
    object Modifica1: TMenuItem
      Caption = 'Appuntamento'
      OnClick = frameVCLCRDBGridCRDBGridDblClick
    end
    object AnnullaAppuntamento1: TMenuItem
      Caption = 'Annulla Appuntamento'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ModificaStatino1: TMenuItem
      Caption = 'Modifica Statino'
      OnClick = ModificaStatino1Click
    end
    object VisualizzaContratto1: TMenuItem
      Caption = 'Visualizza Contratto'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object GoogleSync1: TMenuItem
      Caption = 'Google Sync.'
      OnClick = GoogleSync1Click
    end
  end
  object ColorDialog1: TColorDialog
    Left = 880
    Top = 312
  end
  object ItemPopup: TPopupMenu
    Left = 744
    Top = 312
    object Color1: TMenuItem
      Caption = '++'
    end
    object Caption1: TMenuItem
      Caption = 'Caption'
    end
    object N1: TMenuItem
      Caption = '-'
    end
  end
  object ImageList1: TImageList
    Left = 808
    Top = 280
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000007B00000000000000000000000000000000000000BDBDBD000000
      0000000000000000000000000000BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      0000000000000000000000000000BDBDBD0000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000BDBDBD000000
      0000000000000000000000000000BDBDBD00000000000000000000000000FF00
      0000FF0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF0000007B0000000000000000000000BDBDBD00000000000000
      0000BDBDBD00000000000000000000000000BDBDBD0000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00000000000000
      0000BDBDBD00000000000000000000000000BDBDBD0000000000000000000000
      FF000000000000000000000000000000000000000000BDBDBD00000000000000
      0000BDBDBD00000000000000000000000000BDBDBD0000000000FF000000FF00
      0000FF000000FF0000007B000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF0000007B00000000000000BDBDBD00000000000000
      000000000000BDBDBD000000000000000000BDBDBD0000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00000000000000
      000000000000BDBDBD000000000000000000BDBDBD0000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00000000000000
      000000000000BDBDBD000000000000000000BDBDBD00FF000000FF000000FF00
      0000FF000000FF000000FF0000007B0000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF0000007B0000007B0000007B00000000000000BDBDBD0000000000BDBD
      BD000000000000000000BDBDBD0000000000BDBDBD0000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD0000000000BDBD
      BD000000000000000000BDBDBD0000000000BDBDBD0000000000000000000000
      FF000000000000000000000000000000000000000000BDBDBD0000000000BDBD
      BD000000000000000000BDBDBD0000000000BDBDBD00FF000000FF000000FF00
      0000FF0000007B0000007B0000007B0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000007B000000000000000000000000000000BDBDBD0000000000BDBD
      BD000000000000000000BDBDBD0000000000BDBDBD0000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD0000000000BDBD
      BD000000000000000000BDBDBD0000000000BDBDBD0000000000000000000000
      FF000000000000000000000000000000000000000000BDBDBD0000000000BDBD
      BD000000000000000000BDBDBD0000000000BDBDBD000000000000000000FF00
      0000FF0000007B00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000007B000000000000000000000000000000BDBDBD0000000000BDBD
      BD000000000000000000BDBDBD0000000000BDBDBD0000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD0000000000BDBD
      BD000000000000000000BDBDBD0000000000BDBDBD00000000000000FF000000
      FF000000FF0000000000000000000000000000000000BDBDBD0000000000BDBD
      BD000000000000000000BDBDBD0000000000BDBDBD000000000000000000FF00
      0000FF0000007B00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000007B000000000000000000000000000000BDBDBD0000000000BDBD
      BD000000000000000000BDBDBD0000000000BDBDBD0000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD0000000000BDBD
      BD000000000000000000BDBDBD0000000000BDBDBD00000000000000FF000000
      FF000000FF0000000000000000000000000000000000BDBDBD0000000000BDBD
      BD000000000000000000BDBDBD0000000000BDBDBD000000000000000000FF00
      0000FF0000007B00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000007B000000000000000000000000000000BDBDBD0000000000BDBD
      BD0000000000000000000000000000000000BDBDBD0000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD0000000000BDBD
      BD0000000000000000000000000000000000BDBDBD00000000000000FF000000
      FF000000FF0000000000000000000000000000000000BDBDBD0000000000BDBD
      BD0000000000000000000000000000000000BDBDBD000000000000000000FF00
      0000FF0000007B00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000007B0000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000BDBDBD0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000BDBDBD00000000000000FF000000
      FF000000FF00000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000BDBDBD000000000000000000FF00
      0000FF0000007B00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000007B0000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000BDBDBD0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000BDBDBD00000000000000FF000000
      FF000000FF00000000000000000000000000000000000000000000000000BDBD
      BD0000000000000000000000000000000000BDBDBD000000000000000000FF00
      0000FF0000007B00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000007B0000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      FF0000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000000000000000FF00
      0000FF0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFEF000000000000FFC7000000000000FFEF000000000000FFFF000000000000
      FFEF000000000000FFEF000000000000FFC7000000000000FFC7000000000000
      FFC7000000000000FFC7000000000000FFC7000000000000FFEF000000000000
      FFFF000000000000FFFF000000000000FFFFFFFFFFFFFFFFFFFFE3FFE3FFE3FF
      FFF7C1FFC1EFC1F7FFE39CFF9CC79CE3FFC1367F366F3641FF80227F227F2200
      FF80087F086F0800FFE3087F086F0863FFE3087F08470863FFE3087F08470863
      FFE30A7F0A470A63FFE34E7F4E474E63FFE3CE7FCE47CE63FFE3C0FFC0EFC0E3
      FFFFE1FFE1FFE1FFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dsDayCalendar: TDataSource
    DataSet = dmVCLPhoenixPlannerController.qryPlannerEvents
    Left = 752
    Top = 216
  end
  object dsTech: TDataSource
    DataSet = dmVCLPhoenixPlannerController.qryPlannerEvents
    Left = 664
    Top = 256
  end
  object dsTechCalendar: TDataSource
    DataSet = dmVCLPhoenixPlannerController.qryTechPlanned
    Left = 743
    Top = 382
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 412
    Top = 370
  end
end
