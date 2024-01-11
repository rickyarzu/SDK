inherited frmMdcChampionship: TfrmMdcChampionship
  Caption = 'Padel Championships'
  ClientHeight = 677
  ClientWidth = 1420
  Color = clBtnFace
  Position = poDesigned
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 1432
  ExplicitHeight = 735
  TextHeight = 13
  object Splitter1: TAdvSplitter [0]
    Left = 1170
    Top = 33
    Width = 4
    Height = 644
    Align = alRight
    Beveled = True
    Color = clSkyBlue
    ParentColor = False
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = 16250613
    Appearance.ColorTo = 16250613
    Appearance.ColorHot = 16248808
    Appearance.ColorHotTo = 16248808
    GripStyle = sgDots
    UIStyle = tsWindows10
    ExplicitLeft = 1107
    ExplicitTop = 32
    ExplicitHeight = 696
  end
  object splitpnlChampionshipsList: TAdvSplitter [1]
    Left = 409
    Top = 33
    Width = 4
    Height = 644
    Beveled = True
    Color = clSkyBlue
    ParentColor = False
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = 16250613
    Appearance.ColorTo = 16250613
    Appearance.ColorHot = 16248808
    Appearance.ColorHotTo = 16248808
    GripStyle = sgDots
    UIStyle = tsWindows10
    ExplicitLeft = 169
    ExplicitTop = 0
    ExplicitHeight = 734
  end
  object splitpnlSeasons: TAdvSplitter [2]
    Left = 161
    Top = 33
    Width = 4
    Height = 644
    Beveled = True
    Color = clSkyBlue
    ParentColor = False
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = 16250613
    Appearance.ColorTo = 16250613
    Appearance.ColorHot = 16248808
    Appearance.ColorHotTo = 16248808
    GripStyle = sgDots
    UIStyle = tsWindows10
    ExplicitLeft = 235
    ExplicitTop = 1
    ExplicitHeight = 702
  end
  object pnlSeasons: TShader [3]
    Left = 0
    Top = 33
    Width = 161
    Height = 644
    Align = alLeft
    TabOrder = 0
    Visible = False
    FromColor = 16250613
    ToColor = 16250613
    Direction = False
    Version = '1.4.2.1'
    ExplicitHeight = 643
    object Panel47: TShader
      Left = 1
      Top = 1
      Width = 159
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = 13627626
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      FromColor = 16250613
      ToColor = 16250613
      Direction = False
      Version = '1.4.2.1'
      object Label4: TLabel
        Left = 86
        Top = 2
        Width = 42
        Height = 13
        Caption = 'Stagione'
        Transparent = True
      end
      object DBNavigator4: TDBAdvGlowNavigator
        Left = 0
        Top = 0
        Width = 80
        Height = 41
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alLeft
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
        Style = tsWindows10
        TabOrder = 0
        Version = '1.2.1.0'
      end
      object ButtonedEdit3: TButtonedEdit
        Left = 79
        Top = 18
        Width = 80
        Height = 21
        Images = ImageList1
        ParentShowHint = False
        RightButton.DisabledImageIndex = 17
        RightButton.Hint = 'Ricerca la squadra'
        RightButton.HotImageIndex = 18
        RightButton.ImageIndex = 16
        RightButton.PressedImageIndex = 17
        RightButton.Visible = True
        ShowHint = True
        TabOrder = 1
        TextHint = 'Stagione'
      end
    end
    object grdSeasons: TEnhCRDBGrid
      Left = 1
      Top = 42
      Width = 159
      Height = 601
      Align = alClient
      DataSource = dmUniDacPgChampionships.dsSeasons
      FixedColor = 16250613
      TabOrder = 1
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
          FieldName = 'season_id'
          Title.Caption = 'id'
          Width = 24
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'season_des'
          Title.Caption = 'Stagione'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'season_code'
          Title.Caption = 'Abb.'
          Width = 41
          Visible = True
        end>
    end
  end
  object Panel1: TShader [4]
    Left = 1174
    Top = 33
    Width = 246
    Height = 644
    Align = alRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    FromColor = 16250613
    ToColor = 16250613
    Direction = False
    Version = '1.4.2.1'
    ExplicitLeft = 1170
    ExplicitHeight = 643
    object Splitter7: TAdvSplitter
      Left = 1
      Top = 290
      Width = 244
      Height = 5
      Cursor = crVSplit
      Align = alBottom
      Color = clSkyBlue
      ParentColor = False
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = 16250613
      Appearance.ColorTo = 16250613
      Appearance.ColorHot = 16248808
      Appearance.ColorHotTo = 16248808
      GripStyle = sgDots
      UIStyle = tsWindows10
      ExplicitLeft = 6
      ExplicitTop = 345
    end
    object Panel50: TShader
      Left = 1
      Top = 1
      Width = 244
      Height = 96
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      FromColor = 16250613
      ToColor = 16250613
      Direction = False
      Version = '1.4.2.1'
      object Label2: TLabel
        Left = 1
        Top = 61
        Width = 95
        Height = 13
        Align = alBottom
        Caption = 'Nome del Calciatore'
        Transparent = True
      end
      object DBAdvNavigator4: TDBAdvGlowNavigator
        Left = 1
        Top = 1
        Width = 242
        Height = 26
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
        Align = alTop
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
        Style = tsWindows10
        TabOrder = 0
        Version = '1.2.1.0'
      end
      object ButtonedEditPlayers: TButtonedEdit
        Left = 1
        Top = 74
        Width = 242
        Height = 21
        Align = alBottom
        Images = ImageList1
        ParentShowHint = False
        RightButton.DisabledImageIndex = 17
        RightButton.Hint = 'Ricerca la squadra'
        RightButton.HotImageIndex = 18
        RightButton.ImageIndex = 16
        RightButton.PressedImageIndex = 17
        RightButton.Visible = True
        ShowHint = True
        TabOrder = 1
        TextHint = 'Nome e/o cognome del giocatore'
        OnChange = ButtonedEditPlayersChange
        OnKeyUp = ButtonedEditPlayersKeyUp
      end
      object Panel52: TShader
        Left = 1
        Top = 27
        Width = 242
        Height = 34
        Align = alClient
        TabOrder = 2
        FromColor = 16250613
        ToColor = 16250613
        Direction = False
        Version = '1.4.2.1'
        object btnPlayerEdit: TAdvGlowButton
          Left = 49
          Top = 1
          Width = 46
          Height = 32
          Align = alLeft
          Caption = 'Vedi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 19
          Images = ImageList
          DisabledImages = ImageListDisabled
          HotImages = ImageListHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Rounded = False
          TabOrder = 0
          OnClick = btnPlayerEditClick
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
          Appearance.TextColorDisabled = 13948116
          Layout = blGlyphTop
          UIStyle = tsWindows10
        end
        object btnPlayerAssign: TAdvGlowButton
          Left = 1
          Top = 1
          Width = 48
          Height = 32
          Align = alLeft
          Caption = 'Assegna'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 13
          Images = ImageList
          DisabledImages = ImageListDisabled
          HotImages = ImageListHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Rounded = False
          TabOrder = 1
          OnClick = btnPlayerAssignClick
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
          Appearance.TextColorDisabled = 13948116
          Layout = blGlyphTop
          UIStyle = tsWindows10
        end
        object btnPlayerAdd: TAdvGlowButton
          Left = 95
          Top = 1
          Width = 42
          Height = 32
          Align = alLeft
          Caption = 'Nuovo '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 15
          Images = ImageList
          DisabledImages = ImageListDisabled
          HotImages = ImageListHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Rounded = False
          TabOrder = 2
          OnClick = btnPlayerAddClick
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
          Appearance.TextColorDisabled = 13948116
          Layout = blGlyphTop
          UIStyle = tsWindows10
        end
        object btnRetirePlayer: TAdvGlowButton
          Left = 137
          Top = 1
          Width = 56
          Height = 32
          Align = alLeft
          Caption = 'Pensiona'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 17
          Images = ImageList
          DisabledImages = ImageListDisabled
          HotImages = ImageListHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Rounded = False
          TabOrder = 3
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
          Appearance.TextColorDisabled = 13948116
          Layout = blGlyphTop
          UIStyle = tsWindows10
        end
        object btnPlayerInherit: TAdvGlowButton
          Left = 193
          Top = 1
          Width = 56
          Height = 32
          Align = alLeft
          Caption = 'Eredita'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 14
          Images = ImageList
          DisabledImages = ImageListDisabled
          HotImages = ImageListHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Rounded = False
          TabOrder = 4
          OnClick = btnPlayerInheritClick
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
          Appearance.TextColorDisabled = 13948116
          Layout = blGlyphTop
          UIStyle = tsWindows10
        end
      end
    end
    object grdAllPlayers: TEnhCRDBGrid
      Left = 1
      Top = 121
      Width = 244
      Height = 169
      Align = alClient
      DataSource = dsAllPlayers
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
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
          FieldName = 'fullname'
          Width = 220
          Visible = True
        end>
    end
    object grdSelectAllPlayers: TDBGrid
      Left = 1
      Top = 97
      Width = 244
      Height = 24
      Align = alTop
      DataSource = dsAllPlayers
      Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'season_code'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkpTeam'
          Width = 180
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 295
      Width = 244
      Height = 348
      Align = alBottom
      Caption = 'Panel2'
      TabOrder = 3
      ExplicitTop = 294
      object grdMatchTeamAllPlayers: TEnhCRDBGrid
        Left = 1
        Top = 40
        Width = 242
        Height = 307
        Align = alClient
        DataSource = dmUniDacPgChampionships.dsMatchTeamAllPlayers
        Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = grdMatchTeamAllPlayersDblClick
        HighlightBGColor = clBlack
        HighlightFont.Charset = DEFAULT_CHARSET
        HighlightFont.Color = clWindowText
        HighlightFont.Height = -11
        HighlightFont.Name = 'Tahoma'
        HighlightFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'fullname'
            Title.Caption = 'Giocatore'
            Width = 240
            Visible = True
          end>
      end
      object DBAdvGlowNavigator3: TDBAdvGlowNavigator
        Left = 1
        Top = 1
        Width = 242
        Height = 18
        VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete, nbCancel, nbRefresh]
        Align = alTop
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
        Style = tsWindows10
        TabOrder = 1
        Version = '1.2.1.0'
      end
      object btnEditMatchTeamPlayer: TButtonedEdit
        Left = 1
        Top = 19
        Width = 242
        Height = 21
        Align = alTop
        Images = ImageList1
        ParentShowHint = False
        RightButton.DisabledImageIndex = 17
        RightButton.Hint = 'Ricerca la squadra'
        RightButton.HotImageIndex = 18
        RightButton.ImageIndex = 16
        RightButton.PressedImageIndex = 17
        RightButton.Visible = True
        ShowHint = True
        TabOrder = 2
        TextHint = 'Nome e/o cognome del giocatore'
        OnChange = btnEditMatchTeamPlayerChange
      end
    end
  end
  object AdvOfficePager1: TAdvOfficePager [5]
    Left = 413
    Top = 33
    Width = 757
    Height = 644
    AdvOfficePagerStyler = AdvOfficePagerOfficeStyler1
    Align = alClient
    ActivePage = pgCalendarMatches
    ButtonSettings.CloseButtonPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001000001010100000100
      0000000202000100020200000000000202020002020200000000010002020202
      0200010000000101000202020001010000000100020202020200010000000002
      0202000202020000000000020200010002020000000001000001010100000100
      0000}
    ButtonSettings.PageListButtonPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000101010100
      0000010101000200010101000000010100020202000101000000010002020202
      0200010000000002020200020202000000000002020001000202000000000100
      0001010100000100000001010101010101010100000001010101010101010100
      0000}
    ButtonSettings.ScrollButtonPrevPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000001010100
      0000010101000202000101000000010100020202000101000000010002020200
      0101010000000002020200010101010000000100020202000101010000000101
      0002020200010100000001010100020200010100000001010101000001010100
      0000}
    ButtonSettings.ScrollButtonNextPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010000010101010100
      0000010002020001010101000000010002020200010101000000010100020202
      0001010000000101010002020200010000000101000202020001010000000100
      0202020001010100000001000202000101010100000001010000010101010100
      0000}
    ButtonSettings.ScrollButtonFirstPicture.Data = {
      424DC60400000000000036040000280000001000000009000000010008000000
      000000000000C40E0000C40E00000001000000010000427B84FFDEEFEFFFFFFF
      FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF01010101010000010101
      0101000001010101010100020200010101000202000101010100020202000101
      0002020200010101000202020001010002020200010101000202020001010002
      0202000101010101000202020001010002020200010101010100020202000101
      0002020200010101010100020200010101000202000101010101010000010101
      010100000101}
    ButtonSettings.ScrollButtonLastPicture.Data = {
      424DC60400000000000036040000280000001000000009000000010008000000
      000000000000C40E0000C40E00000001000000010000427B84FFDEEFEFFFFFFF
      FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF01010000010101010100
      0001010101010100020200010101000202000101010101000202020001010002
      0202000101010101000202020001010002020200010101010100020202000101
      0002020200010101000202020001010002020200010101000202020001010002
      0202000101010100020200010101000202000101010101010000010101010100
      000101010101}
    ButtonSettings.ClosedListButtonPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000101010100
      0000010101000200010101000000010100020202000101000000010002020202
      0200010000000002020200020202000000000002020001000202000000000100
      0001010100000100000001010101010101010100000001010101010101010100
      0000}
    ButtonSettings.CloseButtonHint = 'Close'
    ButtonSettings.InsertButtonHint = 'Insert new page'
    ButtonSettings.PageListButtonHint = 'Page List'
    ButtonSettings.ScrollButtonNextHint = 'Next'
    ButtonSettings.ScrollButtonPrevHint = 'Previous'
    ButtonSettings.ScrollButtonFirstHint = 'First'
    ButtonSettings.ScrollButtonLastHint = 'Last'
    ButtonSettings.ClosedListButtonHint = 'Closed Pages'
    DoubleBuffered = True
    TabSettings.Rounding = 0
    Text = ''
    ShowShortCutHints = False
    TabOrder = 2
    ExplicitWidth = 753
    ExplicitHeight = 643
    NextPictureChanged = False
    PrevPictureChanged = False
    object pgChampionships: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 755
      Height = 616
      Caption = 'Campionati e Squadre'
      DoubleBuffered = True
      ImageIndex = 1
      PageAppearance.BorderColor = 14474202
      PageAppearance.Color = 16250613
      PageAppearance.ColorTo = 16250613
      PageAppearance.ColorMirror = 16250613
      PageAppearance.ColorMirrorTo = 16250613
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      Text = ''
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 15527147
      TabAppearance.BorderColorSelected = 14474202
      TabAppearance.BorderColorSelectedHot = 14474202
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = 14474202
      TabAppearance.Color = clWhite
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16250613
      TabAppearance.ColorSelectedTo = 16250613
      TabAppearance.ColorDisabled = 15921906
      TabAppearance.ColorDisabledTo = 15921906
      TabAppearance.ColorHot = 16776701
      TabAppearance.ColorHotTo = clNone
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 16776701
      TabAppearance.ColorMirrorHotTo = clNone
      TabAppearance.ColorMirrorSelected = 16250613
      TabAppearance.ColorMirrorSelectedTo = 16250613
      TabAppearance.ColorMirrorDisabled = 15921906
      TabAppearance.ColorMirrorDisabledTo = 15921906
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Tahoma'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggVertical
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = clBlack
      TabAppearance.TextColorSelected = clBlack
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = clNone
      TabAppearance.HighLightColor = clNone
      TabAppearance.HighLightColorHot = clNone
      TabAppearance.HighLightColorSelected = clNone
      TabAppearance.HighLightColorSelectedHot = clNone
      TabAppearance.HighLightColorDown = clNone
      TabAppearance.DrawLine = False
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = clNone
      TabAppearance.BackGround.Direction = gdHorizontal
      OnShow = pgChampionshipsShow
      object Splitter2: TAdvSplitter
        Left = 329
        Top = 2
        Width = 4
        Height = 613
        Beveled = True
        Color = clSkyBlue
        ParentColor = False
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = 16250613
        Appearance.ColorTo = 16250613
        Appearance.ColorHot = 16248808
        Appearance.ColorHotTo = 16248808
        GripStyle = sgDots
        UIStyle = tsWindows10
        ExplicitLeft = 234
        ExplicitHeight = 702
      end
      object pnlTeamMembersList: TShader
        Left = 333
        Top = 2
        Width = 420
        Height = 613
        Align = alClient
        TabOrder = 0
        FromColor = 16250613
        ToColor = 16250613
        Direction = False
        Version = '1.4.2.1'
        ExplicitWidth = 416
        ExplicitHeight = 611
        object Panel28: TShader
          Left = 1
          Top = 1
          Width = 418
          Height = 24
          Align = alTop
          Caption = 'Rose delle Squadre Iscritte'
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 0
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          ExplicitWidth = 414
          object Label9: TLabel
            Left = 72
            Top = 8
            Width = 3
            Height = 13
          end
        end
        object Panel29: TShader
          Left = 1
          Top = 25
          Width = 418
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          ExplicitWidth = 414
          object Button6: TAdvGlowButton
            Left = 0
            Top = 0
            Width = 201
            Height = 24
            Align = alLeft
            Caption = 'Rosa Stagione Scorsa e Tesserati Club'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Rounded = False
            TabOrder = 0
            OnClick = Button6Click
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
            Appearance.TextColorDisabled = 13948116
            UIStyle = tsWindows10
          end
          object AdvGlowButton13: TAdvGlowButton
            Left = 201
            Top = 0
            Width = 143
            Height = 24
            Align = alLeft
            Caption = 'Esporta Rosa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Rounded = False
            TabOrder = 1
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
            Appearance.TextColorDisabled = 13948116
            DropDownButton = True
            DropDownMenu = popRosaChampionship
            UIStyle = tsWindows10
          end
        end
        object grdTeamsChampPlayers: TCRDBGrid
          Left = 1
          Top = 167
          Width = 418
          Height = 445
          Align = alClient
          DataSource = dsTeamsChampPlayers
          FixedColor = 16250613
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'player_id'
              Title.Caption = 'id'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fullname'
              Width = 256
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'minutes'
              Title.Caption = 'Min.'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'goal'
              Title.Caption = 'Gol'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lostgoal'
              Title.Caption = 'Sub.'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'owngoal'
              Title.Caption = 'Aut.'
              Width = 25
              Visible = True
            end>
        end
        object Panel36: TShader
          Left = 1
          Top = 149
          Width = 418
          Height = 18
          Align = alTop
          Caption = 'Giocatori della Rosa'
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 3
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          ExplicitWidth = 414
        end
        object Panel37: TShader
          Left = 1
          Top = 49
          Width = 418
          Height = 18
          Align = alTop
          Caption = 'Allenatori della Rosa'
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 4
          Visible = False
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          ExplicitWidth = 414
        end
        object Shader6: TShader
          Left = 1
          Top = 67
          Width = 418
          Height = 82
          Align = alTop
          TabOrder = 5
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          ExplicitWidth = 414
          object Label6: TLabel
            Left = 6
            Top = 4
            Width = 45
            Height = 13
            Caption = 'Cognome'
            FocusControl = DBEdit1
            Transparent = True
          end
          object Label7: TLabel
            Left = 152
            Top = 4
            Width = 27
            Height = 13
            Caption = 'Nome'
            FocusControl = DBEdit2
            Transparent = True
          end
          object Label10: TLabel
            Left = 281
            Top = 4
            Width = 34
            Height = 13
            Caption = 'Nato il:'
            FocusControl = DBEdit2
            Transparent = True
          end
          object Label11: TLabel
            Left = 5
            Top = 44
            Width = 19
            Height = 13
            Caption = 'Gol:'
            FocusControl = DBEdit2
            Transparent = True
          end
          object Label12: TLabel
            Left = 41
            Top = 44
            Width = 30
            Height = 13
            Caption = 'Subiti:'
            FocusControl = DBEdit2
            Transparent = True
          end
          object Label13: TLabel
            Left = 82
            Top = 44
            Width = 37
            Height = 13
            Caption = 'Autogol'
            FocusControl = DBEdit2
            Transparent = True
          end
          object Label14: TLabel
            Left = 125
            Top = 44
            Width = 46
            Height = 13
            Caption = 'Espulsioni'
            FocusControl = DBEdit2
            Transparent = True
          end
          object Label15: TLabel
            Left = 227
            Top = 44
            Width = 28
            Height = 13
            Caption = 'Minuti'
            FocusControl = DBEdit2
            Transparent = True
          end
          object Label16: TLabel
            Left = 176
            Top = 44
            Width = 42
            Height = 13
            Caption = 'Infortuni'
            FocusControl = DBEdit2
            Transparent = True
          end
          object Label18: TLabel
            Left = 271
            Top = 44
            Width = 32
            Height = 13
            Caption = 'Partite'
            FocusControl = DBEdit2
            Transparent = True
          end
          object DBEdit1: TDBEdit
            Left = 5
            Top = 20
            Width = 140
            Height = 21
            DataField = 'family_name'
            DataSource = dsTeamsChampPlayers
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 151
            Top = 20
            Width = 124
            Height = 21
            DataField = 'first_name'
            DataSource = dsTeamsChampPlayers
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 282
            Top = 20
            Width = 79
            Height = 21
            DataField = 'birth_date'
            DataSource = dsTeamsChampPlayers
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 5
            Top = 60
            Width = 28
            Height = 21
            DataField = 'goal'
            DataSource = dsTeamsChampPlayers
            TabOrder = 3
          end
          object DBEdit5: TDBEdit
            Left = 39
            Top = 60
            Width = 32
            Height = 21
            DataField = 'lostgoal'
            DataSource = dsTeamsChampPlayers
            TabOrder = 4
          end
          object DBEdit6: TDBEdit
            Left = 78
            Top = 60
            Width = 41
            Height = 21
            DataField = 'owngoal'
            DataSource = dsTeamsChampPlayers
            TabOrder = 5
          end
          object DBEdit7: TDBEdit
            Left = 125
            Top = 60
            Width = 41
            Height = 21
            DataField = 'sent_off'
            DataSource = dsTeamsChampPlayers
            TabOrder = 6
          end
          object DBEdit8: TDBEdit
            Left = 224
            Top = 60
            Width = 41
            Height = 21
            DataField = 'minutes'
            DataSource = dsTeamsChampPlayers
            TabOrder = 7
          end
          object DBEdit9: TDBEdit
            Left = 176
            Top = 60
            Width = 41
            Height = 21
            DataField = 'injuries'
            DataSource = dsTeamsChampPlayers
            TabOrder = 8
          end
          object DBEdit10: TDBEdit
            Left = 271
            Top = 60
            Width = 32
            Height = 21
            DataField = 'matches'
            DataSource = dsTeamsChampPlayers
            TabOrder = 9
          end
        end
      end
      object pnlTeamsList: TShader
        Left = 2
        Top = 2
        Width = 327
        Height = 613
        Align = alLeft
        Caption = 'Campionati'
        TabOrder = 1
        FromColor = 16250613
        ToColor = 16250613
        Direction = False
        Version = '1.4.2.1'
        ExplicitHeight = 611
        object Panel4: TShader
          Left = 1
          Top = 1
          Width = 325
          Height = 24
          Align = alTop
          Caption = 'Squadre Iscritte'
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 0
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          object SpeedButton3: TAdvGlowButton
            Left = 1
            Top = 1
            Width = 23
            Height = 22
            Align = alLeft
            Caption = '+'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Rounded = False
            TabOrder = 0
            OnClick = SpeedButton3Click
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
            Appearance.TextColorDisabled = 13948116
            UIStyle = tsWindows10
          end
          object SpeedButton12: TAdvGlowButton
            Left = 24
            Top = 1
            Width = 23
            Height = 22
            Align = alLeft
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Rounded = False
            TabOrder = 1
            OnClick = SpeedButton12Click
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
            Appearance.TextColorDisabled = 13948116
            UIStyle = tsWindows10
          end
        end
        object grdTeamsChampionships: TEnhCRDBGrid
          Left = 1
          Top = 67
          Width = 325
          Height = 545
          Align = alClient
          FixedColor = 16250613
          TabOrder = 1
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
              Title.Caption = 'id'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'team_name'
              Title.Caption = 'Nome Squadra'
              Width = 194
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'penalty'
              Width = 42
              Visible = True
            end>
        end
        object Panel9: TShader
          Left = 1
          Top = 25
          Width = 325
          Height = 24
          Align = alTop
          TabOrder = 2
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          object btnSearchTeamChamps: TButtonedEdit
            Left = 1
            Top = 2
            Width = 323
            Height = 21
            Align = alBottom
            Images = ImageList1
            ParentShowHint = False
            RightButton.DisabledImageIndex = 17
            RightButton.Hint = 'Ricerca la squadra'
            RightButton.HotImageIndex = 18
            RightButton.ImageIndex = 16
            RightButton.PressedImageIndex = 17
            RightButton.Visible = True
            ShowHint = True
            TabOrder = 0
            TextHint = 'ricerca club'
            OnKeyUp = btnSearchTeamChampsKeyUp
          end
        end
        object DBAdvGlowNavigator8: TDBAdvGlowNavigator
          Left = 1
          Top = 49
          Width = 325
          Height = 18
          VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete, nbCancel, nbRefresh]
          Align = alTop
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
          Style = tsWindows10
          TabOrder = 3
          Version = '1.2.1.0'
        end
      end
    end
    object pgCalendarMatches: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 755
      Height = 616
      Caption = 'Calendario Partite'
      DoubleBuffered = True
      ImageIndex = 2
      PageAppearance.BorderColor = 14474202
      PageAppearance.Color = 16250613
      PageAppearance.ColorTo = 16250613
      PageAppearance.ColorMirror = 16250613
      PageAppearance.ColorMirrorTo = 16250613
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      Text = ''
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 15527147
      TabAppearance.BorderColorSelected = 14474202
      TabAppearance.BorderColorSelectedHot = 14474202
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = 14474202
      TabAppearance.Color = clWhite
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16250613
      TabAppearance.ColorSelectedTo = 16250613
      TabAppearance.ColorDisabled = 15921906
      TabAppearance.ColorDisabledTo = 15921906
      TabAppearance.ColorHot = 16776701
      TabAppearance.ColorHotTo = clNone
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 16776701
      TabAppearance.ColorMirrorHotTo = clNone
      TabAppearance.ColorMirrorSelected = 16250613
      TabAppearance.ColorMirrorSelectedTo = 16250613
      TabAppearance.ColorMirrorDisabled = 15921906
      TabAppearance.ColorMirrorDisabledTo = 15921906
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Tahoma'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggVertical
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = clBlack
      TabAppearance.TextColorSelected = clBlack
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = clNone
      TabAppearance.HighLightColor = clNone
      TabAppearance.HighLightColorHot = clNone
      TabAppearance.HighLightColorSelected = clNone
      TabAppearance.HighLightColorSelectedHot = clNone
      TabAppearance.HighLightColorDown = clNone
      TabAppearance.DrawLine = False
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = clNone
      TabAppearance.BackGround.Direction = gdHorizontal
      OnShow = pgCalendarMatchesShow
      object Splitter3: TAdvSplitter
        Left = 74
        Top = 2
        Width = 4
        Height = 613
        Beveled = True
        Color = clSkyBlue
        ParentColor = False
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = 16250613
        Appearance.ColorTo = 16250613
        Appearance.ColorHot = 16248808
        Appearance.ColorHotTo = 16248808
        GripStyle = sgDots
        UIStyle = tsWindows10
        ExplicitLeft = 267
        ExplicitTop = 4
        ExplicitHeight = 702
      end
      object Panel16: TShader
        Left = 78
        Top = 2
        Width = 675
        Height = 613
        Align = alClient
        Caption = 'Campionati'
        TabOrder = 0
        FromColor = 16250613
        ToColor = 16250613
        Direction = False
        Version = '1.4.2.1'
        ExplicitWidth = 671
        ExplicitHeight = 611
        object AdvSplitter2: TAdvSplitter
          Left = 1
          Top = 289
          Width = 673
          Height = 4
          Cursor = crVSplit
          Align = alTop
          Appearance.BorderColor = clNone
          Appearance.BorderColorHot = clNone
          Appearance.Color = 16250613
          Appearance.ColorTo = 16250613
          Appearance.ColorHot = 16248808
          Appearance.ColorHotTo = 16248808
          GripStyle = sgDots
          UIStyle = tsWindows10
          ExplicitWidth = 597
        end
        object Panel17: TShader
          Left = 1
          Top = 25
          Width = 673
          Height = 24
          Align = alTop
          TabOrder = 0
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          ExplicitWidth = 669
          object Button9: TAdvGlowButton
            Left = 289
            Top = 1
            Width = 96
            Height = 22
            Align = alLeft
            Caption = 'Inserisci Partita'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Rounded = False
            TabOrder = 0
            OnClick = Button9Click
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
            Appearance.TextColorDisabled = 13948116
            UIStyle = tsWindows10
          end
          object navMatches: TDBAdvGlowNavigator
            Left = 1
            Top = 1
            Width = 160
            Height = 22
            DataSource = dmUniDacPgChampionships.dsMatches
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbCancel, nbRefresh]
            Align = alLeft
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
            Style = tsWindows10
            TabOrder = 1
            Version = '1.2.1.0'
          end
          object AdvGlowButton3: TAdvGlowButton
            Left = 161
            Top = 1
            Width = 128
            Height = 22
            Align = alLeft
            Caption = 'Esporta Giornata'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 4
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Rounded = False
            TabOrder = 2
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
            Appearance.TextColorDisabled = 13948116
            DropDownButton = True
            DropDownMenu = popExportMatchDay
            UIStyle = tsWindows10
          end
          object AdvGlowButton2: TAdvGlowButton
            Left = 489
            Top = 1
            Width = 104
            Height = 22
            Align = alLeft
            Caption = 'Registra Giornata'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Rounded = False
            TabOrder = 3
            OnClick = Button9Click
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
            Appearance.TextColorDisabled = 13948116
            UIStyle = tsWindows10
          end
          object AdvGlowButton11: TAdvGlowButton
            Left = 385
            Top = 1
            Width = 104
            Height = 22
            Align = alLeft
            Caption = 'Elimina Giornata'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Rounded = False
            TabOrder = 4
            OnClick = AdvGlowButton11Click
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
            Appearance.TextColorDisabled = 13948116
            UIStyle = tsWindows10
          end
        end
        object grdMatches: TEnhCRDBGrid
          Left = 1
          Top = 49
          Width = 673
          Height = 240
          Align = alTop
          DataSource = dmUniDacPgChampionships.dsMatches
          FixedColor = 16250613
          TabOrder = 1
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
              FieldName = 'match_id'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lkpHomeTeam'
              Title.Caption = 'Casa'
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lkpVisitorTeam'
              Title.Caption = 'Ospiti'
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'goal_home'
              Title.Caption = 'GC'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'goal_visitor'
              Title.Caption = 'GO'
              Width = 26
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'points_home'
              Title.Caption = 'PC'
              Width = 27
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'points_visitors'
              Title.Caption = 'PO'
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'confirmed'
              Title.Caption = 'Term.'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'notes'
              Title.Caption = 'Note Partita'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'match_time'
              Title.Caption = 'Data/Ora Partita'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'postponed'
              Title.Caption = 'Rinviata'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'forfeit'
              Title.Caption = 'Tavolino'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'suspended'
              Title.Caption = 'Sospesa'
              Width = 49
              Visible = True
            end>
        end
        object Panel18: TShader
          Left = 1
          Top = 1
          Width = 673
          Height = 24
          Align = alTop
          Caption = 'Partite'
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 2
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          ExplicitWidth = 669
        end
        object Panel19: TShader
          Left = 297
          Top = 293
          Width = 377
          Height = 319
          Align = alClient
          TabOrder = 3
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          ExplicitWidth = 373
          ExplicitHeight = 317
          object Panel20: TShader
            Left = 1
            Top = 1
            Width = 375
            Height = 317
            Align = alClient
            TabOrder = 0
            FromColor = 16250613
            ToColor = 16250613
            Direction = False
            Version = '1.4.2.1'
            ExplicitWidth = 371
            ExplicitHeight = 315
            object grdMatchTeams: TEnhCRDBGrid
              Left = 1
              Top = 1
              Width = 373
              Height = 64
              Align = alTop
              Ctl3D = False
              DataSource = dsMatchTeams
              Options = [dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentCtl3D = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnEnter = grdMatchTeamsEnter
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
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'team_name'
                  Width = 180
                  Visible = True
                end>
            end
            object Panel61: TShader
              Left = 1
              Top = 65
              Width = 373
              Height = 29
              Align = alTop
              TabOrder = 1
              FromColor = 16250613
              ToColor = 16250613
              Direction = False
              Version = '1.4.2.1'
              ExplicitWidth = 369
              object btnMatchEvents: TAdvGlowButton
                Left = 161
                Top = 1
                Width = 56
                Height = 27
                Align = alLeft
                Caption = 'Evento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Rounded = False
                TabOrder = 1
                OnClick = btnMatchEventsClick
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
                Appearance.TextColorDisabled = 13948116
                UIStyle = tsWindows10
              end
              object SpeedButton20: TAdvGlowButton
                Left = 217
                Top = 1
                Width = 155
                Height = 27
                Align = alClient
                Caption = 'Tabellino'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Rounded = False
                TabOrder = 2
                OnClick = SpeedButton20Click
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
                Appearance.TextColorDisabled = 13948116
                UIStyle = tsWindows10
                ExplicitWidth = 151
              end
              object navMatchTeamPlayers: TDBAdvGlowNavigator
                Left = 1
                Top = 1
                Width = 80
                Height = 27
                DataSource = dmUniDacPgChampionships.dsMatchTeamPlayers
                VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete]
                Align = alLeft
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
                Style = tsWindows10
                TabOrder = 0
                Version = '1.2.1.0'
              end
              object btnImportMatch: TAdvGlowButton
                Left = 81
                Top = 1
                Width = 80
                Height = 27
                Align = alLeft
                Caption = 'Importazione'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Rounded = False
                TabOrder = 3
                OnClick = btnImportMatchClick
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
                Appearance.TextColorDisabled = 13948116
                UIStyle = tsWindows10
              end
            end
            object Panel62: TShader
              Left = 1
              Top = 94
              Width = 373
              Height = 222
              Align = alClient
              Caption = 'Panel62'
              TabOrder = 2
              FromColor = 16250613
              ToColor = 16250613
              Direction = False
              Version = '1.4.2.1'
              ExplicitWidth = 369
              ExplicitHeight = 220
              object grdMatchTeamPlayers: TEnhCRDBGrid
                Left = 1
                Top = 1
                Width = 371
                Height = 220
                Align = alClient
                DataSource = dmUniDacPgChampionships.dsMatchTeamPlayers
                FixedColor = 16250613
                Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                PopupMenu = popTabellino
                TabOrder = 0
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
                    FieldName = 'pos'
                    Width = 30
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'full_name'
                    Title.Caption = 'Giocatore'
                    Width = 190
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'since'
                    Title.Caption = 'Dal.'
                    Width = 23
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'until'
                    Title.Caption = 'Al.'
                    Width = 23
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'minutes'
                    Title.Caption = 'Min.'
                    Width = 23
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'subst_id'
                    Title.Caption = 'Sost.'
                    Width = 50
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'goal'
                    Title.Caption = 'Gol.'
                    Width = 30
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'owngoal'
                    Title.Caption = 'Auto'
                    Width = 30
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'lostgoal'
                    Title.Caption = 'Sub'
                    Width = 30
                    Visible = True
                  end>
              end
            end
          end
        end
        object pnlEvents: TShader
          Left = 1
          Top = 293
          Width = 296
          Height = 319
          Align = alLeft
          Caption = 'Eventi'
          TabOrder = 4
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          ExplicitHeight = 317
          object Panel21: TShader
            Left = 1
            Top = 1
            Width = 294
            Height = 26
            Align = alTop
            Color = clSkyBlue
            ParentBackground = False
            TabOrder = 0
            FromColor = 16250613
            ToColor = 16250613
            Direction = False
            Version = '1.4.2.1'
            object Label17: TLabel
              Left = 4
              Top = 5
              Width = 36
              Height = 13
              Caption = 'Riposa:'
            end
            object DBText1: TDBText
              Left = 46
              Top = 5
              Width = 190
              Height = 17
              DataField = 'lkpRestTeam'
            end
            object AdvGlowButton7: TAdvGlowButton
              Left = 242
              Top = 1
              Width = 51
              Height = 24
              Align = alRight
              Caption = 'Riposo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              Rounded = False
              TabOrder = 0
              OnClick = AdvGlowButton7Click
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
              Appearance.TextColorDisabled = 13948116
              UIStyle = tsWindows10
            end
          end
          object grdMatchEvents: TEnhCRDBGrid
            Left = 1
            Top = 51
            Width = 294
            Height = 267
            Align = alClient
            DataSource = dmUniDacPgChampionships.dsMatchEvents
            FixedColor = 16250613
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = popTabellino
            TabOrder = 1
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
                FieldName = 'teamplayer'
                Title.Caption = 'Giocatore / Squadra'
                Width = 149
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'minute'
                Title.Caption = 'Min.'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'lkpEventType'
                Title.Caption = 'Evento '
                Width = 184
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'notes'
                Width = 32
                Visible = True
              end>
          end
          object Panel22: TShader
            Left = 1
            Top = 27
            Width = 294
            Height = 24
            Align = alTop
            TabOrder = 2
            FromColor = 16250613
            ToColor = 16250613
            Direction = False
            Version = '1.4.2.1'
            object btnSaveMatch: TAdvGlowButton
              Left = 219
              Top = 1
              Width = 74
              Height = 22
              Align = alClient
              Caption = 'Salva Tutto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              Rounded = False
              TabOrder = 1
              OnClick = btnSaveMatchClick
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
              Appearance.TextColorDisabled = 13948116
              UIStyle = tsWindows10
            end
            object SpeedButton19: TAdvGlowButton
              Left = 185
              Top = 1
              Width = 34
              Height = 22
              Align = alLeft
              Caption = 'Agg.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              Rounded = False
              TabOrder = 2
              OnClick = SpeedButton19Click
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
              Appearance.TextColorDisabled = 13948116
              UIStyle = tsWindows10
            end
            object navMatchEvents: TDBAdvGlowNavigator
              Left = 1
              Top = 1
              Width = 120
              Height = 22
              DataSource = dmUniDacPgChampionships.dsMatchEvents
              VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete, nbCancel, nbRefresh]
              Align = alLeft
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
              Style = tsWindows10
              TabOrder = 0
              Version = '1.2.1.0'
            end
            object AdvGlowButton4: TAdvGlowButton
              Left = 121
              Top = 1
              Width = 64
              Height = 22
              Align = alLeft
              Caption = 'Esporta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              Rounded = False
              TabOrder = 3
              OnClick = SpeedButton19Click
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
              Appearance.TextColorDisabled = 13948116
              DropDownButton = True
              DropDownMenu = popMatchEvents
              UIStyle = tsWindows10
            end
          end
        end
      end
      object Panel13: TShader
        Left = 2
        Top = 2
        Width = 72
        Height = 613
        Align = alLeft
        Caption = 'Campionati'
        TabOrder = 1
        FromColor = 16250613
        ToColor = 16250613
        Direction = False
        Version = '1.4.2.1'
        ExplicitHeight = 611
        object Panel14: TShader
          Left = 1
          Top = 1
          Width = 70
          Height = 24
          Align = alTop
          Caption = 'Giornate'
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 0
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
        end
        object grdMatchDays: TEnhCRDBGrid
          Left = 1
          Top = 70
          Width = 70
          Height = 542
          Align = alClient
          FixedColor = 15784647
          Options = [dgEditing, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
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
              FieldName = 'match_day_number'
              Width = 32
              Visible = True
            end>
        end
        object Panel15: TShader
          Left = 1
          Top = 25
          Width = 70
          Height = 45
          Align = alTop
          TabOrder = 2
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          object SpeedButton13: TAdvGlowButton
            Left = 1
            Top = 1
            Width = 68
            Height = 21
            Align = alTop
            Caption = 'Calendario'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Rounded = False
            TabOrder = 0
            OnClick = SpeedButton13Click
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
            Appearance.TextColorDisabled = 13948116
            UIStyle = tsWindows10
          end
          object SpeedButton6: TAdvGlowButton
            Left = 1
            Top = 22
            Width = 68
            Height = 22
            Align = alTop
            Caption = 'Ritorno'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Rounded = False
            TabOrder = 1
            OnClick = SpeedButton6Click
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
            Appearance.TextColorDisabled = 13948116
            UIStyle = tsWindows10
          end
        end
      end
    end
    object pgChampionshipsRanking: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 755
      Height = 616
      Caption = 'Campionati e Classifiche'
      DoubleBuffered = True
      ImageIndex = 4
      PageAppearance.BorderColor = 14474202
      PageAppearance.Color = 16250613
      PageAppearance.ColorTo = 16250613
      PageAppearance.ColorMirror = 16250613
      PageAppearance.ColorMirrorTo = 16250613
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      Text = ''
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 15527147
      TabAppearance.BorderColorSelected = 14474202
      TabAppearance.BorderColorSelectedHot = 14474202
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = 14474202
      TabAppearance.Color = clWhite
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16250613
      TabAppearance.ColorSelectedTo = 16250613
      TabAppearance.ColorDisabled = 15921906
      TabAppearance.ColorDisabledTo = 15921906
      TabAppearance.ColorHot = 16776701
      TabAppearance.ColorHotTo = clNone
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 16776701
      TabAppearance.ColorMirrorHotTo = clNone
      TabAppearance.ColorMirrorSelected = 16250613
      TabAppearance.ColorMirrorSelectedTo = 16250613
      TabAppearance.ColorMirrorDisabled = 15921906
      TabAppearance.ColorMirrorDisabledTo = 15921906
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Tahoma'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggVertical
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = clBlack
      TabAppearance.TextColorSelected = clBlack
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = clNone
      TabAppearance.HighLightColor = clNone
      TabAppearance.HighLightColorHot = clNone
      TabAppearance.HighLightColorSelected = clNone
      TabAppearance.HighLightColorSelectedHot = clNone
      TabAppearance.HighLightColorDown = clNone
      TabAppearance.DrawLine = False
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = clNone
      TabAppearance.BackGround.Direction = gdHorizontal
      object pnlRankings: TShader
        Left = 2
        Top = 2
        Width = 751
        Height = 612
        Align = alClient
        TabOrder = 0
        FromColor = 16250613
        ToColor = 16250613
        Direction = False
        Version = '1.4.2.1'
        ExplicitWidth = 747
        ExplicitHeight = 611
        object Panel34: TShader
          Left = 1
          Top = 1
          Width = 749
          Height = 24
          Align = alTop
          Caption = 'Classifiche'
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 0
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          ExplicitWidth = 745
        end
        object adgPagerRankings: TAdvOfficePager
          Left = 1
          Top = 25
          Width = 749
          Height = 586
          AdvOfficePagerStyler = AdvOfficePagerOfficeStyler1
          Align = alClient
          ActivePage = pgRankings
          ButtonSettings.CloseButtonPicture.Data = {
            424DA20400000000000036040000280000000900000009000000010008000000
            00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001000001010100000100
            0000000202000100020200000000000202020002020200000000010002020202
            0200010000000101000202020001010000000100020202020200010000000002
            0202000202020000000000020200010002020000000001000001010100000100
            0000}
          ButtonSettings.PageListButtonPicture.Data = {
            424DA20400000000000036040000280000000900000009000000010008000000
            00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000101010100
            0000010101000200010101000000010100020202000101000000010002020202
            0200010000000002020200020202000000000002020001000202000000000100
            0001010100000100000001010101010101010100000001010101010101010100
            0000}
          ButtonSettings.ScrollButtonPrevPicture.Data = {
            424DA20400000000000036040000280000000900000009000000010008000000
            00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000001010100
            0000010101000202000101000000010100020202000101000000010002020200
            0101010000000002020200010101010000000100020202000101010000000101
            0002020200010100000001010100020200010100000001010101000001010100
            0000}
          ButtonSettings.ScrollButtonNextPicture.Data = {
            424DA20400000000000036040000280000000900000009000000010008000000
            00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010000010101010100
            0000010002020001010101000000010002020200010101000000010100020202
            0001010000000101010002020200010000000101000202020001010000000100
            0202020001010100000001000202000101010100000001010000010101010100
            0000}
          ButtonSettings.ScrollButtonFirstPicture.Data = {
            424DC60400000000000036040000280000001000000009000000010008000000
            000000000000C40E0000C40E00000001000000010000427B84FFDEEFEFFFFFFF
            FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF01010101010000010101
            0101000001010101010100020200010101000202000101010100020202000101
            0002020200010101000202020001010002020200010101000202020001010002
            0202000101010101000202020001010002020200010101010100020202000101
            0002020200010101010100020200010101000202000101010101010000010101
            010100000101}
          ButtonSettings.ScrollButtonLastPicture.Data = {
            424DC60400000000000036040000280000001000000009000000010008000000
            000000000000C40E0000C40E00000001000000010000427B84FFDEEFEFFFFFFF
            FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF01010000010101010100
            0001010101010100020200010101000202000101010101000202020001010002
            0202000101010101000202020001010002020200010101010100020202000101
            0002020200010101000202020001010002020200010101000202020001010002
            0202000101010100020200010101000202000101010101010000010101010100
            000101010101}
          ButtonSettings.ClosedListButtonPicture.Data = {
            424DA20400000000000036040000280000000900000009000000010008000000
            00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000101010100
            0000010101000200010101000000010100020202000101000000010002020202
            0200010000000002020200020202000000000002020001000202000000000100
            0001010100000100000001010101010101010100000001010101010101010100
            0000}
          ButtonSettings.CloseButtonHint = 'Close'
          ButtonSettings.InsertButtonHint = 'Insert new page'
          ButtonSettings.PageListButtonHint = 'Page List'
          ButtonSettings.ScrollButtonNextHint = 'Next'
          ButtonSettings.ScrollButtonPrevHint = 'Previous'
          ButtonSettings.ScrollButtonFirstHint = 'First'
          ButtonSettings.ScrollButtonLastHint = 'Last'
          ButtonSettings.ClosedListButtonHint = 'Closed Pages'
          DoubleBuffered = True
          TabSettings.Rounding = 0
          Text = ''
          ShowShortCutHints = False
          TabOrder = 1
          ExplicitWidth = 745
          ExplicitHeight = 585
          NextPictureChanged = False
          PrevPictureChanged = False
          object pgRankings: TAdvOfficePage
            Left = 1
            Top = 26
            Width = 747
            Height = 558
            Caption = 'Classifica Squadre'
            DoubleBuffered = True
            PageAppearance.BorderColor = 14474202
            PageAppearance.Color = 16250613
            PageAppearance.ColorTo = 16250613
            PageAppearance.ColorMirror = 16250613
            PageAppearance.ColorMirrorTo = 16250613
            PageAppearance.Gradient = ggVertical
            PageAppearance.GradientMirror = ggVertical
            Picture.Data = {
              424D380300000000000036000000280000001000000010000000010018000000
              000000000000120B0000120B00000000000000000000FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0F59E11A57CA3767BF415B9F1344B4FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF317BEB5D8CD19EA7B7C5B4AADEAB
              8BF0995BA4908C2358C2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1676FF5F
              98E3FAD3A3FFD7A5FFDDA7FFD1A3E6A478D9834FFCC08BE9D4C25F8BD71E60D8
              FF00FFFF00FFFF00FFFF00FF2A68B8CAB79EFFEAC6FEE6C7FCE2C5EFC9ABDA92
              68E69D69F8D5B4FFEAD4FFFAEBA6C5EF2D75E9FF00FFFF00FF1C76FFAB753DFF
              DDA1FEF4EAFEF3E3FAE5D3E9BC9FD48051EAAC81FCE6CFFFF3E9FFFAF6FFFFFF
              99B6E3135DE0FF00FF1A6AC76EB459FFF6E6FFFAF4FFFAF3F7E0D0E0A584E196
              66F3CCADB5B0A9DAD5D0FEFEFCFFFFFEB691932A69D1FF00FF186F7562D188FF
              FFFFFFFEFBFEFBF7EFD0BCD99168E39F73FEE5D0F3EDE5BABBB8C2C4C1F4F0EF
              807AA12378FAFF00FF093BC2C0D5EEFFFFFFFFFFFFFEFCFAE7CABCDA976DF2C0
              98E1D8CFFBF6F2FFFFFFEAE9E7A1C7F72378FAFF00FF1864E31F42EFFFFFFFD8
              EAFFA7CFFF80B7FF3289FF5C96E5D5D7DCD3CBC0B4B4B1E0E0E0FFFFFF569EFF
              1673FFFF00FF1B75FF398AFF4D99FF589FFFFF00FFFF00FFFF00FFFF00FF1974
              FF9DCAFFEDEDEBD5CEC0CEE2F8287FFFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1974FFADD3FF5BA0FE1873FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF1974FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000}
            Text = ''
            TabAppearance.BorderColor = clNone
            TabAppearance.BorderColorHot = 15527147
            TabAppearance.BorderColorSelected = 14474202
            TabAppearance.BorderColorSelectedHot = 14474202
            TabAppearance.BorderColorDisabled = clNone
            TabAppearance.BorderColorDown = 14474202
            TabAppearance.Color = clWhite
            TabAppearance.ColorTo = clWhite
            TabAppearance.ColorSelected = 16250613
            TabAppearance.ColorSelectedTo = 16250613
            TabAppearance.ColorDisabled = 15921906
            TabAppearance.ColorDisabledTo = 15921906
            TabAppearance.ColorHot = 16776701
            TabAppearance.ColorHotTo = clNone
            TabAppearance.ColorMirror = clWhite
            TabAppearance.ColorMirrorTo = clWhite
            TabAppearance.ColorMirrorHot = 16776701
            TabAppearance.ColorMirrorHotTo = clNone
            TabAppearance.ColorMirrorSelected = 16250613
            TabAppearance.ColorMirrorSelectedTo = 16250613
            TabAppearance.ColorMirrorDisabled = 15921906
            TabAppearance.ColorMirrorDisabledTo = 15921906
            TabAppearance.Font.Charset = DEFAULT_CHARSET
            TabAppearance.Font.Color = clWindowText
            TabAppearance.Font.Height = -11
            TabAppearance.Font.Name = 'Tahoma'
            TabAppearance.Font.Style = []
            TabAppearance.Gradient = ggVertical
            TabAppearance.GradientMirror = ggVertical
            TabAppearance.GradientHot = ggVertical
            TabAppearance.GradientMirrorHot = ggVertical
            TabAppearance.GradientSelected = ggVertical
            TabAppearance.GradientMirrorSelected = ggVertical
            TabAppearance.GradientDisabled = ggVertical
            TabAppearance.GradientMirrorDisabled = ggVertical
            TabAppearance.TextColor = clBlack
            TabAppearance.TextColorHot = clBlack
            TabAppearance.TextColorSelected = clBlack
            TabAppearance.TextColorDisabled = clGray
            TabAppearance.ShadowColor = clNone
            TabAppearance.HighLightColor = clNone
            TabAppearance.HighLightColorHot = clNone
            TabAppearance.HighLightColorSelected = clNone
            TabAppearance.HighLightColorSelectedHot = clNone
            TabAppearance.HighLightColorDown = clNone
            TabAppearance.DrawLine = False
            TabAppearance.BackGround.Color = clWhite
            TabAppearance.BackGround.ColorTo = clNone
            TabAppearance.BackGround.Direction = gdHorizontal
            OnShow = pgRankingsShow
            object grdChampRanking: TCRDBGrid
              Left = 2
              Top = 30
              Width = 743
              Height = 528
              Align = alClient
              Ctl3D = True
              DataSource = dmUniDacPgChampionships.dsChampRanking
              FixedColor = 16250613
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentCtl3D = False
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
                  Title.Caption = 'Classifica|Pos'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'lkpTeamName'
                  Title.Caption = 'Classifica|Squadra'
                  Width = 160
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'points'
                  Title.Caption = 'Classifica|Pt.'
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'calcEnglish'
                  Title.Caption = 'Classifica|M.I.'
                  Width = 29
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'played_matches'
                  Title.Caption = 'Risultati|G'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'won_matches'
                  Title.Caption = 'Risultati|V'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'tied_matches'
                  Title.Caption = 'Risultati|N'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'lost_matches'
                  Title.Caption = 'Risultati|P'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'home_matches'
                  Title.Caption = 'Risultati in Casa|G'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'home_won'
                  Title.Caption = 'Risultati in Casa|V'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'home_tied'
                  Title.Caption = 'Risultati in Casa|N'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'home_lost'
                  Title.Caption = 'Risultati in Casa|P'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'outside_played'
                  Title.Caption = 'Risultati fuori Casa|G'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'outside_won'
                  Title.Caption = 'Risultati fuori Casa|V'
                  Width = 28
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'outside_tied'
                  Title.Caption = 'Risultati fuori Casa|N'
                  Width = 29
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'outside_lost'
                  Title.Caption = 'Risultati fuori Casa|P'
                  Width = 29
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'goal_done'
                  Title.Caption = 'Goal|Fatti'
                  Width = 32
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'goal_lost'
                  Title.Caption = 'Goal|Subiti'
                  Width = 37
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'calcGoalDifference'
                  Title.Caption = 'Goal|Diff.'
                  Width = 64
                  Visible = True
                end>
            end
            object Shader2: TShader
              Left = 2
              Top = 2
              Width = 743
              Height = 28
              Align = alTop
              TabOrder = 1
              FromColor = 16250613
              ToColor = 16250613
              Direction = False
              Version = '1.4.2.1'
              ExplicitWidth = 739
              object btnRankingExport: TAdvGlowButton
                Left = 181
                Top = 1
                Width = 141
                Height = 26
                Align = alLeft
                Caption = 'Esporta Classifica'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ImageIndex = 4
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Rounded = False
                TabOrder = 0
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
                Appearance.TextColorDisabled = 13948116
                DropDownButton = True
                DropDownMenu = popChamRanking
                UIStyle = tsWindows10
              end
              object navChampRanking: TDBAdvGlowNavigator
                Left = 101
                Top = 1
                Width = 80
                Height = 26
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                Align = alLeft
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
                Style = tsWindows10
                TabOrder = 1
                Version = '1.2.1.0'
              end
              object btnUpdateRankings: TAdvGlowButton
                Left = 1
                Top = 1
                Width = 100
                Height = 26
                Align = alLeft
                Caption = 'Aggiorna'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
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
                  424D360500000000000036040000280000001000000010000000010008000000
                  000000010000220B0000220B0000000100000001000000840000088C0800108C
                  080018941000219410001894180029941800219C2100299C210029A52900E78C
                  31005AA53900B56B4A006BAD4A0073AD4A008C6B5200946B5200E79C5200A563
                  5A00A56B5A00BD7B5A0084B55A00FFB55A0063BD6300A5636B00A5736B00BD84
                  6B00C6846B00D6946B00A5B56B0073BD6B00DE9C7300CEB5730094BD73009CBD
                  7300ADBD730073C673007BC6730084C6730094C673009CC67300E7AD7B00DEBD
                  7B00EFBD7B009CC67B00EFC67B00EFBD84009CC68400EFC68400F7C6840084CE
                  8400EFC68C00F7CE8C00B5AD9400ADB59400EFC69400A5CE9400C6CE9400D6CE
                  9400E7CE9400F7CE9400BDCE9C00EFCE9C00BDD69C00EFCEA500ADD6A500BDD6
                  A500F7D6A500A5DEA500EFD6AD00F7D6AD00B5DEAD00DECEB500F7D6B500F7DE
                  B500F7DEBD00DEC6C600FFEFC600FFEFCE00E7E7D600F7EFD600FFEFDE00DEF7
                  DE00E7F7DE00FFEFE700E7F7E700FFF7E700F7F7EF00FFF7EF00FFF7F700F7FF
                  F700FFFFF700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005C5C1818181818181818
                  18181818185C5C5C184D393A3E3B302E2B2E2E30185C5C5C184E22080D04040B
                  202B2B30185C5C5C12513D0200000000062A2B30185C5C5C12563D030003230E
                  000E2E30185C5C5C19584201000015401D0D3330185C5C5C195D4F382F212245
                  402C3733185C5C5C1A5D4454502F212122403E3C185C5C5C1A5D244154260000
                  01454043185C5C5C1C5D32002541050002494640185C5C5C1C5D570900000000
                  024E4835185C5C5C1F5D5D521707071E08101313185C5C5C1F5D5D5D5D52525B
                  360F110A0C5C5C5C295D5D5D5D5D5D5D4C1316145C5C5C5C2957575757575757
                  4C131A5C5C5C5C5C291C1C1C1C1C1C1C1C135C5C5C5C}
                Rounded = False
                TabOrder = 2
                OnClick = btnUpdateRankingsClick
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
                Appearance.TextColorDisabled = 13948116
                UIStyle = tsWindows10
              end
            end
          end
          object pgPlayerScores: TAdvOfficePage
            Left = 1
            Top = 26
            Width = 747
            Height = 558
            Caption = 'Classifica Marcatori'
            DoubleBuffered = True
            PageAppearance.BorderColor = 14474202
            PageAppearance.Color = 16250613
            PageAppearance.ColorTo = 16250613
            PageAppearance.ColorMirror = 16250613
            PageAppearance.ColorMirrorTo = 16250613
            PageAppearance.Gradient = ggVertical
            PageAppearance.GradientMirror = ggVertical
            Picture.Data = {
              424D360300000000000036000000280000001000000010000000010018000000
              000000030000D30E0000D30E00000000000000000000FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF10841018
              9C1831A53139AD3939AD39107B103194292173185A5242736B5AFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF21A52131AD314ABD4A52C652399C398CBD7B52BD
              5242BD422173184A4229FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF299C294A
              BD4A6BCE6B6BC66BF7FFEFF7FFEF63C66363CE6331A5314A6B39FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FF4ABD4A73CE7352A54AFFFFFFFFFFFF6BC6
              6B73CE73319C31FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF18734A3984AD217BBD428CAD63BD63399C39FF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF187BC6218CE7298CE7218CE7296B
              52FF00FFFF00FFFF00FF218429218429FF00FFFF00FFFF00FFFF00FFFF00FF29
              7BAD399CFF399CFF399CFF399CFF298CE7395252FF00FFFF00FF94DE8C218429
              FF00FFFF00FFFF00FFFF00FFFF00FF2184C642A5FF42A5FF42A5FF42A5FF399C
              F7315A6B21842921842900EE0000C000218429218429FF00FFFF00FF6BA5C642
              A5F74AB5FF52B5FF52BDFF52B5FF4AADFF39739421842900EE0040FF4000EE00
              00C000218429FF00FFFF00FF5294BD42A5EF5ABDFF5ABDFF52B5F74AB5EF52B5
              F739738C21842921842900EE0000C000218429218429FF00FFFF00FF63849C21
              73A54A94C66BADD663ADF74A9CE7216BA5FF00FFFF00FFFF00FF00C000218429
              FF00FFFF00FFFF00FFFF00FFFF00FF2173A56BADD68CBDE773BDE75AADDE316B
              7BFF00FFFF00FFFF00FF218429218429FF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF6BA5BD4A94B54A8CAD63849CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            Text = ''
            TabAppearance.BorderColor = clNone
            TabAppearance.BorderColorHot = 15527147
            TabAppearance.BorderColorSelected = 14474202
            TabAppearance.BorderColorSelectedHot = 14474202
            TabAppearance.BorderColorDisabled = clNone
            TabAppearance.BorderColorDown = 14474202
            TabAppearance.Color = clWhite
            TabAppearance.ColorTo = clWhite
            TabAppearance.ColorSelected = 16250613
            TabAppearance.ColorSelectedTo = 16250613
            TabAppearance.ColorDisabled = 15921906
            TabAppearance.ColorDisabledTo = 15921906
            TabAppearance.ColorHot = 16776701
            TabAppearance.ColorHotTo = clNone
            TabAppearance.ColorMirror = clWhite
            TabAppearance.ColorMirrorTo = clWhite
            TabAppearance.ColorMirrorHot = 16776701
            TabAppearance.ColorMirrorHotTo = clNone
            TabAppearance.ColorMirrorSelected = 16250613
            TabAppearance.ColorMirrorSelectedTo = 16250613
            TabAppearance.ColorMirrorDisabled = 15921906
            TabAppearance.ColorMirrorDisabledTo = 15921906
            TabAppearance.Font.Charset = DEFAULT_CHARSET
            TabAppearance.Font.Color = clWindowText
            TabAppearance.Font.Height = -11
            TabAppearance.Font.Name = 'Tahoma'
            TabAppearance.Font.Style = []
            TabAppearance.Gradient = ggVertical
            TabAppearance.GradientMirror = ggVertical
            TabAppearance.GradientHot = ggVertical
            TabAppearance.GradientMirrorHot = ggVertical
            TabAppearance.GradientSelected = ggVertical
            TabAppearance.GradientMirrorSelected = ggVertical
            TabAppearance.GradientDisabled = ggVertical
            TabAppearance.GradientMirrorDisabled = ggVertical
            TabAppearance.TextColor = clBlack
            TabAppearance.TextColorHot = clBlack
            TabAppearance.TextColorSelected = clBlack
            TabAppearance.TextColorDisabled = clGray
            TabAppearance.ShadowColor = clNone
            TabAppearance.HighLightColor = clNone
            TabAppearance.HighLightColorHot = clNone
            TabAppearance.HighLightColorSelected = clNone
            TabAppearance.HighLightColorSelectedHot = clNone
            TabAppearance.HighLightColorDown = clNone
            TabAppearance.DrawLine = False
            TabAppearance.BackGround.Color = clWhite
            TabAppearance.BackGround.ColorTo = clNone
            TabAppearance.BackGround.Direction = gdHorizontal
            object grdGoalRanking: TCRDBGrid
              Left = 2
              Top = 30
              Width = 743
              Height = 528
              Align = alClient
              Color = clWhite
              Ctl3D = False
              FixedColor = 16250613
              ParentCtl3D = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'player_id'
                  Title.Caption = 'id'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'family_name'
                  Title.Caption = 'Cognome'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'team_name'
                  Title.Caption = 'Squadra'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'gol'
                  Width = 57
                  Visible = True
                end>
            end
            object Shader5: TShader
              Left = 2
              Top = 2
              Width = 743
              Height = 28
              Align = alTop
              TabOrder = 1
              FromColor = 16250613
              ToColor = 16250613
              Direction = False
              Version = '1.4.2.1'
              ExplicitWidth = 739
              object AdvGlowButton9: TAdvGlowButton
                Left = 181
                Top = 1
                Width = 141
                Height = 26
                Align = alLeft
                Caption = 'Esporta Classifica'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ImageIndex = 4
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Rounded = False
                TabOrder = 0
                OnClick = AdvGlowButton9Click
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
                Appearance.TextColorDisabled = 13948116
                UIStyle = tsWindows10
              end
              object navGolRanking: TDBAdvGlowNavigator
                Left = 101
                Top = 1
                Width = 80
                Height = 26
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                Align = alLeft
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
                Style = tsWindows10
                TabOrder = 1
                Version = '1.2.1.0'
              end
              object AdvGlowButton10: TAdvGlowButton
                Left = 1
                Top = 1
                Width = 100
                Height = 26
                Align = alLeft
                Caption = 'Aggiorna'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
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
                  424D360500000000000036040000280000001000000010000000010008000000
                  000000010000220B0000220B0000000100000001000000840000088C0800108C
                  080018941000219410001894180029941800219C2100299C210029A52900E78C
                  31005AA53900B56B4A006BAD4A0073AD4A008C6B5200946B5200E79C5200A563
                  5A00A56B5A00BD7B5A0084B55A00FFB55A0063BD6300A5636B00A5736B00BD84
                  6B00C6846B00D6946B00A5B56B0073BD6B00DE9C7300CEB5730094BD73009CBD
                  7300ADBD730073C673007BC6730084C6730094C673009CC67300E7AD7B00DEBD
                  7B00EFBD7B009CC67B00EFC67B00EFBD84009CC68400EFC68400F7C6840084CE
                  8400EFC68C00F7CE8C00B5AD9400ADB59400EFC69400A5CE9400C6CE9400D6CE
                  9400E7CE9400F7CE9400BDCE9C00EFCE9C00BDD69C00EFCEA500ADD6A500BDD6
                  A500F7D6A500A5DEA500EFD6AD00F7D6AD00B5DEAD00DECEB500F7D6B500F7DE
                  B500F7DEBD00DEC6C600FFEFC600FFEFCE00E7E7D600F7EFD600FFEFDE00DEF7
                  DE00E7F7DE00FFEFE700E7F7E700FFF7E700F7F7EF00FFF7EF00FFF7F700F7FF
                  F700FFFFF700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005C5C1818181818181818
                  18181818185C5C5C184D393A3E3B302E2B2E2E30185C5C5C184E22080D04040B
                  202B2B30185C5C5C12513D0200000000062A2B30185C5C5C12563D030003230E
                  000E2E30185C5C5C19584201000015401D0D3330185C5C5C195D4F382F212245
                  402C3733185C5C5C1A5D4454502F212122403E3C185C5C5C1A5D244154260000
                  01454043185C5C5C1C5D32002541050002494640185C5C5C1C5D570900000000
                  024E4835185C5C5C1F5D5D521707071E08101313185C5C5C1F5D5D5D5D52525B
                  360F110A0C5C5C5C295D5D5D5D5D5D5D4C1316145C5C5C5C2957575757575757
                  4C131A5C5C5C5C5C291C1C1C1C1C1C1C1C135C5C5C5C}
                Rounded = False
                TabOrder = 2
                OnClick = AdvGlowButton10Click
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
                Appearance.TextColorDisabled = 13948116
                UIStyle = tsWindows10
              end
            end
          end
          object AdvOfficePage2: TAdvOfficePage
            Left = 1
            Top = 26
            Width = 747
            Height = 558
            Caption = 'Base Calcolo Classifica'
            DoubleBuffered = True
            PageAppearance.BorderColor = 14474202
            PageAppearance.Color = 16250613
            PageAppearance.ColorTo = 16250613
            PageAppearance.ColorMirror = 16250613
            PageAppearance.ColorMirrorTo = 16250613
            PageAppearance.Gradient = ggVertical
            PageAppearance.GradientMirror = ggVertical
            Text = ''
            TabAppearance.BorderColor = clNone
            TabAppearance.BorderColorHot = 15527147
            TabAppearance.BorderColorSelected = 14474202
            TabAppearance.BorderColorSelectedHot = 14474202
            TabAppearance.BorderColorDisabled = clNone
            TabAppearance.BorderColorDown = 14474202
            TabAppearance.Color = clWhite
            TabAppearance.ColorTo = clWhite
            TabAppearance.ColorSelected = 16250613
            TabAppearance.ColorSelectedTo = 16250613
            TabAppearance.ColorDisabled = 15921906
            TabAppearance.ColorDisabledTo = 15921906
            TabAppearance.ColorHot = 16776701
            TabAppearance.ColorHotTo = clNone
            TabAppearance.ColorMirror = clWhite
            TabAppearance.ColorMirrorTo = clWhite
            TabAppearance.ColorMirrorHot = 16776701
            TabAppearance.ColorMirrorHotTo = clNone
            TabAppearance.ColorMirrorSelected = 16250613
            TabAppearance.ColorMirrorSelectedTo = 16250613
            TabAppearance.ColorMirrorDisabled = 15921906
            TabAppearance.ColorMirrorDisabledTo = 15921906
            TabAppearance.Font.Charset = DEFAULT_CHARSET
            TabAppearance.Font.Color = clWindowText
            TabAppearance.Font.Height = -11
            TabAppearance.Font.Name = 'Tahoma'
            TabAppearance.Font.Style = []
            TabAppearance.Gradient = ggVertical
            TabAppearance.GradientMirror = ggVertical
            TabAppearance.GradientHot = ggVertical
            TabAppearance.GradientMirrorHot = ggVertical
            TabAppearance.GradientSelected = ggVertical
            TabAppearance.GradientMirrorSelected = ggVertical
            TabAppearance.GradientDisabled = ggVertical
            TabAppearance.GradientMirrorDisabled = ggVertical
            TabAppearance.TextColor = clBlack
            TabAppearance.TextColorHot = clBlack
            TabAppearance.TextColorSelected = clBlack
            TabAppearance.TextColorDisabled = clGray
            TabAppearance.ShadowColor = clNone
            TabAppearance.HighLightColor = clNone
            TabAppearance.HighLightColorHot = clNone
            TabAppearance.HighLightColorSelected = clNone
            TabAppearance.HighLightColorSelectedHot = clNone
            TabAppearance.HighLightColorDown = clNone
            TabAppearance.DrawLine = False
            TabAppearance.BackGround.Color = clWhite
            TabAppearance.BackGround.ColorTo = clNone
            TabAppearance.BackGround.Direction = gdHorizontal
            object Shader4: TShader
              Left = 2
              Top = 2
              Width = 743
              Height = 32
              Align = alTop
              TabOrder = 0
              FromColor = 16250613
              ToColor = 16250613
              Direction = False
              Version = '1.4.2.1'
              ExplicitWidth = 739
              object Label42: TLabel
                Left = 128
                Top = 12
                Width = 67
                Height = 13
                Caption = 'Dalla Giornata'
              end
              object Label43: TLabel
                Left = 288
                Top = 9
                Width = 61
                Height = 13
                Caption = 'Alla Giornata'
              end
              object AdvGlowButton6: TAdvGlowButton
                Left = 1
                Top = 1
                Width = 100
                Height = 30
                Align = alLeft
                Caption = 'Vedi'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Rounded = False
                TabOrder = 0
                OnClick = btnUpdateRankingsClick
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
                Appearance.TextColorDisabled = 13948116
                UIStyle = tsWindows10
              end
              object jvLookUpDayFrom: TJvDBLookupCombo
                Left = 206
                Top = 7
                Width = 73
                Height = 21
                LookupField = 'match_day_number'
                LookupDisplay = 'match_day_number'
                LookupSource = dsMatchFrom
                TabOrder = 1
              end
              object jvLookUpDayTo: TJvDBLookupCombo
                Left = 376
                Top = 7
                Width = 62
                Height = 21
                EmptyValue = '15'
                LookupField = 'match_day_number'
                LookupDisplay = 'match_day_number'
                LookupSource = dsMatchTo
                TabOrder = 2
              end
            end
            object grdDynamicRanking: TEnhCRDBGrid
              Left = 2
              Top = 34
              Width = 743
              Height = 522
              Align = alClient
              Ctl3D = False
              DataSource = dsDynamicRanking
              FixedColor = 16250613
              ParentCtl3D = False
              TabOrder = 1
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
                  FieldName = 'pos'
                  Width = 94
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'club_name'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'last_match_day'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'played_home'
                  Width = 68
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'played_visitor'
                  Width = 71
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'goal_win_home'
                  Width = 78
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'goal_win_visitor'
                  Width = 81
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'goal_lost_home'
                  Width = 79
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'goal_lost_visitor'
                  Width = 82
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'points_home'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'points_visitor'
                  Width = 68
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'points'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'average_home'
                  Width = 76
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'average_visitor'
                  Width = 79
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'average'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'goal_win'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'goal_lost'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'goal_difference'
                  Width = 79
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'lost_home'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'win_home'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'pair_home'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'lost_visitor'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'win_visitor'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'pair_visitor'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'lost_matches'
                  Width = 67
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'win_matches'
                  Width = 66
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'pair_matches'
                  Width = 68
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'played_matches'
                  Width = 82
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'penalty'
                  Width = 64
                  Visible = True
                end>
            end
          end
        end
      end
    end
    object pgClubs: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 755
      Height = 616
      Caption = 'Club e Squadre'
      DoubleBuffered = True
      ImageIndex = 0
      PageAppearance.BorderColor = 14474202
      PageAppearance.Color = 16250613
      PageAppearance.ColorTo = 16250613
      PageAppearance.ColorMirror = 16250613
      PageAppearance.ColorMirrorTo = 16250613
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      Text = ''
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 15527147
      TabAppearance.BorderColorSelected = 14474202
      TabAppearance.BorderColorSelectedHot = 14474202
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = 14474202
      TabAppearance.Color = clWhite
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16250613
      TabAppearance.ColorSelectedTo = 16250613
      TabAppearance.ColorDisabled = 15921906
      TabAppearance.ColorDisabledTo = 15921906
      TabAppearance.ColorHot = 16776701
      TabAppearance.ColorHotTo = clNone
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 16776701
      TabAppearance.ColorMirrorHotTo = clNone
      TabAppearance.ColorMirrorSelected = 16250613
      TabAppearance.ColorMirrorSelectedTo = 16250613
      TabAppearance.ColorMirrorDisabled = 15921906
      TabAppearance.ColorMirrorDisabledTo = 15921906
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Tahoma'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggVertical
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = clBlack
      TabAppearance.TextColorSelected = clBlack
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = clNone
      TabAppearance.HighLightColor = clNone
      TabAppearance.HighLightColorHot = clNone
      TabAppearance.HighLightColorSelected = clNone
      TabAppearance.HighLightColorSelectedHot = clNone
      TabAppearance.HighLightColorDown = clNone
      TabAppearance.DrawLine = False
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = clNone
      TabAppearance.BackGround.Direction = gdHorizontal
      OnShow = ClubsShow
      object Panel38: TShader
        Left = 2
        Top = 2
        Width = 167
        Height = 612
        Align = alLeft
        Caption = 'Panel38'
        TabOrder = 0
        FromColor = 16250613
        ToColor = 16250613
        Direction = False
        Version = '1.4.2.1'
        ExplicitHeight = 611
        object Label1: TLabel
          Left = 1
          Top = 59
          Width = 68
          Height = 13
          Align = alTop
          Caption = 'Nome del Club'
          Transparent = True
        end
        object navClubs: TDBAdvGlowNavigator
          Left = 1
          Top = 1
          Width = 165
          Height = 18
          DataSource = dsClubs
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alTop
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
          Style = tsWindows10
          TabOrder = 0
          Version = '1.2.1.0'
        end
        object btnEdiSearchClub: TButtonedEdit
          Left = 1
          Top = 72
          Width = 165
          Height = 21
          Align = alTop
          Images = ImageList1
          ParentShowHint = False
          RightButton.DisabledImageIndex = 17
          RightButton.Hint = 'Ricerca la squadra'
          RightButton.HotImageIndex = 18
          RightButton.ImageIndex = 16
          RightButton.PressedImageIndex = 17
          RightButton.Visible = True
          ShowHint = True
          TabOrder = 1
          TextHint = 'ricerca club'
          OnChange = btnEdiSearchClubChange
        end
        object grdClubs: TCRDBGrid
          Left = 1
          Top = 93
          Width = 165
          Height = 303
          Align = alClient
          Color = clWhite
          DataSource = dsClubs
          FixedColor = 16250613
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'club_name'
              Title.Caption = 'Nome del Club'
              Width = 132
              Visible = True
            end>
        end
        object Panel66: TShader
          Left = 1
          Top = 19
          Width = 165
          Height = 40
          Align = alTop
          Caption = 'Panel66'
          TabOrder = 3
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          object SpeedButton10: TAdvGlowButton
            Left = 1
            Top = 1
            Width = 55
            Height = 38
            Align = alLeft
            Caption = 'Nuovo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 15
            Images = ImageList
            DisabledImages = ImageListDisabled
            HotImages = ImageListHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Rounded = False
            TabOrder = 0
            OnClick = SpeedButton10Click
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
            Appearance.TextColorDisabled = 13948116
            Layout = blGlyphTopAdjusted
            UIStyle = tsWindows10
          end
          object SpeedButton21: TAdvGlowButton
            Left = 56
            Top = 1
            Width = 50
            Height = 38
            Align = alLeft
            Caption = 'Vedi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 19
            Images = ImageList
            DisabledImages = ImageListDisabled
            HotImages = ImageListHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Rounded = False
            TabOrder = 1
            OnClick = SpeedButton21Click
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
            Appearance.TextColorDisabled = 13948116
            Layout = blGlyphTopAdjusted
            UIStyle = tsWindows10
          end
          object SpeedButton22: TAdvGlowButton
            Left = 106
            Top = 1
            Width = 58
            Height = 38
            Align = alClient
            Caption = 'Clona'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 13
            Images = ImageList
            DisabledImages = ImageListDisabled
            HotImages = ImageListHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Rounded = False
            TabOrder = 2
            OnClick = SpeedButton10Click
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
            Appearance.TextColorDisabled = 13948116
            Layout = blGlyphTopAdjusted
            UIStyle = tsWindows10
          end
        end
        object grdTeamsClubsLeagues: TEnhCRDBGrid
          Left = 1
          Top = 396
          Width = 165
          Height = 216
          Align = alBottom
          DataSource = dmUniDacPgChampionships.dsTeams
          Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 4
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
              FieldName = 'team_name'
              Width = 160
              Visible = True
            end>
        end
      end
      object Panel10: TPanel
        Left = 169
        Top = 2
        Width = 584
        Height = 612
        Align = alClient
        Caption = 'Panel10'
        TabOrder = 1
        ExplicitWidth = 580
        ExplicitHeight = 611
        object pgClubsAnagraphs: TAdvOfficePager
          Left = 1
          Top = 1
          Width = 582
          Height = 610
          AdvOfficePagerStyler = AdvOfficePagerOfficeStyler1
          Align = alClient
          ActivePage = pgClubsManageAnagraphs
          ButtonSettings.CloseButtonPicture.Data = {
            424DA20400000000000036040000280000000900000009000000010008000000
            00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001000001010100000100
            0000000202000100020200000000000202020002020200000000010002020202
            0200010000000101000202020001010000000100020202020200010000000002
            0202000202020000000000020200010002020000000001000001010100000100
            0000}
          ButtonSettings.PageListButtonPicture.Data = {
            424DA20400000000000036040000280000000900000009000000010008000000
            00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000101010100
            0000010101000200010101000000010100020202000101000000010002020202
            0200010000000002020200020202000000000002020001000202000000000100
            0001010100000100000001010101010101010100000001010101010101010100
            0000}
          ButtonSettings.ScrollButtonPrevPicture.Data = {
            424DA20400000000000036040000280000000900000009000000010008000000
            00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000001010100
            0000010101000202000101000000010100020202000101000000010002020200
            0101010000000002020200010101010000000100020202000101010000000101
            0002020200010100000001010100020200010100000001010101000001010100
            0000}
          ButtonSettings.ScrollButtonNextPicture.Data = {
            424DA20400000000000036040000280000000900000009000000010008000000
            00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010000010101010100
            0000010002020001010101000000010002020200010101000000010100020202
            0001010000000101010002020200010000000101000202020001010000000100
            0202020001010100000001000202000101010100000001010000010101010100
            0000}
          ButtonSettings.ScrollButtonFirstPicture.Data = {
            424DC60400000000000036040000280000001000000009000000010008000000
            000000000000C40E0000C40E00000001000000010000427B84FFDEEFEFFFFFFF
            FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF01010101010000010101
            0101000001010101010100020200010101000202000101010100020202000101
            0002020200010101000202020001010002020200010101000202020001010002
            0202000101010101000202020001010002020200010101010100020202000101
            0002020200010101010100020200010101000202000101010101010000010101
            010100000101}
          ButtonSettings.ScrollButtonLastPicture.Data = {
            424DC60400000000000036040000280000001000000009000000010008000000
            000000000000C40E0000C40E00000001000000010000427B84FFDEEFEFFFFFFF
            FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
            00FF000000FF000000FF000000FF000000FF000000FF01010000010101010100
            0001010101010100020200010101000202000101010101000202020001010002
            0202000101010101000202020001010002020200010101010100020202000101
            0002020200010101000202020001010002020200010101000202020001010002
            0202000101010100020200010101000202000101010101010000010101010100
            000101010101}
          ButtonSettings.ClosedListButtonPicture.Data = {
            424DA20400000000000036040000280000000900000009000000010008000000
            00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000101010100
            0000010101000200010101000000010100020202000101000000010002020202
            0200010000000002020200020202000000000002020001000202000000000100
            0001010100000100000001010101010101010100000001010101010101010100
            0000}
          ButtonSettings.CloseButtonHint = 'Close'
          ButtonSettings.InsertButtonHint = 'Insert new page'
          ButtonSettings.PageListButtonHint = 'Page List'
          ButtonSettings.ScrollButtonNextHint = 'Next'
          ButtonSettings.ScrollButtonPrevHint = 'Previous'
          ButtonSettings.ScrollButtonFirstHint = 'First'
          ButtonSettings.ScrollButtonLastHint = 'Last'
          ButtonSettings.ClosedListButtonHint = 'Closed Pages'
          DoubleBuffered = True
          TabSettings.Rounding = 0
          Text = ''
          ShowShortCutHints = False
          TabOrder = 0
          ExplicitWidth = 578
          ExplicitHeight = 609
          NextPictureChanged = False
          PrevPictureChanged = False
          object pgClubsClub: TAdvOfficePage
            Left = 1
            Top = 26
            Width = 580
            Height = 582
            Caption = 'Clubs'
            DoubleBuffered = True
            PageAppearance.BorderColor = 14474202
            PageAppearance.Color = 16250613
            PageAppearance.ColorTo = 16250613
            PageAppearance.ColorMirror = 16250613
            PageAppearance.ColorMirrorTo = 16250613
            PageAppearance.Gradient = ggVertical
            PageAppearance.GradientMirror = ggVertical
            Text = ''
            TabAppearance.BorderColor = clNone
            TabAppearance.BorderColorHot = 15527147
            TabAppearance.BorderColorSelected = 14474202
            TabAppearance.BorderColorSelectedHot = 14474202
            TabAppearance.BorderColorDisabled = clNone
            TabAppearance.BorderColorDown = 14474202
            TabAppearance.Color = clWhite
            TabAppearance.ColorTo = clWhite
            TabAppearance.ColorSelected = 16250613
            TabAppearance.ColorSelectedTo = 16250613
            TabAppearance.ColorDisabled = 15921906
            TabAppearance.ColorDisabledTo = 15921906
            TabAppearance.ColorHot = 16776701
            TabAppearance.ColorHotTo = clNone
            TabAppearance.ColorMirror = clWhite
            TabAppearance.ColorMirrorTo = clWhite
            TabAppearance.ColorMirrorHot = 16776701
            TabAppearance.ColorMirrorHotTo = clNone
            TabAppearance.ColorMirrorSelected = 16250613
            TabAppearance.ColorMirrorSelectedTo = 16250613
            TabAppearance.ColorMirrorDisabled = 15921906
            TabAppearance.ColorMirrorDisabledTo = 15921906
            TabAppearance.Font.Charset = DEFAULT_CHARSET
            TabAppearance.Font.Color = clWindowText
            TabAppearance.Font.Height = -11
            TabAppearance.Font.Name = 'Tahoma'
            TabAppearance.Font.Style = []
            TabAppearance.Gradient = ggVertical
            TabAppearance.GradientMirror = ggVertical
            TabAppearance.GradientHot = ggVertical
            TabAppearance.GradientMirrorHot = ggVertical
            TabAppearance.GradientSelected = ggVertical
            TabAppearance.GradientMirrorSelected = ggVertical
            TabAppearance.GradientDisabled = ggVertical
            TabAppearance.GradientMirrorDisabled = ggVertical
            TabAppearance.TextColor = clBlack
            TabAppearance.TextColorHot = clBlack
            TabAppearance.TextColorSelected = clBlack
            TabAppearance.TextColorDisabled = clGray
            TabAppearance.ShadowColor = clNone
            TabAppearance.HighLightColor = clNone
            TabAppearance.HighLightColorHot = clNone
            TabAppearance.HighLightColorSelected = clNone
            TabAppearance.HighLightColorSelectedHot = clNone
            TabAppearance.HighLightColorDown = clNone
            TabAppearance.DrawLine = False
            TabAppearance.BackGround.Color = clWhite
            TabAppearance.BackGround.ColorTo = clNone
            TabAppearance.BackGround.Direction = gdHorizontal
            object Panel48: TShader
              Left = 2
              Top = 2
              Width = 576
              Height = 580
              Align = alClient
              Caption = 'Panel48'
              TabOrder = 0
              FromColor = 16250613
              ToColor = 16250613
              Direction = False
              Version = '1.4.2.1'
              ExplicitWidth = 572
              ExplicitHeight = 577
              object Panel51: TShader
                Left = 1
                Top = 1
                Width = 574
                Height = 240
                Align = alTop
                Caption = 'Panel51'
                TabOrder = 0
                FromColor = 16250613
                ToColor = 16250613
                Direction = False
                Version = '1.4.2.1'
                ExplicitWidth = 570
                object Panel5: TShader
                  Left = 1
                  Top = 1
                  Width = 351
                  Height = 238
                  Align = alLeft
                  Caption = 'Panel5'
                  TabOrder = 0
                  FromColor = 16250613
                  ToColor = 16250613
                  Direction = False
                  Version = '1.4.2.1'
                  object grdTeamsClubsMain: TEnhCRDBGrid
                    Left = 1
                    Top = 42
                    Width = 349
                    Height = 195
                    Align = alClient
                    DataSource = dmUniDacPgChampionships.dsTeams
                    FixedColor = 16250613
                    TabOrder = 0
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
                        Title.Caption = 'ID'
                        Width = 41
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'team_name'
                        Title.Caption = 'Squadra'
                        Width = 91
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'league_name'
                        Title.Caption = 'Nome Campionato'
                        Width = 157
                        Visible = True
                      end>
                  end
                  object Panel49: TShader
                    Left = 1
                    Top = 1
                    Width = 349
                    Height = 41
                    Align = alTop
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                    FromColor = 16250613
                    ToColor = 16250613
                    Direction = False
                    Version = '1.4.2.1'
                    object Label8: TLabel
                      Left = 1
                      Top = 1
                      Width = 148
                      Height = 13
                      Align = alTop
                      Alignment = taCenter
                      Caption = 'Squadre Iscritte al Campionato'
                      Transparent = True
                    end
                    object SpeedButton11: TAdvGlowButton
                      Left = 185
                      Top = 14
                      Width = 91
                      Height = 26
                      Align = alLeft
                      Caption = 'Nuova Squadra'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      NotesFont.Charset = DEFAULT_CHARSET
                      NotesFont.Color = clWindowText
                      NotesFont.Height = -11
                      NotesFont.Name = 'Tahoma'
                      NotesFont.Style = []
                      ParentFont = False
                      Rounded = False
                      TabOrder = 2
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
                      Appearance.TextColorDisabled = 13948116
                      UIStyle = tsWindows10
                    end
                    object navTeamsClubsMain: TDBAdvGlowNavigator
                      Left = 54
                      Top = 14
                      Width = 131
                      Height = 26
                      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
                      Align = alLeft
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
                      Style = tsWindows10
                      TabOrder = 0
                      Version = '1.2.1.0'
                    end
                    object Button5: TAdvGlowButton
                      Left = 1
                      Top = 14
                      Width = 53
                      Height = 26
                      Align = alLeft
                      Caption = 'Scheda'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      NotesFont.Charset = DEFAULT_CHARSET
                      NotesFont.Color = clWindowText
                      NotesFont.Height = -11
                      NotesFont.Name = 'Tahoma'
                      NotesFont.Style = []
                      ParentFont = False
                      Rounded = False
                      TabOrder = 1
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
                      Appearance.TextColorDisabled = 13948116
                      UIStyle = tsWindows10
                    end
                  end
                end
                object Panel53: TShader
                  Left = 352
                  Top = 1
                  Width = 221
                  Height = 238
                  Align = alClient
                  Caption = 'Panel53'
                  TabOrder = 1
                  FromColor = 16250613
                  ToColor = 16250613
                  Direction = False
                  Version = '1.4.2.1'
                  ExplicitWidth = 217
                  object Panel54: TShader
                    Left = 1
                    Top = 18
                    Width = 219
                    Height = 27
                    Align = alTop
                    TabOrder = 0
                    FromColor = 16250613
                    ToColor = 16250613
                    Direction = False
                    Version = '1.4.2.1'
                    ExplicitWidth = 215
                    object DBNavigator6: TDBAdvGlowNavigator
                      Left = 1
                      Top = 1
                      Width = 128
                      Height = 25
                      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
                      Align = alLeft
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
                      Style = tsWindows10
                      TabOrder = 0
                      Version = '1.2.1.0'
                    end
                    object Button1: TAdvGlowButton
                      Left = 129
                      Top = 1
                      Width = 96
                      Height = 25
                      Align = alLeft
                      Caption = 'Aggiungi in Rosa'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      NotesFont.Charset = DEFAULT_CHARSET
                      NotesFont.Color = clWindowText
                      NotesFont.Height = -11
                      NotesFont.Name = 'Tahoma'
                      NotesFont.Style = []
                      ParentFont = False
                      Rounded = False
                      TabOrder = 1
                      OnClick = Button1Click
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
                      Appearance.TextColorDisabled = 13948116
                      UIStyle = tsWindows10
                    end
                    object Button7: TAdvGlowButton
                      Left = 225
                      Top = 1
                      Width = 53
                      Height = 25
                      Align = alLeft
                      Caption = 'Scheda'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      NotesFont.Charset = DEFAULT_CHARSET
                      NotesFont.Color = clWindowText
                      NotesFont.Height = -11
                      NotesFont.Name = 'Tahoma'
                      NotesFont.Style = []
                      ParentFont = False
                      Rounded = False
                      TabOrder = 2
                      OnClick = Button7Click
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
                      Appearance.TextColorDisabled = 13948116
                      UIStyle = tsWindows10
                    end
                  end
                  object grdClubPlayers: TEnhCRDBGrid
                    Left = 1
                    Top = 45
                    Width = 219
                    Height = 192
                    Align = alClient
                    DataSource = dmUniDacPgChampionships.dsClubPlayers
                    FixedColor = 16250613
                    TabOrder = 1
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
                        FieldName = 'fullname'
                        Title.Caption = 'Cognome'
                        Width = 241
                        Visible = True
                      end>
                  end
                  object Panel60: TShader
                    Left = 1
                    Top = 1
                    Width = 219
                    Height = 17
                    Align = alTop
                    Caption = 'Giocatori del Club (tutte le squadre della stagioine)'
                    Color = clSkyBlue
                    ParentBackground = False
                    TabOrder = 2
                    FromColor = 16250613
                    ToColor = 16250613
                    Direction = False
                    Version = '1.4.2.1'
                    ExplicitWidth = 215
                  end
                end
              end
              object Panel55: TShader
                Left = 1
                Top = 241
                Width = 352
                Height = 338
                Align = alLeft
                Caption = 'Panel55'
                TabOrder = 1
                FromColor = 16250613
                ToColor = 16250613
                Direction = False
                Version = '1.4.2.1'
                ExplicitHeight = 335
                object Panel56: TShader
                  Left = 1
                  Top = 1
                  Width = 350
                  Height = 35
                  Align = alTop
                  Caption = 'Panel54'
                  TabOrder = 0
                  FromColor = 16250613
                  ToColor = 16250613
                  Direction = False
                  Version = '1.4.2.1'
                  object navTeamPlayers: TDBAdvGlowNavigator
                    Left = 1
                    Top = 1
                    Width = 144
                    Height = 33
                    VisibleButtons = [nbFirst, nbLast, nbDelete, nbPost, nbCancel, nbRefresh]
                    Align = alLeft
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
                    Style = tsWindows10
                    TabOrder = 0
                    Version = '1.2.1.0'
                  end
                  object Button3: TAdvGlowButton
                    Left = 145
                    Top = 1
                    Width = 53
                    Height = 33
                    Align = alLeft
                    Caption = 'Scheda'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    NotesFont.Charset = DEFAULT_CHARSET
                    NotesFont.Color = clWindowText
                    NotesFont.Height = -11
                    NotesFont.Name = 'Tahoma'
                    NotesFont.Style = []
                    ParentFont = False
                    Rounded = False
                    TabOrder = 1
                    OnClick = Button3Click
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
                    Appearance.TextColorDisabled = 13948116
                    UIStyle = tsWindows10
                  end
                  object Button4: TAdvGlowButton
                    Left = 198
                    Top = 1
                    Width = 53
                    Height = 33
                    Align = alLeft
                    Caption = 'Elimina'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    NotesFont.Charset = DEFAULT_CHARSET
                    NotesFont.Color = clWindowText
                    NotesFont.Height = -11
                    NotesFont.Name = 'Tahoma'
                    NotesFont.Style = []
                    ParentFont = False
                    Rounded = False
                    TabOrder = 2
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
                    Appearance.TextColorDisabled = 13948116
                    UIStyle = tsWindows10
                  end
                  object AdvGlowButton12: TAdvGlowButton
                    Left = 251
                    Top = 1
                    Width = 78
                    Height = 33
                    Align = alLeft
                    Caption = 'Esporta'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    NotesFont.Charset = DEFAULT_CHARSET
                    NotesFont.Color = clWindowText
                    NotesFont.Height = -11
                    NotesFont.Name = 'Tahoma'
                    NotesFont.Style = []
                    ParentFont = False
                    Rounded = False
                    TabOrder = 3
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
                    Appearance.TextColorDisabled = 13948116
                    DropDownButton = True
                    DropDownMenu = popRosa
                    UIStyle = tsWindows10
                  end
                end
                object grdTeamPlayers: TEnhCRDBGrid
                  Left = 1
                  Top = 118
                  Width = 350
                  Height = 219
                  Align = alClient
                  DataSource = dsTeamPlayers
                  FixedColor = 16250613
                  TabOrder = 1
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
                      FieldName = 'fullname'
                      Title.Caption = 'Cognome'
                      Width = 312
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'club_origin_id'
                      Width = 69
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'lkpOriginClubName'
                      Width = 772
                      Visible = True
                    end>
                end
                object Shader8: TShader
                  Left = 1
                  Top = 36
                  Width = 350
                  Height = 82
                  Align = alTop
                  TabOrder = 2
                  FromColor = 16250613
                  ToColor = 16250613
                  Direction = False
                  Version = '1.4.2.1'
                  object Label21: TLabel
                    Left = 6
                    Top = 4
                    Width = 45
                    Height = 13
                    Caption = 'Cognome'
                    FocusControl = edClubPlayerFamilyName
                    Transparent = True
                  end
                  object Label22: TLabel
                    Left = 143
                    Top = 4
                    Width = 27
                    Height = 13
                    Caption = 'Nome'
                    FocusControl = edClubPlayerName
                    Transparent = True
                  end
                  object Label23: TLabel
                    Left = 271
                    Top = 4
                    Width = 34
                    Height = 13
                    Caption = 'Nato il:'
                    FocusControl = edClubPlayerName
                    Transparent = True
                  end
                  object Label24: TLabel
                    Left = 5
                    Top = 44
                    Width = 19
                    Height = 13
                    Caption = 'Gol:'
                    FocusControl = edClubPlayerName
                    Transparent = True
                  end
                  object Label25: TLabel
                    Left = 54
                    Top = 44
                    Width = 30
                    Height = 13
                    Caption = 'Subiti:'
                    FocusControl = edClubPlayerName
                    Transparent = True
                  end
                  object Label26: TLabel
                    Left = 98
                    Top = 44
                    Width = 37
                    Height = 13
                    Caption = 'Autogol'
                    FocusControl = edClubPlayerName
                    Transparent = True
                  end
                  object Label27: TLabel
                    Left = 143
                    Top = 44
                    Width = 46
                    Height = 13
                    Caption = 'Espulsioni'
                    FocusControl = edClubPlayerName
                    Transparent = True
                  end
                  object Label28: TLabel
                    Left = 245
                    Top = 44
                    Width = 28
                    Height = 13
                    Caption = 'Minuti'
                    FocusControl = edClubPlayerName
                    Transparent = True
                  end
                  object Label29: TLabel
                    Left = 194
                    Top = 44
                    Width = 42
                    Height = 13
                    Caption = 'Infortuni'
                    FocusControl = edClubPlayerName
                    Transparent = True
                  end
                  object Label30: TLabel
                    Left = 289
                    Top = 44
                    Width = 32
                    Height = 13
                    Caption = 'Partite'
                    FocusControl = edClubPlayerName
                    Transparent = True
                  end
                  object edClubPlayerFamilyName: TDBEdit
                    Left = 5
                    Top = 20
                    Width = 132
                    Height = 21
                    DataField = 'family_name'
                    DataSource = dsTeamPlayers
                    TabOrder = 0
                  end
                  object edClubPlayerName: TDBEdit
                    Left = 143
                    Top = 20
                    Width = 122
                    Height = 21
                    DataField = 'first_name'
                    DataSource = dsTeamPlayers
                    TabOrder = 1
                  end
                  object edClubPlayerBirth: TDBEdit
                    Left = 271
                    Top = 20
                    Width = 69
                    Height = 21
                    DataField = 'birth_date'
                    DataSource = dsTeamPlayers
                    TabOrder = 2
                  end
                  object DBEdit14: TDBEdit
                    Left = 5
                    Top = 60
                    Width = 41
                    Height = 21
                    DataField = 'goal'
                    DataSource = dsTeamPlayers
                    TabOrder = 3
                  end
                  object DBEdit15: TDBEdit
                    Left = 52
                    Top = 60
                    Width = 41
                    Height = 21
                    DataField = 'lostgoal'
                    DataSource = dsTeamPlayers
                    TabOrder = 4
                  end
                  object DBEdit16: TDBEdit
                    Left = 98
                    Top = 60
                    Width = 41
                    Height = 21
                    DataField = 'owngoal'
                    DataSource = dsTeamPlayers
                    TabOrder = 5
                  end
                  object DBEdit17: TDBEdit
                    Left = 143
                    Top = 60
                    Width = 41
                    Height = 21
                    DataField = 'sent_off'
                    DataSource = dsTeamPlayers
                    TabOrder = 6
                  end
                  object DBEdit18: TDBEdit
                    Left = 242
                    Top = 60
                    Width = 41
                    Height = 21
                    DataField = 'minutes'
                    DataSource = dsTeamPlayers
                    TabOrder = 7
                  end
                  object DBEdit19: TDBEdit
                    Left = 194
                    Top = 60
                    Width = 41
                    Height = 21
                    DataField = 'injuries'
                    DataSource = dsTeamPlayers
                    TabOrder = 8
                  end
                  object DBEdit20: TDBEdit
                    Left = 289
                    Top = 60
                    Width = 41
                    Height = 21
                    DataField = 'matches'
                    DataSource = dsTeamPlayers
                    TabOrder = 9
                  end
                end
              end
              object Panel57: TShader
                Left = 353
                Top = 241
                Width = 222
                Height = 338
                Align = alClient
                Caption = 'Panel57'
                TabOrder = 2
                FromColor = 16250613
                ToColor = 16250613
                Direction = False
                Version = '1.4.2.1'
                ExplicitWidth = 218
                ExplicitHeight = 335
                object Panel58: TShader
                  Left = 1
                  Top = 1
                  Width = 220
                  Height = 35
                  Align = alTop
                  TabOrder = 0
                  FromColor = 16250613
                  ToColor = 16250613
                  Direction = False
                  Version = '1.4.2.1'
                  ExplicitWidth = 216
                  object Label3: TLabel
                    AlignWithMargins = True
                    Left = 68
                    Top = 4
                    Width = 111
                    Height = 13
                    Align = alLeft
                    Caption = 'Team anno Precedente'
                    Transparent = True
                    Layout = tlCenter
                  end
                  object Button2: TAdvGlowButton
                    Left = 182
                    Top = 1
                    Width = 90
                    Height = 33
                    Align = alLeft
                    Caption = 'Copia Selezione'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    NotesFont.Charset = DEFAULT_CHARSET
                    NotesFont.Color = clWindowText
                    NotesFont.Height = -11
                    NotesFont.Name = 'Tahoma'
                    NotesFont.Style = []
                    ParentFont = False
                    Rounded = False
                    TabOrder = 0
                    OnClick = Button2Click
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
                    Appearance.TextColorDisabled = 13948116
                    UIStyle = tsWindows10
                  end
                  object Button8: TAdvGlowButton
                    Left = 272
                    Top = 1
                    Width = 53
                    Height = 33
                    Align = alLeft
                    Caption = 'Scheda'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    NotesFont.Charset = DEFAULT_CHARSET
                    NotesFont.Color = clWindowText
                    NotesFont.Height = -11
                    NotesFont.Name = 'Tahoma'
                    NotesFont.Style = []
                    ParentFont = False
                    Rounded = False
                    TabOrder = 1
                    OnClick = Button8Click
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
                    Appearance.TextColorDisabled = 13948116
                    UIStyle = tsWindows10
                  end
                  object navTeamPlayersLast: TDBAdvGlowNavigator
                    Left = 1
                    Top = 1
                    Width = 64
                    Height = 33
                    VisibleButtons = [nbFirst, nbLast, nbRefresh]
                    Align = alLeft
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
                    Style = tsWindows10
                    TabOrder = 2
                    Version = '1.2.1.0'
                  end
                end
                object grdTeamPlayersLast: TEnhCRDBGrid
                  Left = 1
                  Top = 36
                  Width = 220
                  Height = 301
                  Align = alClient
                  DataSource = dmUniDacPgChampionships.dsTeamLastSeason
                  FixedColor = 16250613
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  OnDblClick = grdTeamPlayersLastDblClick
                  HighlightBGColor = clBlack
                  HighlightFont.Charset = DEFAULT_CHARSET
                  HighlightFont.Color = clWindowText
                  HighlightFont.Height = -11
                  HighlightFont.Name = 'Tahoma'
                  HighlightFont.Style = []
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'fullname'
                      Title.Caption = 'Cognome'
                      Width = 248
                      Visible = True
                    end>
                end
              end
            end
          end
          object pgClubsTeams: TAdvOfficePage
            Left = 1
            Top = 26
            Width = 580
            Height = 582
            Caption = 'Anagrafica e Storico Clubs'
            DoubleBuffered = True
            PageAppearance.BorderColor = 14474202
            PageAppearance.Color = 16250613
            PageAppearance.ColorTo = 16250613
            PageAppearance.ColorMirror = 16250613
            PageAppearance.ColorMirrorTo = 16250613
            PageAppearance.Gradient = ggVertical
            PageAppearance.GradientMirror = ggVertical
            Text = ''
            TabAppearance.BorderColor = clNone
            TabAppearance.BorderColorHot = 15527147
            TabAppearance.BorderColorSelected = 14474202
            TabAppearance.BorderColorSelectedHot = 14474202
            TabAppearance.BorderColorDisabled = clNone
            TabAppearance.BorderColorDown = 14474202
            TabAppearance.Color = clWhite
            TabAppearance.ColorTo = clWhite
            TabAppearance.ColorSelected = 16250613
            TabAppearance.ColorSelectedTo = 16250613
            TabAppearance.ColorDisabled = 15921906
            TabAppearance.ColorDisabledTo = 15921906
            TabAppearance.ColorHot = 16776701
            TabAppearance.ColorHotTo = clNone
            TabAppearance.ColorMirror = clWhite
            TabAppearance.ColorMirrorTo = clWhite
            TabAppearance.ColorMirrorHot = 16776701
            TabAppearance.ColorMirrorHotTo = clNone
            TabAppearance.ColorMirrorSelected = 16250613
            TabAppearance.ColorMirrorSelectedTo = 16250613
            TabAppearance.ColorMirrorDisabled = 15921906
            TabAppearance.ColorMirrorDisabledTo = 15921906
            TabAppearance.Font.Charset = DEFAULT_CHARSET
            TabAppearance.Font.Color = clWindowText
            TabAppearance.Font.Height = -11
            TabAppearance.Font.Name = 'Tahoma'
            TabAppearance.Font.Style = []
            TabAppearance.Gradient = ggVertical
            TabAppearance.GradientMirror = ggVertical
            TabAppearance.GradientHot = ggVertical
            TabAppearance.GradientMirrorHot = ggVertical
            TabAppearance.GradientSelected = ggVertical
            TabAppearance.GradientMirrorSelected = ggVertical
            TabAppearance.GradientDisabled = ggVertical
            TabAppearance.GradientMirrorDisabled = ggVertical
            TabAppearance.TextColor = clBlack
            TabAppearance.TextColorHot = clBlack
            TabAppearance.TextColorSelected = clBlack
            TabAppearance.TextColorDisabled = clGray
            TabAppearance.ShadowColor = clNone
            TabAppearance.HighLightColor = clNone
            TabAppearance.HighLightColorHot = clNone
            TabAppearance.HighLightColorSelected = clNone
            TabAppearance.HighLightColorSelectedHot = clNone
            TabAppearance.HighLightColorDown = clNone
            TabAppearance.DrawLine = False
            TabAppearance.BackGround.Color = clWhite
            TabAppearance.BackGround.ColorTo = clNone
            TabAppearance.BackGround.Direction = gdHorizontal
            object grdTeamRankings: TCRDBGrid
              Left = 259
              Top = 2
              Width = 319
              Height = 580
              Align = alClient
              Ctl3D = True
              DataSource = dmUniDacPgChampionships.dsTeamRankings
              FixedColor = 16250613
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentCtl3D = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'season_code'
                  Title.Caption = 'Classifica|Stg.'
                  Width = 33
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'league_name'
                  Title.Caption = 'Classifica| Campionato'
                  Width = 117
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'pos'
                  Title.Caption = 'Classifica|Pos'
                  Width = 24
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'played_matches'
                  Title.Caption = 'Risultati|G'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'won_matches'
                  Title.Caption = 'Risultati|V'
                  Width = 26
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'tied_matches'
                  Title.Caption = 'Risultati|N'
                  Width = 26
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'lost_matches'
                  Title.Caption = 'Risultati|P'
                  Width = 26
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'goal_done'
                  Title.Caption = 'Goal|F.'
                  Width = 26
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'goal_lost'
                  Title.Caption = 'Goal|S.'
                  Width = 26
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'home_matches'
                  Title.Caption = 'Risultati in Casa|G'
                  Width = 26
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'home_won'
                  Title.Caption = 'Risultati in Casa|V'
                  Width = 26
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'home_tied'
                  Title.Caption = 'Risultati in Casa|N'
                  Width = 26
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'home_lost'
                  Title.Caption = 'Risultati in Casa|P'
                  Width = 26
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'outside_played'
                  Title.Caption = 'Risultati fuori Casa|G'
                  Width = 26
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'outside_won'
                  Title.Caption = 'Risultati fuori Casa|V'
                  Width = 26
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'outside_lost'
                  Title.Caption = 'Risultati fuori Casa|P'
                  Width = 26
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'outside_tied'
                  Title.Caption = 'Risultati fuori Casa|N'
                  Width = 26
                  Visible = True
                end>
            end
            object Shader24: TShader
              Left = 2
              Top = 2
              Width = 257
              Height = 580
              Align = alLeft
              Caption = 'Panel39'
              TabOrder = 1
              FromColor = 16250613
              ToColor = 16250613
              Direction = False
              Version = '1.4.2.1'
              ExplicitHeight = 577
              object navTeamsClubs: TDBAdvGlowNavigator
                Left = 1
                Top = 25
                Width = 255
                Height = 21
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                Align = alTop
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
                Style = tsWindows10
                TabOrder = 0
                Version = '1.2.1.0'
              end
              object Shader25: TShader
                Left = 1
                Top = 1
                Width = 255
                Height = 24
                Align = alTop
                Caption = 'Squadre In organico'
                Color = clSkyBlue
                ParentBackground = False
                TabOrder = 1
                FromColor = 16250613
                ToColor = 16250613
                Direction = False
                Version = '1.4.2.1'
              end
              object grdTeamsClubs: TEnhCRDBGrid
                Left = 1
                Top = 46
                Width = 255
                Height = 147
                Align = alTop
                DataSource = dmUniDacPgChampionships.dsTeamsClubsLeagues
                FixedColor = 16250613
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
                    FieldName = 'team_id'
                    Title.Caption = 'ID'
                    Width = 34
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'team_name'
                    Width = 181
                    Visible = True
                  end>
              end
              object grdTeamHistory: TEnhCRDBGrid
                Left = 1
                Top = 223
                Width = 255
                Height = 356
                Align = alClient
                DataSource = dmUniDacPgChampionships.dsTeamHistory
                FixedColor = 16250613
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
                    FieldName = 'season_code'
                    Title.Caption = 'Stagione'
                    Width = 46
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'league_code'
                    Title.Caption = 'Camp.'
                    Width = 61
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'pos'
                    Width = 30
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'rank_code'
                    Title.Caption = 'Finale'
                    Width = 76
                    Visible = True
                  end>
              end
              object navTeamHistory: TDBAdvGlowNavigator
                Left = 1
                Top = 193
                Width = 255
                Height = 30
                DataSource = dmUniDacPgChampionships.dsTeamRankings
                Align = alTop
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
                Style = tsWindows10
                TabOrder = 4
                Version = '1.2.1.0'
              end
            end
          end
          object pgClubsManageAnagraphs: TAdvOfficePage
            Left = 1
            Top = 26
            Width = 580
            Height = 582
            Caption = 'Anagrafiche dei Club'
            DoubleBuffered = True
            PageAppearance.BorderColor = 14474202
            PageAppearance.Color = 16250613
            PageAppearance.ColorTo = 16250613
            PageAppearance.ColorMirror = 16250613
            PageAppearance.ColorMirrorTo = 16250613
            PageAppearance.Gradient = ggVertical
            PageAppearance.GradientMirror = ggVertical
            Text = ''
            TabAppearance.BorderColor = clNone
            TabAppearance.BorderColorHot = 15527147
            TabAppearance.BorderColorSelected = 14474202
            TabAppearance.BorderColorSelectedHot = 14474202
            TabAppearance.BorderColorDisabled = clNone
            TabAppearance.BorderColorDown = 14474202
            TabAppearance.Color = clWhite
            TabAppearance.ColorTo = clWhite
            TabAppearance.ColorSelected = 16250613
            TabAppearance.ColorSelectedTo = 16250613
            TabAppearance.ColorDisabled = 15921906
            TabAppearance.ColorDisabledTo = 15921906
            TabAppearance.ColorHot = 16776701
            TabAppearance.ColorHotTo = clNone
            TabAppearance.ColorMirror = clWhite
            TabAppearance.ColorMirrorTo = clWhite
            TabAppearance.ColorMirrorHot = 16776701
            TabAppearance.ColorMirrorHotTo = clNone
            TabAppearance.ColorMirrorSelected = 16250613
            TabAppearance.ColorMirrorSelectedTo = 16250613
            TabAppearance.ColorMirrorDisabled = 15921906
            TabAppearance.ColorMirrorDisabledTo = 15921906
            TabAppearance.Font.Charset = DEFAULT_CHARSET
            TabAppearance.Font.Color = clWindowText
            TabAppearance.Font.Height = -11
            TabAppearance.Font.Name = 'Tahoma'
            TabAppearance.Font.Style = []
            TabAppearance.Gradient = ggVertical
            TabAppearance.GradientMirror = ggVertical
            TabAppearance.GradientHot = ggVertical
            TabAppearance.GradientMirrorHot = ggVertical
            TabAppearance.GradientSelected = ggVertical
            TabAppearance.GradientMirrorSelected = ggVertical
            TabAppearance.GradientDisabled = ggVertical
            TabAppearance.GradientMirrorDisabled = ggVertical
            TabAppearance.TextColor = clBlack
            TabAppearance.TextColorHot = clBlack
            TabAppearance.TextColorSelected = clBlack
            TabAppearance.TextColorDisabled = clGray
            TabAppearance.ShadowColor = clNone
            TabAppearance.HighLightColor = clNone
            TabAppearance.HighLightColorHot = clNone
            TabAppearance.HighLightColorSelected = clNone
            TabAppearance.HighLightColorSelectedHot = clNone
            TabAppearance.HighLightColorDown = clNone
            TabAppearance.DrawLine = False
            TabAppearance.BackGround.Color = clWhite
            TabAppearance.BackGround.ColorTo = clNone
            TabAppearance.BackGround.Direction = gdHorizontal
            object Shader9: TShader
              Left = 2
              Top = 2
              Width = 576
              Height = 159
              Align = alTop
              TabOrder = 0
              FromColor = 16250613
              ToColor = 16250613
              Direction = False
              Version = '1.4.2.1'
              ExplicitWidth = 572
              object Label31: TLabel
                Left = 16
                Top = 5
                Width = 123
                Height = 13
                Caption = 'Ragione Sociale Completa'
                FocusControl = DBEdit21
                Transparent = True
              end
              object Label32: TLabel
                Left = 18
                Top = 44
                Width = 40
                Height = 13
                Caption = 'Indirizzo'
                FocusControl = DBEdit22
                Transparent = True
              end
              object Label33: TLabel
                Left = 16
                Top = 80
                Width = 23
                Height = 13
                Caption = 'Citt'#224
                FocusControl = DBEdit23
                Transparent = True
              end
              object Label34: TLabel
                Left = 305
                Top = 79
                Width = 57
                Height = 13
                Caption = 'Cod Postale'
                FocusControl = DBEdit24
                Transparent = True
              end
              object Label36: TLabel
                Left = 368
                Top = 79
                Width = 43
                Height = 13
                Caption = 'Provincia'
                FocusControl = DBEdit26
                Transparent = True
              end
              object Label37: TLabel
                Left = 18
                Top = 118
                Width = 45
                Height = 13
                Caption = 'Tel. Fisso'
                FocusControl = DBEdit27
                Transparent = True
              end
              object Label38: TLabel
                Left = 120
                Top = 118
                Width = 41
                Height = 13
                Caption = 'Cellulare'
                FocusControl = DBEdit28
                Transparent = True
              end
              object Label39: TLabel
                Left = 199
                Top = 118
                Width = 61
                Height = 13
                Caption = 'Indirizzo Mail'
                FocusControl = DBEdit29
                Transparent = True
              end
              object DBEdit21: TDBEdit
                Left = 16
                Top = 21
                Width = 401
                Height = 21
                DataField = 'an_last_name'
                DataSource = dsClubsAnagraph
                TabOrder = 0
              end
              object DBEdit22: TDBEdit
                Left = 16
                Top = 58
                Width = 401
                Height = 21
                DataField = 'an_address'
                DataSource = dsClubsAnagraph
                TabOrder = 1
              end
              object DBEdit23: TDBEdit
                Left = 17
                Top = 93
                Width = 282
                Height = 21
                DataField = 'an_town'
                DataSource = dsClubsAnagraph
                TabOrder = 2
              end
              object DBEdit24: TDBEdit
                Left = 304
                Top = 93
                Width = 58
                Height = 21
                DataField = 'an_postal_code'
                DataSource = dsClubsAnagraph
                TabOrder = 3
              end
              object DBEdit26: TDBEdit
                Left = 379
                Top = 93
                Width = 38
                Height = 21
                DataField = 'an_state_province'
                DataSource = dsClubsAnagraph
                TabOrder = 4
              end
              object DBEdit27: TDBEdit
                Left = 17
                Top = 134
                Width = 95
                Height = 21
                DataField = 'an_phone'
                DataSource = dsClubsAnagraph
                TabOrder = 5
              end
              object DBEdit28: TDBEdit
                Left = 120
                Top = 134
                Width = 74
                Height = 21
                DataField = 'an_cellular'
                DataSource = dsClubsAnagraph
                TabOrder = 6
              end
              object DBEdit29: TDBEdit
                Left = 200
                Top = 134
                Width = 218
                Height = 21
                DataField = 'an_email'
                DataSource = dsClubsAnagraph
                TabOrder = 7
              end
              object DBImage1: TDBImage
                Left = 432
                Top = 9
                Width = 129
                Height = 105
                DataField = 'club_image'
                DataSource = dsClubs
                Stretch = True
                TabOrder = 8
              end
              object btnClubImage: TAdvGlowButton
                Left = 432
                Top = 116
                Width = 129
                Height = 37
                Caption = 'Carica Immagine'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Rounded = False
                TabOrder = 9
                OnClick = btnClubImageClick
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
                Appearance.TextColorDisabled = 13948116
                UIStyle = tsWindows10
              end
            end
            object EnhCRDBGrid4: TEnhCRDBGrid
              Left = 2
              Top = 189
              Width = 576
              Height = 289
              Align = alClient
              DataSource = dmSportAnagraph.dsSubAngraphs
              FixedColor = 16250613
              TabOrder = 1
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
                  FieldName = 'lkpGroupDes'
                  Title.Caption = 'Ruolo'
                  Width = 78
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'an_last_name'
                  Title.Caption = 'Cognome'
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'an_name'
                  Title.Caption = 'Nome'
                  Width = 128
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'an_cellular'
                  Title.Caption = 'Tel. Cellulare'
                  Width = 71
                  Visible = True
                end>
            end
            object Shader10: TShader
              Left = 2
              Top = 478
              Width = 576
              Height = 102
              Align = alBottom
              TabOrder = 2
              FromColor = 16250613
              ToColor = 16250613
              Direction = False
              Version = '1.4.2.1'
              ExplicitTop = 477
              ExplicitWidth = 572
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
                Top = 51
                Width = 77
                Height = 13
                Caption = 'Ruolo Societario'
                Transparent = True
              end
              object Label45: TLabel
                Left = 103
                Top = 54
                Width = 41
                Height = 13
                Caption = 'Cellulare'
                FocusControl = DBEdit35
                Transparent = True
              end
              object Label46: TLabel
                Left = 199
                Top = 54
                Width = 61
                Height = 13
                Caption = 'Indirizzo Mail'
                FocusControl = DBEdit36
                Transparent = True
              end
              object Label40: TLabel
                Left = 223
                Top = 5
                Width = 27
                Height = 13
                Caption = 'Nome'
                FocusControl = DBEdit30
                Transparent = True
              end
              object DBEdit25: TDBEdit
                Left = 2
                Top = 24
                Width = 215
                Height = 21
                DataField = 'an_last_name'
                DataSource = dmSportAnagraph.dsSubAngraphs
                TabOrder = 0
              end
              object DBEdit35: TDBEdit
                Left = 103
                Top = 70
                Width = 91
                Height = 21
                DataField = 'an_cellular'
                DataSource = dmSportAnagraph.dsSubAngraphs
                TabOrder = 1
              end
              object DBEdit36: TDBEdit
                Left = 200
                Top = 70
                Width = 218
                Height = 21
                DataField = 'an_email'
                DataSource = dmSportAnagraph.dsSubAngraphs
                TabOrder = 2
              end
              object DBEdit30: TDBEdit
                Left = 223
                Top = 24
                Width = 201
                Height = 21
                DataField = 'an_last_name'
                DataSource = dmSportAnagraph.dsSubAngraphs
                TabOrder = 3
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 2
                Top = 70
                Width = 95
                Height = 21
                DataField = 'lkpGroupDes'
                DataSource = dmSportAnagraph.dsSubAngraphs
                TabOrder = 4
              end
            end
            object Shader26: TShader
              Left = 2
              Top = 161
              Width = 576
              Height = 28
              Align = alTop
              TabOrder = 3
              FromColor = 16250613
              ToColor = 16250613
              Direction = False
              Version = '1.4.2.1'
              ExplicitWidth = 572
              object btnClubAnagraphNew: TAdvGlowButton
                Left = 114
                Top = 1
                Width = 63
                Height = 26
                Align = alLeft
                Caption = 'Nuovo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ImageIndex = 15
                Images = ImageList
                DisabledImages = ImageListDisabled
                HotImages = ImageListHot
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Rounded = False
                TabOrder = 0
                OnClick = btnClubAnagraphNewClick
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
                Appearance.TextColorDisabled = 13948116
                UIStyle = tsWindows10
              end
              object btnClubAnagraphEdit: TAdvGlowButton
                Left = 232
                Top = 1
                Width = 73
                Height = 26
                Align = alLeft
                Caption = 'Modifica'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ImageIndex = 19
                Images = ImageList
                DisabledImages = ImageListDisabled
                HotImages = ImageListHot
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Rounded = False
                TabOrder = 1
                OnClick = btnClubAnagraphEditClick
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
                Appearance.TextColorDisabled = 13948116
                UIStyle = tsWindows10
              end
              object btnClubAnagraphSave: TAdvGlowButton
                Left = 177
                Top = 1
                Width = 55
                Height = 26
                Align = alLeft
                Caption = 'Salva'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ImageIndex = 13
                Images = ImageList
                DisabledImages = ImageListDisabled
                HotImages = ImageListHot
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Rounded = False
                TabOrder = 2
                OnClick = btnClubAnagraphSaveClick
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
                Appearance.TextColorDisabled = 13948116
                UIStyle = tsWindows10
              end
              object btnClubAnagraphDelete: TAdvGlowButton
                Left = 305
                Top = 1
                Width = 64
                Height = 26
                Align = alLeft
                Caption = 'Elimina'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ImageIndex = 17
                Images = ImageList
                DisabledImages = ImageListDisabled
                HotImages = ImageListHot
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Rounded = False
                TabOrder = 3
                OnClick = SpeedButton21Click
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
                Appearance.TextColorDisabled = 13948116
                UIStyle = tsWindows10
              end
              object dbNavClubSubAnagraphs: TDBAdvGlowNavigator
                Left = 1
                Top = 1
                Width = 113
                Height = 26
                DataSource = dmSportAnagraph.dsSubAngraphs
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                Align = alLeft
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
                GlyphCustomSize = 16
                Ctl3D = True
                Hints.Strings = (
                  'Primo'
                  'Precedente'
                  'Successivo'
                  'Ultimo')
                Orientation = noHorizontal
                ParentCtl3D = False
                Style = tsWindows10
                TabOrder = 4
                Version = '1.2.1.0'
              end
            end
          end
        end
      end
    end
    object pgPlayers: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 755
      Height = 616
      Caption = 'Anagrafiche Giocatori'
      DoubleBuffered = True
      PageAppearance.BorderColor = 14474202
      PageAppearance.Color = 16250613
      PageAppearance.ColorTo = 16250613
      PageAppearance.ColorMirror = 16250613
      PageAppearance.ColorMirrorTo = 16250613
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabVisible = False
      Text = ''
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 15527147
      TabAppearance.BorderColorSelected = 14474202
      TabAppearance.BorderColorSelectedHot = 14474202
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = 14474202
      TabAppearance.Color = clWhite
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16250613
      TabAppearance.ColorSelectedTo = 16250613
      TabAppearance.ColorDisabled = 15921906
      TabAppearance.ColorDisabledTo = 15921906
      TabAppearance.ColorHot = 16776701
      TabAppearance.ColorHotTo = clNone
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 16776701
      TabAppearance.ColorMirrorHotTo = clNone
      TabAppearance.ColorMirrorSelected = 16250613
      TabAppearance.ColorMirrorSelectedTo = 16250613
      TabAppearance.ColorMirrorDisabled = 15921906
      TabAppearance.ColorMirrorDisabledTo = 15921906
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Tahoma'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggVertical
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = clBlack
      TabAppearance.TextColorSelected = clBlack
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = clNone
      TabAppearance.HighLightColor = clNone
      TabAppearance.HighLightColorHot = clNone
      TabAppearance.HighLightColorSelected = clNone
      TabAppearance.HighLightColorSelectedHot = clNone
      TabAppearance.HighLightColorDown = clNone
      TabAppearance.DrawLine = False
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = clNone
      TabAppearance.BackGround.Direction = gdHorizontal
      object Panel63: TShader
        Left = 2
        Top = 2
        Width = 751
        Height = 41
        Align = alTop
        TabOrder = 0
        FromColor = 16250613
        ToColor = 16250613
        Direction = False
        Version = '1.4.2.1'
        ExplicitWidth = 747
        object Panel65: TShader
          Left = 1
          Top = 1
          Width = 185
          Height = 39
          Align = alLeft
          TabOrder = 0
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          object Label5: TLabel
            Left = 1
            Top = 4
            Width = 95
            Height = 13
            Align = alBottom
            Caption = 'Nome del Calciatore'
          end
          object ButtonedEdit5: TButtonedEdit
            Left = 1
            Top = 17
            Width = 183
            Height = 21
            Align = alBottom
            Images = ImageList1
            ParentShowHint = False
            RightButton.DisabledImageIndex = 17
            RightButton.Hint = 'Ricerca la squadra'
            RightButton.HotImageIndex = 18
            RightButton.ImageIndex = 16
            RightButton.PressedImageIndex = 17
            RightButton.Visible = True
            ShowHint = True
            TabOrder = 0
            TextHint = 'Nome e/o cognome del giocatore'
            OnChange = ButtonedEditPlayersChange
            OnKeyUp = ButtonedEditPlayersKeyUp
          end
        end
        object DBAdvGlowNavigator1: TDBAdvGlowNavigator
          Left = 186
          Top = 1
          Width = 360
          Height = 39
          Align = alLeft
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
          Hints.Strings = (
            'First record'
            'Primo'
            'Precedente'
            'Prossimo'
            'Ultimo'
            'Inserisci'
            'Elimina'
            'Modifica'
            'Salva'
            'Annulla'
            'Aggiorna'
            'Trova'
            'Marca Segnalibro'
            'Vai a Segnalibro')
          Orientation = noHorizontal
          Style = tsWindows10
          TabOrder = 1
          Version = '1.2.1.0'
        end
      end
    end
    object pgUsersManagement: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 755
      Height = 616
      Caption = 'Gestione Utenti del Sistema'
      DoubleBuffered = True
      PageAppearance.BorderColor = 14474202
      PageAppearance.Color = 16250613
      PageAppearance.ColorTo = 16250613
      PageAppearance.ColorMirror = 16250613
      PageAppearance.ColorMirrorTo = 16250613
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      Text = ''
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 15527147
      TabAppearance.BorderColorSelected = 14474202
      TabAppearance.BorderColorSelectedHot = 14474202
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = 14474202
      TabAppearance.Color = clWhite
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16250613
      TabAppearance.ColorSelectedTo = 16250613
      TabAppearance.ColorDisabled = 15921906
      TabAppearance.ColorDisabledTo = 15921906
      TabAppearance.ColorHot = 16776701
      TabAppearance.ColorHotTo = clNone
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 16776701
      TabAppearance.ColorMirrorHotTo = clNone
      TabAppearance.ColorMirrorSelected = 16250613
      TabAppearance.ColorMirrorSelectedTo = 16250613
      TabAppearance.ColorMirrorDisabled = 15921906
      TabAppearance.ColorMirrorDisabledTo = 15921906
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Tahoma'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggVertical
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = clBlack
      TabAppearance.TextColorSelected = clBlack
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = clNone
      TabAppearance.HighLightColor = clNone
      TabAppearance.HighLightColorHot = clNone
      TabAppearance.HighLightColorSelected = clNone
      TabAppearance.HighLightColorSelectedHot = clNone
      TabAppearance.HighLightColorDown = clNone
      TabAppearance.DrawLine = False
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = clNone
      TabAppearance.BackGround.Direction = gdHorizontal
      object Shader28: TShader
        Left = 2
        Top = 2
        Width = 751
        Height = 48
        Align = alTop
        TabOrder = 0
        FromColor = 16250613
        ToColor = 16250613
        Direction = False
        Version = '1.4.2.1'
        ExplicitWidth = 747
        DesignSize = (
          751
          48)
        object lbUserID: TLabel
          Left = 695
          Top = 13
          Width = 41
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'lbUserID'
          ExplicitLeft = 703
        end
        object DBAdvNavigator1: TDBAdvNavigator
          Left = 1
          Top = 1
          Width = 100
          Height = 46
          AutoThemeAdapt = False
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alLeft
          Color = clBtnFace
          ColorTo = clNone
          ColorDown = clBtnFace
          ColorDownTo = clNone
          ColorHot = 13289415
          ColorHotTo = clNone
          DeleteDisabled = False
          InsertDisabled = False
          GlyphSize = gsSmall
          GlyphCustomSize = 0
          Orientation = noHorizontal
          TabOrder = 0
          Version = '1.3.1.2'
        end
        object btnUserAdd: TAdvGlowButton
          AlignWithMargins = True
          Left = 412
          Top = 4
          Width = 80
          Height = 40
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Rounded = False
          TabOrder = 1
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
          Appearance.TextColorDisabled = 13948116
          UIStyle = tsWindows10
        end
        object btnUserRevokePayment: TAdvGlowButton
          AlignWithMargins = True
          Left = 584
          Top = 4
          Width = 80
          Height = 40
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Rounded = False
          TabOrder = 2
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
          Appearance.TextColorDisabled = 13948116
          UIStyle = tsWindows10
        end
        object btnUserEnablePayment: TAdvGlowButton
          AlignWithMargins = True
          Left = 498
          Top = 4
          Width = 80
          Height = 40
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Rounded = False
          TabOrder = 3
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
          Appearance.TextColorDisabled = 13948116
          UIStyle = tsWindows10
        end
        object Shader29: TShader
          Left = 101
          Top = 1
          Width = 308
          Height = 46
          Align = alLeft
          TabOrder = 4
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          object sbSearchUser: TSearchBox
            Left = 12
            Top = 13
            Width = 154
            Height = 21
            TabOrder = 0
            TextHint = 'Nome Utente / Mail'
            OnChange = sbSearchUserChange
          end
          object rgSearchIndex: TAdvOfficeRadioGroup
            Left = 172
            Top = 3
            Width = 131
            Height = 39
            BorderColor = 15000546
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -12
            CaptionFont.Name = 'Segoe UI'
            CaptionFont.Style = []
            Version = '1.8.1.0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentCtl3D = True
            ParentFont = False
            TabOrder = 1
            OnClick = rgSearchIndexClick
            UIStyle = tsWindows10
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Nome'
              'E-Mail')
            Ellipsis = False
          end
        end
      end
      object EnhCRDBGrid2: TEnhCRDBGrid
        Left = 2
        Top = 50
        Width = 751
        Height = 564
        Align = alClient
        TabOrder = 1
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
            FieldName = 'db_user_id'
            Title.Caption = 'ID utente'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Caption = 'EMail'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'payment_expiration_date'
            Title.Caption = 'Data Scad Abbonamento'
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'first_name'
            Title.Caption = 'Nome'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'last_name'
            Title.Caption = 'Cognome'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'address_street'
            Title.Caption = 'Indirizzo'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'address_number'
            Title.Caption = 'Civico'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'address_postal_code'
            Title.Caption = 'Cap'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'phone'
            Title.Caption = 'Telefono'
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cellular_phone'
            Title.Caption = 'Cellulare'
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fiscal_code'
            Title.Caption = 'Codice Fiscale'
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'payment'
            Title.Caption = 'Abbonato'
            Width = 51
            Visible = True
          end>
      end
    end
    object pgNavigator: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 755
      Height = 616
      Caption = 'Navigatore Squadre'
      DoubleBuffered = True
      PageAppearance.BorderColor = 14474202
      PageAppearance.Color = 16250613
      PageAppearance.ColorTo = 16250613
      PageAppearance.ColorMirror = 16250613
      PageAppearance.ColorMirrorTo = 16250613
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      TabVisible = False
      Text = ''
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 15527147
      TabAppearance.BorderColorSelected = 14474202
      TabAppearance.BorderColorSelectedHot = 14474202
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = 14474202
      TabAppearance.Color = clWhite
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16250613
      TabAppearance.ColorSelectedTo = 16250613
      TabAppearance.ColorDisabled = 15921906
      TabAppearance.ColorDisabledTo = 15921906
      TabAppearance.ColorHot = 16776701
      TabAppearance.ColorHotTo = clNone
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 16776701
      TabAppearance.ColorMirrorHotTo = clNone
      TabAppearance.ColorMirrorSelected = 16250613
      TabAppearance.ColorMirrorSelectedTo = 16250613
      TabAppearance.ColorMirrorDisabled = 15921906
      TabAppearance.ColorMirrorDisabledTo = 15921906
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Tahoma'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggVertical
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = clBlack
      TabAppearance.TextColorSelected = clBlack
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = clNone
      TabAppearance.HighLightColor = clNone
      TabAppearance.HighLightColorHot = clNone
      TabAppearance.HighLightColorSelected = clNone
      TabAppearance.HighLightColorSelectedHot = clNone
      TabAppearance.HighLightColorDown = clNone
      TabAppearance.DrawLine = False
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = clNone
      TabAppearance.BackGround.Direction = gdHorizontal
      OnShow = pgNavigatorShow
      object AdvSplitter3: TAdvSplitter
        Left = 610
        Top = 2
        Width = 4
        Height = 613
        Beveled = True
        Color = clSkyBlue
        ParentColor = False
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = 16250613
        Appearance.ColorTo = 16250613
        Appearance.ColorHot = 16248808
        Appearance.ColorHotTo = 16248808
        GripStyle = sgDots
        UIStyle = tsWindows10
        ExplicitLeft = 456
        ExplicitTop = 1
        ExplicitHeight = 702
      end
      object AdvSplitter4: TAdvSplitter
        Left = 406
        Top = 2
        Width = 4
        Height = 613
        Beveled = True
        Color = clSkyBlue
        ParentColor = False
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = 16250613
        Appearance.ColorTo = 16250613
        Appearance.ColorHot = 16248808
        Appearance.ColorHotTo = 16248808
        GripStyle = sgDots
        UIStyle = tsWindows10
        ExplicitLeft = 334
        ExplicitTop = 3
        ExplicitHeight = 702
      end
      object AdvSplitter5: TAdvSplitter
        Left = 202
        Top = 2
        Width = 4
        Height = 613
        Beveled = True
        Color = clSkyBlue
        ParentColor = False
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = 16250613
        Appearance.ColorTo = 16250613
        Appearance.ColorHot = 16248808
        Appearance.ColorHotTo = 16248808
        GripStyle = sgDots
        UIStyle = tsWindows10
        ExplicitLeft = 138
        ExplicitTop = 20
        ExplicitHeight = 702
      end
      object Shader12: TShader
        Left = 206
        Top = 2
        Width = 200
        Height = 613
        Align = alLeft
        Caption = 'Campionati'
        TabOrder = 0
        FromColor = 16250613
        ToColor = 16250613
        Direction = False
        Version = '1.4.2.1'
        ExplicitHeight = 611
        object Shader13: TShader
          Left = 1
          Top = 1
          Width = 198
          Height = 24
          Align = alTop
          Caption = 'Football Teams'
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 0
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
        end
        object EnhCRDBGrid9: TEnhCRDBGrid
          Left = 1
          Top = 65
          Width = 198
          Height = 547
          Align = alClient
          FixedColor = 15784647
          TabOrder = 1
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
              FieldName = 'team_name'
              Title.Caption = 'Nome della Squadra'
              Width = 167
              Visible = True
            end>
        end
        object Shader14: TShader
          Left = 1
          Top = 25
          Width = 198
          Height = 40
          Align = alTop
          TabOrder = 2
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          object btnClubTeams: TButtonedEdit
            Left = 1
            Top = 18
            Width = 196
            Height = 21
            Align = alBottom
            Images = ImageList1
            ParentShowHint = False
            RightButton.DisabledImageIndex = 17
            RightButton.Hint = 'Ricerca la squadra'
            RightButton.HotImageIndex = 18
            RightButton.ImageIndex = 16
            RightButton.PressedImageIndex = 17
            RightButton.Visible = True
            ShowHint = True
            TabOrder = 0
            TextHint = 'Ricerca Squadra nel Club'
            OnKeyUp = btnClubTeamsKeyUp
          end
        end
      end
      object Shader15: TShader
        Left = 2
        Top = 2
        Width = 200
        Height = 613
        Align = alLeft
        Caption = 'Campionati'
        TabOrder = 1
        FromColor = 16250613
        ToColor = 16250613
        Direction = False
        Version = '1.4.2.1'
        ExplicitHeight = 611
        object Shader16: TShader
          Left = 1
          Top = 1
          Width = 198
          Height = 24
          Align = alTop
          Caption = 'Football Clubs'
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 0
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
        end
        object EnhCRDBGrid10: TEnhCRDBGrid
          Left = 1
          Top = 65
          Width = 198
          Height = 547
          Align = alClient
          Color = clWhite
          FixedColor = 15784647
          TabOrder = 1
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
              FieldName = 'club_name'
              Title.Caption = 'Nome del Club'
              Width = 160
              Visible = True
            end>
        end
        object Shader17: TShader
          Left = 1
          Top = 25
          Width = 198
          Height = 40
          Align = alTop
          TabOrder = 2
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          object btnFootballClubs: TButtonedEdit
            Left = 1
            Top = 18
            Width = 196
            Height = 21
            Align = alBottom
            Images = ImageList1
            ParentShowHint = False
            RightButton.DisabledImageIndex = 17
            RightButton.Hint = 'Ricerca la squadra'
            RightButton.HotImageIndex = 18
            RightButton.ImageIndex = 16
            RightButton.PressedImageIndex = 17
            RightButton.Visible = True
            ShowHint = True
            TabOrder = 0
            TextHint = 'ricerca club'
            OnKeyUp = btnFootballClubsKeyUp
          end
        end
      end
      object Shader18: TShader
        Left = 410
        Top = 2
        Width = 200
        Height = 613
        Align = alLeft
        Caption = 'Campionati'
        TabOrder = 2
        FromColor = 16250613
        ToColor = 16250613
        Direction = False
        Version = '1.4.2.1'
        ExplicitHeight = 611
        object Shader19: TShader
          Left = 1
          Top = 1
          Width = 198
          Height = 24
          Align = alTop
          Caption = 'Rosa di Quest'#39'anno'
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 0
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
        end
        object EnhCRDBGrid11: TEnhCRDBGrid
          Left = 1
          Top = 65
          Width = 198
          Height = 547
          Align = alClient
          FixedColor = 15784647
          TabOrder = 1
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
              FieldName = 'lkpPlayerName'
              Title.Caption = 'Giocatore'
              Width = 192
              Visible = True
            end>
        end
        object Shader20: TShader
          Left = 1
          Top = 25
          Width = 198
          Height = 40
          Align = alTop
          TabOrder = 2
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          object btnTeamPlayers: TButtonedEdit
            Left = 1
            Top = 18
            Width = 196
            Height = 21
            Align = alBottom
            Images = ImageList1
            ParentShowHint = False
            RightButton.DisabledImageIndex = 17
            RightButton.Hint = 'Ricerca la squadra'
            RightButton.HotImageIndex = 18
            RightButton.ImageIndex = 16
            RightButton.PressedImageIndex = 17
            RightButton.Visible = True
            ShowHint = True
            TabOrder = 0
            TextHint = 'Cerca Giocatore'
            OnKeyUp = btnTeamPlayersKeyUp
          end
        end
      end
      object Shader21: TShader
        Left = 614
        Top = 2
        Width = 139
        Height = 613
        Align = alClient
        Caption = 'Campionati'
        TabOrder = 3
        FromColor = 16250613
        ToColor = 16250613
        Direction = False
        Version = '1.4.2.1'
        ExplicitWidth = 135
        ExplicitHeight = 611
        object Shader22: TShader
          Left = 1
          Top = 1
          Width = 137
          Height = 24
          Align = alTop
          Caption = 'Carriera del Giocatore'
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 0
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          ExplicitWidth = 133
        end
        object EnhCRDBGrid12: TEnhCRDBGrid
          Left = 1
          Top = 65
          Width = 137
          Height = 547
          Align = alClient
          FixedColor = 15784647
          TabOrder = 1
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
              Title.Caption = 'Stg.'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'team_name'
              Title.Caption = 'Nome del Club'
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'league_name'
              Title.Caption = 'Campionato'
              Width = 772
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pos'
              Title.Caption = 'Pos'
              Width = 30
              Visible = True
            end>
        end
        object Shader23: TShader
          Left = 1
          Top = 25
          Width = 137
          Height = 40
          Align = alTop
          TabOrder = 2
          FromColor = 16250613
          ToColor = 16250613
          Direction = False
          Version = '1.4.2.1'
          ExplicitWidth = 133
          object btnSearchteam: TButtonedEdit
            Left = 1
            Top = 18
            Width = 135
            Height = 21
            Align = alBottom
            Images = ImageList1
            ParentShowHint = False
            RightButton.DisabledImageIndex = 17
            RightButton.Hint = 'Ricerca la squadra'
            RightButton.HotImageIndex = 18
            RightButton.ImageIndex = 16
            RightButton.PressedImageIndex = 17
            RightButton.Visible = True
            ShowHint = True
            TabOrder = 0
            TextHint = 'ricerca club'
            OnKeyUp = btnSearchteamKeyUp
            ExplicitWidth = 131
          end
        end
      end
    end
    object pgFootballMarket: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 755
      Height = 616
      Caption = 'Calcio Mercato'
      DoubleBuffered = True
      PageAppearance.BorderColor = 14474202
      PageAppearance.Color = 16250613
      PageAppearance.ColorTo = 16250613
      PageAppearance.ColorMirror = 16250613
      PageAppearance.ColorMirrorTo = 16250613
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      Text = ''
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 15527147
      TabAppearance.BorderColorSelected = 14474202
      TabAppearance.BorderColorSelectedHot = 14474202
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = 14474202
      TabAppearance.Color = clWhite
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16250613
      TabAppearance.ColorSelectedTo = 16250613
      TabAppearance.ColorDisabled = 15921906
      TabAppearance.ColorDisabledTo = 15921906
      TabAppearance.ColorHot = 16776701
      TabAppearance.ColorHotTo = clNone
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 16776701
      TabAppearance.ColorMirrorHotTo = clNone
      TabAppearance.ColorMirrorSelected = 16250613
      TabAppearance.ColorMirrorSelectedTo = 16250613
      TabAppearance.ColorMirrorDisabled = 15921906
      TabAppearance.ColorMirrorDisabledTo = 15921906
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Tahoma'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggVertical
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = clBlack
      TabAppearance.TextColorSelected = clBlack
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = clNone
      TabAppearance.HighLightColor = clNone
      TabAppearance.HighLightColorHot = clNone
      TabAppearance.HighLightColorSelected = clNone
      TabAppearance.HighLightColorSelectedHot = clNone
      TabAppearance.HighLightColorDown = clNone
      TabAppearance.DrawLine = False
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = clNone
      TabAppearance.BackGround.Direction = gdHorizontal
      OnShow = pgFootballMarketShow
      object Shader27: TShader
        Left = 2
        Top = 2
        Width = 751
        Height = 41
        Align = alTop
        Caption = 'Shader27'
        TabOrder = 0
        FromColor = 16250613
        ToColor = 16250613
        Direction = False
        Version = '1.4.2.1'
        ExplicitWidth = 747
        object DBAdvGlowNavigator10: TDBAdvGlowNavigator
          Left = 1
          Top = 1
          Width = 360
          Height = 39
          Align = alLeft
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
          Style = tsWindows10
          TabOrder = 0
          Version = '1.2.1.0'
        end
      end
      object EnhCRDBGrid5: TEnhCRDBGrid
        Left = 2
        Top = 43
        Width = 751
        Height = 572
        Align = alClient
        FixedColor = 15784647
        TabOrder = 1
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
            FieldName = 'team_name'
            Title.Caption = 'Squadra'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'league_code'
            Title.Caption = 'Serie'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'first_name'
            Title.Caption = 'Nome'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'family_name'
            Title.Caption = 'Cognome'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'player_id'
            Title.Caption = 'id'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'since'
            Title.Caption = 'Acquisto al'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'origin_team'
            Title.Caption = 'Provenienza'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'league_code_1'
            Title.Caption = 'Serie'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'matches'
            Title.Caption = 'Partite'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'origin_matches'
            Title.Caption = 'Partite Origine'
            Width = 73
            Visible = True
          end>
      end
    end
    object advPageBrowser: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 755
      Height = 616
      Caption = 'Browser'
      DoubleBuffered = True
      ImageIndex = 5
      PageAppearance.BorderColor = 14474202
      PageAppearance.Color = 16250613
      PageAppearance.ColorTo = 16250613
      PageAppearance.ColorMirror = 16250613
      PageAppearance.ColorMirrorTo = 16250613
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      Text = ''
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 15527147
      TabAppearance.BorderColorSelected = 14474202
      TabAppearance.BorderColorSelectedHot = 14474202
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = 14474202
      TabAppearance.Color = clWhite
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16250613
      TabAppearance.ColorSelectedTo = 16250613
      TabAppearance.ColorDisabled = 15921906
      TabAppearance.ColorDisabledTo = 15921906
      TabAppearance.ColorHot = 16776701
      TabAppearance.ColorHotTo = clNone
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 16776701
      TabAppearance.ColorMirrorHotTo = clNone
      TabAppearance.ColorMirrorSelected = 16250613
      TabAppearance.ColorMirrorSelectedTo = 16250613
      TabAppearance.ColorMirrorDisabled = 15921906
      TabAppearance.ColorMirrorDisabledTo = 15921906
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Tahoma'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggVertical
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = clBlack
      TabAppearance.TextColorSelected = clBlack
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = clNone
      TabAppearance.HighLightColor = clNone
      TabAppearance.HighLightColorHot = clNone
      TabAppearance.HighLightColorSelected = clNone
      TabAppearance.HighLightColorSelectedHot = clNone
      TabAppearance.HighLightColorDown = clNone
      TabAppearance.DrawLine = False
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = clNone
      TabAppearance.BackGround.Direction = gdHorizontal
      object Shader7: TShader
        Left = 2
        Top = 2
        Width = 751
        Height = 61
        Align = alTop
        TabOrder = 0
        FromColor = 16250613
        ToColor = 16250613
        Direction = False
        Version = '1.4.2.1'
        ExplicitWidth = 747
        DesignSize = (
          751
          61)
        object W7NavigationButton1: TW7NavigationButton
          Left = 3
          Top = 9
          Width = 25
          Height = 32
          Caption = 'W7NavigationButton1'
          Direction = ndBackward
          FadeInInterval = 17
          FadeOutInterval = 17
          ParentFont = False
        end
        object W7SpeedButton1: TW7SpeedButton
          Left = 710
          Top = 10
          Width = 34
          Height = 27
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          ShowArrow = True
          ImageIndex = 5
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Anchors = [akTop, akRight]
          ParentFont = False
          OnClick = edUrlClick
          ExplicitLeft = 664
        end
        object W7NavigationButton2: TW7NavigationButton
          Left = 35
          Top = 9
          Width = 25
          Height = 32
          Caption = 'W7NavigationButton1'
          FadeInInterval = 17
          FadeOutInterval = 17
          ParentFont = False
        end
        object Label19: TLabel
          Left = 66
          Top = 43
          Width = 77
          Height = 13
          Cursor = crHandPoint
          Hint = 'http://www.settimanasport.com'
          Caption = 'Settimana Sport'
          ParentShowHint = False
          ShowHint = True
          Transparent = True
          OnClick = LinkLabelClick1
          OnMouseEnter = LinkLabelMouseEnter
        end
        object Label20: TLabel
          Left = 165
          Top = 43
          Width = 84
          Height = 13
          Cursor = crHandPoint
          Hint = 'http://giornali01.esprimo.com/typo3/'
          AutoSize = False
          Caption = 'Esprimo Articoli'
          EllipsisPosition = epEndEllipsis
          ParentShowHint = False
          ShowHint = True
          Transparent = True
          OnClick = LinkLabelClick1
          OnMouseEnter = LinkLabelMouseEnter
        end
        object edUrl: TButtonedEdit
          Left = 66
          Top = 14
          Width = 641
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Images = ImageList1
          RightButton.DisabledImageIndex = 17
          RightButton.HotImageIndex = 18
          RightButton.ImageIndex = 16
          RightButton.PressedImageIndex = 16
          TabOrder = 0
          Text = 'http://www.settimanasport.com'
          TextHint = 'indirizzo o testo da ricercare'
          ExplicitWidth = 637
        end
      end
      object WebBrowser1: TWebBrowser
        Left = 2
        Top = 63
        Width = 751
        Height = 551
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 747
        ExplicitHeight = 550
        ControlData = {
          4C0000009E4D00000D3900000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object pgQuery: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 755
      Height = 616
      Caption = 'Query'
      DoubleBuffered = True
      PageAppearance.BorderColor = 14474202
      PageAppearance.Color = 16250613
      PageAppearance.ColorTo = 16250613
      PageAppearance.ColorMirror = 16250613
      PageAppearance.ColorMirrorTo = 16250613
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      Text = ''
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 15527147
      TabAppearance.BorderColorSelected = 14474202
      TabAppearance.BorderColorSelectedHot = 14474202
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = 14474202
      TabAppearance.Color = clWhite
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16250613
      TabAppearance.ColorSelectedTo = 16250613
      TabAppearance.ColorDisabled = 15921906
      TabAppearance.ColorDisabledTo = 15921906
      TabAppearance.ColorHot = 16776701
      TabAppearance.ColorHotTo = clNone
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 16776701
      TabAppearance.ColorMirrorHotTo = clNone
      TabAppearance.ColorMirrorSelected = 16250613
      TabAppearance.ColorMirrorSelectedTo = 16250613
      TabAppearance.ColorMirrorDisabled = 15921906
      TabAppearance.ColorMirrorDisabledTo = 15921906
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Tahoma'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggVertical
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = clBlack
      TabAppearance.TextColorSelected = clBlack
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = clNone
      TabAppearance.HighLightColor = clNone
      TabAppearance.HighLightColorHot = clNone
      TabAppearance.HighLightColorSelected = clNone
      TabAppearance.HighLightColorSelectedHot = clNone
      TabAppearance.HighLightColorDown = clNone
      TabAppearance.DrawLine = False
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = clNone
      TabAppearance.BackGround.Direction = gdHorizontal
      object Splitter4: TAdvSplitter
        Left = 2
        Top = 285
        Width = 751
        Height = 6
        Cursor = crVSplit
        Align = alTop
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = 16250613
        Appearance.ColorTo = 16250613
        Appearance.ColorHot = 16248808
        Appearance.ColorHotTo = 16248808
        GripStyle = sgDots
        UIStyle = tsWindows10
        ExplicitWidth = 675
      end
      object Shader3: TShader
        Left = 2
        Top = 2
        Width = 751
        Height = 41
        Align = alTop
        TabOrder = 0
        FromColor = 16250613
        ToColor = 16250613
        Direction = False
        Version = '1.4.2.1'
        ExplicitWidth = 747
        object AdvGlowButton5: TAdvGlowButton
          Left = 1
          Top = 1
          Width = 131
          Height = 39
          Align = alLeft
          Caption = 'Eseguo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Rounded = False
          TabOrder = 0
          OnClick = AdvGlowButton5Click
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
          Appearance.TextColorDisabled = 13948116
          UIStyle = tsWindows10
        end
      end
      object AdvMemo1: TAdvMemo
        Left = 2
        Top = 43
        Width = 751
        Height = 242
        Cursor = crIBeam
        ActiveLineSettings.ShowActiveLine = False
        ActiveLineSettings.ShowActiveLineIndicator = False
        Align = alTop
        AutoCompletion.Font.Charset = DEFAULT_CHARSET
        AutoCompletion.Font.Color = clWindowText
        AutoCompletion.Font.Height = -11
        AutoCompletion.Font.Name = 'Tahoma'
        AutoCompletion.Font.Style = []
        AutoCompletion.StartToken = '(.'
        AutoCorrect.Active = True
        AutoHintParameterPosition = hpBelowCode
        BkColor = clWindow
        BookmarkGlyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
          2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
          2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
          B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
          B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
          BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
          BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
          BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
          25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
        BorderColor = 15000546
        BorderStyle = bsSingle
        ClipboardFormats = [cfText]
        CodeFolding.Enabled = False
        CodeFolding.LineColor = clGray
        Ctl3D = False
        DelErase = True
        EnhancedHomeKey = False
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -13
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Gutter.BorderColor = 15000546
        Gutter.GutterColor = 16250613
        Gutter.GutterColorTo = 16250613
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'COURIER NEW'
        Font.Style = []
        HiddenCaret = False
        Lines.Strings = (
          '')
        MarkerList.UseDefaultMarkerImageIndex = False
        MarkerList.DefaultMarkerImageIndex = -1
        MarkerList.ImageTransparentColor = 33554432
        OleDropTarget = []
        PrintOptions.MarginLeft = 0
        PrintOptions.MarginRight = 0
        PrintOptions.MarginTop = 0
        PrintOptions.MarginBottom = 0
        PrintOptions.PageNr = False
        PrintOptions.PrintLineNumbers = False
        RightMarginColor = 14869218
        ScrollHint = False
        SelColor = clHighlightText
        SelBkColor = clHighlight
        ShowRightMargin = True
        SmartTabs = False
        SyntaxStyles = AdvSQLMemoStyler1
        TabOrder = 1
        TabStop = True
        TrimTrailingSpaces = False
        UILanguage.ScrollHint = 'Row'
        UILanguage.Undo = 'Undo'
        UILanguage.Redo = 'Redo'
        UILanguage.Copy = 'Copy'
        UILanguage.Cut = 'Cut'
        UILanguage.Paste = 'Paste'
        UILanguage.Delete = 'Delete'
        UILanguage.SelectAll = 'Select All'
        UIStyle = tsWindows10
        UrlStyle.TextColor = clBlue
        UrlStyle.BkColor = clWhite
        UrlStyle.Style = [fsUnderline]
        UseStyler = True
        Version = '3.7.10.0'
        WordWrap = wwNone
        ExplicitWidth = 747
      end
      object EnhCRDBGrid1: TEnhCRDBGrid
        Left = 2
        Top = 327
        Width = 751
        Height = 287
        Align = alClient
        DataSource = PgDataSource1
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
      end
      object DBAdvGlowNavigator4: TDBAdvGlowNavigator
        Left = 2
        Top = 291
        Width = 751
        Height = 36
        DataSource = PgDataSource1
        Align = alTop
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
        Style = tsWindows10
        TabOrder = 3
        Version = '1.2.1.0'
        ExplicitWidth = 747
      end
    end
    object AdvOfficePage1: TAdvOfficePage
      Left = 1
      Top = 26
      Width = 755
      Height = 616
      Caption = 'Logs'
      DoubleBuffered = True
      PageAppearance.BorderColor = 14474202
      PageAppearance.Color = 16250613
      PageAppearance.ColorTo = 16250613
      PageAppearance.ColorMirror = 16250613
      PageAppearance.ColorMirrorTo = 16250613
      PageAppearance.Gradient = ggVertical
      PageAppearance.GradientMirror = ggVertical
      Text = ''
      TabAppearance.BorderColor = clNone
      TabAppearance.BorderColorHot = 15527147
      TabAppearance.BorderColorSelected = 14474202
      TabAppearance.BorderColorSelectedHot = 14474202
      TabAppearance.BorderColorDisabled = clNone
      TabAppearance.BorderColorDown = 14474202
      TabAppearance.Color = clWhite
      TabAppearance.ColorTo = clWhite
      TabAppearance.ColorSelected = 16250613
      TabAppearance.ColorSelectedTo = 16250613
      TabAppearance.ColorDisabled = 15921906
      TabAppearance.ColorDisabledTo = 15921906
      TabAppearance.ColorHot = 16776701
      TabAppearance.ColorHotTo = clNone
      TabAppearance.ColorMirror = clWhite
      TabAppearance.ColorMirrorTo = clWhite
      TabAppearance.ColorMirrorHot = 16776701
      TabAppearance.ColorMirrorHotTo = clNone
      TabAppearance.ColorMirrorSelected = 16250613
      TabAppearance.ColorMirrorSelectedTo = 16250613
      TabAppearance.ColorMirrorDisabled = 15921906
      TabAppearance.ColorMirrorDisabledTo = 15921906
      TabAppearance.Font.Charset = DEFAULT_CHARSET
      TabAppearance.Font.Color = clWindowText
      TabAppearance.Font.Height = -11
      TabAppearance.Font.Name = 'Tahoma'
      TabAppearance.Font.Style = []
      TabAppearance.Gradient = ggVertical
      TabAppearance.GradientMirror = ggVertical
      TabAppearance.GradientHot = ggVertical
      TabAppearance.GradientMirrorHot = ggVertical
      TabAppearance.GradientSelected = ggVertical
      TabAppearance.GradientMirrorSelected = ggVertical
      TabAppearance.GradientDisabled = ggVertical
      TabAppearance.GradientMirrorDisabled = ggVertical
      TabAppearance.TextColor = clBlack
      TabAppearance.TextColorHot = clBlack
      TabAppearance.TextColorSelected = clBlack
      TabAppearance.TextColorDisabled = clGray
      TabAppearance.ShadowColor = clNone
      TabAppearance.HighLightColor = clNone
      TabAppearance.HighLightColorHot = clNone
      TabAppearance.HighLightColorSelected = clNone
      TabAppearance.HighLightColorSelectedHot = clNone
      TabAppearance.HighLightColorDown = clNone
      TabAppearance.DrawLine = False
      TabAppearance.BackGround.Color = clWhite
      TabAppearance.BackGround.ColorTo = clNone
      TabAppearance.BackGround.Direction = gdHorizontal
      object memLogs: TAdvMemo
        Left = 2
        Top = 2
        Width = 751
        Height = 612
        Cursor = crIBeam
        ActiveLineSettings.ShowActiveLine = False
        ActiveLineSettings.ShowActiveLineIndicator = False
        Align = alClient
        AutoCompletion.Font.Charset = DEFAULT_CHARSET
        AutoCompletion.Font.Color = clWindowText
        AutoCompletion.Font.Height = -11
        AutoCompletion.Font.Name = 'Tahoma'
        AutoCompletion.Font.Style = []
        AutoCompletion.StartToken = '(.'
        AutoCorrect.Active = True
        AutoHintParameterPosition = hpBelowCode
        BkColor = clWindow
        BookmarkGlyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
          2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
          2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
          B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
          B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
          BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
          BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
          BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
          25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
        BorderColor = 15000546
        BorderStyle = bsSingle
        ClipboardFormats = [cfText]
        CodeFolding.Enabled = False
        CodeFolding.LineColor = clGray
        Ctl3D = False
        DelErase = True
        EnhancedHomeKey = False
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -13
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Gutter.BorderColor = 15000546
        Gutter.GutterColor = 16250613
        Gutter.GutterColorTo = 16250613
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'COURIER NEW'
        Font.Style = []
        HiddenCaret = False
        Lines.Strings = (
          '')
        MarkerList.UseDefaultMarkerImageIndex = False
        MarkerList.DefaultMarkerImageIndex = -1
        MarkerList.ImageTransparentColor = 33554432
        OleDropTarget = []
        PrintOptions.MarginLeft = 0
        PrintOptions.MarginRight = 0
        PrintOptions.MarginTop = 0
        PrintOptions.MarginBottom = 0
        PrintOptions.PageNr = False
        PrintOptions.PrintLineNumbers = False
        RightMarginColor = 14869218
        ScrollHint = False
        SelColor = clHighlightText
        SelBkColor = clHighlight
        ShowRightMargin = True
        SmartTabs = False
        TabOrder = 0
        TabStop = True
        TrimTrailingSpaces = False
        UILanguage.ScrollHint = 'Row'
        UILanguage.Undo = 'Undo'
        UILanguage.Redo = 'Redo'
        UILanguage.Copy = 'Copy'
        UILanguage.Cut = 'Cut'
        UILanguage.Paste = 'Paste'
        UILanguage.Delete = 'Delete'
        UILanguage.SelectAll = 'Select All'
        UIStyle = tsWindows10
        UrlStyle.TextColor = clBlue
        UrlStyle.BkColor = clWhite
        UrlStyle.Style = [fsUnderline]
        UseStyler = True
        Version = '3.7.10.0'
        WordWrap = wwNone
        ExplicitWidth = 747
        ExplicitHeight = 611
      end
    end
  end
  object pnlChampionshipsList: TShader [6]
    Left = 165
    Top = 33
    Width = 244
    Height = 644
    Align = alLeft
    Caption = 'Campionati'
    TabOrder = 3
    FromColor = 16250613
    ToColor = 16250613
    Direction = False
    Version = '1.4.2.1'
    ExplicitHeight = 643
    object Panel7: TShader
      Left = 1
      Top = 43
      Width = 242
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      FromColor = 16250613
      ToColor = 16250613
      Direction = False
      Version = '1.4.2.1'
      object btnSearchChamp: TButtonedEdit
        Left = 0
        Top = 3
        Width = 242
        Height = 21
        Align = alBottom
        Images = ImageList1
        ParentShowHint = False
        RightButton.DisabledImageIndex = 17
        RightButton.Hint = 'Ricerca la squadra'
        RightButton.HotImageIndex = 18
        RightButton.ImageIndex = 16
        RightButton.PressedImageIndex = 17
        RightButton.Visible = True
        ShowHint = True
        TabOrder = 0
        TextHint = 'Ricerca del Campionato'
        OnKeyUp = btnSearchChampKeyUp
      end
    end
    object grdChampionships: TEnhCRDBGrid
      Left = 1
      Top = 67
      Width = 242
      Height = 576
      Align = alClient
      DataSource = dmUniDacPgChampionships.dsMatchDays
      FixedColor = 16250613
      PopupMenu = popChampionships
      TabOrder = 1
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
          Title.Caption = 'id'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'league_name'
          Title.Caption = 'Nome Campionato'
          Width = 175
          Visible = True
        end>
    end
    object Panel8: TShader
      Left = 1
      Top = 1
      Width = 242
      Height = 42
      Align = alTop
      Alignment = taRightJustify
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 2
      FromColor = 16250613
      ToColor = 16250613
      Direction = False
      Version = '1.4.2.1'
      object Label41: TLabel
        Left = 1
        Top = 1
        Width = 123
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Campionati della Stagione'
        Transparent = True
      end
      object SpeedButton2: TAdvGlowButton
        Left = 1
        Top = 14
        Width = 72
        Height = 27
        Align = alLeft
        Caption = 'Nuovo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 10
        Images = ImageList
        DisabledImages = ImageListDisabled
        HotImages = ImageListHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = False
        TabOrder = 0
        OnClick = SpeedButton2Click
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
        Appearance.TextColorDisabled = 13948116
        UIStyle = tsWindows10
      end
      object SpeedButton5: TAdvGlowButton
        Left = 153
        Top = 14
        Width = 88
        Height = 27
        Align = alClient
        Caption = 'Elimina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 11
        Images = ImageList
        DisabledImages = ImageListDisabled
        HotImages = ImageListHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = False
        TabOrder = 1
        OnClick = SpeedButton5Click
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
        Appearance.TextColorDisabled = 13948116
        UIStyle = tsWindows10
      end
      object AdvGlowButton8: TAdvGlowButton
        Left = 73
        Top = 14
        Width = 80
        Height = 27
        Align = alLeft
        Caption = 'Clona'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 9
        Images = ImageList
        DisabledImages = ImageListDisabled
        HotImages = ImageListHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Rounded = False
        TabOrder = 2
        OnClick = SpeedButton4Click
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
        Appearance.TextColorDisabled = 13948116
        UIStyle = tsWindows10
      end
    end
  end
  object Shader1: TShader [7]
    Left = 0
    Top = 0
    Width = 1420
    Height = 33
    Align = alTop
    TabOrder = 4
    FromColor = 16250613
    ToColor = 16250613
    Direction = False
    Version = '1.4.2.1'
    ExplicitWidth = 1416
    DesignSize = (
      1420
      33)
    object lbServerConnection: TLabel
      Left = 1040
      Top = 8
      Width = 365
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'Server Connection'
      ExplicitWidth = 369
    end
    object DBText2: TDBText
      Left = 575
      Top = 3
      Width = 75
      Height = 17
      DataField = 'season_des'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 668
      Top = 3
      Width = 294
      Height = 17
      DataField = 'league_name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 161
      Top = 1
      Width = 160
      Height = 31
      Align = alLeft
      Caption = 'Nascondi Campionati'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      Images = ImageList24
      DisabledImages = ImageListDisabled24
      HotImages = ImageListHot24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
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
      Appearance.TextColorDisabled = 13948116
      UIStyle = tsWindows10
    end
    object Shader11: TShader
      Left = 321
      Top = 1
      Width = 119
      Height = 31
      Align = alLeft
      Caption = 'Shader11'
      TabOrder = 1
      FromColor = 16250613
      ToColor = 16250613
      Direction = False
      Version = '1.4.2.1'
      object cboSeasons: TJvDBLookupCombo
        Left = 8
        Top = 5
        Width = 97
        Height = 21
        LookupField = 'season_id'
        LookupDisplay = 'season_des'
        LookupSource = dmUniDacPgChampionships.dsSeasons
        TabOrder = 0
      end
    end
    object AdvGlowButton14: TAdvGlowButton
      Left = 440
      Top = 1
      Width = 129
      Height = 31
      Align = alLeft
      Caption = 'Salva Modifiche'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      Images = ImageList24
      DisabledImages = ImageListDisabled24
      HotImages = ImageListHot24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Rounded = False
      TabOrder = 2
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
      Appearance.TextColorDisabled = 13948116
      UIStyle = tsWindows10
    end
    object btnSeasons: TAdvGlowButton
      Left = 1
      Top = 1
      Width = 160
      Height = 31
      Align = alLeft
      Caption = 'Vedi Stagioni'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      Images = ImageList24
      DisabledImages = ImageListDisabled24
      HotImages = ImageListHot24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Rounded = False
      TabOrder = 3
      OnClick = btnSeasonsClick
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
      Appearance.TextColorDisabled = 13948116
      UIStyle = tsWindows10
    end
  end
  inherited mnuMDC: TAdvMainMenu
    MenuStyler = AdvMenuOfficeStyler1
    inherited mnuMDCAppTitle: TMenuItem
      Caption = 'Campionati'
      object CreaNuovaStagione1: TMenuItem [0]
        Caption = 'Crea Nuova Stagione'
        OnClick = CreaNuovaStagione1Click
      end
    end
    object Squadre1: TMenuItem
      Caption = 'Squadre'
      object ArchivioImmagini1: TMenuItem
        Caption = 'Archivio Immagini'
        OnClick = ArchivioImmagini1Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object CalcolaOrigineGiocatori1: TMenuItem
      end
      object CalcolaOrigineGiocatoriTutteleStagioni1: TMenuItem
      end
    end
  end
  inherited AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler
    Style = psWindows10
    GlowButtonAppearance.BorderColor = 15000546
    GlowButtonAppearance.BorderColorHot = 16371364
    GlowButtonAppearance.BorderColorDown = 14983778
    GlowButtonAppearance.BorderColorChecked = 14327846
    GlowButtonAppearance.BorderColorDisabled = 14606046
    GlowButtonAppearance.Color = 16250613
    GlowButtonAppearance.ColorTo = clNone
    GlowButtonAppearance.ColorChecked = 16181451
    GlowButtonAppearance.ColorDisabled = 16250871
    GlowButtonAppearance.ColorDown = 16244937
    GlowButtonAppearance.ColorDownTo = clNone
    GlowButtonAppearance.ColorHot = 16248808
    GlowButtonAppearance.ColorHotTo = clNone
    GlowButtonAppearance.ColorMirror = 16250613
    GlowButtonAppearance.ColorMirrorTo = clNone
    GlowButtonAppearance.ColorMirrorHot = 16248808
    GlowButtonAppearance.ColorMirrorHotTo = clNone
    GlowButtonAppearance.ColorMirrorDown = 16244937
    GlowButtonAppearance.ColorMirrorDownTo = clNone
    GlowButtonAppearance.ColorMirrorChecked = 16181451
    GlowButtonAppearance.ColorMirrorDisabled = 16250871
    PageAppearance.BorderColor = 14474202
    PageAppearance.Color = 16250613
    PageAppearance.ColorTo = 16250613
    PageAppearance.ColorMirror = 16250613
    PageAppearance.ColorMirrorTo = 16250613
    TabAppearance.BorderColor = clNone
    TabAppearance.BorderColorHot = 15527147
    TabAppearance.BorderColorSelected = 14474202
    TabAppearance.BorderColorSelectedHot = 14474202
    TabAppearance.BorderColorDown = 14474202
    TabAppearance.ColorSelected = 16250613
    TabAppearance.ColorSelectedTo = 16250613
    TabAppearance.ColorDisabled = 15921906
    TabAppearance.ColorDisabledTo = 15921906
    TabAppearance.ColorHot = 16776701
    TabAppearance.ColorHotTo = clNone
    TabAppearance.ColorMirrorHot = 16776701
    TabAppearance.ColorMirrorHotTo = clNone
    TabAppearance.ColorMirrorSelected = 16250613
    TabAppearance.ColorMirrorSelectedTo = 16250613
    TabAppearance.ColorMirrorDisabled = 15921906
    TabAppearance.ColorMirrorDisabledTo = 15921906
    TabAppearance.TextColor = clBlack
    TabAppearance.TextColorSelected = clBlack
    TabAppearance.TextColorDisabled = clGray
    TabAppearance.DrawLine = False
    TabAppearance.TextSelectedBold = False
    TabAppearance.BackGround.ColorTo = clNone
    Top = 612
  end
  inherited AdvFormStyler1: TAdvFormStyler
    AppStyle = AdvAppStyler1
    Top = 260
  end
  inherited AdvOfficeHint1: TAdvOfficeHint
    HintColor = 16250613
    HintColorTo = 16250613
    HintHelpLineColor = 15000546
    Rounded = True
    UIStyle = tsWindows10
  end
  inherited ImageList: TImageList
    Left = 67
    Top = 430
  end
  inherited ImageListHot: TImageList
    Left = 67
    Top = 489
  end
  inherited ImageListDisabled: TImageList
    Left = 67
    Top = 545
  end
  inherited mnuStyler: TAdvMenuStyler
    Left = 48
    Top = 312
  end
  inherited AdvOfficeTabSetOfficeStyler1: TAdvOfficeTabSetOfficeStyler
    GlowButtonAppearance.BorderColor = 15000546
    GlowButtonAppearance.BorderColorHot = 16371364
    GlowButtonAppearance.BorderColorDown = 14983778
    GlowButtonAppearance.BorderColorChecked = 14327846
    GlowButtonAppearance.BorderColorDisabled = 14606046
    GlowButtonAppearance.Color = 16250613
    GlowButtonAppearance.ColorTo = clNone
    GlowButtonAppearance.ColorChecked = 16181451
    GlowButtonAppearance.ColorDisabled = 16250871
    GlowButtonAppearance.ColorDown = 16244937
    GlowButtonAppearance.ColorDownTo = clNone
    GlowButtonAppearance.ColorHot = 16248808
    GlowButtonAppearance.ColorHotTo = clNone
    GlowButtonAppearance.ColorMirror = 16250613
    GlowButtonAppearance.ColorMirrorTo = clNone
    GlowButtonAppearance.ColorMirrorHot = 16248808
    GlowButtonAppearance.ColorMirrorHotTo = clNone
    GlowButtonAppearance.ColorMirrorDown = 16244937
    GlowButtonAppearance.ColorMirrorDownTo = clNone
    GlowButtonAppearance.ColorMirrorChecked = 16181451
    GlowButtonAppearance.ColorMirrorDisabled = 16250871
    Style = tsWindows10
    TabAppearance.BorderColor = clNone
    TabAppearance.BorderColorHot = 15527147
    TabAppearance.BorderColorSelected = 14474202
    TabAppearance.BorderColorSelectedHot = 14474202
    TabAppearance.BorderColorDown = 14474202
    TabAppearance.ColorSelected = 16250613
    TabAppearance.ColorSelectedTo = clNone
    TabAppearance.ColorDisabled = 15921906
    TabAppearance.ColorDisabledTo = 15921906
    TabAppearance.ColorHot = 16776701
    TabAppearance.ColorHotTo = clNone
    TabAppearance.ColorMirrorHot = 16776701
    TabAppearance.ColorMirrorHotTo = clNone
    TabAppearance.ColorMirrorSelected = 16250613
    TabAppearance.ColorMirrorSelectedTo = clNone
    TabAppearance.ColorMirrorDisabled = 15921906
    TabAppearance.ColorMirrorDisabledTo = 15921906
    TabAppearance.TextColor = clBlack
    TabAppearance.TextColorSelected = clBlack
    TabAppearance.TextColorDisabled = clGray
    TabAppearance.DrawLine = False
    TabAppearance.TextSelectedBold = False
    TabAppearance.BackGround.ColorTo = clNone
    Left = 64
  end
  inherited OpenPictureDialog1: TOpenPictureDialog
    Left = 291
    Top = 490
  end
  inherited JanuaDialog1: TJanuaDialog
    Top = 176
  end
  inherited ImageList24: TImageList
    Left = 379
    Top = 174
  end
  inherited ImageListHot24: TImageList
    Left = 379
    Top = 233
  end
  inherited ImageListDisabled24: TImageList
    Left = 379
    Top = 297
  end
  object JanuaDialogSostituzione: TJanuaDialogInteger
    Enabled = False
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Number = 90
    Caption = 'Minuti Sostituzione'
    DisplayText = 'Minuti Sostituzione'
    Left = 176
    Top = 404
  end
  object popChampionships: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.7.1.8'
    UIStyle = tsCustom
    Left = 293
    Top = 544
    object InserisciRisultati1: TMenuItem
      Caption = 'Inserisci Risultati'
      OnClick = InserisciRisultati1Click
    end
    object InserisciprossimaGiornata1: TMenuItem
      Caption = 'Inserisci prossima Giornata'
    end
    object InserisciClassifica1: TMenuItem
      Caption = 'Inserisci Classifica'
      OnClick = InserisciClassifica1Click
    end
    object Inserisci1: TMenuItem
      Caption = 'Inserisci Marcatori'
      OnClick = Inserisci1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Calcolatutto1: TMenuItem
      Caption = 'Calcola tutto'
      OnClick = Calcolatutto1Click
    end
  end
  object popRosaChampionship: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.7.1.8'
    UIStyle = tsCustom
    Left = 285
    Top = 192
    object MenuItem1: TMenuItem
      Caption = '4 Colonne'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = '5 Colonne'
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = '6 Colonne'
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = '7 Colonne'
      OnClick = MenuItem4Click
    end
  end
  object AdvSQLMemoStyler1: TAdvSQLMemoStyler
    AutoCompletion.Strings = (
      'SELECT'
      'WHERE')
    HintParameter.TextColor = clBlack
    HintParameter.BkColor = clInfoBk
    HintParameter.HintCharStart = '('
    HintParameter.HintCharEnd = ')'
    HintParameter.HintCharDelimiter = ';'
    HintParameter.HintClassDelimiter = '.'
    HintParameter.HintCharWriteDelimiter = ','
    LineComment = #39
    MultiCommentLeft = '{'
    MultiCommentRight = '}'
    CommentStyle.TextColor = clNavy
    CommentStyle.BkColor = clWhite
    CommentStyle.Style = [fsItalic]
    NumberStyle.TextColor = clFuchsia
    NumberStyle.BkColor = clWhite
    NumberStyle.Style = [fsBold]
    AllStyles = <
      item
        KeyWords.Strings = (
          'and'
          'begin'
          'begin'
          'break'
          'by'
          'close'
          'continue'
          'create'
          'deallocate'
          'declare'
          'delete'
          'delete'
          'do'
          'else'
          'end'
          'end'
          'exec'
          'fetch'
          'for'
          'from'
          'group'
          'having'
          'if'
          'inner'
          'insert'
          'join'
          'left'
          'like'
          'not'
          'on'
          'open'
          'or'
          'order'
          'outer'
          'proc'
          'procedure'
          'repeat'
          'return'
          'right'
          'rollback'
          'select'
          'set'
          'to'
          'trans'
          'transaction'
          'until'
          'update'
          'values'
          'where'
          'while'
          'while')
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stKeyword
        BracketStart = #0
        BracketEnd = #0
        Info = 'SQL Standard Default'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stBracket
        BracketStart = '"'
        BracketEnd = '"'
        Info = 'Double Quote'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        BGColor = clWhite
        StyleType = stSymbol
        BracketStart = #0
        BracketEnd = #0
        Symbols = ' ,;:.(){}[]=-*/^%<>#'#13#10
        Info = 'Symbols Delimiters'
      end>
    Description = 'SQL'
    Filter = 'SQL Files (*.sql)|*.sql'
    DefaultExtension = '.sql'
    StylerName = 'SQL'
    Extensions = 'sql'
    Left = 179
    Top = 466
  end
  object popRosa: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.7.1.8'
    UIStyle = tsCustom
    Left = 285
    Top = 256
    object N4Colonne1: TMenuItem
      Caption = '4 Colonne'
      OnClick = ExportRosa
    end
    object N5Colonne1: TMenuItem
      Caption = '5 Colonne'
      OnClick = ExportRosa
    end
    object N6Colonne1: TMenuItem
      Caption = '6 Colonne'
    end
    object N7Colonne1: TMenuItem
      Caption = '7 Colonne'
      OnClick = N7Colonne1Click
    end
  end
  object popExportMatchDay: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.7.1.8'
    UIStyle = tsCustom
    Left = 296
    Top = 600
    object ConRisultati1: TMenuItem
      Caption = 'Con Risultati'
      OnClick = ConRisultati1Click
    end
    object SenzaRisultati1: TMenuItem
      Caption = 'Senza Risultati'
      OnClick = SenzaRisultati1Click
    end
  end
  object popMatchEvents: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.7.1.8'
    UIStyle = tsCustom
    Left = 184
    Top = 520
    object EsportaTabellino1: TMenuItem
      Caption = 'Esporta Tabellino'
    end
  end
  object PopupMenu2: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.7.1.8'
    UIStyle = tsCustom
    Left = 292
    Top = 373
    object InserisciSquadraCasa1: TMenuItem
      Caption = 'Inserisci Squadra Casa'
    end
    object InseriscisquadraTrasferta1: TMenuItem
      Caption = 'Inserisci squadra Trasferta'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object InserisciNuovaRiga1: TMenuItem
      Caption = 'Inserisci Nuova Riga'
    end
  end
  object popTabellino: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.7.1.8'
    UIStyle = tsCustom
    Left = 288
    Top = 312
    object Sostituzione1: TMenuItem
      Caption = 'Sostituzione'
      OnClick = Sostituzione1Click
    end
    object AnnullaSostituzione1: TMenuItem
      Caption = 'Annulla Sostituzione'
      OnClick = AnnullaSostituzione1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Gol1: TMenuItem
      Caption = 'Gol'
      OnClick = Gol1Click
    end
    object GolRigore1: TMenuItem
      Caption = 'Gol Rigore'
      OnClick = GolRigore1Click
    end
    object Autogol1: TMenuItem
      Caption = 'Autogol'
      OnClick = Autogol1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Ammonizione1: TMenuItem
      Caption = 'Ammonizione'
      OnClick = Ammonizione1Click
    end
    object Espulsione1: TMenuItem
      Caption = 'Espulsione'
      OnClick = Espulsione1Click
    end
    object Infortunio1: TMenuItem
      Caption = 'Infortunio'
      OnClick = Infortunio1Click
    end
  end
  object ImageList1: TImageList
    Left = 64
    Top = 376
    Bitmap = {
      494C010115001900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000737373007373730073737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094949400949494009494
      9400949494009494940094949400949494009494940094949400949494007B7B
      7B00B5B5B500737373008C8C8C00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094949400F7F7F700F7F7
      F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E7008C8C8C00C6C6
      C600BDBDBD007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094949400F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF0084848400C6C6C600BDBD
      BD007B7B7B00848484009C9C9C008C8C8C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636363006363630063636300CECE
      CE00F7F7F700F7F7F700BDBDBD00BDBDBD0073737300C6C6C600BDBDBD007B7B
      7B00737373009C9C9C00CECECE00949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00DEDEDE00DEDEDE00CECE
      CE00F7F7F700F7F7F700C6C6C600B5B5B500525252007B7B7B00848484008C8C
      8C0084848400D6D6D600E7E7E700949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063636300FFFFFF00FFFF
      FF00FFFFFF00F7F7F700C6C6C600313131004A4A4A004A4A4A0094949400ADAD
      AD00ADADAD00E7E7E700E7E7E700949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636363006363630063636300D6D6
      D600FFFFFF00C6C6C600C6C6C600181818005A5A5A007B7B7B00B5B5B500B5B5
      B500BDBDBD00BDBDBD00E7E7E700949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00DEDEDE00DEDEDE00D6D6
      D600FFFFFF00FFFFFF00C6C6C600F7F7F700F7F7F700F7F7F700EFEFEF00EFEF
      EF00BDBDBD00E7E7E700E7E7E700949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063636300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600F7F7F700F7F7F700C6C6C600F7F7F700EFEF
      EF00BDBDBD00EFEFEF00E7E7E700949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636363006363630063636300D6D6
      D600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBD
      BD00BDBDBD00EFEFEF00EFEFEF00949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00DEDEDE00DEDEDE00D6D6
      D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600F7F7F700F7F7
      F700EFEFEF00EFEFEF00EFEFEF00949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094949400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00EFEFEF00949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094949400949494009494
      9400949494009494940094949400949494009494940094949400949494009494
      9400949494009494940094949400949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000848C94004A739C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00737373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063737B00315A84000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031CE000000000000000000944A210063A5CE00299CF7006B7B
      94009C5A3900944A2100944A2100944A2100944A2100944A2100944A2100944A
      2100944A2100944A2100944A2100944A21007B7B7B009C9C9C008C8C8C007B7B
      7B008C8C8C007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B3110004A8CC6001084EF004A5A
      7B008C4221007B3110007B3110007B3110007B3110007B3110007B3110007B31
      10007B3110007B3110007B3110007B3110000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000009CE700009CE7001831CE000000000084422100C6E7F70063BDFF002994
      EF007B8CAD00CE732100FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      AD00FFD6AD00FFD6AD00FFD6AD008C4A210073737300DEDEDE00ADADAD008C8C
      8C009494940094949400E7E7E700DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600737373006B291000B5DEF70042ADFF00187B
      E70063739400BD521000FFDEB500FFDEAD00FFD6A500FFD6A500FFCE9C00FFCE
      9400FFCE9400FFCE9400FFCE94007329100000000000A5522900A5522900A552
      2900A5522900A5522900A5522900A5522900A5522900A5522900A5522900A563
      5200DE948C00009CE700315284007B39180084422100FFFFFF00C6E7F7005ABD
      FF003194EF008C848400CEB5A500C6AD9C00C6AD9C00D6B5A500EFCEAD00FFDE
      AD00FFD6AD00FFD6AD00FFD6AD008C4A210073737300FFFFFF00DEDEDE00ADAD
      AD008C8C8C0084848400BDBDBD00ADADAD00ADADAD00BDBDBD00CECECE00D6D6
      D600D6D6D600D6D6D600D6D6D600737373006B291000FFFFFF00B5D6F70042AD
      FF00187BE700736B6B00C6A58C00B5948400B5948400C6A58C00E7BD9400FFCE
      9C00FFCE9400FFCE9400FFCE94007329100000000000A5522900FFF7F700FFF7
      EF00FFF7EF00FFF7E700F7EFE700F7EFDE00F7EFDE00F7EFDE00A5847B00DEAD
      AD00D69C9C008C6B6B0063949C007339180084422100FFFFFF00FFFFFF00BDE7
      FF0084BDE700ADA59C00BDA59400DEB58C00E7D6BD00DEC6AD00C6A58C00E79C
      3100FF9C0000FF9C0000FFD6AD008C4A210073737300FFFFFF00FFFFFF00DEDE
      DE00B5B5B500A5A5A500A5A5A500B5B5B500CECECE00C6C6C600ADADAD008C8C
      8C009C9C9C009C9C9C00D6D6D600737373006B291000FFFFFF00FFFFFF00ADD6
      F7006BADDE009C8C8400AD8C7B00D6A57300DEC6A500CEAD9400B58C7300DE84
      1800FF840000FF840000FFCE94007329100000000000A5522900FFFFF700FFF7
      EF00FFF7EF00FFF7EF00F7EFE700F7EFE700F7EFDE009C737300DEADAD00D69C
      9C00946B6B0094847300AD9C9400944A210084422100FFFFFF004AB54A004AB5
      4A00CEBDBD00D6AD8C00F7E7B500FFFFDE00FFFFEF00FFFFF700E7D6CE00CEAD
      A500FFDEB500FFDEAD00FFD6AD008C4A210073737300FFFFFF009C9C9C009C9C
      9C00C6C6C600ADADAD00D6D6D600EFEFEF00F7F7F700FFFFFF00D6D6D600B5B5
      B500DEDEDE00D6D6D600D6D6D600737373006B291000FFFFFF0031A5310031A5
      3100BDADAD00C6947300F7D6A500FFFFD600FFFFE700FFFFEF00DEC6BD00BD9C
      8C00FFCE9C00FFCE9C00FFCE940073291000313131003131310031313100D6D6
      CE00FFF7EF00FFF7EF00C6C6BD00C6BDB5007B737300DEA5A500D6A5A500946B
      63007B6B6300ADA59400DECEBD00A552290084422100FFFFFF004AB54A004AB5
      4A00C6ADA500DEB58C00FFEFB500FFFFD600FFFFE700FFFFFF00F7F7F700C6AD
      9C00FF9C0000FF9C0000FFDEAD008C4A210073737300FFFFFF009C9C9C009C9C
      9C00B5B5B500B5B5B500DEDEDE00E7E7E700F7F7F700FFFFFF00F7F7F700ADAD
      AD009C9C9C009C9C9C00D6D6D600737373006B291000FFFFFF0031A5310031A5
      3100B59C8C00D69C6B00FFE79C00FFF7C600FFFFDE00FFFFF700F7F7EF00B594
      8400FF840000FF840000FFCE9C0073291000A5A5A500A5A5A500A5A5A500D6D6
      CE00FFF7F700FFF7EF00C6C6BD00ADBDBD00106B94007B737B009C6363009C8C
      84008C847B00DED6C600F7E7D600A552290084422100FFFFFF00FFFFFF00FFFF
      FF00C6ADA500E7C6A500FFD69400FFE7B500FFFFEF00FFFFF700F7F7DE00C6AD
      9C00FFDEBD00FFDEB500FFDEB5008C4A210073737300FFFFFF00FFFFFF00FFFF
      FF00B5B5B500C6C6C600C6C6C600D6D6D600F7F7F700FFFFFF00EFEFEF00B5B5
      B500DEDEDE00DEDEDE00D6D6D600737373006B291000FFFFFF00FFFFFF00FFFF
      FF00B5948C00DEB58C00FFC67B00F7DE9C00FFFFE700FFFFEF00F7F7D600B59C
      8C00FFD6AD00FFD6A500FFCE9C007329100000000000A5522900FFFFFF00FFFF
      F700FFFFF700FFF7F700C6C6BD0018394200086B940021637B009C948C00B5AD
      A500B5ADA500F7EFD600F7E7D600A552290084422100FFFFFF00FFFFFF00FFFF
      FF00D6BDB500DEBDA500FFE7AD00F7D69C00FFEFC600FFFFDE00E7DEC600D6C6
      9C00FF9C0000FF9C0000FFDEB5008C4A210073737300FFFFFF00FFFFFF00FFFF
      FF00C6C6C600BDBDBD00D6D6D600CECECE00DEDEDE00EFEFEF00D6D6D600BDBD
      BD009C9C9C009C9C9C00DEDEDE00737373006B291000FFFFFF00FFFFFF00FFFF
      FF00C6ADA500CEAD8C00FFDE9400F7C68400F7E7B500FFF7CE00DED6B500CEAD
      8C00FF840000FF840000FFD6A50073291000313131003131310031313100D6D6
      D600FFFFF700CEC6C600CEC6BD0018212100426373007B848400BDB5AD00BDB5
      AD00C6BDB500C6BDAD00F7E7D600A552290084422100FFFFFF006B94FF006B94
      FF00EFDEDE00C6A58C00E7DEC600F7EFCE00F7CE9C00E7CEA500CEBDA500DEC6
      AD00FFE7C600FFE7C600FFDEBD008C4A210073737300FFFFFF00B5B5B500B5B5
      B500E7E7E700A5A5A500D6D6D600E7E7E700C6C6C600C6C6C600BDBDBD00C6C6
      C600E7E7E700DEDEDE00DEDEDE00737373006B291000FFFFFF00527BFF00527B
      FF00E7D6CE00B58C7300DECEB500F7E7BD00EFBD8400DEBD9400C6A58C00CEB5
      9400FFDEB500FFDEB500FFD6AD0073291000A5A5A500A5A5A500A5A5A500D6D6
      D600FFFFFF00FFFFF700CEC6C600FFF7EF00FFF7EF00FFF7EF00F7F7E700F7EF
      E700C6BDB500F7EFDE00F7EFDE00A552290084422100FFFFFF006B94FF006B94
      FF00FFFFFF00C67B3900C6ADA500C6AD9C00C6AD9C00D6BD9C00D6AD8C00EF94
      2100FF9C0000FF9C0000FFE7C6008C4A210073737300FFFFFF00B5B5B500B5B5
      B500FFFFFF007B7B7B00B5B5B500ADADAD00ADADAD00BDBDBD00ADADAD008484
      84009C9C9C009C9C9C00DEDEDE00737373006B291000FFFFFF00527BFF00527B
      FF00FFFFFF00B55A2100B59C8C00B5948400B5948400C6A58C00CE9C6B00E77B
      1000FF840000FF840000FFDEAD007329100000000000A5522900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CEC6C600FFF7F700FFF7EF00C6C6BD00FFF7EF00F7F7
      E700C6BDB500F7EFDE00F7EFDE00A5522900B56B3900D6A55A00D6A55A00D6A5
      5A00D6A55A00D6A55A00D6A55A00D6A55A00D6A55A00D6A55A00DEAD6B00D6A5
      5A00DEAD6B00D6A55A00CEAD7300B56B390094949400B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500A5A5A5009494
      9400A5A5A50094949400A5A5A500949494009C522100C68C4200C68C4200C68C
      4200C68C4200C68C4200C68C4200C68C4200C68C4200C68C4200CE9C5200C68C
      4200CE9C5200C68C4200BD945A00A5522100313131003131310031313100D6D6
      D600FFFFFF00FFFFFF00CECEC600CEC6C600CEC6C600C6C6BD00C6C6BD00C6C6
      BD00C6C6B500F7EFE700F7EFDE00A5522900AD5A2100DE7B2100DE7B2100DE7B
      2100DE7B2100DE7B2100DE7B2100DE7B2100DE7B2100DE7B2100F7BD8400DE7B
      2100F7BD8400B57B52004A6BD600BD5A18008C8C8C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00BDBDBD008484
      8400BDBDBD008484840094949400848484009C421000D6631000D6631000D663
      1000D6631000D6631000D6631000D6631000D6631000D6631000F7AD6300D663
      1000F7AD63009C6339003152C600A5420800A5A5A500A5A5A500A5A5A500D6D6
      D600FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700CEC6C600FFF7EF00FFF7
      EF00F7F7E700F7EFE700F7EFE700A552290000000000AD5A2900AD5A2900AD5A
      2900AD5A2900AD5A2900AD5A2900AD5A2900AD5A2900AD5A2900AD5A2900AD5A
      2900AD5A2900AD5A2900AD5A290000000000000000008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C00000000000000000094421800944218009442
      1800944218009442180094421800944218009442180094421800944218009442
      18009442180094421800944218000000000000000000A5522900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7F700FFF7
      EF00FFF7EF00F7F7E700F7EFE700A55229000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5522900A5522900A552
      2900A5522900A5522900A5522900A5522900A5522900A5522900A5522900A552
      2900A5522900A5522900A5522900A55229000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD4A0000FFEFCE00FFEF
      CE00FFE7CE0084180000FFE7CE00FFE7CE00FFE7CE0084180000FFEFD600FFEF
      CE00FFE7CE00BD4A000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD4A0000FFEFD600FFEF
      D600FFEFD60084180000FFEFD600FFEFCE00FFE7CE0084180000FFEFD600FFEF
      D600FFEFD600BD4A000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD4A0000FFF7DE00FFEF
      DE00FFEFDE0084180000FFEFD600FFEFD600FFEFD60084180000FFF7DE00FFEF
      DE00FFEFDE00BD4A00000000000000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE63000000000000000000000000
      0000000000000000000000000000000000009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C0000000000000000000000
      000000000000000000000000000000000000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A000000000000000000000000
      00000000000000000000000000000000000000000000BD4A0000FFF7E700FFF7
      E700FFF7E70084180000FFEFDE00FFEFDE00FFEFDE0084180000FFF7E700FFF7
      E700FFF7E700BD4A00000000000000000000FFFFFF00FFFFF700FFFFF700FFF7
      EF00FFF7E700FFEFDE00FFEFD600FFE7CE00CE63000000000000000000000000
      000000000000000000000000000000000000EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF009C9C9C0000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFF700FFF7EF00FFF7
      E700FFEFDE00FFE7CE00FFE7C600FFE7BD00BD4A000000000000000000000000
      00000000000000000000000000000000000000000000BD4A0000FFF7EF00FFF7
      EF00FFF7E70084180000FFF7E700FFF7E700FFF7DE0084180000FFF7EF00FFF7
      EF00FFF7EF00BD4A00000000000000000000FFFFFF00FFFFFF00FFFFF700FFF7
      EF00FFF7E700FFEFDE00FFEFD600FFEFCE00CE63000000000000000000000000
      000000000000000000000000000000000000EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF009C9C9C0000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFF700FFF7EF00FFF7
      E700FFEFDE00FFEFD600FFE7C600FFE7BD00BD4A000000000000000000000000
      00000000000000000000000000000000000000000000BD4A0000FFFFF700FFFF
      F700FFFFEF0084180000FFF7E700FFF7E700FFF7E70084180000FFFFF700FFFF
      F700FFFFF700BD4A00000000000000000000FFFFFF00FFFFFF00FFFFF700FFF7
      EF00FFF7E700FFF7DE00FFEFD600FFEFD600CE63000000000000000000000000
      000000000000000000000000000000000000EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF009C9C9C0000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFF700FFF7
      EF00FFF7DE00FFEFD600FFE7CE00FFE7C600BD4A000000000000000000000000
      00000000000000000000000000000000000000000000BD4A0000FFFFFF00FFFF
      FF00FFFFF70084180000FFF7EF00FFF7EF00FFF7EF0084180000FFFFFF00FFFF
      FF00FFFFF700BD4A000000000000000000009C3100009C3100009C3100009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C310000CE63
      0000000000000063000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B009C9C
      9C00000000006363630000000000000000008418000084180000841800008418
      000084180000841800008418000084180000841800008418000084180000BD4A
      000000000000004A0000000000000000000000000000BD4A0000FFFFFF00FFFF
      FF00FFFFFF0084180000FFFFF700FFFFF700FFFFEF0084180000FFFFFF00FFFF
      FF00FFFFFF00BD4A00000000000000000000FFFFFF00FFFFFF00FFFFF700FFFF
      F700FFF7EF00FFF7E700FFEFDE00FFEFDE00FFEFD600FFEFCE00FFE7CE00CE63
      000000000000006300000063000000000000EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF008484
      840000000000636363006363630000000000FFFFFF00FFFFFF00FFFFF700FFF7
      EF00FFF7E700FFEFDE00FFEFD600FFE7CE00FFE7C600FFE7BD00FFDEBD00BD4A
      000000000000004A0000004A00000000000000000000BD4A0000BD4A0000BD4A
      0000BD4A000084180000FFFFFF00FFFFF700FFFFF70084180000BD4A0000BD4A
      0000BD4A0000BD4A00000000000000000000FFFFFF00FFFFFF00FFFFF700FFFF
      F700FFF7EF00FFF7E700FFF7E700FFEFDE00FFEFD600FFEFCE00FFE7CE00CE63
      0000000000000063000063FF9C0000630000EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF008484
      84000000000063636300E7E7E70063636300FFFFFF00FFFFFF00FFFFF700FFF7
      EF00FFF7E700FFEFDE00FFEFD600FFEFCE00FFE7C600FFE7C600FFDEBD00BD4A
      000000000000004A00004AFF8400004A00000000000000000000000000000000
      00000000000084180000FFFFFF00FFFFFF00FFFFFF0084180000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFF7E700FFF7E700FFEFDE00FFEFD600FFEFD600FFE7CE00CE63
      000000000000006300000063000000000000EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF008484
      840000000000636363006363630000000000FFFFFF00FFFFFF00FFFFF700FFF7
      EF00FFF7E700FFF7E700FFEFDE00FFEFD600FFE7CE00FFE7C600FFE7BD00BD4A
      000000000000004A0000004A0000000000000000000000000000000000000000
      00000000000084180000FFFFFF00FFFFFF00FFFFFF0084180000000000000000
      0000000000000000000000000000000000009C3100009C3100009C3100009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C310000CE63
      0000000000000063000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B009C9C
      9C00000000006363630000000000000000008418000084180000841800008418
      000084180000841800008418000084180000841800008418000084180000BD4A
      000000000000004A000000000000000000000000000000000000000000000000
      000000000000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFF700FFF7
      EF00FFF7E700FFEFDE00FFEFD600FFEFCE00CE63000000000000000000000000
      000000000000000000000000000000000000EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF009C9C9C0000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFF700FFF7
      E700FFEFDE00FFEFD600FFE7C600FFE7BD00BD4A000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFF7DE00FFEFD600FFEFD600CE63000000000000000000000000
      000000000000000000000000000000000000EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF009C9C9C0000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFF700FFF7
      EF00FFF7E700FFEFD600FFE7CE00FFE7C600BD4A000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000004A0000004A0000004A0000004A0000004A0000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFF7E700FFEFDE00FFEFD600CE63000000000000000000000000
      000000000000000000000000000000000000EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF009C9C9C0000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7E700FFEFDE00FFEFCE00FFE7C600BD4A000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000004A00004AFF8400004A000000000000000000000000
      000000000000000000000000000000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE63000000000000000000000000
      0000000000000000000000000000000000009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C0000000000000000000000
      000000000000000000000000000000000000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000004A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE630000FFEFDE00FFEF
      DE00FFEFD6009C310000FFEFD600FFEFD600FFEFD6009C310000FFEFDE00FFEF
      DE00FFEFD600CE63000000000000000000000000000094949400E7E7E700E7E7
      E700E7E7E7007B7B7B00E7E7E700E7E7E700E7E7E7007B7B7B00E7E7E700E7E7
      E700E7E7E7009494940000000000000000009494940094949400949494009494
      9400949494009494940094949400949494009494940094949400949494009494
      940000000000000000000000000000000000086B1000086B1000086B1000086B
      1000086B1000086B1000086B1000086B1000086B1000086B1000086B1000086B
      10000000000000000000000000000000000000000000CE630000FFF7E700FFF7
      DE00FFEFDE009C310000FFEFDE00FFEFDE00FFEFDE009C310000FFF7E700FFF7
      DE00FFEFDE00CE63000000000000000000000000000094949400EFEFEF00EFEF
      EF00E7E7E7007B7B7B00E7E7E700E7E7E700E7E7E7007B7B7B00EFEFEF00EFEF
      EF00E7E7E7009494940000000000000000009494940094949400949494009494
      9400949494009494940094949400949494009494940094949400949494009494
      940000000000000000000000000000000000086B1000086B1000086B1000086B
      1000086B1000086B1000086B1000086B1000086B1000086B1000086B1000086B
      10000000000000000000000000000000000000000000CE630000FFF7E700FFF7
      E700FFF7E7009C310000FFF7DE00FFF7DE00FFF7DE009C310000FFF7E700FFF7
      E700FFF7E700CE63000000000000000000000000000094949400EFEFEF00EFEF
      EF00EFEFEF007B7B7B00EFEFEF00EFEFEF00E7E7E7007B7B7B00EFEFEF00EFEF
      EF00EFEFEF009494940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE630000FFF7EF00FFF7
      EF00FFF7EF009C310000FFF7E700FFF7E700FFF7E7009C310000FFF7EF00FFF7
      EF00FFF7E700CE63000000000000000000000000000094949400EFEFEF00EFEF
      EF00EFEFEF007B7B7B00EFEFEF00EFEFEF00EFEFEF007B7B7B00EFEFEF00EFEF
      EF00EFEFEF009494940000000000000000000000000000000000000000007373
      73000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B00000000000000000000000000000000000000000000000000084A
      9C00000000000000000000000000004A0000004A0000004A0000004A0000004A
      0000004A000000000000000000000000000000000000CE630000FFFFF700FFFF
      F700FFF7EF009C310000FFF7EF00FFF7E700FFF7E7009C310000FFFFF700FFFF
      F700FFF7EF00CE63000000000000000000000000000094949400EFEFEF00EFEF
      EF00EFEFEF007B7B7B00EFEFEF00EFEFEF00EFEFEF007B7B7B00EFEFEF00EFEF
      EF00EFEFEF009494940000000000000000000000000000000000737373007373
      73000000000000000000000000007B7B7B00B5B5B500A5A5A500949494008484
      84007B7B7B000000000000000000000000000000000000000000084A9C00084A
      9C00000000000000000000000000004A000021AD4200189C2900088C1800007B
      0800004A000000000000000000000000000000000000CE630000FFFFFF00FFFF
      F700FFFFF7009C310000FFF7EF00FFF7EF00FFF7EF009C310000FFFFF700FFFF
      F700FFFFF700CE63000000000000000000000000000094949400EFEFEF00EFEF
      EF00EFEFEF007B7B7B00EFEFEF00EFEFEF00EFEFEF007B7B7B00EFEFEF00EFEF
      EF00EFEFEF009494940000000000000000000000000073737300C6C6C600ADAD
      AD007373730073737300000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0000000000000000000000000000000000084A9C0042B5FF002994
      EF00084A9C00084A9C0000000000004A0000004A0000004A0000004A0000004A
      0000004A000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF009C310000FFFFF700FFFFF700FFFFEF009C310000FFFFFF00FFFF
      FF00FFFFFF00CE63000000000000000000000000000094949400EFEFEF00EFEF
      EF00EFEFEF007B7B7B00EFEFEF00EFEFEF00EFEFEF007B7B7B00EFEFEF00EFEF
      EF00EFEFEF0094949400000000000000000073737300EFEFEF00D6D6D600C6C6
      C600BDBDBD007373730000000000000000000000000000000000000000000000
      000000000000000000000000000000000000084A9C00ADDEF70063CEFF0039B5
      FF0039B5FF00084A9C0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF009C310000FFFFF700FFFFF700FFFFF7009C310000FFFFFF00FFFF
      FF00FFFFFF00CE63000000000000000000000000000094949400EFEFEF00EFEF
      EF00EFEFEF007B7B7B00EFEFEF00EFEFEF00EFEFEF007B7B7B00EFEFEF00EFEF
      EF00EFEFEF009494940000000000000000000000000073737300F7F7F700ADAD
      AD007373730073737300000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000084A9C00B5DEFF00398C
      D600084A9C00084A9C0000000000004A0000004A0000004A0000004A0000004A
      0000004A0000004A0000004A0000004A000000000000CE630000CE630000CE63
      0000CE6300009C310000FFFFFF00FFFFFF00FFFFFF009C310000CE630000CE63
      0000CE630000CE63000000000000000000000000000094949400949494009494
      9400949494007B7B7B00EFEFEF00EFEFEF00EFEFEF007B7B7B00949494009494
      9400949494009494940000000000000000000000000000000000737373007373
      73000000000000000000000000007B7B7B00BDBDBD00B5B5B500B5B5B500ADAD
      AD00A5A5A5009494940094949400848484000000000000000000084A9C00084A
      9C00000000000000000000000000004A000029B54A0029AD4A0021AD420018A5
      310010942900088C1800088C1000005A00000000000000000000000000000000
      0000000000009C310000FFFFFF00FFFFFF00FFFFFF009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00EFEFEF00EFEFEF00EFEFEF007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000007373
      73000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000000000000000084A
      9C00000000000000000000000000004A0000004A0000004A0000004A0000004A
      0000004A0000004A0000004A0000004A00000000000000000000000000000000
      0000000000009C310000FFFFFF00FFFFFF00FFFFFF009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00EFEFEF00EFEFEF00EFEFEF007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE630000CE630000CE630000CE630000CE630000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009494940094949400949494009494940094949400000000000000
      0000000000000000000000000000000000009494940094949400949494009494
      9400949494009494940094949400949494009494940094949400949494009494
      940000000000000000000000000000000000086B1000086B1000086B1000086B
      1000086B1000086B1000086B1000086B1000086B1000086B1000086B1000086B
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009494940094949400949494009494
      9400949494009494940094949400949494009494940094949400949494009494
      940000000000000000000000000000000000086B1000086B1000086B1000086B
      1000086B1000086B1000086B1000086B1000086B1000086B1000086B1000086B
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000063000000630000006300000063000000630000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006363630063636300636363006363630063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000063000063FF9C000063000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063636300BDBDBD006363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD847B00B58C7B00B58C7B00B58C
      7B00B58C7B00B58C7B00B58C7B00B58C7B00B58C7B00B58C7B00B58C7B00B58C
      7B00B58C7B000000000000000000000000009C9C9C00A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A50000000000000000000000000094635A009C6B63009C6B63009C6B
      63009C6B63009C6B63009C6B63009C6B63009C6B63009C6B63009C6B63009C6B
      63009C6B63000000000000000000000000001084210010842100108421001084
      2100108421001084210010842100108421001084210010842100108421001084
      210000000000000000000000000000000000AD847B00FFE7CE00F7E7CE00F7E7
      C600F7E7BD00F7DEBD00F7DEB500F7DEB500F7DEAD00F7D6AD00F7D6A500F7D6
      A500B58C7B00000000000000000000000000A5A5A500E7E7E700E7E7E700E7E7
      E700E7E7E700DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6
      D600A5A5A5000000000000000000000000009C6B5A00F7E7BD00F7DEBD00F7DE
      B500F7D6AD00F7D6A500F7D6A500F7D69C00EFCE9C00EFCE9400EFCE9400EFC6
      8C009C6B63000000000000000000000000001084210010842100108421001084
      2100108421001084210010842100108421001084210010842100108421001084
      210000000000000000000000000000000000B5847B00FFEFD600FFEFCE00F7E7
      CE00F7E7C600F7E7C600F7DEBD00F7DEB500F7DEB500F7DEAD00F7D6AD00F7D6
      A500B58C7B00000000000000000000000000A5A5A500EFEFEF00EFEFEF00E7E7
      E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6
      D600A5A5A5000000000000000000000000009C6B6300F7E7C600F7E7C600F7DE
      BD00F7DEB500F7DEAD00F7D6AD00F7D6A500F7CE9C00EFCE9C00EFCE9400EFCE
      94009C6B63000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B58C7B00FFEFDE00FFEFD600F7EF
      CE00F7E7CE00F7E7C600F7E7C600F7DEBD00F7DEBD00F7DEB500F7DEAD00F7D6
      AD00B58C7B00000000000000000000000000A5A5A500EFEFEF00EFEFEF00EFEF
      EF00E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D600A5A5A500000000000000000000000000A56B6300F7E7CE00F7E7C600F7E7
      C600F7DEBD00F7DEB500F7DEB500F7D6AD00F7D6A500EFD69C00EFCE9C00EFCE
      94009C6B63000000000000000000000000000000000000000000000000001863
      AD00000000000000000000000000006300000063000000630000006300000063
      000000630000000000000000000000000000BD8C7B00FFEFDE00DE9C3900DE9C
      3900DE9C3900DE9C3900DE9C3900DE9C3900DE9C3900DE9C3900DE9C3900F7DE
      B500B58C7B00000000000000000000000000A5A5A500F7F7F7009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00DEDE
      DE00A5A5A500000000000000000000000000A5736300FFEFD600D6842100D684
      2100D6842100D6842100D6842100D6842100D6842100D6842100D6842100EFCE
      9C009C6B630000000000000000000000000000000000000000001863AD001863
      AD000000000000000000000000000063000039BD5A0029AD420018A529000894
      180000630000000000000000000000000000BD8C7B00FFF7E700FFF7DE00FFEF
      DE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009C
      CE00009CCE00009CCE00009CCE00009CCE00ADADAD00F7F7F700F7F7F700EFEF
      EF00949494009494940094949400949494009494940094949400949494009494
      940094949400949494009494940094949400AD736300FFEFDE00FFEFD600FFEF
      D6000084BD000084BD000084BD000084BD000084BD000084BD000084BD000084
      BD000084BD000084BD000084BD000084BD00000000001863AD005AC6FF004AA5
      EF001863AD001863AD0000000000006300000063000000630000006300000063
      000000630000000000000000000000000000C6947B00FFF7EF00DE9C3900DE9C
      3900009CCE00C6FFFF00ADFFFF00A5FFFF009CFFFF009CFFFF009CFFFF009CF7
      FF009CF7FF009CF7FF009CF7FF00009CCE00ADADAD00F7F7F7009C9C9C009C9C
      9C0094949400E7E7E700DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D60094949400B57B6300FFF7E700D6842100D684
      21000084BD00B5FFFF009CFFFF008CFFFF0084FFFF0084FFFF0084FFFF0084F7
      FF0084EFFF0084EFFF0084EFFF000084BD001863AD00BDE7FF007BD6FF005AC6
      FF0052C6FF001863AD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6947B00FFF7EF00FFF7EF00FFF7
      E700009CCE00CEFFFF00BDFFFF00ADFFFF0094EFEF009CFFFF009CFFFF009CFF
      FF009CF7FF009CF7FF009CF7FF00009CCE00ADADAD00FFFFFF00F7F7F700F7F7
      F70094949400EFEFEF00E7E7E700DEDEDE00CECECE00D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D60094949400B57B6300FFF7E700FFF7E700FFEF
      DE000084BD00C6FFFF00ADFFFF0094FFFF007BE7E70084FFFF0084FFFF0084F7
      FF0084F7FF0084EFFF0084EFFF000084BD00000000001863AD00C6E7FF0052A5
      DE001863AD001863AD0000000000006300000063000000630000006300000063
      000000630000006300000063000000630000CE9C7B00FFFFF700DE9C3900DE9C
      3900009CCE00DEFFFF00C6FFFF009CE7DE0084CECE009CFFFF009CFFFF009CFF
      FF009CF7FF009CF7FF009CF7FF00009CCE00ADADAD00FFFFFF009C9C9C009C9C
      9C0094949400F7F7F700E7E7E700CECECE00B5B5B500D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D60094949400BD846300FFF7EF00D6842100D684
      21000084BD00CEFFFF00B5FFF70084D6D6006BBDBD0084FFFF0084FFFF0084FF
      FF0084F7FF0084F7FF0084EFFF000084BD0000000000000000001863AD001863
      AD000000000000000000000000000063000042C66B0042C6630039BD5A0031B5
      520029AD420018A53100109C210000730800CE9C8400FFFFF700FFFFF700FFF7
      EF00009CCE00E7FFFF00A5C6C6009CCECE00A5F7F7009CFFFF009CFFFF009CFF
      FF009CFFFF009CF7FF009CF7FF00009CCE00B5B5B500FFFFFF00FFFFFF00FFFF
      FF0094949400F7F7F700BDBDBD00BDBDBD00D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D60094949400C6846300FFFFF700FFF7EF00FFF7
      EF000084BD00DEFFFF008CB5B50084BDBD0094F7F7008CFFFF0084FFFF0084FF
      FF0084F7FF0084F7FF0084EFFF000084BD000000000000000000000000001863
      AD00000000000000000000000000006300000063000000630000006300000063
      000000630000006300000063000000630000D69C8400FFFFFF00DE9C3900DE9C
      3900009CCE00EFFFFF005A6363007B9C9C00BDFFFF00A5FFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CF7FF00009CCE00B5B5B500FFFFFF009C9C9C009C9C
      9C0094949400FFFFFF00949494009C9C9C00E7E7E700DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D60094949400C6846300FFFFFF00D6842100D684
      21000084BD00EFFFFF00424A4A0063848400A5FFFF0094FFFF0084FFFF0084FF
      FF0084FFFF0084F7FF0084F7FF000084BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6A58400FFFFFF00FFFFFF00FFFF
      F700009CCE00F7FFFF00C6D6D60008108C0000089C00B5FFFF00A5FFFF009CFF
      FF009CFFFF009CFFFF009CF7FF00009CCE00B5B5B500FFFFFF00FFFFFF00FFFF
      FF0094949400FFFFFF00D6D6D6007B7B7B0084848400DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D60094949400CE8C6300FFFFFF00FFFFF700FFFF
      F7000084BD00F7FFFF00B5CECE0000007300000084009CFFFF008CFFFF0084FF
      FF0084FFFF0084FFFF0084F7FF000084BD001084210010842100108421001084
      2100108421001084210010842100108421001084210010842100108421001084
      210000000000000000000000000000000000DEA58400FFFFFF00FFFFFF00FFFF
      FF00009CCE00009CCE00009CCE001021B5003152DE0000000000009CCE00009C
      CE00009CCE00009CCE00009CCE00009CCE00BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00949494009494940094949400949494009494940039393900949494009494
      940094949400949494009494940094949400CE8C6B00FFFFFF00FFFFFF00FFFF
      FF000084BD000084BD000084BD0000109C001839D600000000000084BD000084
      BD000084BD000084BD000084BD000084BD001084210010842100108421001084
      2100108421001084210010842100108421001084210010842100108421001084
      210000000000000000000000000000000000DEA58400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF7005A5ABD003939AD00FFF7E700FFF7
      E700B58C7B00000000000000000000000000BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009494940084848400F7F7F700F7F7
      F700A5A5A500000000000000000000000000CE8C6B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700FFF7EF004242A50021219C00FFEFDE00FFEF
      DE009C6B63000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00000000000000000000000000CE8C6B00CE8C6B00CE8C6B00CE8C
      6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C
      6B00CE8C6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000018BD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000084DE000084DE000010BD00000000000000000000000000D6840000D684
      0000D6840000D6840000D6840000D6840000D6840000D6840000D6840000D684
      0000D6840000D6840000000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C0000000000000000000000000000000000CE6B0000CE6B
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B
      0000CE6B0000CE6B00000000000000000000000000008C3910008C3910008C39
      10008C3910008C3910008C3910008C3910008C3910008C3910008C3910008C4A
      3900D67B6B000084DE0021396B006329080000000000D6840000FFEFDE00FFEF
      D600FFEFCE00FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEBD00FFDEB500FFDE
      B500FFDEAD00FFD6AD00D684000000000000000000009C9C9C00F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00E7E7E700E7E7E7009C9C9C000000000000000000CE6B0000FFEFCE00FFE7
      CE00FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6A500FFD6A500FFCE
      9C00FFCE9C00FFCE9400CE6B000000000000000000008C391000FFF7EF00F7F7
      E700F7EFE700F7EFDE00F7EFDE00F7E7D600F7E7D600F7E7CE008C636300CE94
      9400CE84840073524A00427B8C005221080000000000D6840000FFF7E700FFEF
      DE00FFEFD600FFEFD600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEBD00FFDE
      B500FFDEB500FFDEAD00D684000000000000000000009C9C9C00FFFFFF00F7F7
      F700F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E7E7E7009C9C9C000000000000000000CE6B0000FFEFD600FFE7
      CE00FFE7CE00FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6A500FFD6
      A500FFCE9C00FFCE9C00CE6B000000000000000000008C391000FFF7EF00FFF7
      EF00FFF7E700F7EFE700F7EFDE00F7E7DE00F7E7D600845A5A00D6949400C684
      84007B4A4A007B635A00948C7B007B31100000000000D6840000FFF7E700009C
      0000009C0000009C0000009C0000FFE7CE00FFE7C600009C0000009C0000009C
      0000009C0000FFDEB500D684000000000000000000009C9C9C00FFFFFF008484
      8400848484008484840084848400F7F7F700EFEFEF0084848400848484008484
      840084848400EFEFEF009C9C9C000000000000000000CE6B0000FFEFDE000084
      0000008400000084000000840000FFDEBD00FFDEB50000840000008400000084
      000000840000FFCE9C00CE6B000000000000181818001818180018181800C6C6
      BD00FFF7EF00F7F7E700B5B5A500B5ADA5005A525A00D68C8C00CE8C8C007B4A
      4A0063524A00948C7B00CEBDAD008C39100000000000D6840000FFF7EF00FFF7
      E700FFF7DE00FFEFDE00FFEFD600FFEFCE00FFE7CE00FFE7C600FFE7C600FFDE
      BD00FFDEBD00FFDEB500D684000000000000000000009C9C9C00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF009C9C9C000000000000000000CE6B0000FFF7E700FFEF
      DE00FFEFD600FFEFCE00FFE7CE00FFE7C600FFDEBD00FFDEB500FFDEAD00FFD6
      AD00FFD6A500FFD6A500CE6B000000000000949494009494940094949400C6C6
      BD00FFF7EF00F7F7E700B5B5AD009CA5A50008527300635A6300844A4A008473
      6B006B6B5A00D6C6B500EFDEC6008C39100000000000D6840000FFF7EF00009C
      0000009C0000009C0000009C0000FFEFD600FFEFD600009C0000009C0000009C
      0000009C0000FFDEBD00D684000000000000000000009C9C9C00FFFFFF008484
      8400848484008484840084848400F7F7F700F7F7F70084848400848484008484
      840084848400EFEFEF009C9C9C000000000000000000CE6B0000FFF7EF000084
      0000008400000084000000840000FFE7CE00FFE7C60000840000008400000084
      000000840000FFD6A500CE6B000000000000000000008C391000FFFFF700FFFF
      F700FFF7F700FFF7EF00B5B5AD000821290000527B0010425A00847B7300A59C
      8C00A59C8C00EFE7CE00EFDEC6008C39100000000000D6840000FFFFF700FFF7
      EF00FFF7EF00FFF7E700FFF7E700FFEFDE00FFEFD600FFEFD600FFE7CE00FFE7
      C600FFE7C600FFDEBD00D684000000000000000000009C9C9C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      EF00EFEFEF00EFEFEF009C9C9C000000000000000000CE6B0000FFF7EF00FFF7
      EF00FFF7E700FFEFDE00FFEFD600FFEFD600FFE7CE00FFE7C600FFDEBD00FFDE
      B500FFDEAD00FFD6AD00CE6B000000000000181818001818180018181800C6C6
      C600FFFFF700BDB5B500BDB5AD0008101000294A52005A6B6B00ADA59C00A59C
      9400B5AD9C00B5A59C00EFE7CE008C39100000000000D6840000FFFFF700009C
      0000009C0000009C0000009C0000FFF7E700FFEFDE00009C0000009C0000009C
      0000009C0000FFE7C600D684000000000000000000009C9C9C00FFFFFF008484
      8400848484008484840084848400FFFFFF00F7F7F70084848400848484008484
      840084848400EFEFEF009C9C9C000000000000000000CE6B0000FFFFF7000084
      0000008400000084000000840000FFEFD600FFEFCE0000840000008400000084
      000000840000FFDEAD00CE6B000000000000949494009494940094949400CEC6
      C600FFFFF700FFF7F700BDB5B500FFF7EF00F7EFE700F7EFE700F7EFDE00F7EF
      DE00B5AD9C00F7E7D600EFE7CE008C39100000000000D6840000FFFFFF00FFFF
      F700FFFFF700FFF7EF00FFF7EF00FFF7E700FFF7E700FFEFDE00FFEFD600FFEF
      CE00FFE7CE00FFE7C600D684000000000000000000009C9C9C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF009C9C9C000000000000000000CE6B0000FFFFFF00FFFF
      F700FFF7EF00FFF7E700FFF7E700FFEFDE00FFEFD600FFEFD600FFE7CE00FFE7
      C600FFDEBD00FFDEB500CE6B000000000000000000008C391000FFFFFF00FFFF
      FF00FFFFFF00FFFFF700BDB5B500FFF7EF00FFF7EF00B5B5AD00F7EFE700F7EF
      DE00B5ADA500F7E7D600F7E7D6008C39100000000000D6840000FFFFFF00009C
      0000009C0000009C0000009C0000FFF7EF00FFF7E700009C0000009C0000009C
      0000009C0000FFE7CE00D684000000000000000000009C9C9C00FFFFFF008484
      8400848484008484840084848400FFFFFF00FFFFFF0084848400848484008484
      840084848400F7F7F7009C9C9C000000000000000000CE6B0000FFFFFF000084
      0000008400000084000000840000FFF7E700FFEFDE0000840000008400000084
      000000840000FFDEBD00CE6B000000000000181818001818180018181800CECE
      CE00FFFFFF00FFFFFF00BDBDB500BDB5B500BDB5B500B5B5AD00B5B5AD00B5B5
      A500B5ADA500F7EFDE00F7E7D6008C39100000000000D6840000FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFE700FFEF
      DE00FFEFD600FFEFD600D684000000000000000000009C9C9C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700F7F7F700F7F7F7009C9C9C000000000000000000CE6B0000FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFDE00FFEFD600FFEF
      D600FFE7CE00FFE7C600CE6B000000000000949494009494940094949400CECE
      CE00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7F700BDB5AD00FFF7E700F7EF
      E700F7EFE700F7EFDE00F7E7D6008C39100000000000D6840000FFFFFF00009C
      0000009C0000009C0000009C0000FFFFF700FFF7EF00009C0000009C0000009C
      0000009C0000FFEFD600D684000000000000000000009C9C9C00FFFFFF008484
      8400848484008484840084848400FFFFFF00FFFFFF0084848400848484008484
      840084848400F7F7F7009C9C9C000000000000000000CE6B0000FFFFFF000084
      0000008400000084000000840000FFF7EF00FFF7E70000840000008400000084
      000000840000FFE7CE00CE6B000000000000000000008C391000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700F7EFE700F7EFDE00F7EFDE008C39100000000000D6840000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFF7DE00FFEFDE00D684000000000000000000009C9C9C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F7009C9C9C000000000000000000CE6B0000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEF
      DE00FFEFD600FFEFCE00CE6B000000000000000000008C3910008C3910008C39
      10008C3910008C3910008C3910008C3910008C3910008C3910008C3910008C39
      10008C3910008C3910008C3910008C3910000000000000000000D6840000D684
      0000D6840000D6840000D6840000D6840000D6840000D6840000D6840000D684
      0000D6840000D6840000000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C0000000000000000000000000000000000CE6B0000CE6B
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B
      0000CE6B0000CE6B000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FFFB000000000000FFF1000000000000
      8000000000000000800000000000000080000000000000000000000000000000
      0000000000000000800000000000000000000000000000000000000000000000
      8000000000000000000000000000000000000000000000008000000000000000
      8000000000000000FFFF0000000000009FFF9FFF9FFFFFFB000000000000FFF1
      0000000000008000000000000000800000000000000080000000000000000000
      0000000000000000000000000000800000000000000000000000000000000000
      0000000000008000000000000000000000000000000000008001800180018000
      FFFFFFFFFFFF8000FFFFFFFFFFFFFFFF8003FFFFFFFFFFFF8003FFFFFFFFFFFF
      8003007F007F007F8003007F007F007F8003007F007F007F8003007F007F007F
      8003000B000B000B80030009000900098003000800080008F83F000900090009
      F83F000B000B000BF83F007F007F007FFFFF007F007F007FF83F007F007F007F
      FC7F007F007F007FFEFFFFFFFFFFFFFFFFFFFFFF80038003000F000F80038003
      000F000F80038003FFFFFFFF80038003EE07EE0780038003CE07CE0780038003
      820782078003800303FF03FF800380038200820080038003CE00CE00F83FF83F
      EE00EE00F83FF83FFFFFFFFFF83FF83F000F000FFFFFFFFF000F000FF83FF83F
      FFFFFFFFFC7FFC7FFFFFFFFFFEFFFEFFFFFFFFFFFFFFFFFF000700070007000F
      000700070007000F000700070007FFFF000700070007EE07000700070007CE07
      000000000000820700000000000003FF0000000000008200000000000000CE00
      000000000000EE00000000000000FFFF000000000000000F000000000000000F
      000700070007FFFF000700070007FFFFFFFBFFFFFFFFFFFFFFF1C003C003C003
      8000800180018001800080018001800180008001800180010000800180018001
      0000800180018001800080018001800100008001800180010000800180018001
      8000800180018001000080018001800100008001800180018000800180018001
      8000C003C003C003FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dsAllPlayers: TDataSource
    DataSet = dmUniDacPgChampionships.qryAllPlayers
    Left = 282
    Top = 139
  end
  object popChamRanking: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.7.1.8'
    UIStyle = tsCustom
    Left = 294
    Top = 433
    object Classfiica1Colonna1: TMenuItem
      Caption = 'Classfiica 1 Colonna'
      OnClick = Classfiica1Colonna1Click
    end
    object Classifica6Colonne1: TMenuItem
      Caption = 'Classifica 6 Colonne'
      OnClick = Classifica6Colonne1Click
    end
    object Classifica8Colonne1: TMenuItem
      Caption = 'Classifica 8 Colonne'
      OnClick = Classifica8Colonne1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Marcatori1: TMenuItem
      Caption = 'Marcatori'
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Html1: TMenuItem
      Caption = 'Html'
    end
  end
  object PgQuery1: TUniQuery
    Left = 648
    Top = 264
  end
  object PgDataSource1: TUniDataSource
    DataSet = PgQuery1
    Left = 536
    Top = 184
  end
  object JanuaGridController1: TJanuaGridController
    Enabled = False
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    DBGrid = grdMatches
    OnNeedColor = JanuaGridController1NeedColor
    Left = 808
    Top = 216
  end
  object dsMatchTeams: TUniDataSource
    DataSet = dmUniDacPgChampionships.qryMatchTeams
    Left = 536
    Top = 248
  end
  object OpenPictureDialog2: TOpenPictureDialog
    Left = 657
    Top = 320
  end
  object AdvAppStyler1: TAdvAppStyler
    Enabled = False
    Style = tsWindows10
    Left = 768
    Top = 352
  end
  object dsDynamicRanking: TDataSource
    DataSet = dmUniDacPgChampionships.qryDynamicRanking
    Left = 536
    Top = 306
  end
  object dsMatchFrom: TDataSource
    Left = 536
    Top = 360
  end
  object dsMatchTo: TDataSource
    Left = 536
    Top = 416
  end
  object AdvMenuOfficeStyler1: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osWindows10
    Background.Position = bpCenter
    Background.Color = 16250613
    ButtonAppearance.DownColor = 16248808
    ButtonAppearance.DownColorTo = 16248808
    ButtonAppearance.HoverColor = 16248808
    ButtonAppearance.HoverColorTo = 16248808
    ButtonAppearance.DownBorderColor = 16371364
    ButtonAppearance.HoverBorderColor = 16371364
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Segoe UI'
    ButtonAppearance.CaptionFont.Style = []
    IconBar.Color = 15658734
    IconBar.ColorTo = clNone
    IconBar.CheckColor = 16248808
    IconBar.CheckBorder = 16371364
    IconBar.RadioColor = 16248808
    IconBar.RadioBorder = 16371364
    IconBar.SeparatorColor = 12961221
    SelectedItem.Color = 16248808
    SelectedItem.ColorTo = 16248808
    SelectedItem.BorderColor = 16371364
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -12
    SelectedItem.Font.Name = 'Segoe UI'
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -9
    SelectedItem.NotesFont.Name = 'Segoe UI'
    SelectedItem.NotesFont.Style = []
    SelectedItem.CheckColor = 16248808
    SelectedItem.CheckBorder = 16371364
    SelectedItem.RadioColor = 16248808
    SelectedItem.RadioBorder = 16371364
    RootItem.Color = clWhite
    RootItem.ColorTo = 15653844
    RootItem.GradientDirection = gdVertical
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clBlack
    RootItem.Font.Height = -12
    RootItem.Font.Name = 'Segoe UI'
    RootItem.Font.Style = []
    RootItem.SelectedColor = 16248808
    RootItem.SelectedColorTo = 16248808
    RootItem.SelectedColorMirror = 16248808
    RootItem.SelectedColorMirrorTo = 16248808
    RootItem.SelectedBorderColor = 16371364
    RootItem.SelectedTextColor = clBlack
    RootItem.HoverColor = 16248808
    RootItem.HoverColorTo = 16248808
    RootItem.HoverColorMirror = 16248808
    RootItem.HoverColorMirrorTo = 16248808
    RootItem.HoverBorderColor = 16371364
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.SplitterColorTo = clBlack
    Separator.Color = 14737632
    Separator.ColorTo = clWhite
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -9
    NotesFont.Name = 'Segoe UI'
    NotesFont.Style = []
    MenuBorderColor = 9934743
    Left = 392
    Top = 376
  end
  object AdvFormStyler2: TAdvFormStyler
    AutoThemeAdapt = True
    Style = tsWindows10
    AppStyle = AdvAppStyler1
    Left = 656
    Top = 440
  end
  object dsRanking: TDataSource
    Left = 536
    Top = 472
  end
  object dsTeamsChampPlayers: TDataSource
    DataSet = dmUniDacPgChampionships.qryTeamChampPlayers
    Left = 536
    Top = 536
  end
  object dsClubsAnagraph: TDataSource
    DataSet = dmSportAnagraph.qryAnagraphs
    Left = 1056
    Top = 248
  end
  object dsClubs: TDataSource
    Left = 1056
    Top = 312
  end
  object dsTeamPlayers: TDataSource
    DataSet = dmUniDacPgChampionships.qryTeamPlayers
    Left = 744
    Top = 544
  end
end
