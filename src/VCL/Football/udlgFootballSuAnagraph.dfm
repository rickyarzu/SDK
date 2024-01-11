object dlgFootballSubAnagraph: TdlgFootballSubAnagraph
  Left = 0
  Top = 0
  Caption = 'Gestione Scheda anagrafica'
  ClientHeight = 318
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Shader1: TShader
    Left = 0
    Top = 0
    Width = 523
    Height = 41
    Align = alTop
    Caption = 'Scheda Anagrafica Club'
    TabOrder = 0
    FromColor = 16643823
    ToColor = 15784647
    Direction = False
    Version = '1.4.2.1'
  end
  object Shader2: TShader
    Left = 0
    Top = 277
    Width = 523
    Height = 41
    Align = alBottom
    TabOrder = 1
    FromColor = 16643823
    ToColor = 15784647
    Direction = False
    Version = '1.4.2.1'
    DesignSize = (
      523
      41)
    object AdvGlowButton1: TAdvGlowButton
      Left = 348
      Top = 6
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
      TabOrder = 0
      Appearance.BorderColor = 13087391
      Appearance.BorderColorHot = 5819121
      Appearance.BorderColorDown = 3181250
      Appearance.BorderColorChecked = 3181250
      Appearance.BorderColorDisabled = 11316396
      Appearance.Color = 16643823
      Appearance.ColorTo = 15784647
      Appearance.ColorChecked = 14285309
      Appearance.ColorCheckedTo = 7131391
      Appearance.ColorDisabled = 15658734
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 7131391
      Appearance.ColorDownTo = 8122111
      Appearance.ColorHot = 9102333
      Appearance.ColorHotTo = 14285309
      Appearance.ColorMirror = 15784647
      Appearance.ColorMirrorTo = 15784647
      Appearance.ColorMirrorHot = 14285309
      Appearance.ColorMirrorHotTo = 9102333
      Appearance.ColorMirrorDown = 8122111
      Appearance.ColorMirrorDownTo = 7131391
      Appearance.ColorMirrorChecked = 7131391
      Appearance.ColorMirrorCheckedTo = 7131391
      Appearance.ColorMirrorDisabled = 15658734
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object btnOk: TAdvGlowButton
      Left = 432
      Top = 6
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
      TabOrder = 1
      Appearance.BorderColor = 13087391
      Appearance.BorderColorHot = 5819121
      Appearance.BorderColorDown = 3181250
      Appearance.BorderColorChecked = 3181250
      Appearance.BorderColorDisabled = 11316396
      Appearance.Color = 16643823
      Appearance.ColorTo = 15784647
      Appearance.ColorChecked = 14285309
      Appearance.ColorCheckedTo = 7131391
      Appearance.ColorDisabled = 15658734
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 7131391
      Appearance.ColorDownTo = 8122111
      Appearance.ColorHot = 9102333
      Appearance.ColorHotTo = 14285309
      Appearance.ColorMirror = 15784647
      Appearance.ColorMirrorTo = 15784647
      Appearance.ColorMirrorHot = 14285309
      Appearance.ColorMirrorHotTo = 9102333
      Appearance.ColorMirrorDown = 8122111
      Appearance.ColorMirrorDownTo = 7131391
      Appearance.ColorMirrorChecked = 7131391
      Appearance.ColorMirrorCheckedTo = 7131391
      Appearance.ColorMirrorDisabled = 15658734
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object Shader10: TShader
    Left = 0
    Top = 41
    Width = 523
    Height = 236
    Align = alClient
    TabOrder = 2
    FromColor = 16643823
    ToColor = 15784647
    Direction = False
    Version = '1.4.2.1'
    object Label35: TLabel
      Left = 2
      Top = 5
      Width = 45
      Height = 13
      Caption = 'Cognome'
      FocusControl = DBEdit25
      Transparent = True
    end
    object Label44: TLabel
      Left = 2
      Top = 107
      Width = 77
      Height = 13
      Caption = 'Ruolo Societario'
      Transparent = True
    end
    object Label45: TLabel
      Left = 103
      Top = 110
      Width = 41
      Height = 13
      Caption = 'Cellulare'
      FocusControl = DBEdit35
      Transparent = True
    end
    object Label46: TLabel
      Left = 1
      Top = 158
      Width = 61
      Height = 13
      Caption = 'Indirizzo Mail'
      FocusControl = DBEdit36
      Transparent = True
    end
    object Label40: TLabel
      Left = 2
      Top = 53
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit30
      Transparent = True
    end
    object AdvOfficeImage1: TAdvOfficeImage
      Left = 288
      Top = 6
      Width = 217
      Height = 187
      Stretch = True
      Version = '1.1.1.0'
    end
    object DBEdit25: TDBEdit
      Left = 2
      Top = 24
      Width = 271
      Height = 21
      DataField = 'an_last_name'
      DataSource = dmFootballAnagraph.dsSubAngraphs
      TabOrder = 0
    end
    object DBEdit35: TDBEdit
      Left = 103
      Top = 126
      Width = 170
      Height = 21
      DataField = 'an_cellular'
      DataSource = dmFootballAnagraph.dsSubAngraphs
      TabOrder = 1
    end
    object DBEdit36: TDBEdit
      Left = 2
      Top = 174
      Width = 279
      Height = 21
      DataField = 'an_email'
      DataSource = dmFootballAnagraph.dsSubAngraphs
      TabOrder = 2
    end
    object DBEdit30: TDBEdit
      Left = 2
      Top = 72
      Width = 271
      Height = 21
      DataField = 'an_last_name'
      DataSource = dmFootballAnagraph.dsSubAngraphs
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 2
      Top = 126
      Width = 95
      Height = 21
      DataField = 'lkpGroupDes'
      DataSource = dmFootballAnagraph.dsSubAngraphs
      TabOrder = 4
    end
    object btnPicturePhotos: TAdvGlowButton
      Left = 287
      Top = 194
      Width = 218
      Height = 36
      Caption = 'Carica Immagine da File'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D760600000000000036040000280000001800000018000000010008000000
        000040020000E30E0000E30E0000000100000001000010211800102121001821
        210018292100212929002131290029422900314A290029393100313931002942
        3100294A3100314A3100394A31003152310039523100425231004A523100425A
        3100394A39003952390052523900395A3900425A39004A5A3900525A39005263
        390039424200394A420042524200315A4200425A42004A634200526342005A63
        4200636342005A6B4200636B420039524A0042524A00395A4A004A5A4A003963
        4A004A634A004A6B4A00526B4A00636B4A005A734A0063734A00525A52004A63
        52004A6B5200527352005A7352006373520052635A004A6B5A005A735A006373
        5A006B7B5A00737B5A00737B63006B846300738463007B846300637B6B006B7B
        6B006B846B0073846B006B8473007B8C7B0084947B00848C8400849484008C94
        84007B948C00849C8C008C9C8C00949C940084A59400949C9C008CA59C0094A5
        9C0094AD9C009CAD9C0094ADA5009CADA5009CB5AD00A5B5AD00A5BDAD00ADBD
        B500ADBDBD00B5C6BD00CECEBD00BDCEC600C6D6C600CED6C600D6D6C600C6CE
        CE00CECECE00C6D6CE00D6DED600E7E7D600DEE7DE00EFEFDE00DEE7E700E7EF
        E700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006B6B6B6B6B6B6B6B6B6B
        6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B
        6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B36
        1D1D05050505050505051D1B1B1B050505050505056B40221111111110111810
        0F0A294141321B0C0C1414140705442315111111101012100D49564C4B544D1B
        141E2A280C054423191911181110100D49595A371C585C461B140C0F0C054425
        1918181810100F475E593701010464531B0C0E0F0605442E1918181710100F42
        655F370303025A521B0C0F140605442E191A181818180F47695A621C05505A55
        1B0F0F0F0B05442E2118181818170F14655E5A574F575B631B0E0F0F0C054430
        212120201817121647675751554B621B0A0E0E0F0C054436222118181717382B
        031B4E5252521B010A0E0E0F0C0544362221212018171F160301000202000101
        313A0C0C0C05443B240303204D49472D03010108080301004A5D6A6A6A0C443C
        241F032020202020050101091D05000048606166660C443F2D2D2D2D2D2D2020
        171D1D14131414143943434444323D3636363644473E35352F201F32332B1F2C
        343434352D3A6B444444444444444444444526272726264444444444446B6B6B
        6B6B6B6B6B6B6B6B6B06616A6A6A066B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B
        6B0661616666066B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B1706060606176B
        6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B
        6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B}
      Rounded = True
      TabOrder = 5
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 11918331
      Appearance.ColorCheckedTo = 7915518
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object AdvFormStyler1: TAdvFormStyler
    Style = tsOffice2010Blue
    Left = 248
    Top = 160
  end
end
