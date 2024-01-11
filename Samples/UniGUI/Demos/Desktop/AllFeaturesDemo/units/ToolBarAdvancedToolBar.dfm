object UniToolBarAdvancedToolBar: TUniToolBarAdvancedToolBar
  Left = 0
  Top = 0
  Width = 948
  Height = 559
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    948
    559)
  object UniContainerPanel1: TUniContainerPanel
    Left = 67
    Top = 38
    Width = 808
    Height = 463
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniToolBar1: TUniToolBar
      Left = 0
      Top = 0
      Width = 808
      Height = 29
      Hint = ''
      Images = UniNativeImageList1
      BorderWidth = 1
      Anchors = [akLeft, akTop, akRight]
      Align = alTop
      TabOrder = 0
      ParentColor = False
      Color = clBtnFace
      object UniToolButton1: TUniToolButton
        Left = 0
        Top = 0
        Hint = ''
        ImageIndex = 0
        Caption = 'UniToolButton1'
        TabOrder = 1
        OnClick = UniToolButton1Click
      end
      object UniToolButton2: TUniToolButton
        Left = 23
        Top = 0
        Hint = ''
        ImageIndex = 1
        Caption = 'UniToolButton2'
        TabOrder = 2
        OnClick = UniToolButton2Click
      end
      object UniToolButton6: TUniToolButton
        Left = 46
        Top = 0
        Hint = ''
        ImageIndex = 2
        Caption = 'UniToolButton3'
        TabOrder = 3
        OnClick = UniToolButton6Click
      end
      object UniToolButton3: TUniToolButton
        Left = 69
        Top = 0
        Width = 8
        Hint = ''
        Style = tbsSeparator
        Caption = 'UniToolButton3'
        TabOrder = 4
        ExplicitLeft = 75
        ExplicitTop = 1
      end
      object UniToolButton4: TUniToolButton
        Left = 77
        Top = 0
        Width = 115
        Hint = ''
        Style = tbsContainer
        Caption = 'UniToolButton4'
        TabOrder = 5
        object UniEdit1: TUniEdit
          Left = 0
          Top = 0
          Width = 115
          Hint = ''
          Text = 'UniEdit1'
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 1
          OnChange = UniEdit1Change
        end
      end
      object UniToolButton7: TUniToolButton
        Left = 192
        Top = 0
        Width = 8
        Hint = ''
        Style = tbsSeparator
        Caption = 'UniToolButton7'
        TabOrder = 6
      end
      object UniToolButton8: TUniToolButton
        Left = 200
        Top = 0
        Width = 137
        Hint = ''
        Style = tbsContainer
        Caption = 'UniToolButton8'
        TabOrder = 7
        object UniComboBox1: TUniComboBox
          Left = 0
          Top = 0
          Width = 137
          Hint = ''
          Text = 'UniComboBox1'
          Items.Strings = (
            'Item-1'
            'Item-2'
            'Item-3'
            'Item-4'
            'Item-5'
            '')
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 1
          OnSelect = UniComboBox1Select
        end
      end
      object UniToolButton9: TUniToolButton
        Left = 337
        Top = 0
        Width = 8
        Hint = ''
        Style = tbsSeparator
        Caption = 'UniToolButton9'
        TabOrder = 8
      end
      object UniToolButton10: TUniToolButton
        Left = 345
        Top = 0
        Width = 136
        Hint = ''
        Style = tbsContainer
        Caption = 'UniToolButton10'
        TabOrder = 9
        object UniTrackBar1: TUniTrackBar
          Left = 0
          Top = 0
          Width = 136
          Height = 22
          Hint = ''
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 1
          OnChange = UniTrackBar1Change
        end
      end
      object UniToolButton11: TUniToolButton
        Left = 481
        Top = 0
        Width = 8
        Hint = ''
        Style = tbsSeparator
        Caption = 'UniToolButton11'
        TabOrder = 10
      end
      object UniToolButton12: TUniToolButton
        Left = 489
        Top = 0
        Width = 128
        Hint = ''
        Style = tbsContainer
        Caption = 'UniToolButton12'
        TabOrder = 11
        object UniDateTimePicker1: TUniDateTimePicker
          Left = 0
          Top = 0
          Width = 120
          Hint = ''
          DateTime = 41997.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 1
          OnChange = UniDateTimePicker1Change
        end
      end
      object UniToolButton13: TUniToolButton
        Left = 617
        Top = 0
        Width = 120
        Hint = ''
        Style = tbsContainer
        Caption = 'UniToolButton13'
        TabOrder = 12
        object UniSpinEdit1: TUniSpinEdit
          Left = 0
          Top = 0
          Width = 120
          Height = 22
          Hint = ''
          TabOrder = 1
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          OnChange = UniSpinEdit1Change
        end
      end
    end
    object UniMemo1: TUniMemo
      Left = 0
      Top = 29
      Width = 808
      Height = 434
      Hint = ''
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
    end
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 659
    Top = 142
    Images = {
      03000000FFFFFF1F04A000000089504E470D0A1A0A0000000D49484452000000
      100000001008060000001FF3FF61000000097048597300000EC300000EC301C7
      6FA8640000005249444154388DED91410AC03008042779B2BE237E797B0AA4B4
      86402F1E3A200BAB2E8250023393249DE8ACB9DB0024298FBFE3EE00444403E8
      AB990DEFE800638CD766E63F02EA5C70AA2BFF172A7CE13317861D5CD71349DC
      EB0000000049454E44AE426082FFFFFF1F045301000089504E470D0A1A0A0000
      000D49484452000000100000001008060000001FF3FF61000000097048597300
      000EC300000EC301C76FA8640000010549444154388DAD93316EC2301486BF58
      59BA6562A637682F80E8C6622947801380728054586241E0227181DE20482CDE
      2AE52264CE52EF954A0762C958D010C43FBEF7BEDFBF9E9E2302D5A51A025320
      ED0DF2482A73042A6007CCF7F9C8FAF3C20393BA5405F005A4816F1F980107A9
      CC594F38F80A182A010AA9CC384C50002F2DB0AF0FA94C0220EA528D816107D8
      25797709A61D61A7D4197489EEAB0F10F7067974A70100719665C74B8D1FF1C4
      76B5683517800D8BBF51CC76B57047744D9533F80C3B9BF5B20D86D3652280B9
      9F426B7D0B6C1B0EA1B5B6C01B606F840126EE4F9C2D492AF3CDE948FE7B79B2
      CF473B5710C1C02BB0A15990A7AAA93FFBF043F407475C51787C9077CC000000
      0049454E44AE426082FFFFFF1F04EA00000089504E470D0A1A0A0000000D4948
      4452000000100000001008060000001FF3FF61000000097048597300000EC300
      000EC301C76FA8640000009C49444154388DDD92C10DC2301004C78806D24228
      212DD0C03EA821B5A415786C0150026E212DA404F38823A12412317920719275
      D2DD79753B764829B1270EBB6E03C7794152033C67E508B4B663C90683ED00B4
      40035CD786B658B8E55C7D2B70C9B95B6B2E18BC4525697AA2473E451B4C0C4E
      8C0CEE9216363E5AB0DD033D238373B180A41AA88181151B5B1944A0B33DCC87
      C2CFBFF21F08BC00EA6527DC43CBAF5D0000000049454E44AE426082}
  end
end
