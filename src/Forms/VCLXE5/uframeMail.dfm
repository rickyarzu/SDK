object frameMail: TframeMail
  Left = 0
  Top = 0
  Width = 687
  Height = 528
  TabOrder = 0
  TabStop = True
  object pnlBottom: TPanel
    Left = 0
    Top = 183
    Width = 687
    Height = 345
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Memo1: TMemo
      Left = 0
      Top = 0
      Width = 687
      Height = 311
      Align = alClient
      TabOrder = 0
    end
    object pnlButtons: TPanel
      Left = 0
      Top = 311
      Width = 687
      Height = 34
      Align = alBottom
      TabOrder = 1
      object bbtnAdvanced: TBitBtn
        Left = 12
        Top = 5
        Width = 85
        Height = 25
        Hint = 'More options...'
        Caption = '&Advanced'
        TabOrder = 0
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        NumGlyphs = 2
      end
      object pnlSmallButtons: TPanel
        Left = 521
        Top = 1
        Width = 165
        Height = 32
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object bbtnCancel: TBitBtn
          Left = 5
          Top = 4
          Width = 75
          Height = 25
          Hint = 'Close window'
          TabOrder = 0
          Kind = bkCancel
          Style = bsNew
        end
        object bbtnOk: TBitBtn
          Left = 85
          Top = 3
          Width = 75
          Height = 25
          Hint = 'Send message now'
          Caption = 'Sen&d'
          Default = True
          ModalResult = 1
          TabOrder = 1
          OnClick = bbtnOkClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            000037777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
            FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF7777BBF
            FFF07F333777777F3FF70FFFFFFFB9BF1CC07F3FFF337F7377770F777FFFB99B
            C1C07F7773337F377F370FFFFFFFB9BBC1C07FFFFFFF7F337FF700000077B999
            B000777777777F33777733337377B9999B33333F733373F337FF3377377B99BB
            9BB33377F337F377377F3737377B9B79B9B737F73337F7F7F37F33733777BB7B
            BBB73373333377F37F3737333777BB777B9B3733333377F337F7333333777B77
            77BB3333333337333377333333333777337B3333333333333337}
          NumGlyphs = 2
          Style = bsNew
        end
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 687
    Height = 183
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object pnlTopLeft: TPanel
      Left = 0
      Top = 0
      Width = 297
      Height = 183
      Align = alLeft
      BevelOuter = bvNone
      Color = 13295059
      TabOrder = 0
      object lblCC: TLabel
        Left = 4
        Top = 71
        Width = 18
        Height = 13
        Caption = '&CC:'
        FocusControl = edtCC
      end
      object lblBCC: TLabel
        Left = 4
        Top = 99
        Width = 24
        Height = 13
        Caption = 'BCC:'
        FocusControl = edtBCC
      end
      object lblPriority: TLabel
        Left = 4
        Top = 160
        Width = 38
        Height = 13
        Caption = '&Priority:'
      end
      object Label1: TLabel
        Left = 4
        Top = 132
        Width = 17
        Height = 13
        Caption = 'Da:'
        FocusControl = edtFrom
      end
      object Label2: TLabel
        Left = 210
        Top = 158
        Width = 72
        Height = 13
        Caption = 'Return &Receipt'
      end
      object edtCC: TEdit
        Left = 52
        Top = 67
        Width = 233
        Height = 21
        TabOrder = 0
        OnEnter = edsetcolorenter
        OnExit = edsetcolorexit
      end
      object edtBCC: TEdit
        Left = 52
        Top = 95
        Width = 233
        Height = 21
        TabOrder = 1
        OnEnter = edsetcolorenter
        OnExit = edsetcolorexit
      end
      object cboPriority: TComboBox
        Left = 52
        Top = 156
        Width = 113
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        OnEnter = edsetcolorenter
        OnExit = edsetcolorexit
        Items.Strings = (
          'Highest'
          'High'
          'Normal'
          'Low'
          'Lowest')
      end
      object chkReturnReciept: TCheckBox
        Left = 188
        Top = 158
        Width = 17
        Height = 17
        Caption = 'Return &Receipt'
        TabOrder = 3
        OnEnter = edsetcolorenter
        OnExit = edsetcolorexit
      end
      object pnlMainDetails: TPanel
        Left = 0
        Top = 0
        Width = 297
        Height = 65
        Align = alTop
        Color = 8454143
        TabOrder = 4
        object lblTo: TLabel
          Left = 4
          Top = 12
          Width = 16
          Height = 13
          Caption = '&To:'
          FocusControl = edtTo
        end
        object lblSubject: TLabel
          Left = 4
          Top = 36
          Width = 40
          Height = 13
          Caption = '&Subject:'
          FocusControl = edtSubject
        end
        object edtTo: TEdit
          Left = 52
          Top = 8
          Width = 233
          Height = 21
          TabOrder = 0
          Text = 'hadi@server'
          OnEnter = edsetcolorenter
          OnExit = edsetcolorexit
        end
        object edtSubject: TEdit
          Left = 52
          Top = 36
          Width = 233
          Height = 21
          TabOrder = 1
          OnEnter = edsetcolorenter
          OnExit = edsetcolorexit
        end
      end
      object edtFrom: TEdit
        Left = 58
        Top = 129
        Width = 233
        Height = 21
        TabOrder = 5
        OnEnter = edsetcolorenter
        OnExit = edsetcolorexit
      end
    end
    object grpAttachment: TGroupBox
      Left = 297
      Top = 0
      Width = 390
      Height = 183
      Align = alClient
      Caption = 'Allegati'
      TabOrder = 1
      object lvFiles: TListView
        Left = 6
        Top = 15
        Width = 363
        Height = 69
        Columns = <
          item
            Caption = 'Filename/ContentType'
            Width = 339
          end>
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        ViewStyle = vsReport
      end
      object btnAttachment: TBitBtn
        Left = 6
        Top = 121
        Width = 361
        Height = 25
        Hint = 'Send a file as an attachment'
        Caption = 'Inserisci Allegato'
        TabOrder = 1
        OnClick = btnAttachmentClick
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666660000006666668000866666660000006666680666086666660000006666
          6066666066666600000066666068086066666600000066666060606066666600
          0000666660606060666666000000666660606060666666000000666660606060
          6666660000006666606060606666660000006666606060606666660000006666
          6060606066666600000066666060606066666600000066666660666066666600
          0000666666606660666666000000666666606660666666000000666666660006
          666666000000666666666666666666000000}
      end
      object btnText: TBitBtn
        Left = 104
        Top = 152
        Width = 265
        Height = 25
        Hint = 'Send text in memo as Content Type set on left'
        Caption = 'Text Content Type'
        TabOrder = 2
        Visible = False
        OnClick = btnTextClick
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C00000000000000000000000000000000000000000000
          1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
          1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
          1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
          1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
          1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
          1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
          1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
          1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
          1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000
          1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7F0000FF7F00001F7C
          1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7F000000001F7C1F7C
          1F7C1F7C1F7C1F7C1F7C000000000000000000000000000000001F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C}
      end
      object Edit1: TEdit
        Left = 4
        Top = 154
        Width = 97
        Height = 21
        Color = clBtnFace
        TabOrder = 3
        Text = 'text/plain'
        Visible = False
        OnEnter = edsetcolorenter
        OnExit = edsetcolorexit
      end
      object edAttach: TEdit
        Left = 6
        Top = 90
        Width = 363
        Height = 21
        TabOrder = 4
        OnEnter = edsetcolorenter
        OnExit = edsetcolorexit
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 488
    Top = 200
  end
  object SaveDialog1: TSaveDialog
    Left = 520
    Top = 200
  end
end
