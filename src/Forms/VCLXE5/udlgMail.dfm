object dlgMail: TdlgMail
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Invio EMail'
  ClientHeight = 445
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inline frameMail1: TframeMail
    Left = 0
    Top = 0
    Width = 685
    Height = 445
    Align = alClient
    TabOrder = 0
    TabStop = True
    ExplicitWidth = 685
    ExplicitHeight = 445
    inherited pnlBottom: TPanel
      Width = 685
      Height = 262
      ExplicitWidth = 685
      ExplicitHeight = 262
      inherited Memo1: TMemo
        Width = 685
        Height = 228
        OnEnter = edsetcolorenter
        OnExit = edsetcolorexit
        ExplicitWidth = 685
        ExplicitHeight = 228
      end
      inherited pnlButtons: TPanel
        Top = 228
        Width = 685
        ExplicitTop = 228
        ExplicitWidth = 685
        inherited bbtnAdvanced: TBitBtn
          Caption = '&Avanzate'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited pnlSmallButtons: TPanel
          Left = 519
          ExplicitLeft = 519
          inherited bbtnCancel: TBitBtn
            Caption = 'Annulla'
            Font.Color = clMaroon
            Font.Style = [fsBold]
            ParentFont = False
          end
          inherited bbtnOk: TBitBtn
            Caption = 'Invia'
            Font.Color = clNavy
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 685
      ExplicitWidth = 685
      inherited pnlTopLeft: TPanel
        inherited lblPriority: TLabel
          Caption = '&Priorit'#224':'
        end
        inherited edtCC: TEdit
          OnEnter = edsetcolorenter
          OnExit = edsetcolorexit
        end
        inherited edtBCC: TEdit
          OnEnter = edsetcolorenter
          OnExit = edsetcolorexit
        end
        inherited cboPriority: TComboBox
          TabOrder = 3
          OnEnter = edsetcolorenter
          OnExit = edsetcolorexit
        end
        inherited chkReturnReciept: TCheckBox
          Caption = 'Ricevuta &Ritorno'
          TabOrder = 4
          OnEnter = edsetcolorenter
          OnExit = edsetcolorexit
        end
        inherited pnlMainDetails: TPanel
          TabOrder = 5
          inherited lblTo: TLabel
            Width = 11
            Caption = '&A:'
            ExplicitWidth = 11
          end
          inherited lblSubject: TLabel
            Width = 44
            Caption = '&Oggetto:'
            ExplicitWidth = 44
          end
          inherited edtTo: TEdit
            Text = 'destinatario@indirizzo.it'
            OnEnter = edsetcolorenter
            OnExit = edsetcolorexit
          end
          inherited edtSubject: TEdit
            OnEnter = edsetcolorenter
            OnExit = edsetcolorexit
          end
        end
        inherited edtFrom: TEdit
          TabOrder = 2
          OnEnter = edsetcolorenter
          OnExit = edsetcolorexit
        end
      end
      inherited grpAttachment: TGroupBox
        Width = 388
        Caption = 'Allegati:'
        ExplicitWidth = 388
        inherited lvFiles: TListView
          OnEnter = edsetcolorenter
          OnExit = edsetcolorexit
        end
        inherited btnAttachment: TBitBtn
          TabOrder = 2
        end
        inherited btnText: TBitBtn
          TabOrder = 3
        end
        inherited Edit1: TEdit
          TabOrder = 4
        end
        inherited edAttach: TEdit
          TabOrder = 1
          OnEnter = edsetcolorenter
          OnExit = edsetcolorexit
        end
      end
    end
    inherited OpenDialog1: TOpenDialog
      Left = 400
      Top = 416
    end
    inherited SaveDialog1: TSaveDialog
      Left = 368
      Top = 416
    end
  end
end
