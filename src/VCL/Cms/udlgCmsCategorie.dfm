object dlgCmsCategorie: TdlgCmsCategorie
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gestione Categorie'
  ClientHeight = 451
  ClientWidth = 946
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object Shader1: TShader
    Left = 0
    Top = 392
    Width = 946
    Height = 59
    Align = alBottom
    TabOrder = 0
    FromColor = 16250613
    ToColor = 16250613
    Direction = False
    Version = '1.4.2.1'
    object AdvGlowButton1: TAdvGlowButton
      Left = 416
      Top = 6
      Width = 100
      Height = 41
      Caption = 'Ok '
      ModalResult = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Rounded = False
      TabOrder = 0
      OnClick = AdvGlowButton1Click
      Appearance.BorderColor = 15000546
      Appearance.BorderColorHot = 16371364
      Appearance.BorderColorDown = 14983778
      Appearance.BorderColorChecked = 14327846
      Appearance.Color = 16250613
      Appearance.ColorTo = clNone
      Appearance.ColorChecked = 14327846
      Appearance.ColorCheckedTo = clNone
      Appearance.ColorDisabled = 16250871
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 16244937
      Appearance.ColorDownTo = clNone
      Appearance.ColorHot = 16248808
      Appearance.ColorHotTo = clNone
      Appearance.ColorMirror = 16250613
      Appearance.ColorMirrorTo = clNone
      Appearance.ColorMirrorHot = 16248808
      Appearance.ColorMirrorHotTo = clNone
      Appearance.ColorMirrorDown = 16244937
      Appearance.ColorMirrorDownTo = clNone
      Appearance.ColorMirrorChecked = 14327846
      Appearance.ColorMirrorCheckedTo = clNone
      Appearance.ColorMirrorDisabled = 16250871
      Appearance.ColorMirrorDisabledTo = clNone
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Appearance.TextColorChecked = clWhite
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 265
    Height = 392
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 1
    object CRDBGrid1: TCRDBGrid
      Left = 1
      Top = 26
      Width = 263
      Height = 365
      Align = alClient
      DataSource = dmCMSViewModel.dsMainArguments
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'pos'
          Title.Caption = 'Pos.'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'main_argument_des'
          Title.Caption = 'Nome Menu'
          Width = 160
          Visible = True
        end>
    end
    object DBAdvNavigator1: TDBAdvNavigator
      Left = 1
      Top = 1
      Width = 263
      Height = 25
      AutoThemeAdapt = False
      DataSource = dmCMSViewModel.dsMainArguments
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      Align = alTop
      Color = clBtnFace
      ColorTo = clNone
      ColorDown = 14210002
      ColorDownTo = clNone
      ColorHot = 13289415
      ColorHotTo = clNone
      DeleteDisabled = False
      InsertDisabled = False
      GlyphSize = gsSmall
      GlyphCustomSize = 0
      Orientation = noHorizontal
      TabOrder = 1
      Version = '1.3.1.2'
    end
  end
  object Panel2: TPanel
    Left = 265
    Top = 0
    Width = 681
    Height = 392
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    object CRDBGrid2: TCRDBGrid
      Left = 1
      Top = 26
      Width = 679
      Height = 365
      Align = alClient
      DataSource = dmCMSViewModel.dsArguments
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'pos'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'argument_des'
          Title.Caption = 'Argomento'
          Width = 345
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkpLeague'
          Title.Caption = 'Campionato'
          Width = 220
          Visible = True
        end>
    end
    object DBNavigator1: TDBAdvNavigator
      Left = 1
      Top = 1
      Width = 679
      Height = 25
      AutoThemeAdapt = False
      DataSource = dmCMSViewModel.dsArguments
      Align = alTop
      Color = clBtnFace
      ColorTo = clNone
      ColorDown = 14210002
      ColorDownTo = clNone
      ColorHot = 13289415
      ColorHotTo = clNone
      DeleteDisabled = False
      InsertDisabled = False
      GlyphSize = gsSmall
      GlyphCustomSize = 0
      Orientation = noHorizontal
      TabOrder = 1
      Version = '1.3.1.2'
    end
  end
  object AdvFormStyler1: TAdvFormStyler
    Style = tsWindows10
    Left = 344
    Top = 216
  end
end
