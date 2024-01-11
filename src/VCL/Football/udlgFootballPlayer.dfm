object dlgFootballPlayer: TdlgFootballPlayer
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Scheda completa del giocatore'
  ClientHeight = 533
  ClientWidth = 1274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object Shader1: TShader
    Left = 0
    Top = 0
    Width = 1274
    Height = 533
    Align = alClient
    TabOrder = 0
    FromColor = 16643823
    ToColor = 15784647
    Direction = False
    Version = '1.4.2.1'
    DesignSize = (
      1274
      533)
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 11
      Height = 13
      Caption = 'ID'
      FocusControl = DBEdit1
      Transparent = True
    end
    object Label2: TLabel
      Left = 104
      Top = 16
      Width = 72
      Height = 13
      Caption = 'Data di Nascita'
      Transparent = True
    end
    object Label3: TLabel
      Left = 230
      Top = 16
      Width = 74
      Height = 13
      Caption = 'Anno di Nascita'
      FocusControl = edBirthYear
      Transparent = True
    end
    object Label4: TLabel
      Left = 24
      Top = 64
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = edFirstName
      Transparent = True
    end
    object Label5: TLabel
      Left = 230
      Top = 64
      Width = 45
      Height = 13
      Caption = 'Cognome'
      FocusControl = edLastName
      Transparent = True
    end
    object Label6: TLabel
      Left = 328
      Top = 16
      Width = 78
      Height = 13
      Caption = 'Luogo di Nascita'
      FocusControl = edBirthPlace
      Transparent = True
    end
    object Label7: TLabel
      Left = 24
      Top = 104
      Width = 23
      Height = 13
      Caption = 'Note'
      FocusControl = edNotes
      Transparent = True
    end
    object Label8: TLabel
      Left = 319
      Top = 116
      Width = 27
      Height = 13
      Caption = 'Ruolo'
      Transparent = True
    end
    object Label9: TLabel
      Left = 24
      Top = 159
      Width = 105
      Height = 13
      Caption = 'Carriera del Giocatore'
      FocusControl = edNotes
      Transparent = True
    end
    object AdvOfficeImage1: TAdvOfficeImage
      Left = 1030
      Top = 16
      Width = 220
      Height = 208
      Stretch = True
      Version = '1.1.1.0'
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 35
      Width = 60
      Height = 21
      Color = clSkyBlue
      DataField = 'anagraph_id'
      DataSource = dsPlayer
      ReadOnly = True
      TabOrder = 0
    end
    object edBirthYear: TDBEdit
      Left = 230
      Top = 35
      Width = 92
      Height = 21
      DataField = 'birth_year'
      DataSource = dsPlayer
      TabOrder = 1
    end
    object edFirstName: TDBEdit
      Left = 24
      Top = 80
      Width = 200
      Height = 21
      DataField = 'first_name'
      DataSource = dsPlayer
      TabOrder = 2
    end
    object edLastName: TDBEdit
      Left = 230
      Top = 80
      Width = 227
      Height = 21
      DataField = 'family_name'
      DataSource = dsPlayer
      TabOrder = 3
    end
    object edBirthPlace: TDBEdit
      Left = 328
      Top = 35
      Width = 129
      Height = 21
      DataField = 'birth_place'
      DataSource = dsPlayer
      TabOrder = 4
    end
    object edNotes: TDBMemo
      Left = 24
      Top = 120
      Width = 289
      Height = 33
      DataField = 'notes'
      DataSource = dsPlayer
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 1064
      Top = 499
      Width = 91
      Height = 25
      Anchors = [akRight, akBottom]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object EnhCRDBGrid1: TEnhCRDBGrid
      Left = 0
      Top = 220
      Width = 721
      Height = 273
      Anchors = [akLeft, akTop, akBottom]
      DataSource = dmFootballPostgres.dsPlayerHistory
      FixedColor = clMenu
      TabOrder = 7
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
          FieldName = 'season_code'
          Title.Caption = 'Anno'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkpSeason'
          Title.Caption = 'Stagione Reale'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'league_code'
          Title.Caption = 'Serie'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkpLeague'
          Title.Caption = 'Campionato Reale'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkpTeam'
          Title.Caption = 'Squadra'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'matches'
          Title.Caption = 'Partite'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'goals'
          Title.Caption = 'Gol'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'minutes'
          Title.Caption = 'Min.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'notes'
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'votes'
          Width = 64
          Visible = True
        end>
    end
    object BitBtn2: TBitBtn
      Left = 1161
      Top = 499
      Width = 91
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Annulla'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 8
    end
    object cboRole: TDBLookupComboBox
      Left = 319
      Top = 132
      Width = 138
      Height = 21
      DataField = 'lkpRoleName'
      DataSource = dsPlayer
      TabOrder = 9
    end
    object edBirthDate: TJvDBDateEdit
      Left = 104
      Top = 35
      Width = 120
      Height = 21
      DataField = 'birth_date'
      DataSource = dsPlayer
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        262FA31D20B5FF00FF4B4B4B5B5B5B87817B87817BFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF82776F5F61BC2126B2666059A3A3A4FAFAFAE3
        E0DCD1CEC99A979582807E7874715D5A58FF00FFFF00FFFF00FFFF00FFA89381
        7B75C42024B2BA9775A3A3A4FFFFFFFFFFFFFFFFFDD6D0CAC8C0B8F6EBDDEDE0
        D1A59B916B6864FF00FFFF00FFA893817873C32024B2B99B7EA3A3A4FEFFFFFF
        FFFF9F9FA07371713535377E7B76FFF5E7FFF2E1878685FF00FFFF00FFA89483
        7873C52024B3BAA18AA3A3A4FEFFFFFFFFFFCACACCF5F3F2FFFDF9353537F3EA
        E0FDF0E2878685FF00FFFF00FFA8978B7876CA2024B2BBA896A3A3A4FEFFFFFF
        FFFFB3B3B4828283A2A1A2353537F8F2EBFDF2E9878685FF00FFFF00FF918984
        7779CF2024B2BCADA0A3A3A4FEFFFFFFFFFF9A9A9B3535377C7C7ECCCCCBFFFE
        FBFCF6EF878685FF00FFFF00FF8E8888787BD42024B1BDB2A9A3A3A4FEFEFFFF
        FFFFBCBCBD353537353537353537FFFEFDFCF9F5878685FF00FFFF00FF8E8C8E
        787EDA2024B1B4B3B9A3A3A4FEFEFEE9E9E9E2E2E2BCBCBCA2A2A3DFDFE0FFFF
        FFFCFBFB878685FF00FFFF00FF8E8F947880DE2023B1B4B3B9A3A3A4FFFFFFA5
        A5A5BBBBBB9F9FA0C6C6C7C5C5C6E2E2E3FEFEFE878685FF00FFFF00FF8E8F95
        7880DF2023B1B4B3B9A3A3A4FFFFFFB9B9B9B3B3B4ACACADA8A8A9B9B9BAE0E0
        E1FFFFFF878685FF00FFFF00FF9091977B83E22023B0B6B5B6A3A3A4FFFFFF79
        7979E1E2E2FBFBFCEDEDEDB9B9B9DBDBDCFFFFFF878685FF00FFFF00FF83848A
        646AD21D23BA6F71919E9DAFBBB9BC7F7D738D8C88EDEAE0E7E7E36465629090
        90FFFFFF878685FF00FFFF00FFFF00FF4141632E317D3034833F43933A3D9440
        42964444605655996D6893736E885E5B61918D8A616161FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF4B4B4BFF00FF3B3D624B4B4B373765FF00FF3333833838
        65141477FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4B4B4B4B
        4B4BFF00FFFF00FF4B4B4E4C4C4CFF00FFFF00FFFF00FFFF00FF}
      ImageKind = ikCustom
      ShowNullDate = False
      TabOrder = 10
    end
    object DBAdvGlowNavigator1: TDBAdvGlowNavigator
      Left = 24
      Top = 178
      Width = 360
      Height = 36
      DataSource = dmFootballPostgres.dsPlayerAlbum
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
      DeleteDisabled = False
      InsertDisabled = False
      GlyphCustomSize = 0
      Orientation = noHorizontal
      TabOrder = 11
      Version = '1.2.1.0'
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 727
      Top = 7
      Width = 297
      Height = 290
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -12
      CaptionFont.Name = 'Segoe UI'
      CaptionFont.Style = []
      Caption = 'Scheda Anagrafica'
      ParentCtl3D = True
      TabOrder = 12
      object Label10: TLabel
        Left = 16
        Top = 28
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit2
        Transparent = True
      end
      object Label11: TLabel
        Left = 16
        Top = 71
        Width = 45
        Height = 13
        Caption = 'Cognome'
        FocusControl = DBEdit7
        Transparent = True
      end
      object Label12: TLabel
        Left = 16
        Top = 120
        Width = 42
        Height = 13
        Caption = 'Telefono'
        FocusControl = DBEdit8
        Transparent = True
      end
      object Label13: TLabel
        Left = 16
        Top = 162
        Width = 41
        Height = 13
        Caption = 'Cellulare'
        FocusControl = DBEdit9
        Transparent = True
      end
      object Label14: TLabel
        Left = 16
        Top = 208
        Width = 24
        Height = 13
        Caption = 'EMail'
        FocusControl = DBEdit10
        Transparent = True
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 44
        Width = 265
        Height = 21
        DataField = 'an_name'
        DataSource = dmFootballAnagraph.dsAnagraph
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 16
        Top = 86
        Width = 265
        Height = 21
        DataField = 'an_last_name'
        DataSource = dmFootballAnagraph.dsAnagraph
        TabOrder = 1
      end
      object DBEdit8: TDBEdit
        Left = 16
        Top = 135
        Width = 265
        Height = 21
        DataField = 'an_phone'
        DataSource = dmFootballAnagraph.dsAnagraph
        TabOrder = 2
      end
      object DBEdit9: TDBEdit
        Left = 16
        Top = 177
        Width = 265
        Height = 21
        DataField = 'an_cellular'
        DataSource = dmFootballAnagraph.dsAnagraph
        TabOrder = 3
      end
      object DBEdit10: TDBEdit
        Left = 16
        Top = 223
        Width = 265
        Height = 21
        DataField = 'an_email'
        DataSource = dmFootballAnagraph.dsAnagraph
        TabOrder = 4
      end
    end
    object EnhCRDBGrid2: TEnhCRDBGrid
      Left = 727
      Top = 312
      Width = 523
      Height = 181
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dsStatistics
      TabOrder = 13
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
          FieldName = 'season_code'
          Title.Caption = 'stagione'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'league_name'
          Title.Caption = 'Campionato'
          Width = 134
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'team_name'
          Title.Caption = 'Squadra'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'played'
          Title.Caption = 'Giocate'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'minutes'
          Title.Caption = 'Minuti'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'goal'
          Title.Caption = 'Gol'
          Width = 24
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'owngoal'
          Title.Caption = 'Auto'
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lostgoal'
          Title.Caption = 'Subiti'
          Width = 33
          Visible = True
        end>
    end
    object btnPhotos: TAdvGlowButton
      Left = 384
      Top = 178
      Width = 73
      Height = 36
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
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
      TabOrder = 14
      Appearance.BorderColor = 13087391
      Appearance.BorderColorHot = 5819121
      Appearance.BorderColorDown = 3181250
      Appearance.BorderColorChecked = 3181250
      Appearance.Color = 16643823
      Appearance.ColorTo = 15784647
      Appearance.ColorChecked = 14285309
      Appearance.ColorCheckedTo = 7131391
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
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
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object btnPicturePhotos: TAdvGlowButton
      Left = 1030
      Top = 230
      Width = 218
      Height = 36
      Caption = 'Carica Immagine da File'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
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
      TabOrder = 15
      Appearance.BorderColor = 13087391
      Appearance.BorderColorHot = 5819121
      Appearance.BorderColorDown = 3181250
      Appearance.BorderColorChecked = 3181250
      Appearance.Color = 16643823
      Appearance.ColorTo = 15784647
      Appearance.ColorChecked = 14285309
      Appearance.ColorCheckedTo = 7131391
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
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
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 1030
      Top = 265
      Width = 218
      Height = 36
      Caption = 'Aggiorna Carriera Giocatore'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotPicture.Data = {
        424DF80600000000000036000000280000001800000018000000010018000000
        000000000000120B0000120B00000000000000000000FF00FFFF00FFFF00FFFF
        00FF070A9A100FA7FF00FF3232324141416D6760FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF191F802630CC0A09874B453FB69674B4B4B5E2E0DDB7B4B082
        7F7D6866643232326D6760FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF695C4E695D9A2630CC0A0987AB845CAB845CB4B4
        B5FFFFFEFFFCFAFFFAF4FFF7EFFFF4E9D3C9BF9C958C7A756E514E4B3232326D
        6760FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8F78607567A12630CC0A0987
        AC8760AB8760B4B4B5FFFFFFFFFFFEFFFCFAFFFAF4FFF7EFFFF4E9FFF2E3FFEF
        DEFFEDD9F0DDC9B7A9998F837842413FFF00FFFF00FFFF00FFFF00FF8F786075
        67A12630CC0A0987AC8A67AC8A66B4B4B5FFFFFFFFFFFFFFFFFEFFFCFA82807F
        4D4B4B4D4A4967635FEEE0D0FFEDD9FFEAD4FFE7CF6D675FFF00FFFF00FFFF00
        FFFF00FF8F78607567A12630CC0A0987AD8F6DAD8E6EB4B4B5FFFFFFFFFFFFFF
        FFFF9F9FA01F1F21918F8CAFAAA62A292B595653FFEFDEFFEDD9FFEAD46D6760
        FF00FFFF00FFFF00FFFF00FF8F78627567A32630CC0A0987AF9275AF9276B4B4
        B5FFFFFFFFFFFFFFFFFFBFBFBF9F9FA0FFFCFAFFFAF49F9C981F1F21FFF2E3FF
        EFDEFFEDD96D6863FF00FFFF00FFFF00FFFF00FF8F7B677569A92630CC0A0987
        AF987EAF987FB4B4B5FFFFFFFFFFFFFFFFFFEEEEEFBFBFBFFFFFFEFFFCFABFBB
        B71F1F21FFF4EAFFF2E5FFEFDE6D6964FF00FFFF00FFFF00FFFF00FF8F7E6C75
        6CAF2630CC0A0987B09D87B09C86B4B4B5FFFFFFFFFFFFFFFFFFBFBFBF1F1F21
        59595B828282414141353535FFF7EFFFF4EAFFF2E56D6965FF00FFFF00FFFF00
        FFFF00FF72695E756FB62630CC0A0987B19F8EB1A08EB4B4B5FFFFFFFFFFFFFF
        FFFFBFBFBF1F1F213535361F1F21353536CECCCAFFFAF4FFF7EFFFF4EA6D6A67
        FF00FFFF00FFFF00FFFF00FF6D675F7672BC2630CC0A0987B2A495B1A495B4B4
        B5FFFFFFFFFFFFFFFFFFEEEEEF1F1F21FFFFFFFFFFFFFFFFFFFFFFFEFFFCFAFF
        FAF4FFF7EF6D6B68FF00FFFF00FFFF00FFFF00FF6D68637675C22630CC0A0987
        B2A699B2A699B4B4B5FFFFFFFFFFFFFFFFFFFFFFFF1F1F211F1F214D4D4E4D4D
        4EAFAFB0FFFFFFFFFCFAFFFAF46D6B6AFF00FFFF00FFFF00FFFF00FF6D6A6776
        77CA2630CC0A0987A7A7ABA7A7ABB4B4B5FFFFFFFFFFFFFFFFFFFFFFFFBFBFBF
        AFAFB0828283828283DEDEDEFFFFFFFFFFFFFFFCFA6D6C6BFF00FFFF00FFFF00
        FFFF00FF6D6C6A767AD02630CC0A0987A7A7ABA7A7ABB4B4B5FFFFFFFFFFFF82
        8283919192FFFFFF919192BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D6D6D
        FF00FFFF00FFFF00FFFF00FF6D6D6D767DD52630CC0A0987A7A7ABA7A7ABB4B4
        B5FFFFFFFFFFFF676768BFBFBFAFAFB059595BAFAFB09F9FA0828283AFAFB0FF
        FFFFFFFFFF6D6D6DFF00FFFF00FFFF00FFFF00FF6D6D6D767DD52630CC0A0987
        A7A7ABA7A7ABB4B4B5FFFFFFFFFFFF4D4D4E6767689F9FA0747476BFBFBF7474
        76FFFFFFCECECFFFFFFFFFFFFF6D6D6DFF00FFFF00FFFF00FFFF00FF6D6D6D76
        7DD52630CC0A0987A7A7ABA7A7ABB4B4B5FFFFFFFFFFFFBFBFBFFFFFFFEEEEEF
        BFBFBF9F9FA09F9FA0828283AFAFB0FFFFFFFFFFFF6D6D6DFF00FFFF00FFFF00
        FFFF00FF6D6D6D767DD52630CC0A0987A7A7ABA7A7ABB4B4B5FFFFFFC5C5C500
        0000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFAFAFB0CECECFFFFFFFFFFFFF6D6D6D
        FF00FFFF00FFFF00FFFF00FF6D6D6D767DD52630CC0A0987767676696969B4B4
        B5B7B7B7B5B5B64F4F4F5D5D5DFFFFFFFFFFFFFFFFFFFFFFFF000000686868FF
        FFFFFFFFFF6D6D6DFF00FFFF00FFFF00FFFF00FF4E4E4E353887080C9C181FB0
        1E237F43459654518E4E4C72757076696560323232827B758F89827574738F8F
        8F5858583C3C3CAAAAAAFFFFFF6D6D6DFF00FFFF00FFFF00FFFF00FFFF00FF32
        32322B2B3A1D1D4A1A1A4E1F256B1C2070171D8B1115800D119A323232141783
        313286403B835C527A4A4363423F4346423F524B44323232FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF323232323232FF00FF32
        32323232321D1D4A2A284F1C1D651F20681415821F1F5818185207076EFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF323232323232323232FF00FFFF00FF323232323232FF00FF323232323232FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3232323232
        32323232FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000}
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D760600000000000036040000280000001500000018000000010008000000
        000040020000C30E0000C30E0000000100000001000039424200424A4A005A52
        52004A5A52005A6B630052526B005A636B00636B6B00636B73007B7373006B7B
        73005A527B007B7B7B00847B7B008C8484007B8C84008C8C84006B6B8C00736B
        8C007B7B8C00948C8C007B7B94007B8C9400848C94008C8C94008C9494009494
        94009C9C940094949C009C949C009C9C9C00A59C9C00A5A5A5009C9CAD00ADA5
        AD00ADADAD00BDBDAD00BDC6AD00087BB5009C94B500B5ADB500B5B5B500BDB5
        B500BDC6B500C6CEB5004A6BBD00B5BDBD00C6BDBD00C6CEBD00088CC600B5C6
        C600BDC6C600C6C6C600BDCEC600C6CEC600CECEC600BDC6CE00CECECE00D6D6
        CE00C6CED600CED6D600D6D6D600DEDED600BDB5DE00D6D6DE00DEDEDE00E7DE
        DE00EFF7DE00D6DEE700DEDEE700E7DEE700EFF7E700F7F7E700D6D6EF00DEE7
        EF00EFE7EF00EFEFEF00F7F7EF00E7DEF700EFEFF700EFF7F700FFF7F700FFFF
        F700FF00FF00EFE7FF00FFF7FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0053535353535353535353
        5353535353535353535353000000535353535353535353535353535353535353
        535353000000535353532D18101B105353535353535353535353530000005353
        31262D0C103E231E1A1F105353535353535353000000535331262D1C2B4C4C3E
        3423281B10535353535353000000535331262D1C304C57554C4C4C4C2F231E10
        535353000000535331262D1C244C574B281D03234C4C34105353530000005353
        31262D1C2B47573D03281F142A4C3E10535353000000535331262D1C30485741
        295252030E523A10535353000000535331262D1C2C4757412228200320513A10
        535353000000535331262D1C254357390309021D4D4D3E105353530000005353
        31262D1C2C47573D030D0352514D3E10535353000000535331262D1C364C574C
        22221E09524D3E10535353000000535331262D1C384C4F5252525252484C4210
        535353000000535331262D1C3B503E031A1D371A484C46105353530000005353
        31262D1C32503C3E34031A3403545410535353000000535331262D1C35562E19
        4B40343645544910535353000000535331262D1C384A21034E555720194F4010
        5353530000005353312D2D111C1C1503273F440A033333105353530000005353
        532D2D2D2D2D03050B12130703040F1053535300000053535353262626262D2D
        2D2D0503010008105353530000005353535353535326262626262D2D06171653
        5353530000005353535353535353535353262626265353535353530000005353
        53535353535353535353535353535353535353000000}
      Rounded = True
      TabOrder = 16
      OnClick = AdvGlowButton1Click
      Appearance.BorderColor = 13087391
      Appearance.BorderColorHot = 5819121
      Appearance.BorderColorDown = 3181250
      Appearance.BorderColorChecked = 3181250
      Appearance.Color = 16643823
      Appearance.ColorTo = 15784647
      Appearance.ColorChecked = 14285309
      Appearance.ColorCheckedTo = 7131391
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
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
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object AdvGlowButton2: TAdvGlowButton
      Left = 456
      Top = 178
      Width = 81
      Height = 36
      Caption = 'Esporta Carriera'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 4
      Images = frmMdcFootballChampionship.ImageList
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Rounded = True
      TabOrder = 17
      OnClick = AdvGlowButton2Click
      Appearance.BorderColor = 13087391
      Appearance.BorderColorHot = 5819121
      Appearance.BorderColorDown = 3181250
      Appearance.BorderColorChecked = 3181250
      Appearance.Color = 16643823
      Appearance.ColorTo = 15784647
      Appearance.ColorChecked = 14285309
      Appearance.ColorCheckedTo = 7131391
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
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
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object dsPlayer: TDataSource
    DataSet = dmFootballPostgres.qryAllPlayers
    Left = 200
    Top = 312
  end
  object JanuaDialog1: TJanuaDialog
    DialogType = jdtWarning
    Left = 279
    Top = 339
  end
  object AdvFormStyler1: TAdvFormStyler
    Style = tsOffice2010Blue
    AppStyle = frmMdcFootballChampionship.AdvAppStyler1
    Left = 280
    Top = 280
  end
  object dsStatistics: TDataSource
    DataSet = dmFootballPostgres.qryStatsPlayer
    Left = 112
    Top = 288
  end
end
