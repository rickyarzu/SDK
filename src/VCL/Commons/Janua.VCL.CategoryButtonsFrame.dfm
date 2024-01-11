inherited JanuaCategoryButtonsFrame: TJanuaCategoryButtonsFrame
  Width = 195
  Height = 543
  ParentFont = False
  ExplicitWidth = 195
  ExplicitHeight = 543
  object catMenuItems: TCategoryButtons
    Left = 0
    Top = 0
    Width = 195
    Height = 543
    Align = alClient
    BorderStyle = bsNone
    ButtonFlow = cbfVertical
    ButtonHeight = 40
    ButtonWidth = 100
    ButtonOptions = [boFullSize, boShowCaptions, boCaptionOnlyBorder]
    Categories = <>
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    HotButtonColor = 12477460
    PopupMenu = PopupMenu1
    RegularButtonColor = clNone
    SelectedButtonColor = clNone
    TabOrder = 0
  end
  object PopupMenu1: TPopupMenu
    Left = 88
    Top = 216
    object NuovaCategoria1: TMenuItem
      Caption = 'Nuova Categoria'
      OnClick = NuovaCategoria1Click
    end
    object NuovaCategoriaNoCaption1: TMenuItem
      Caption = 'Nuova Categoria No Caption'
      OnClick = NuovaCategoriaNoCaption1Click
    end
  end
end
