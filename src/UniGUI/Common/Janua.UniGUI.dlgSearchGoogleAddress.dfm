object dlgUniGUISearchGoogleAddress: TdlgUniGUISearchGoogleAddress
  Left = 0
  Top = 0
  ClientHeight = 567
  ClientWidth = 572
  Caption = 'Ricerca Indirizzo'
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  TextHeight = 15
  object edtSearchAddress: TUniEdit
    Left = 14
    Top = 12
    Width = 467
    Hint = ''
    Text = ''
    TabOrder = 0
  end
  object btnSearch: TUniFSButton
    Left = 487
    Top = 8
    Width = 75
    Height = 30
    Hint = ''
    StyleButton = GoogleDangerRound
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Cerca'
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -15
    TabOrder = 1
    ScreenMask.Enabled = True
    ScreenMask.WaitData = True
    ScreenMask.Message = 'Autenticando...'
    ImageIndex = 0
    OnClick = btnSearchClick
  end
  object UniContainerPanel1: TUniContainerPanel
    Left = 8
    Top = 263
    Width = 573
    Height = 197
    Hint = ''
    ParentColor = False
    TabOrder = 2
    DesignSize = (
      573
      197)
    object edtProfileAddress: TUniEdit
      Left = 21
      Top = 34
      Width = 356
      Height = 29
      Hint = ''
      Text = ''
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
    end
    object lbProvince: TUniLabel
      Left = 513
      Top = 69
      Width = 46
      Height = 13
      Hint = ''
      Caption = 'Provincia'
      ParentColor = False
      Color = clBtnFace
      TabOrder = 2
    end
    object edtStateProvince: TUniEdit
      Left = 510
      Top = 88
      Width = 50
      Height = 29
      Hint = ''
      Text = ''
      Anchors = [akTop, akRight]
      TabOrder = 3
    end
    object lbTown: TUniLabel
      Left = 119
      Top = 69
      Width = 24
      Height = 13
      Hint = ''
      Caption = 'Citt'#224
      TabOrder = 4
    end
    object edtTown: TUniEdit
      Left = 119
      Top = 88
      Width = 385
      Height = 29
      Hint = ''
      Text = ''
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
    end
    object lbAddressCode: TUniLabel
      Left = 21
      Top = 69
      Width = 20
      Height = 13
      Hint = ''
      Caption = 'CAP'
      TabOrder = 6
    end
    object edtPostalCode: TUniEdit
      Left = 21
      Top = 88
      Width = 92
      Height = 29
      Hint = ''
      Text = ''
      TabOrder = 7
    end
    object lbAddressNumber: TUniLabel
      Left = 392
      Top = 15
      Width = 33
      Height = 13
      Hint = ''
      Caption = 'N'#176'/ Int'
      TabOrder = 8
    end
    object edtNumber: TUniEdit
      Left = 392
      Top = 34
      Width = 65
      Height = 29
      Hint = ''
      Text = ''
      Anchors = [akTop, akRight]
      TabOrder = 9
    end
    object lbProfileAddress: TUniLabel
      Left = 21
      Top = 15
      Width = 106
      Height = 13
      Hint = ''
      Caption = 'Indirizzo (Via, Piazza)'
      ParentColor = False
      Color = clBtnFace
      TabOrder = 10
    end
    object edtProvinceName: TUniEdit
      Left = 21
      Top = 136
      Width = 333
      Height = 29
      Hint = ''
      Text = ''
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 11
    end
    object edtRegion: TUniEdit
      Left = 360
      Top = 136
      Width = 144
      Height = 29
      Hint = ''
      Text = ''
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 12
    end
    object edtCountry: TUniEdit
      Left = 510
      Top = 136
      Width = 49
      Height = 29
      Hint = ''
      Text = ''
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 13
    end
    object lbLatitude: TUniLabel
      Left = 21
      Top = 171
      Width = 15
      Height = 13
      Hint = ''
      Caption = '0.0'
      ParentColor = False
      Color = clBtnFace
      TabOrder = 14
    end
    object lbLongitude: TUniLabel
      Left = 231
      Top = 171
      Width = 15
      Height = 13
      Hint = ''
      Caption = '0.0'
      ParentColor = False
      Color = clBtnFace
      TabOrder = 15
    end
    object btnMap: TUniFSButton
      Left = 463
      Top = 33
      Width = 91
      Height = 30
      Hint = ''
      StyleButton = GoogleDangerRound
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Mappa'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -15
      TabOrder = 16
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Autenticando...'
      ImageIndex = 0
      OnClick = btnSearchClick
    end
  end
  object btnCancel: TUniFSButton
    Left = 45
    Top = 466
    Width = 494
    Height = 34
    Hint = ''
    StyleButton = GoogleBlue2
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Annulla Registrazione Dati'
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -15
    TabOrder = 3
    ScreenMask.Enabled = True
    ScreenMask.WaitData = True
    ScreenMask.Message = 'Autenticando...'
  end
  object btnOK: TUniFSButton
    AlignWithMargins = True
    Left = 45
    Top = 506
    Width = 494
    Height = 34
    Hint = 'Realize seu cadastro aqui'
    ShowHint = True
    ParentShowHint = False
    StyleButton = GoogleDanger
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Registra indirizzo '
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -15
    TabOrder = 4
    ScreenMask.Enabled = True
    ScreenMask.WaitData = True
    ScreenMask.Message = 'Processando, por favor aguarde...'
    OnClick = btnOKClick
  end
  object ListGoogle: TUniListBox
    Left = 16
    Top = 44
    Width = 465
    Height = 213
    Hint = ''
    TabOrder = 5
    OnClick = ListGoogleClick
  end
end
