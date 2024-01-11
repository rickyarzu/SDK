object UniDatabaseSQLQuery: TUniDatabaseSQLQuery
  Left = 0
  Top = 0
  Width = 939
  Height = 666
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    939
    666)
  object UniCPanel: TUniPanel
    Left = 33
    Top = 29
    Width = 867
    Height = 603
    Hint = ''
    Anchors = []
    TabOrder = 0
    ScreenMask.WaitData = True
    TitleVisible = True
    Title = 'SQL Query Demo'
    Caption = ''
    object UniPanel1: TUniPanel
      Left = 222
      Top = 31
      Width = 644
      Height = 571
      Hint = ''
      Align = alClient
      TabOrder = 0
      BorderStyle = ubsNone
      Caption = ''
      object UniSplitter2: TUniSplitter
        Left = 0
        Top = 127
        Width = 644
        Height = 4
        Cursor = crVSplit
        Hint = ''
        Align = alTop
        ParentColor = False
        Color = clBtnFace
      end
      object UniSplitter1: TUniSplitter
        Left = 0
        Top = 475
        Width = 644
        Height = 4
        Cursor = crVSplit
        Hint = ''
        Align = alBottom
        ParentColor = False
        Color = clBtnFace
      end
      object UniSyntaxEdit1: TUniSyntaxEdit
        Left = 0
        Top = 0
        Width = 644
        Height = 127
        Hint = ''
        Language = 'SQL'
        Font.Height = -13
        Font.Name = 'Courier New'
        Align = alTop
      end
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 161
        Width = 644
        Height = 314
        Hint = ''
        HeaderTitle = 'SQL Result Table'
        HeaderTitleAlign = taCenter
        DataSource = UniMainModule.DataSource5
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
        LoadMask.Message = 'Loading data...'
        Align = alClient
        TabOrder = 1
      end
      object UniMemo1: TUniMemo
        Left = 0
        Top = 479
        Width = 644
        Height = 92
        Hint = ''
        ParentFont = False
        Font.Color = clNavy
        Align = alBottom
        ReadOnly = True
        TabOrder = 2
      end
      object UniPanel2: TUniPanel
        Left = 0
        Top = 131
        Width = 644
        Height = 30
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akRight, akBottom]
        TabOrder = 3
        Caption = ''
        DesignSize = (
          644
          30)
        object UniDBNavigator1: TUniDBNavigator
          Left = 130
          Top = 2
          Width = 240
          Height = 25
          Hint = ''
          DataSource = UniMainModule.DataSource5
          IconSet = icsFontAwesome
          Anchors = [akTop]
          TabOrder = 0
        end
      end
    end
    object UniSplitter3: TUniSplitter
      Left = 218
      Top = 31
      Width = 4
      Height = 571
      Hint = ''
      Align = alLeft
      ParentColor = False
      Color = clBtnFace
    end
    object UniToolBar1: TUniToolBar
      Left = 1
      Top = 1
      Width = 865
      Height = 30
      Hint = ''
      Images = UniNativeImageList1
      BorderWidth = 2
      TabOrder = 2
      ParentColor = False
      Color = 15263976
      object UniToolButton4: TUniToolButton
        Left = 0
        Top = 0
        Width = 8
        Hint = ''
        Style = tbsSeparator
        Caption = 'UniToolButton4'
        TabOrder = 1
      end
      object UniToolButton1: TUniToolButton
        Left = 8
        Top = 0
        Hint = 'Reset'
        ShowHint = True
        ParentShowHint = False
        ImageIndex = 0
        Caption = 'UniToolButton1'
        TabOrder = 2
        OnClick = UniToolButton1Click
      end
      object UniToolButton2: TUniToolButton
        Left = 31
        Top = 0
        Hint = 'Execute'
        ShowHint = True
        ParentShowHint = False
        ImageIndex = 1
        Caption = 'UniToolButton2'
        TabOrder = 3
        OnClick = UniToolButton2Click
      end
      object UniToolButton3: TUniToolButton
        Left = 54
        Top = 0
        Width = 8
        Hint = ''
        Style = tbsSeparator
        Caption = 'UniToolButton3'
        TabOrder = 4
      end
    end
    object UniTreeView1: TUniTreeView
      Left = 1
      Top = 31
      Width = 217
      Height = 571
      Hint = ''
      Items.FontData = {0100000000}
      Align = alLeft
      Anchors = [akBottom]
      TabOrder = 3
      Color = clWindow
      OnChange = UniTreeView1Change
    end
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 129
    Top = 261
    Images = {
      02000000FFFFFF1F04F400000089504E470D0A1A0A0000000D49484452000000
      100000001008060000001FF3FF61000000097048597300000EC300000EC301C7
      6FA864000000A649444154388DCD52C10DC3200C3C50666092BC91F8338D07E0
      D101BC0CFC91FACE245D827E4264A00A4DD547EE83CFB27D670010783D1F0517
      A144E30A60ABA7B14111D1E9406656CB1ED766882160663575206D1B1B063E73
      A18D0DAA2A8AE675CF4FA17BDB10EBCCD407F4AF10632C123D27A2A2A552B55D
      0BBE115D2421A2E29C434AE9C8C9F8136F060080F7BE293EE339E7E3127FC6E0
      6066F97E2B34BFEDF2C7F907DE438077F09D3AE5F20000000049454E44AE4260
      82FFFFFF1F044801000089504E470D0A1A0A0000000D49484452000000100000
      001008060000001FF3FF61000000097048597300000EC300000EC301C76FA864
      000000FA49444154388DA593314EC3401045DFA250E323A44995023801A94263
      ACDC808E1AAD6B1409D723392D0D700384A788699C1B243D05B901B9C1D0D856
      2207709CDFEC7CE9EFE8FFD91D67661C03E7BDEFD441441C406F9B7441AF2AE2
      383ED88988B89396DA140844C4956EFB3B11FEC1FD67307E056651924F8035C1
      F82D4AF21448771A88485DAB2A6118525E5C01FDD209C0141801576D1C9C030B
      E0E5FDE17A051025F91A786E445055F6F0C5DD252360A8AA5F4FCBD319705B8B
      BCF76666D55923CBB27D7C69666766C6CDE33C3033DABE42850B6003D860F3F1
      DD36C2AFBCD1A09C7A2DFE8B174501707084065CB58D5DBFB23B769D7F00B2B5
      89A77A183B770000000049454E44AE426082}
  end
end
