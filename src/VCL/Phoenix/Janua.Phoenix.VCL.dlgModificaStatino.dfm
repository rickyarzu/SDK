object dlgVCLModificaStatino: TdlgVCLModificaStatino
  Left = 0
  Top = 0
  Caption = 'Modifica Statino'
  ClientHeight = 682
  ClientWidth = 1155
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  inline FrameStatino: TFRAME_STATINO
    Left = 0
    Top = 0
    Width = 1155
    Height = 643
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1155
    ExplicitHeight = 643
    inherited PageControl1: TPageControl
      Width = 1155
      Height = 643
      ActivePage = FrameStatino.TabRecapiti
      ExplicitWidth = 1155
      ExplicitHeight = 643
      inherited TabRecapiti: TTabSheet
        ExplicitWidth = 1147
        ExplicitHeight = 610
        inherited Bevel1: TBevel
          Width = 1278
        end
        inherited Label7: TLabel
          Left = 1015
        end
        inherited Label2: TLabel
          Left = 916
        end
        inherited Bevel4: TBevel
          Top = 422
          Width = 1272
        end
        inherited Label5: TLabel
          Top = 432
        end
        inherited Label19: TLabel
          Top = 414
        end
        inherited Label20: TLabel
          Top = 432
        end
        inherited Label21: TLabel
          Top = 432
        end
        inherited Label22: TLabel
          Top = 432
        end
        inherited Label23: TLabel
          Top = 459
        end
        inherited Bevel2: TBevel
          Top = 551
          Width = 1272
        end
        inherited Label10: TLabel
          Top = 545
        end
        inherited LB_DESCRIZIONE_FATTURA: TLabel
          Top = 592
          Width = 1133
        end
        inherited LB_CODICE: TLabel
          Left = 1039
        end
        inherited Label13: TLabel
          Left = 958
        end
        inherited LB_FILIALE: TLabel
          Width = 1068
        end
        inherited Label12: TLabel
          Left = 973
        end
        inherited LB_GENERAZIONE: TLabel
          Left = 1039
        end
        inherited Bevel3: TBevel
          Top = 488
          Width = 1133
        end
        inherited Label4: TLabel
          Top = 482
        end
        inherited LB_DESCRIZIONE_PREVENTIVO: TLabel
          Top = 529
          Width = 1135
        end
        inherited COMUNE: TEdit
          Width = 1068
        end
        inherited PROVINCIA: TComboBox
          Width = 927
        end
        inherited CAP: TEdit
          Left = 1041
        end
        inherited BTN_SELEZIONA_CONTRATTO: TButton
          Left = 1028
        end
        inherited GENERALITA: TEdit
          Width = 876
        end
        inherited INDIRIZZO: TEdit
          Width = 1068
        end
        inherited TELEFONO: TEdit
          Width = 836
        end
        inherited CELLULARE: TEdit
          Left = 963
        end
        inherited NOTE_APPUNTAMENTO: TMemo
          Width = 1068
          Height = 171
        end
        inherited ORARIO_APERTURA_DAL1: TTimeEdit
          Top = 429
        end
        inherited ORARIO_APERTURA_AL1: TTimeEdit
          Top = 429
        end
        inherited ORARIO_APERTURA_DAL2: TTimeEdit
          Top = 429
        end
        inherited ORARIO_APERTURA_AL2: TTimeEdit
          Top = 429
        end
        inherited GIORNO_CHIUSURA: TEdit
          Top = 456
          Width = 1068
        end
        inherited BTN_CORRELA_FATTURA: TButton
          Left = 817
          Top = 563
        end
        inherited BTN_VISUALIZZA_FATTURA: TButton
          Left = 1035
          Top = 563
        end
        inherited BTN_ANNULLA_FATTURA: TButton
          Left = 926
          Top = 563
        end
        inherited RESPONSABILE: TComboBox
          Width = 857
        end
        inherited CK_ESPORTATO_SU_MOBILE: TCheckBox
          Left = 836
        end
        inherited BTN_CORRELA_PREVENTIVO: TButton
          Left = 818
          Top = 500
        end
        inherited BTN_VISUALIZZA_PREVENTIVO: TButton
          Left = 1035
          Top = 500
        end
        inherited BTN_ANNULLA_PREVENTIVO: TButton
          Left = 926
          Top = 500
        end
        inherited CK_IGNORA_EVIDENZIAZIONE: TCheckBox
          Top = 569
        end
        inherited CK_CHIUSO_DA_SERVER: TCheckBox
          Left = 684
        end
        inherited PN_STATINO_CHIUSO_DA_SERVER: TPanel
          Width = 1147
        end
        inherited CK_FORNITURA: TCheckBox
          Left = 836
        end
        inherited CK_PRESA_IN_CARICO: TCheckBox
          Left = 684
        end
      end
      inherited TabDocumentoChiusura: TTabSheet
        inherited CHIUSURA_BODY: TAcroPDF
          ControlData = {000E0000648700008C2C0000}
        end
      end
      inherited TabPDFStatino: TTabSheet
        inherited Panel18: TPanel
          inherited LB_WARNING_TABLET: TLabel
            Width = 1308
          end
          inherited AcroPDFRapporto: TAcroPDF
            ControlData = {000E000030870000FF270000}
          end
        end
      end
      inherited TabPDFVerbaleImpianto: TTabSheet
        inherited Panel20: TPanel
          inherited AcroPDFCollaudoImpianto: TAcroPDF
            ControlData = {000E0000308700007A2D0000}
          end
        end
      end
      inherited TabPDFVerbaleManichette: TTabSheet
        inherited Panel22: TPanel
          inherited AcroPDFCollaudoManichette: TAcroPDF
            ControlData = {000E0000308700007A2D0000}
          end
        end
      end
      inherited TabScansione: TTabSheet
        ExplicitWidth = 1147
        ExplicitHeight = 610
        inherited SCANSIONE_RAPPORTO: TDocumentContainer
          Width = 1147
          Height = 610
          ExplicitWidth = 1147
          ExplicitHeight = 610
        end
      end
      inherited TabNote: TTabSheet
        inherited Panel16: TPanel
          inherited Label24: TLabel
            Width = 1308
          end
        end
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 643
    Width = 1155
    Height = 39
    Align = alBottom
    TabOrder = 1
    object btnOK: TButton
      Left = 1064
      Top = 6
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TButton
      Left = 968
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Annulla'
      TabOrder = 1
    end
  end
end
