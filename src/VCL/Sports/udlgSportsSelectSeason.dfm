object dlgSportsSelectSeason: TdlgSportsSelectSeason
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Selezionare il Campionat per la Stagione'
  ClientHeight = 531
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    492
    531)
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 294
    Top = 488
    Width = 88
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Kind = bkOK
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 393
    Top = 488
    Width = 88
    Height = 25
    Caption = 'Annulla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
  end
  object grdChampionships: TEnhCRDBGrid
    Left = 8
    Top = 40
    Width = 473
    Height = 442
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsSelectLeagues
    FixedColor = clSkyBlue
    TabOrder = 2
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
        FieldName = 'league_id'
        Title.Caption = 'ID'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'league_name'
        Title.Caption = 'Campionato'
        Width = 235
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'iso_country_code'
        Title.Caption = 'Cod Nazione'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'league_position'
        Title.Caption = 'Posizione'
        Width = 64
        Visible = True
      end>
  end
  object DBNavigator3: TDBAdvGlowNavigator
    Left = 8
    Top = 8
    Width = 468
    Height = 26
    DataSource = dsSelectLeagues
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbSearch, nbSetBookmark, nbGotoBookMark]
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
    GlyphSize = gsSmall
    GlyphCustomSize = 0
    Orientation = noHorizontal
    TabOrder = 3
    Version = '1.2.1.0'
  end
  object dsSelectLeagues: TDataSource
    Left = 168
    Top = 472
  end
end
