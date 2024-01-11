object Frame4: TFrame4
  Left = 0
  Top = 0
  Width = 200
  Height = 467
  TabOrder = 0
  object catMenuItems: TCategoryButtons
    Left = 0
    Top = 0
    Width = 200
    Height = 467
    Align = alClient
    BorderStyle = bsNone
    ButtonFlow = cbfVertical
    ButtonHeight = 40
    ButtonWidth = 100
    ButtonOptions = [boFullSize, boShowCaptions, boCaptionOnlyBorder]
    Categories = <
      item
        Caption = 'Gruppo 1'
        Color = clInfoBk
        Collapsed = False
        Items = <
          item
            Caption = 'Uno'
            ImageIndex = 1
            ImageName = 'businesswoman'
          end
          item
            Caption = 'Due'
            ImageIndex = 2
            ImageName = 'calendar'
          end
          item
            Caption = 'Tre'
            ImageIndex = 3
            ImageName = 'about'
          end>
      end
      item
        Caption = 'Categoria 2'
        Color = clNone
        Collapsed = True
        Items = <
          item
            Caption = 'Uno'
            ImageIndex = 18
            ImageName = 'automotive'
          end
          item
            Caption = 'Due'
            ImageIndex = 33
            ImageName = 'call_transfer'
          end
          item
            Caption = 'Tre'
            ImageIndex = 3
            ImageName = 'about'
          end>
        TextColor = clCream
      end>
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    HotButtonColor = 12477460
    Images = NavBarDemoDataModule.SVGIconImageList
    RegularButtonColor = clNone
    SelectedButtonColor = clNone
    TabOrder = 0
  end
end
