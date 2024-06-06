object frmAppAndCityUniGUILoginRegister: TfrmAppAndCityUniGUILoginRegister
  Left = 0
  Top = 0
  ClientHeight = 647
  ClientWidth = 544
  Caption = 'Login Register to Application'
  OnShow = UniLoginFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  ClientEvents.ExtEvents.Strings = (
    
      'window.resize=function window.resize(sender, width, height, oldW' +
      'idth, oldHeight, eOpts)'#13#10'{'#13#10'  if (typeof UniLoginForm1  !== '#39'und' +
      'efined'#39') {  '#13#10'    var getSize = Ext.getBody().getViewSize(),'#13#10'  ' +
      '      winWidth = getSize.width,'#13#10'        winHeight = getSize.hei' +
      'ght,'#13#10'        left = (winWidth - UniLoginForm1.window.width) / 2' +
      ','#13#10'        top = (winHeight - UniLoginForm1.window.height) / 2;'#13 +
      #10#13#10'    UniLoginForm1 .window.setPosition(left, top);'#13#10'  }'#13#10#13#10'}')
  Font.Height = -13
  Font.Name = 'Arial'
  OnCreate = UniLoginFormCreate
  TextHeight = 16
  object pgUserLoginRegister: TUniPageControl
    AlignWithMargins = True
    Left = 2
    Top = 136
    Width = 538
    Height = 430
    Hint = ''
    Margins.Top = 0
    ActivePage = tsLogin
    TabBarVisible = False
    TabOrder = 0
    object tsLogin: TUniTabSheet
      Hint = ''
      Caption = ''
      Font.Height = -13
      Font.Name = 'Arial'
      ParentFont = False
      object ledUserName: TUniEdit
        Left = 56
        Top = 109
        Width = 369
        Height = 29
        Hint = ''
        Text = ''
        TabOrder = 0
        OnChange = ledUserNameChange
      end
      object ledPassword: TUniEdit
        Left = 56
        Top = 173
        Width = 369
        Height = 29
        Hint = ''
        PasswordChar = '*'
        Text = ''
        TabOrder = 1
        OnChange = ledPasswordChange
      end
      object chkPassword: TUniCheckBox
        Left = 304
        Top = 221
        Width = 137
        Height = 17
        Hint = ''
        Caption = 'Vedi Password'
        TabOrder = 2
      end
      object lbUserName: TUniLabel
        Left = 56
        Top = 85
        Width = 204
        Height = 16
        Hint = ''
        Caption = 'Nome Utente (indirizzo mail utente)'
        TabOrder = 3
      end
      object lbPassword: TUniLabel
        Left = 56
        Top = 149
        Width = 99
        Height = 16
        Hint = ''
        Caption = 'Password Utente'
        TabOrder = 4
      end
    end
    object tsRegister: TUniTabSheet
      Hint = ''
      TabVisible = False
      Caption = ''
      object ledProfileEmail: TUniEdit
        Left = 38
        Top = 50
        Width = 409
        Height = 29
        Hint = ''
        Text = ''
        TabOrder = 0
      end
      object ledProfilePassword: TUniEdit
        Left = 38
        Top = 113
        Width = 409
        Height = 29
        Hint = ''
        PasswordChar = '*'
        Text = ''
        TabOrder = 1
        OnExit = ledProfilePasswordExit
      end
      object ledProfilePasswordRepeat: TUniEdit
        Left = 38
        Top = 169
        Width = 409
        Height = 29
        Hint = ''
        PasswordChar = '*'
        Text = ''
        TabOrder = 2
        OnExit = ledProfilePasswordRepeatExit
      end
      object ledFirstName: TUniEdit
        Left = 38
        Top = 285
        Width = 409
        Height = 29
        Hint = ''
        Text = ''
        TabOrder = 4
      end
      object ledLastName: TUniEdit
        Left = 38
        Top = 225
        Width = 409
        Height = 29
        Hint = ''
        Text = ''
        TabOrder = 3
      end
      object chkShowPwdRegister: TUniCheckBox
        Left = 337
        Top = 90
        Width = 110
        Height = 17
        Hint = ''
        Caption = 'Vedi Password'
        TabOrder = 5
        OnClick = chkShowPwdRegisterClick
      end
      object lbProfileEmail: TUniLabel
        Left = 38
        Top = 28
        Width = 170
        Height = 16
        Hint = ''
        Caption = 'Inserite il vostro indirizzo Mail'
        TabOrder = 6
      end
      object lbProfilePassword: TUniLabel
        Left = 38
        Top = 89
        Width = 154
        Height = 16
        Hint = ''
        Caption = 'Selezionate una Password'
        TabOrder = 7
      end
      object lbProfilePasswordRepeat: TUniLabel
        Left = 38
        Top = 145
        Width = 240
        Height = 16
        Hint = ''
        Caption = 'Ripetete la password inserita (per verifica)'
        TabOrder = 8
      end
      object lbProfileFirstName: TUniLabel
        Left = 38
        Top = 261
        Width = 144
        Height = 16
        Hint = ''
        Caption = 'Nome (se persona fisica)'
        TabOrder = 9
      end
      object lbLastName: TUniLabel
        Left = 38
        Top = 201
        Width = 334
        Height = 16
        Hint = ''
        Caption = 'Cognome o Ragione Sociale (azienda o persona giuridica)'
        TabOrder = 10
      end
    end
    object tsRegisterEnd: TUniTabSheet
      Hint = ''
      TabVisible = False
      Caption = ''
      DesignSize = (
        530
        399)
      object ledProfileAddress: TUniEdit
        Left = 29
        Top = 80
        Width = 395
        Height = 29
        Hint = ''
        Text = ''
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
      object ledAddressNumber: TUniEdit
        Left = 430
        Top = 80
        Width = 79
        Height = 29
        Hint = ''
        Text = ''
        Anchors = [akTop, akRight]
        TabOrder = 1
      end
      object ledAddressCode: TUniEdit
        Left = 31
        Top = 134
        Width = 67
        Height = 29
        Hint = ''
        Text = ''
        TabOrder = 2
      end
      object ledTown: TUniEdit
        Left = 104
        Top = 134
        Width = 361
        Height = 29
        Hint = ''
        Text = ''
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
      end
      object ledFiscalCode: TUniEdit
        Left = 29
        Top = 355
        Width = 480
        Height = 29
        Hint = ''
        Text = ''
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 6
      end
      object ledPhone: TUniEdit
        Left = 29
        Top = 186
        Width = 480
        Height = 29
        Hint = ''
        Text = ''
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 4
      end
      object ledVATCode: TUniEdit
        Left = 29
        Top = 298
        Width = 480
        Height = 29
        Hint = ''
        Text = ''
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
      end
      object ledCellularPhone: TUniEdit
        Left = 29
        Top = 243
        Width = 480
        Height = 29
        Hint = ''
        Text = ''
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 7
      end
      object lbProfileAddress: TUniLabel
        Left = 29
        Top = 64
        Width = 150
        Height = 16
        Hint = ''
        Caption = 'Indirizzo (Via o Piazza ...)'
        TabOrder = 8
      end
      object lbAddressNumber: TUniLabel
        Left = 430
        Top = 64
        Width = 36
        Height = 16
        Hint = ''
        Caption = 'N'#176'/ Int'
        Anchors = [akTop, akRight]
        TabOrder = 9
      end
      object lbAddressCode: TUniLabel
        Left = 31
        Top = 116
        Width = 27
        Height = 16
        Hint = ''
        Caption = 'CAP'
        TabOrder = 10
      end
      object lbTown: TUniLabel
        Left = 104
        Top = 116
        Width = 27
        Height = 16
        Hint = ''
        Caption = 'Citt'#224
        TabOrder = 11
      end
      object lbFiscalCode: TUniLabel
        Left = 29
        Top = 339
        Width = 86
        Height = 16
        Hint = ''
        Caption = 'Codice Fiscale'
        TabOrder = 12
      end
      object lbPhone: TUniLabel
        Left = 29
        Top = 170
        Width = 154
        Height = 16
        Hint = ''
        Caption = 'Numero di Telefono (Fisso)'
        TabOrder = 13
      end
      object lbVATCode: TUniLabel
        Left = 29
        Top = 282
        Width = 57
        Height = 16
        Hint = ''
        Caption = 'Partita Iva'
        TabOrder = 14
      end
      object lbCellularPhone: TUniLabel
        Left = 29
        Top = 227
        Width = 172
        Height = 16
        Hint = ''
        Caption = 'Numero di Telefono (Cellulare)'
        TabOrder = 15
      end
      object edtStateProvince: TUniEdit
        Left = 471
        Top = 134
        Width = 38
        Height = 29
        Hint = ''
        Text = ''
        Anchors = [akTop, akRight]
        TabOrder = 16
      end
      object lbProv: TUniLabel
        Left = 471
        Top = 115
        Width = 28
        Height = 16
        Hint = ''
        Caption = 'Prov.'
        Anchors = [akTop, akRight]
        ParentColor = False
        Color = clBtnFace
        TabOrder = 17
      end
      object edtFullAddress: TUniEdit
        Left = 29
        Top = 30
        Width = 413
        Height = 29
        Hint = ''
        Text = ''
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 18
        OnExit = btnGoogleSearchClick
      end
      object lbAddressFull: TUniLabel
        Left = 29
        Top = 8
        Width = 243
        Height = 16
        Hint = ''
        Caption = 'Digitare l'#39'indirizzo per la ricerca su Google'
        ParentColor = False
        Color = clBtnFace
        TabOrder = 19
      end
      object btnGoogleSearch: TUniFSButton
        Left = 448
        Top = 30
        Width = 61
        Height = 29
        Hint = ''
        StyleButton = GoogleBlue2
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Cerca'
        Anchors = [akTop, akRight]
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        TabOrder = 20
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Autenticando...'
        OnClick = btnGoogleSearchClick
      end
      object lbLongitude: TUniLabel
        Left = 424
        Top = 8
        Width = 18
        Height = 16
        Hint = ''
        Alignment = taRightJustify
        Caption = '0.0'
        ParentColor = False
        Color = clBtnFace
        TabOrder = 21
      end
      object lbLatitude: TUniLabel
        Left = 354
        Top = 8
        Width = 18
        Height = 16
        Hint = ''
        Alignment = taRightJustify
        Caption = '0.0'
        ParentColor = False
        Color = clBtnFace
        TabOrder = 22
      end
    end
  end
  object btnRegister: TUniFSButton
    AlignWithMargins = True
    Left = 10
    Top = 563
    Width = 524
    Height = 34
    Hint = ''
    Margins.Left = 10
    Margins.Right = 10
    Margins.Bottom = 10
    StyleButton = GoogleBlue2
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Non Sei ancora Iscritto? Registrati'
    Align = alBottom
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -15
    TabOrder = 1
    ScreenMask.Enabled = True
    ScreenMask.WaitData = True
    ScreenMask.Message = 'Autenticando...'
    OnClick = btnRegisterClick
  end
  object btnLogin: TUniFSButton
    AlignWithMargins = True
    Left = 10
    Top = 610
    Width = 524
    Height = 34
    Hint = 'Realize seu cadastro aqui'
    Margins.Left = 10
    Margins.Right = 10
    ShowHint = True
    ParentShowHint = False
    StyleButton = GoogleGreen
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Sei Registrato? ACCEDI'
    Align = alBottom
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -15
    TabOrder = 2
    ScreenMask.Enabled = True
    ScreenMask.WaitData = True
    ScreenMask.Message = 'Processando, por favor aguarde...'
    OnClick = btnLoginClick
    ExplicitLeft = 5
  end
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = -3
    Width = 544
    Height = 128
    Hint = ''
    ParentColor = False
    TabOrder = 3
  end
end
