object frmCarServiceLoginRegister: TfrmCarServiceLoginRegister
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Car Service Login or Register'
  ClientHeight = 469
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object pgUserLoginRegister: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 45
    Width = 445
    Height = 337
    ActivePage = tsLogin
    Align = alClient
    TabOrder = 0
    object tsLogin: TTabSheet
      Caption = 'tsLogin'
      TabVisible = False
      object ledUserName: TLabeledEdit
        Left = 24
        Top = 64
        Width = 369
        Height = 29
        EditLabel.Width = 248
        EditLabel.Height = 21
        EditLabel.Caption = 'Nome Utente (indirizzo mail utente)'
        TabOrder = 0
      end
      object ledPassword: TLabeledEdit
        Left = 24
        Top = 128
        Width = 369
        Height = 29
        EditLabel.Width = 116
        EditLabel.Height = 21
        EditLabel.Caption = 'Password Utente'
        PasswordChar = '*'
        TabOrder = 1
      end
      object chkPassword: TCheckBox
        Left = 272
        Top = 176
        Width = 137
        Height = 17
        Caption = 'Vedi Password'
        TabOrder = 2
        OnClick = chkPasswordClick
      end
    end
    object tsRegister: TTabSheet
      Caption = 'tsRegister'
      ImageIndex = 1
      TabVisible = False
      object ledProfileEmail: TLabeledEdit
        Left = 16
        Top = 32
        Width = 409
        Height = 29
        EditLabel.Width = 208
        EditLabel.Height = 21
        EditLabel.Caption = 'Inserite il vostro indirizzo Mail'
        TabOrder = 0
      end
      object ledProfilePassword: TLabeledEdit
        Left = 16
        Top = 96
        Width = 409
        Height = 29
        EditLabel.Width = 179
        EditLabel.Height = 21
        EditLabel.Caption = 'Selezionate una Password'
        PasswordChar = '*'
        TabOrder = 1
      end
      object ledProfilePasswordRepeat: TLabeledEdit
        Left = 16
        Top = 152
        Width = 409
        Height = 29
        EditLabel.Width = 290
        EditLabel.Height = 21
        EditLabel.Caption = 'Ripetete la password inserita (per verifica)'
        PasswordChar = '*'
        TabOrder = 2
      end
      object ledProfileFirstName: TLabeledEdit
        Left = 16
        Top = 268
        Width = 409
        Height = 29
        EditLabel.Width = 171
        EditLabel.Height = 21
        EditLabel.Caption = 'Nome (se persona fisica)'
        TabOrder = 4
      end
      object ledLastName: TLabeledEdit
        Left = 16
        Top = 208
        Width = 409
        Height = 29
        EditLabel.Width = 399
        EditLabel.Height = 21
        EditLabel.Caption = 'Cognome o Ragione Sociale (azienda o persona giuridica)'
        TabOrder = 3
      end
      object chkShowPwdRegister: TCheckBox
        Left = 297
        Top = 73
        Width = 128
        Height = 17
        Caption = 'Vedi Password'
        TabOrder = 5
        OnClick = chkShowPwdRegisterClick
      end
    end
    object tsRegisterEnd: TTabSheet
      Caption = 'tsRegisterEnd'
      ImageIndex = 2
      TabVisible = False
      DesignSize = (
        437
        327)
      object ledProfileAddress: TLabeledEdit
        Left = 16
        Top = 20
        Width = 409
        Height = 29
        Anchors = [akLeft, akTop, akRight, akBottom]
        EditLabel.Width = 168
        EditLabel.Height = 21
        EditLabel.Caption = 'Indirizzo (Via o Piazza ...)'
        TabOrder = 0
      end
      object ledAddressNumber: TLabeledEdit
        Left = 16
        Top = 76
        Width = 57
        Height = 29
        Anchors = [akLeft, akTop, akRight, akBottom]
        EditLabel.Width = 46
        EditLabel.Height = 21
        EditLabel.Caption = 'N'#176'/ Int'
        TabOrder = 1
      end
      object ledAddressCode: TLabeledEdit
        Left = 88
        Top = 76
        Width = 65
        Height = 29
        Anchors = [akLeft, akTop, akRight, akBottom]
        EditLabel.Width = 29
        EditLabel.Height = 21
        EditLabel.Caption = 'CAP'
        TabOrder = 2
      end
      object ledTown: TLabeledEdit
        Left = 168
        Top = 76
        Width = 257
        Height = 29
        Anchors = [akLeft, akTop, akRight, akBottom]
        EditLabel.Width = 32
        EditLabel.Height = 21
        EditLabel.Caption = 'Citt'#224
        TabOrder = 3
      end
      object ledFiscalCode: TLabeledEdit
        Left = 16
        Top = 295
        Width = 409
        Height = 29
        Anchors = [akLeft, akTop, akRight, akBottom]
        EditLabel.Width = 97
        EditLabel.Height = 21
        EditLabel.Caption = 'Codice Fiscale'
        TabOrder = 6
      end
      object ledPhone: TLabeledEdit
        Left = 16
        Top = 130
        Width = 409
        Height = 29
        Anchors = [akLeft, akTop, akRight, akBottom]
        EditLabel.Width = 186
        EditLabel.Height = 21
        EditLabel.Caption = 'Numero di Telefono (Fisso)'
        TabOrder = 4
      end
      object ledVATCode: TLabeledEdit
        Left = 16
        Top = 242
        Width = 409
        Height = 29
        Anchors = [akLeft, akTop, akRight, akBottom]
        EditLabel.Width = 68
        EditLabel.Height = 21
        EditLabel.Caption = 'Partita Iva'
        TabOrder = 5
      end
      object ledCellularPhone: TLabeledEdit
        Left = 16
        Top = 189
        Width = 409
        Height = 29
        Anchors = [akLeft, akTop, akRight, akBottom]
        EditLabel.Width = 212
        EditLabel.Height = 21
        EditLabel.Caption = 'Numero di Telefono (Cellulare)'
        TabOrder = 7
      end
    end
  end
  object btnLogin: TButton
    AlignWithMargins = True
    Left = 3
    Top = 430
    Width = 445
    Height = 36
    Align = alBottom
    Caption = 'Sei Registrato? ACCEDI'
    TabOrder = 1
    OnClick = btnLoginClick
  end
  object btnRegister: TButton
    AlignWithMargins = True
    Left = 3
    Top = 388
    Width = 445
    Height = 36
    Align = alBottom
    Caption = 'Non Sei ancora Iscritto? Registrati'
    TabOrder = 2
    OnClick = btnRegisterClick
  end
  object btnStyle: TButton
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 445
    Height = 36
    Align = alTop
    Caption = 'Stile Grafico'
    TabOrder = 3
    OnClick = btnStyleClick
  end
end
