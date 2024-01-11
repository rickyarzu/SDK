object UniFormControlsComboBoxTrigger: TUniFormControlsComboBoxTrigger
  Left = 0
  Top = 0
  Width = 482
  Height = 507
  OnCreate = UniFrameCreate
  TabOrder = 0
  DesignSize = (
    482
    507)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 482
    Height = 507
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniDBNavigator1: TUniDBNavigator
      Left = 8
      Top = 461
      Width = 241
      Height = 25
      Hint = ''
      DataSource = DataSource1
      IconSet = icsFontAwesome
      TabOrder = 1
    end
    object UniGroupBox1: TUniGroupBox
      Left = 8
      Top = 8
      Width = 220
      Height = 81
      Hint = ''
      Caption = 'Standard Icons'
      TabOrder = 2
      object UniComboBox1: TUniComboBox
        Tag = 1
        Left = 25
        Top = 32
        Width = 177
        Hint = ''
        Text = 'UniComboBox1'
        Items.Strings = (
          'A'
          'B'
          'C'
          'D'
          'E')
        TabOrder = 1
        Triggers = <
          item
            ButtonId = 0
          end
          item
            ButtonId = 1
            IconCls = 'x-form-date-trigger'
            HandleClicks = True
          end
          item
            ButtonId = 2
            IconCls = 'x-form-search-trigger'
            HandleClicks = True
          end>
        IconItems = <>
        OnTriggerEvent = UniComboBox1TriggerEvent
      end
    end
    object UniGroupBox2: TUniGroupBox
      Left = 256
      Top = 8
      Width = 220
      Height = 81
      Hint = ''
      Caption = 'Custom Icons'
      TabOrder = 3
      object UniComboBox2: TUniComboBox
        Tag = 2
        Left = 25
        Top = 33
        Width = 177
        Hint = ''
        Text = 'UniComboBox1'
        Items.Strings = (
          'A'
          'B'
          'C'
          'D'
          'E')
        TabOrder = 1
        Triggers = <
          item
            ImageIndex = 0
            ButtonId = 0
          end
          item
            ImageIndex = 2
            ButtonId = 1
            IconCls = 'x-form-date-trigger'
            HandleClicks = True
          end
          item
            ImageIndex = 1
            ButtonId = 2
            IconCls = 'x-form-search-trigger'
            HandleClicks = True
          end>
        Images = UniNativeImageList1
        IconItems = <>
        OnTriggerEvent = UniComboBox1TriggerEvent
      end
    end
    object UniGroupBox3: TUniGroupBox
      Left = 8
      Top = 95
      Width = 468
      Height = 362
      Hint = ''
      Caption = 'Grid Editor'
      TabOrder = 4
      object UniDBGrid1: TUniDBGrid
        Left = 2
        Top = 15
        Width = 464
        Height = 345
        Hint = ''
        DataSource = DataSource1
        LoadMask.Message = 'Loading data...'
        Align = alClient
        TabOrder = 1
        Columns = <
          item
            FieldName = 'CustNo'
            Title.Caption = 'CustNo'
            Width = 64
            Alignment = taRightJustify
          end
          item
            FieldName = 'Company'
            Title.Caption = 'Company'
            Width = 184
            Editor = UniComboBox3
          end>
      end
    end
    object UniHiddenPanel1: TUniHiddenPanel
      Left = 184
      Top = 200
      Width = 185
      Height = 121
      Hint = ''
      object UniComboBox3: TUniComboBox
        Left = 19
        Top = 24
        Width = 150
        Hint = ''
        Text = 'UniComboBox1'
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '4')
        TabOrder = 1
        ScreenMask.Enabled = True
        ScreenMask.ShowMessage = False
        ScreenMask.Color = clWhite
        ScreenMask.Opacity = 0.200000002980232200
        Triggers = <
          item
            ImageIndex = 2
            ButtonId = 0
            IconCls = 'x-form-clear-trigger'
          end
          item
            ImageIndex = 1
            ButtonId = 1
            IconCls = 'x-form-trigger'
            HandleClicks = True
          end
          item
            ImageIndex = 0
            ButtonId = 2
            IconCls = 'x-form-search-trigger'
            HandleClicks = True
          end>
        Images = UniNativeImageList2
        IconItems = <>
        OnTriggerEvent = UniComboBox3TriggerEvent
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 384
    Top = 336
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CustNo'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'Company'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Addr1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Addr2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'City'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'State'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Zip'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Country'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Phone'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FAX'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TaxRate'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'Contact'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LastInvoiceDate'
        Attributes = [faUnNamed]
        DataType = ftDateTime
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 400
    Top = 264
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 232
    Top = 40
    Images = {
      04000000FFFFFF1F04A001000089504E470D0A1A0A0000000D49484452000000
      100000001008060000001FF3FF610000002B744558744372656174696F6E2054
      696D65004D6F6E20332046656220323030332032313A33383A3530202D303030
      305C1D2F2A0000000774494D4507D7041400160F653348790000000970485973
      00000EC200000EC20115284A800000000467414D410000B18F0BFC6105000000
      F84944415478DA63601819E08B2193DE0F0386FF40FA42546E2337499A57EDB8
      00D6FCB72BF73F889ECECC7219D910167C9A8F4E67D2DB7D62C345A6AE4B0C3E
      657A0C172E30303033FCD1014A0902F157901A267C9A9919FF5D2C4B1161D8B2
      AC8F617ED571864B40F14746D6A140EA274C1D333ECD7A3E53185EDEDAC6A0C9
      B99A61E3FEBF0C7F63CB42EFF3091E062A797BF9D481FF580D40D70CC2255318
      187EB37087FE64026B7EB36C72FD5F987A466234F3CA59870A2ABB6168C60883
      CB6C0B2F82686235630D4498EDC468C6F0828C8CCC7F17171730FBE5ABDB0435
      63A403BBC054FE5F0C0C4220B620AF22289EDFE1D33C3800003CD785F60BCB9F
      740000000049454E44AE426082FFFFFF1F049301000089504E470D0A1A0A0000
      000D49484452000000100000001008060000001FF3FF610000002C7445587443
      72656174696F6E2054696D65005765642031312041707220323030372030303A
      35313A3036202D303030302B8615D90000000774494D4507D70B0615342EEC45
      7759000000097048597300000EC200000EC20115284A800000000467414D4100
      00B18F0BFC6105000000EA4944415478DA636018F2801144ECDF3F8587E1C3FB
      967B376FE483F8A26262937F7CFB59159633ED0B2103584004EBB76F9D376FDE
      C87A76FF2C58F0D97D865C351D53362033832867CCED88FEDF9CAEF11F171F1F
      60A24A182083D553D37B8054310EF5BDA1D9334B30C2000D14AB99B933E82AB0
      A2085E5DE2CBB0F6A61DC860820630E8193A33BC3D9DC7C0F4E325C3E295A719
      62C34D19C465E518186E12190697CEEF65F8F6EB27C3E7B76F190E5DFDCBF0F9
      DD5B86978F1F111F88201770B0B0317089CA32D869338369B00BB0006C5EE86D
      CCF1450A446D86A9CBDE006905B01C313133C400006E124D56445F4355000000
      0049454E44AE426082FFFFFF1F049A01000089504E470D0A1A0A0000000D4948
      4452000000100000001008060000001FF3FF610000002C744558744372656174
      696F6E2054696D6500547565203238204E6F7620323030362032313A34373A35
      35202D30303030A511146D0000000774494D4507D80B1C151824FB53F0C70000
      00097048597300000EC200000EC20115284A800000000467414D410000B18F0B
      FC6105000000F14944415478DA63601868C08C4BA2A8BA99414E5195415A4681
      E1EEEDEBE4991E1E9746500D2336C196EEC9ED0F1E3E4AE4E3E7E3FBFCE9CB17
      7333C319C931E1F58C8C8CFF099A58D3DCD33877C99A7FF75F7DFFFFF7FFFFFF
      20BAAEB5F7DF846973B38972765E79E30398E6C8F80CB82171A9B977B0A96742
      171014141210E26563F8F507E2DA98844C06411E36063E3E7E416C06B0A00BBC
      7DF7EEC3BD97DFF8E545B918A64E9B0A16BBFFEA1BC3EBD7AFDE11E5823F7F7E
      4FDFB365CDEF87AFBF81F9207AD684B63F52D2324D44C742426651D9DB572FF3
      79787879DFBE79FD494D4DAD614A7FFB1CA2027114900E006FBB6D67988254FF
      0000000049454E44AE426082FFFFFF1F04EC00000089504E470D0A1A0A000000
      0D49484452000000100000001008060000001FF3FF610000002C744558744372
      656174696F6E2054696D6500467269203238204E6F7620323030382032303A35
      333A3331202D303030305373865E0000000774494D4507D80B1C14381FDE1E57
      760000000970485973000017120000171201679FD2520000000467414D410000
      B18F0BFC6105000000434944415478DA63601805B407D65ED16AF8E49988D07C
      139F214C84348B48CA31E0338411876610F51F44F0F00B317CF9F80EAEFEE8B6
      A52487C17FB2C36014D0090000ABA610DB43409FE20000000049454E44AE4260
      82}
  end
  object UniNativeImageList2: TUniNativeImageList
    Left = 400
    Top = 176
    Images = {
      03000000FFFFFF1F04D901000089504E470D0A1A0A0000000D49484452000000
      100000001008060000001FF3FF610000002C744558744372656174696F6E2054
      696D65004672692031332041707220323030372032333A30353A3538202D3030
      3030B5C858D50000000774494D4507D80A10122C2C3C5B0B8F00000009704859
      7300001EC100001EC101C36954530000000467414D410000B18F0BFC61050000
      01304944415478DA6360187EE085A9DCFFFB725C270E2A494AA2CBDD93641046
      17634217F8F3F3C7244E711153C9FF9FE72DD594150489FD6760607CA2C019FB
      9F93E70DBA7A6674013741DEA3FC7F7F4BF2F07206087FFD2C132AC87E845D82
      B3FAC73F86BE69D296CAC71FDD7B8FD780256FBEFCD21694DE25F9EF1B071F27
      6B3CF7F71FFEBFFEFD0F5E2BA169BAEEA3DECD57AF4EFF232A2CAECB73EB3FD6
      1078F4508EF3DF0965C13E0787184EA203F2B10C9BEB0B4389078F5578BF5F50
      E45B7B4B96F3DF512521076C6A3102F1891C7B10BBB8C8AA3F9FBFC9BDF8CBB4
      B453C921EB07334B96E8EFEFDBB6284BCB12B4FD890AEFE5E7EAFCFF6EC970DC
      6CB2B4D46360C866CA065A7441893F14E892FF040D006AFE7F518177FD34434D
      67938808762429C63A13133EA2C36104010054E36731AD78E9E3000000004945
      4E44AE426082FFFFFF1F042401000089504E470D0A1A0A0000000D4948445200
      0000100000001008060000001FF3FF610000002C744558744372656174696F6E
      2054696D65004672692032382053657020323030372032313A34303A3430202D
      303030307DCE3AE40000000774494D4507D7091C142A03397D9A5F0000000970
      48597300000EC200000EC20115284A800000000467414D410000B18F0BFC6105
      0000007B4944415478DA636018058CC89CFE396BFF13A3A9302518AE8F055DB2
      202908CEFEFBEF3FC39FBF20FC8FE1D7EFBF0CBF81EC82FA4E14F52CD86C98BB
      FE284382BF15C3828DC750C47D1D8D31D4623500A419647384A739DC665C00C3
      0090B341368334AFD87E92741720DB8C4D034103124B9A89898851404D0000F5
      1C37A9CEA406DA0000000049454E44AE426082FFFFFF1F043B01000089504E47
      0D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000000
      2C744558744372656174696F6E2054696D650046726920313320417072203230
      30372030303A32323A3535202D30303030320B33CE0000000774494D4507D80B
      1E151F216E715A04000000097048597300001EC100001EC101C3695453000000
      0467414D410000B18F0BFC6105000000924944415478DA636018051403466C82
      8E0507FFC3D8DFBEFD64F8FA15847F30FCF8F19BE1F98E28143D4CD80CF8F7FD
      95C2FEEB4F1982DDD4192C8C951864953418EE7FFFCD202EFCC6085D2D5603A4
      D9AE3D76546452CA99B80FCCDF7EEA348381C81B232DA1F7E7893260D9E4FA7F
      92AC371F82344D5C770AA766A241546E231893AC896CCD488630013133D94E1F
      2100009A3239646D4AC9650000000049454E44AE426082}
  end
end
