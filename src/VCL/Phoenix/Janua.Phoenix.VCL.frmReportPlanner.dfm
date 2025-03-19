object frmPhoenixVCLReportPlanner: TfrmPhoenixVCLReportPlanner
  Left = 0
  Top = 0
  Caption = 'Programmazione Statini'
  ClientHeight = 1001
  ClientWidth = 1448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  StyleElements = [seClient, seBorder]
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1448
    Height = 1001
    ActivePage = tabGoogleCalendarReport
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
          object btnUpdateImage: TBitBtn
            Left = 1152
            Top = 0
            Width = 150
            Height = 70
            Align = alRight
            Caption = 'Aggiorna Immagini'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ImageIndex = 95
            ImageName = '037-search'
            Images = dmSVGImageList.SVGIconImageList
            ParentFont = False
            TabOrder = 10
            StyleElements = [seClient, seBorder]
            OnClick = btnUpdateImageClick
          end
          object btnImage: TDBImage
            Left = 1075
            Top = 0
            Width = 77
            Height = 70
            Align = alRight
            DataField = 'STATO_IMMAGINE'
            DataSource = frameVCLCRDBGrid.UniDataSource
            TabOrder = 11
          end
        end
      end
      inline frameVCLCRDBGrid: TframeVCLCRDBGrid
        Left = 0
        Top = 72
        Width = 1440
        Height = 858
        Align = alClient
        TabOrder = 1
        ExplicitTop = 72
        ExplicitWidth = 1440
        ExplicitHeight = 858
        inherited CRDBGrid: TEnhCRDBGrid
          Width = 1440
          Height = 833
          Color = clNone
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          PopupMenu = PopupMenu1
          OnDrawColumnCell = frameVCLCRDBGridCRDBGridDrawColumnCell
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
            end
            item
              Expanded = False
              FieldName = 'RITARDO'
              Title.Caption = 'Rit.'
              Width = 30
              Visible = True
            end>
        end
        inherited Panel1: TPanel
          Width = 1440
          ExplicitWidth = 1440
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
            Width = 1071
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
        Top = 930
        Width = 1440
        Height = 41
        Align = alBottom
        TabOrder = 2
        object lbFilter: TLabel
          Left = 24
          Top = 16
          Width = 6
          Height = 15
          Caption = '  '
        end
      end
    end
    object tabGoogleCalendarReport: TTabSheet
      Caption = 'Calendario Google'
      ImageIndex = 4
      object EdgeBrowser2: TEdgeBrowser
        Left = 668
        Top = 0
        Width = 772
        Height = 971
        Align = alClient
        TabOrder = 0
        AllowSingleSignOnUsingOSPrimaryAccount = False
        TargetCompatibleBrowserVersion = '117.0.2045.28'
        UserDataFolder = '%LOCALAPPDATA%\bds.exe.WebView2'
      end
      object pgCalendars: TPageControl
        Left = 0
        Top = 0
        Width = 668
        Height = 971
        ActivePage = tabReportCalendar
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object tabReportCalendar: TTabSheet
          Caption = 'Calendario Apputamenti'
          inline frameVCLPhoenixPlanneReport: TframeVCLPhoenixPlanneReport
            Left = 0
            Top = 0
            Width = 660
            Height = 941
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 660
            ExplicitHeight = 941
            inherited lbCap: TLabel
              Left = 390
              Top = 52
              ExplicitLeft = 390
              ExplicitTop = 52
            end
            inherited Area: TLabel
              Top = 2
              ExplicitTop = 2
            end
            inherited lbActivity: TLabel
              Top = 52
              Width = 30
              Caption = 'Filiale'
              ExplicitTop = 52
              ExplicitWidth = 30
            end
            inherited DBText4: TDBText
              Top = 70
              Width = 488
              ExplicitTop = 70
              ExplicitWidth = 488
            end
            inherited lkpCAP: TJvDBLookupCombo
              Top = 47
              ExplicitTop = 47
            end
            inherited grdReportList: TDBCtrlGrid
              Top = 94
              Width = 649
              Height = 844
              PanelHeight = 93
              PanelWidth = 632
              ExplicitTop = 94
              ExplicitWidth = 649
              ExplicitHeight = 844
              inherited Panel1: TPanel
                Width = 632
                Height = 93
                ExplicitWidth = 632
                ExplicitHeight = 93
                inherited Panel2: TPanel
                  Width = 555
                  Height = 93
                  ExplicitWidth = 555
                  ExplicitHeight = 93
                  inherited pnlStatino: TPanel
                    Height = 93
                    ExplicitHeight = 93
                    inherited btnNewMeeting: TJvSpeedButton
                      Height = 28
                      ExplicitHeight = 48
                    end
                    inherited btnUndoMeeting: TJvSpeedButton
                      Height = 28
                      Caption = '  Annulla'
                      ExplicitHeight = 48
                    end
                    inherited btnContract: TJvSpeedButton
                      Height = 28
                      ExplicitHeight = 48
                    end
                    inherited btnWhatsApp: TJvSpeedButton
                      Height = 28
                      OnClick = frameVCLPhoenixPlanneReportbtnWhatsAppClick
                      ExplicitHeight = 48
                    end
                    inherited pnlInterventi: TPanel
                      inherited DBText2: TDBText
                        Left = 306
                        Width = 133
                        ExplicitLeft = 304
                        ExplicitWidth = 133
                      end
                      inherited DBText8: TDBText
                        Left = 146
                        Width = 157
                        ExplicitLeft = 144
                        ExplicitWidth = 157
                      end
                      inherited DBText12: TDBText
                        Width = 137
                        ExplicitLeft = 3
                        ExplicitTop = 3
                        ExplicitWidth = 150
                        ExplicitHeight = 14
                      end
                    end
                    inherited Panel6: TPanel
                      inherited Panel7: TPanel
                        inherited DBText3: TDBText
                          ExplicitWidth = 395
                        end
                      end
                    end
                  end
                  inherited Panel4: TPanel
                    Width = 114
                    Height = 93
                    ExplicitWidth = 114
                    ExplicitHeight = 93
                    inherited Panel3: TPanel
                      Height = 93
                      ExplicitHeight = 93
                      inherited Label1: TLabel
                        Height = 15
                        ExplicitWidth = 25
                        ExplicitHeight = 15
                      end
                      inherited Label2: TLabel
                        Top = 15
                        Height = 15
                        ExplicitTop = 15
                        ExplicitWidth = 40
                        ExplicitHeight = 15
                      end
                      inherited Label4: TLabel
                        Top = 30
                        Height = 15
                        ExplicitTop = 31
                        ExplicitWidth = 36
                        ExplicitHeight = 15
                      end
                      inherited Label3: TLabel
                        Top = 45
                        Height = 15
                        ExplicitTop = 47
                        ExplicitWidth = 38
                        ExplicitHeight = 15
                      end
                      inherited Label5: TLabel
                        Top = 60
                        Height = 15
                        ExplicitTop = 60
                        ExplicitWidth = 21
                        ExplicitHeight = 15
                      end
                      inherited Label7: TLabel
                        Top = 75
                        Height = 15
                        ExplicitTop = 79
                        ExplicitWidth = 34
                        ExplicitHeight = 15
                      end
                    end
                    inherited Panel5: TPanel
                      Width = 42
                      Height = 93
                      ExplicitWidth = 42
                      ExplicitHeight = 93
                      inherited DBText9: TDBText
                        Width = 29
                        Height = 15
                        Margins.Right = 10
                        Alignment = taRightJustify
                        ExplicitLeft = 3
                        ExplicitWidth = 35
                        ExplicitHeight = 15
                      end
                      inherited DBText5: TDBText
                        Top = 15
                        Width = 29
                        Height = 15
                        Margins.Right = 10
                        Alignment = taRightJustify
                        ExplicitLeft = 3
                        ExplicitTop = 15
                        ExplicitWidth = 35
                        ExplicitHeight = 15
                      end
                      inherited DBText6: TDBText
                        Top = 30
                        Width = 29
                        Height = 15
                        Margins.Right = 10
                        Alignment = taRightJustify
                        ExplicitLeft = 3
                        ExplicitTop = 30
                        ExplicitWidth = 35
                        ExplicitHeight = 15
                      end
                      inherited DBText7: TDBText
                        Top = 45
                        Width = 29
                        Height = 15
                        Margins.Right = 10
                        Alignment = taRightJustify
                        ExplicitLeft = 3
                        ExplicitTop = 45
                        ExplicitWidth = 35
                        ExplicitHeight = 15
                      end
                      inherited DBText10: TDBText
                        Top = 60
                        Width = 29
                        Height = 15
                        Margins.Right = 10
                        Alignment = taRightJustify
                        ExplicitLeft = 3
                        ExplicitTop = 60
                        ExplicitWidth = 35
                        ExplicitHeight = 15
                      end
                      inherited DBText11: TDBText
                        Top = 75
                        Width = 29
                        Height = 15
                        Margins.Right = 10
                        Alignment = taRightJustify
                        ExplicitLeft = 3
                        ExplicitTop = 75
                        ExplicitWidth = 35
                        ExplicitHeight = 15
                      end
                    end
                  end
                end
                inherited btnImage: TDBImage
                  Height = 93
                  ExplicitHeight = 93
                end
              end
            end
            inherited grpStato: TRadioGroup
              Top = 0
              Height = 46
              ParentCtl3D = False
              ExplicitTop = 0
              ExplicitHeight = 46
            end
            inherited cboTecnici: TJvDBLookupCombo
              Top = 20
              ExplicitTop = 20
            end
            inherited cboCustomers: TJvDBLookupCombo
              Left = 44
              Top = 47
              Width = 340
              ExplicitLeft = 44
              ExplicitTop = 47
              ExplicitWidth = 340
            end
            inherited cbkFilterReport: TCheckBox
              Top = 2
              ExplicitTop = 2
            end
            inherited btnWhatsAppMessages: TAdvBadgeButton
              Top = 47
              Width = 130
              OnClick = frameVCLPhoenixPlanneReportbtnWhatsAppMessagesClick
              ExplicitTop = 47
              ExplicitWidth = 130
            end
            inherited edDateFilter: TJvDatePickerEdit
              Top = 20
              ExplicitTop = 20
            end
            inherited ckbFilterDate: TCheckBox
              Top = 2
              ExplicitTop = 2
            end
            inherited WATimer: TTimer
              Interval = 60000
              OnTimer = frameVCLPhoenixPlanneReportWATimerTimer
            end
          end
        end
        object tabMessaggi: TTabSheet
          Caption = 'Messaggi WA'
          ImageIndex = 1
          OnShow = tabMessaggiShow
          inline frameVCLWhatsAppMessages1: TframeVCLWhatsAppMessages
            Left = 0
            Top = 0
            Width = 660
            Height = 941
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 660
            ExplicitHeight = 941
            inherited DBCtrlGrid1: TDBCtrlGrid
              Width = 260
              Height = 941
              PanelHeight = 85
              PanelWidth = 243
              ExplicitWidth = 260
              ExplicitHeight = 941
              inherited pnlHeader: TPanel
                Width = 237
                Height = 79
                ExplicitWidth = 237
                ExplicitHeight = 79
                inherited DBText1: TDBText
                  Left = 208
                  Height = 55
                  ExplicitLeft = 208
                  ExplicitHeight = 55
                end
                inherited pnlInfo: TPanel
                  Width = 204
                  Height = 79
                  ExplicitWidth = 204
                  ExplicitHeight = 79
                  inherited DBText2: TDBText
                    Width = 196
                    ExplicitWidth = 196
                  end
                  inherited DBText3: TDBText
                    Width = 196
                    ExplicitWidth = 196
                  end
                  inherited DBText4: TDBText
                    Width = 196
                    ExplicitWidth = 196
                  end
                end
              end
            end
            inherited pnlEvents: TPanel
              Left = 260
              Width = 400
              Height = 941
              ExplicitLeft = 260
              ExplicitWidth = 400
              ExplicitHeight = 941
              inherited pnlReport: TPanel
                Width = 400
                ExplicitWidth = 400
                inherited DBNavigator1: TDBNavigator
                  Width = 398
                  Hints.Strings = ()
                  ExplicitWidth = 398
                end
                inherited Panel1: TPanel
                  Width = 398
                  ExplicitWidth = 398
                  inherited Panel2: TPanel
                    Width = 321
                    ExplicitWidth = 321
                    inherited pnlStatino: TPanel
                      inherited btnNewMeeting: TJvSpeedButton
                        Caption = 'Appuntam.'
                      end
                    end
                    inherited Panel4: TPanel
                      Width = 61
                      ExplicitWidth = 61
                      inherited Panel5: TPanel
                        Width = 21
                        ExplicitWidth = 21
                        inherited DBText9: TDBText
                          Width = 15
                          ExplicitWidth = 15
                        end
                        inherited DBText10: TDBText
                          Width = 15
                          ExplicitWidth = 15
                        end
                        inherited DBText11: TDBText
                          Width = 15
                          ExplicitWidth = 15
                        end
                        inherited DBText13: TDBText
                          Width = 15
                          ExplicitWidth = 15
                        end
                        inherited DBText14: TDBText
                          Width = 15
                          ExplicitWidth = 15
                        end
                        inherited DBText15: TDBText
                          Width = 15
                          ExplicitWidth = 15
                        end
                      end
                    end
                  end
                end
              end
              inherited TMSFNCChat1: TTMSFNCChat
                Width = 400
                Height = 817
                ExplicitWidth = 400
                ExplicitHeight = 817
              end
            end
            inherited spInsertWhatsAppMsg: TUniStoredProc
              CommandStoredProcName = 'INSERT_WHATSAPP_MESSAGES'
            end
          end
        end
      end
    end
    object tabCalendariTecnici: TTabSheet
      Caption = 'Calendari Tecnici'
      ImageIndex = 3
      TabVisible = False
      object pnlWebBrowser: TPanel
        Left = 0
        Top = 0
        Width = 1440
        Height = 971
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 0
        object EdgeBrowser1: TEdgeBrowser
          Left = 849
          Top = 0
          Width = 591
          Height = 971
          Align = alClient
          TabOrder = 0
          AllowSingleSignOnUsingOSPrimaryAccount = False
          TargetCompatibleBrowserVersion = '117.0.2045.28'
          UserDataFolder = '%LOCALAPPDATA%\bds.exe.WebView2'
        end
        object AdvPageControl1: TAdvPageControl
          Left = 0
          Top = 0
          Width = 849
          Height = 971
          ActivePage = AdvTabSheet1
          ActiveFont.Charset = DEFAULT_CHARSET
          ActiveFont.Color = clWindowText
          ActiveFont.Height = -11
          ActiveFont.Name = 'Segoe UI'
          ActiveFont.Style = []
          Align = alLeft
          DoubleBuffered = True
          TabBackGroundColor = clBtnFace
          TabMargin.RightMargin = 0
          TabOverlap = 0
          Version = '2.1.0.0'
          PersistPagesState.Location = plRegistry
          PersistPagesState.Enabled = False
          TabOrder = 1
          object AdvTabSheet1: TAdvTabSheet
            Caption = 'AdvTabSheet1'
            Color = clBtnFace
            ColorTo = clNone
            TabColor = clBtnFace
            TabColorTo = clNone
            inline frameVCLPhoenixPlannerEvent: TframeVCLPhoenixPlannerEvent
              Left = 0
              Top = 0
              Width = 841
              Height = 941
              Align = alLeft
              TabOrder = 0
              ExplicitWidth = 841
              ExplicitHeight = 941
              inherited lbCap: TLabel
                Left = 582
                Top = 60
                ExplicitLeft = 582
                ExplicitTop = 60
              end
              inherited lbData: TLabel
                Top = 61
                ExplicitTop = 61
              end
              inherited lbActivity: TLabel
                Left = 11
                Top = 60
                ExplicitLeft = 11
                ExplicitTop = 60
              end
              inherited lkpCAP: TJvDBLookupCombo
                Left = 580
                Top = 75
                Width = 72
                ExplicitLeft = 580
                ExplicitTop = 75
                ExplicitWidth = 72
              end
              inherited grdReportList: TDBCtrlGrid
                Width = 433
                Height = 826
                PanelBorder = gbNone
                PanelHeight = 118
                PanelWidth = 416
                ExplicitWidth = 433
                ExplicitHeight = 826
                inherited pnlInterventi: TPanel
                  Top = 98
                  Width = 416
                  ExplicitTop = 98
                  ExplicitWidth = 416
                  inherited Label3: TLabel
                    Width = 13
                    Height = 20
                    Caption = 'Lc'
                    ExplicitWidth = 13
                  end
                  inherited DBText4: TDBText
                    Left = 19
                    ExplicitLeft = 19
                  end
                  inherited lbIdranti: TLabel
                    Left = 42
                    Width = 22
                    Height = 20
                    Caption = 'Idr:'
                    ExplicitLeft = 42
                    ExplicitWidth = 22
                  end
                  inherited DBText5: TDBText
                    Left = 67
                    ExplicitLeft = 67
                  end
                  inherited Label4: TLabel
                    Left = 90
                    Width = 38
                    Height = 20
                    Caption = 'E.Ord:'
                    ExplicitLeft = 90
                    ExplicitWidth = 38
                  end
                  inherited DBText6: TDBText
                    Left = 131
                    ExplicitLeft = 131
                  end
                  inherited Label5: TLabel
                    Left = 154
                    Width = 39
                    Height = 20
                    Caption = 'E.Stra:'
                    ExplicitLeft = 154
                    ExplicitWidth = 39
                  end
                  inherited DBText7: TDBText
                    Left = 196
                    ExplicitLeft = 196
                  end
                  inherited DBText2: TDBText
                    Left = 333
                    Width = 81
                    Alignment = taRightJustify
                    ExplicitLeft = 333
                    ExplicitTop = 3
                    ExplicitWidth = 81
                  end
                  inherited Label6: TLabel
                    Left = 219
                    Height = 20
                    ExplicitLeft = 219
                  end
                  inherited DBText10: TDBText
                    Left = 257
                    ExplicitLeft = 257
                  end
                  inherited Label7: TLabel
                    Left = 280
                    Height = 20
                    ExplicitLeft = 280
                  end
                  inherited DBText11: TDBText
                    Left = 309
                    ExplicitLeft = 309
                  end
                end
                inherited Panel1: TPanel
                  Width = 416
                  Height = 98
                  ExplicitWidth = 416
                  ExplicitHeight = 98
                  inherited Panel2: TPanel
                    Width = 337
                    Height = 96
                    ExplicitWidth = 337
                    ExplicitHeight = 96
                    inherited DBText1: TDBText
                      Width = 331
                      ExplicitWidth = 331
                    end
                    inherited DBText3: TDBText
                      Width = 331
                      ExplicitWidth = 331
                    end
                    inherited Panel3: TPanel
                      Top = 74
                      Width = 337
                      ExplicitTop = 74
                      ExplicitWidth = 337
                      inherited DBText9: TDBText
                        Width = 190
                        ExplicitWidth = 241
                      end
                    end
                  end
                  inherited btnImage: TDBImage
                    Height = 96
                    ExplicitHeight = 96
                  end
                end
              end
              inherited DBPlanner1: TDBPlanner
                Left = 447
                Top = 106
                Height = 835
                ExplicitLeft = 447
                ExplicitTop = 106
                ExplicitHeight = 835
                TMSStyle = 0
              end
              inherited btnEditMeeting: TButton
                Left = 667
                Top = 860
                ExplicitLeft = 667
                ExplicitTop = 860
              end
              inherited btnDeleteMeeting: TButton
                Left = 666
                Top = 830
                ExplicitLeft = 666
                ExplicitTop = 830
              end
              inherited grpStato: TRadioGroup
                Left = 341
                Width = 404
                ExplicitLeft = 341
                ExplicitWidth = 404
              end
              inherited CalendarDate: TDateTimePicker
                Top = 75
                ExplicitTop = 75
              end
              inherited cboCustomers: TJvDBLookupCombo
                Top = 76
                ExplicitTop = 76
              end
              inherited Memo1: TMemo
                Top = 824
                ExplicitTop = 824
              end
              inherited grdDateTime: TGroupBox
                Top = 821
                Height = 112
                ExplicitTop = 821
                ExplicitHeight = 112
              end
              inherited btnSearch: TBitBtn
                Left = 667
                Top = 890
                ImageIndex = 16
                ImageName = '017-clock'
                ExplicitLeft = 667
                ExplicitTop = 890
              end
              inherited btnPrevDay: TButton
                Left = 530
                Top = 75
                Width = 23
                ExplicitLeft = 530
                ExplicitTop = 75
                ExplicitWidth = 23
              end
              inherited btnNextDay: TButton
                Left = 552
                Top = 75
                Width = 25
                ExplicitLeft = 552
                ExplicitTop = 75
                ExplicitWidth = 25
              end
              inherited cbkFilterReport: TCheckBox
                Width = 98
                ExplicitWidth = 98
              end
              inherited Button1: TButton
                Left = 750
                Top = 75
                ExplicitLeft = 750
                ExplicitTop = 75
              end
              inherited btnWhatsApp: TButton
                Left = 652
                Top = 75
                ExplicitLeft = 652
                ExplicitTop = 75
              end
              inherited btnSincro: TButton
                Left = 750
                Top = 44
                ExplicitLeft = 750
                ExplicitTop = 44
              end
              inherited Button2: TButton
                Left = 239
                Width = 96
                ExplicitLeft = 239
                ExplicitWidth = 96
              end
              inherited btnWhatsAppMessages: TAdvBadgeButton
                Left = 750
                Top = 13
                ExplicitLeft = 750
                ExplicitTop = 13
              end
              inherited dsCAP: TUniDataSource
                Left = 184
                Top = 344
              end
              inherited WATimer: TTimer
                Interval = 60000
                Left = 648
              end
            end
          end
          object AdvTabSheet2: TAdvTabSheet
            Caption = 'AdvTabSheet2'
            Color = clBtnFace
            ColorTo = clNone
            TabColor = clBtnFace
            TabColorTo = clNone
          end
        end
      end
    end
    object tabPlannerCalendar: TTabSheet
      Caption = 'Pianificazione Tecnici'
      ImageIndex = 1
      TabVisible = False
      inline frameTMSPhoenixPlannerTecnici: TframeTMSPhoenixPlannerCalendar
        Left = 0
        Top = 0
        Width = 1440
        Height = 971
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 971
        inherited grpMeeting: TGroupBox
          Top = 860
          ExplicitTop = 860
        end
        inherited Panel2: TPanel
          inherited ckbCalendarList: TCheckListBox
            ItemHeight = 16
          end
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
          Left = 0
          Width = 1440
          Height = 700
          ExplicitLeft = 0
          ExplicitWidth = 1440
          ExplicitHeight = 700
          inherited tabCalendar: TTabSheet
            ExplicitWidth = 1432
            ExplicitHeight = 670
            inherited DBPlanner1: TDBPlanner
              Width = 1432
              Height = 670
              ExplicitWidth = 1432
              ExplicitHeight = 670
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
      TabVisible = False
      inline frameVCLPhoenixPlannerCalendari: TframeVCLPhoenixPlannerCalendar2
        Left = 0
        Top = 0
        Width = 1440
        Height = 971
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1440
        ExplicitHeight = 971
        inherited lbCalendarList: TLabel
          Width = 1434
        end
        inherited Area: TLabel
          Width = 57
          Caption = 'Calendario'
          ExplicitWidth = 57
        end
        inherited grpMeeting: TGroupBox
          Top = 860
          Width = 1440
          ExplicitTop = 860
          ExplicitWidth = 1440
        end
        inherited Panel2: TPanel
          Width = 1440
          ExplicitWidth = 1440
          inherited ckbCalendarList: TCheckListBox
            Width = 1381
            ItemHeight = 16
            ExplicitWidth = 1381
          end
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
          Left = 0
          Width = 1440
          Height = 700
          ExplicitLeft = 0
          ExplicitWidth = 1440
          ExplicitHeight = 700
          inherited tabCalendar: TTabSheet
            ExplicitWidth = 1432
            ExplicitHeight = 670
            inherited DBPlanner1: TDBPlanner
              Width = 1432
              Height = 670
              Header.GroupCaptions.Strings = (
                ''
                ''
                ''
                ''
                ''
                ''
                ''
                ''
                ''
                ''
                ''
                ''
                ''
                ''
                ''
                ''
                '')
              ExplicitWidth = 1432
              ExplicitHeight = 670
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
    Left = 192
    Top = 440
  end
  object dsCustomers: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryCustomers
    Left = 88
    Top = 472
  end
  object dsCAP: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryCAP
    Left = 192
    Top = 520
  end
  object PopupMenu1: TPopupMenu
    Left = 504
    Top = 408
    object Modifica1: TMenuItem
      Action = dmVCLPhoenixPlannerController.actNewMeeting
    end
    object AnnullaAppuntamento1: TMenuItem
      Action = dmVCLPhoenixPlannerController.actUndoMeeting
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
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 908
    Top = 154
  end
  object Timer2: TTimer
    Interval = 600000
    OnTimer = Timer2Timer
    Left = 380
    Top = 450
  end
end
