object dlgFootballClub: TdlgFootballClub
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gestion Football Club '
  ClientHeight = 482
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  DesignSize = (
    734
    482)
  TextHeight = 13
  object lbClubID: TLabel
    Left = 8
    Top = 8
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = edClubID
  end
  object lbClubName: TLabel
    Left = 87
    Top = 8
    Width = 68
    Height = 13
    Caption = 'Nome del Club'
    FocusControl = edClubName
  end
  object lbClubFoundationDate: TLabel
    Left = 504
    Top = 5
    Width = 81
    Height = 13
    Caption = 'Data Fondazione'
    FocusControl = edFoundation_date
  end
  object lbListTeams: TLabel
    Left = 8
    Top = 56
    Width = 318
    Height = 13
    Caption = 
      'Elenco delle Squadre del Club (incluse giovanili e seconde squad' +
      're)'
  end
  object edClubID: TDBEdit
    Left = 8
    Top = 24
    Width = 73
    Height = 21
    Color = clBtnFace
    DataField = 'club_id'
    DataSource = dsClub
    ReadOnly = True
    TabOrder = 0
  end
  object edClubName: TDBEdit
    Left = 87
    Top = 24
    Width = 400
    Height = 21
    DataField = 'club_name'
    DataSource = dsClub
    TabOrder = 1
  end
  object edFoundation_date: TDBEdit
    Left = 504
    Top = 24
    Width = 134
    Height = 21
    DataField = 'Foundation_date'
    DataSource = dsClub
    TabOrder = 2
  end
  object grdTeams: TEnhCRDBGrid
    Left = 8
    Top = 112
    Width = 321
    Height = 332
    Anchors = [akLeft, akTop, akBottom]
    DataSource = dsTeams
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -11
    HighlightFont.Name = 'Tahoma'
    HighlightFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'team_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'team_name'
        Width = 212
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 75
    Width = 320
    Height = 39
    DataSource = dsTeams
    TabOrder = 4
  end
  object GroupBox1: TGroupBox
    Left = 334
    Top = 51
    Width = 383
    Height = 393
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Dati Anagrafici Club'
    TabOrder = 5
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 123
      Height = 13
      Caption = 'Ragione Sociale Completa'
      FocusControl = edlast_name
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 40
      Height = 13
      Caption = 'Indirizzo'
      FocusControl = edAddress
    end
    object Label3: TLabel
      Left = 16
      Top = 120
      Width = 23
      Height = 13
      Caption = 'Citt'#224
      FocusControl = edtown
    end
    object Label4: TLabel
      Left = 16
      Top = 163
      Width = 57
      Height = 13
      Caption = 'Cod Postale'
      FocusControl = edPostalCode
    end
    object Label5: TLabel
      Left = 128
      Top = 163
      Width = 26
      Height = 13
      Caption = 'Stato'
      FocusControl = Ediso_country_code
    end
    object Label6: TLabel
      Left = 256
      Top = 163
      Width = 43
      Height = 13
      Caption = 'Provincia'
      FocusControl = edstate_province
    end
    object Label7: TLabel
      Left = 16
      Top = 211
      Width = 45
      Height = 13
      Caption = 'Tel. Fisso'
      FocusControl = edphone
    end
    object Label8: TLabel
      Left = 160
      Top = 211
      Width = 41
      Height = 13
      Caption = 'Cellulare'
      FocusControl = edcellular
    end
    object Label9: TLabel
      Left = 16
      Top = 257
      Width = 45
      Height = 13
      Caption = 'Cod. Figc'
      FocusControl = edcode
    end
    object Label10: TLabel
      Left = 16
      Top = 303
      Width = 61
      Height = 13
      Caption = 'Indirizzo Mail'
      FocusControl = Edemail
    end
    object Label11: TLabel
      Left = 119
      Top = 260
      Width = 11
      Height = 13
      Caption = 'ID'
      FocusControl = Edanagraph_id
    end
    object edlast_name: TDBEdit
      Left = 16
      Top = 40
      Width = 329
      Height = 21
      DataField = 'an_last_name'
      TabOrder = 0
    end
    object edAddress: TDBEdit
      Left = 16
      Top = 88
      Width = 329
      Height = 21
      DataField = 'an_address'
      TabOrder = 1
    end
    object edtown: TDBEdit
      Left = 16
      Top = 136
      Width = 329
      Height = 21
      DataField = 'an_town'
      TabOrder = 2
    end
    object edPostalCode: TDBEdit
      Left = 16
      Top = 184
      Width = 108
      Height = 21
      DataField = 'an_postal_code'
      TabOrder = 3
    end
    object Ediso_country_code: TDBEdit
      Left = 130
      Top = 184
      Width = 115
      Height = 21
      DataField = 'an_iso_country_code'
      TabOrder = 4
    end
    object edstate_province: TDBEdit
      Left = 251
      Top = 184
      Width = 93
      Height = 21
      DataField = 'an_state_province'
      TabOrder = 5
    end
    object edphone: TDBEdit
      Left = 16
      Top = 230
      Width = 137
      Height = 21
      DataField = 'an_phone'
      TabOrder = 6
    end
    object edcellular: TDBEdit
      Left = 159
      Top = 230
      Width = 186
      Height = 21
      DataField = 'an_cellular'
      TabOrder = 7
    end
    object edcode: TDBEdit
      Left = 16
      Top = 276
      Width = 97
      Height = 21
      DataField = 'an_code'
      TabOrder = 8
    end
    object Edemail: TDBEdit
      Left = 16
      Top = 322
      Width = 329
      Height = 21
      DataField = 'an_email'
      TabOrder = 9
    end
    object Edanagraph_id: TDBEdit
      Left = 119
      Top = 276
      Width = 226
      Height = 21
      Color = clBtnFace
      DataField = 'anagraph_id'
      ReadOnly = True
      TabOrder = 10
    end
  end
  object btnOk: TAdvGlowButton
    Left = 644
    Top = 450
    Width = 73
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = 'Ok'
    ModalResult = 1
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    Rounded = True
    TabOrder = 6
    OnClick = btnOkClick
    Appearance.Color = clWhite
    Appearance.ColorTo = clWhite
    Appearance.ColorChecked = 16111818
    Appearance.ColorCheckedTo = 16367008
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = 16117985
    Appearance.ColorHotTo = 16372402
    Appearance.ColorMirror = clSilver
    Appearance.ColorMirrorTo = clWhite
    Appearance.ColorMirrorHot = 16107693
    Appearance.ColorMirrorHotTo = 16775412
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16102556
    Appearance.ColorMirrorCheckedTo = 16768988
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
  end
  object AdvGlowButton1: TAdvGlowButton
    Left = 556
    Top = 450
    Width = 73
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = 'Annulla'
    ModalResult = 2
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    Rounded = True
    TabOrder = 7
    OnClick = btnOkClick
    Appearance.Color = clWhite
    Appearance.ColorTo = clWhite
    Appearance.ColorChecked = 16111818
    Appearance.ColorCheckedTo = 16367008
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = 16117985
    Appearance.ColorHotTo = 16372402
    Appearance.ColorMirror = clSilver
    Appearance.ColorMirrorTo = clWhite
    Appearance.ColorMirrorHot = 16107693
    Appearance.ColorMirrorHotTo = 16775412
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16102556
    Appearance.ColorMirrorCheckedTo = 16768988
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
  end
  object dsClub: TDataSource
    Left = 224
    Top = 240
  end
  object dsTeams: TDataSource
    Left = 152
    Top = 240
  end
end
