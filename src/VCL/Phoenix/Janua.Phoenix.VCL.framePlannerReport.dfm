inherited frameVCLPhoenixPlanneReport: TframeVCLPhoenixPlanneReport
  Width = 670
  Height = 1080
  ExplicitWidth = 670
  ExplicitHeight = 1080
  DesignSize = (
    670
    1080)
  object lbCap: TLabel
    Left = 438
    Top = 58
    Width = 23
    Height = 15
    Caption = 'CAP'
  end
  object Area: TLabel
    Left = 8
    Top = 8
    Width = 40
    Height = 15
    Caption = 'Tecnico'
  end
  object lbActivity: TLabel
    Left = 8
    Top = 58
    Width = 78
    Height = 15
    Caption = 'Cliente - Filiale'
  end
  object DBText4: TDBText
    Left = 16
    Top = 102
    Width = 416
    Height = 17
    DataField = 'DESCRIZIONE_SCHEDA'
    DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object lkpCAP: TJvDBLookupCombo
    Left = 438
    Top = 72
    Width = 66
    Height = 25
    LookupField = 'CAP'
    LookupDisplay = 'CAP'
    LookupSource = dsCAP
    TabOrder = 0
    OnCloseUp = ChangeFilter
  end
  object grdReportList: TDBCtrlGrid
    Left = 8
    Top = 128
    Width = 659
    Height = 936
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
    PanelHeight = 104
    PanelWidth = 642
    TabOrder = 2
    RowCount = 9
    SelectedColor = clAntiquewhite
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 642
      Height = 104
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Panel2: TPanel
        Left = 77
        Top = 0
        Width = 565
        Height = 104
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        OnDblClick = DBText1DblClick
        object pnlStatino: TPanel
          Left = 0
          Top = 0
          Width = 441
          Height = 104
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object btnNewMeeting: TJvSpeedButton
            AlignWithMargins = True
            Left = 3
            Top = 62
            Width = 110
            Height = 39
            Align = alLeft
            Caption = 'Appuntamento'
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000430B0000430B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFD0BAAC694731694731694731694731694731694731694731
              6947316947316947316947316947316947316947316947316947316947316947
              31694731694731FF00FFFF00FFFF00FFD0BAACFAF8F7B7A293B7A293B7A293B7
              A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293
              B7A293B7A293B7A293B7A293694731FF00FFFF00FFFF00FFD0BAACFDFBFBFAF8
              F7F8F4F3F6F1EFF3EEEBF1EAE7EFE7E3EDE4DFEBE0DBE8DDD7E6D9D3E4D6CFE1
              D3CBDFCFC7DDCCC3DBC9BFDBC9BFDBC9BFB7A293694731FF00FFFF00FFFF00FF
              D0BAACFFFFFFB7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A2
              93B7A293B7A293B7A293B7A293B7A293B7A293B7A293DBC9BFB7A293694731FF
              00FFFF00FFFF00FFD0BAACFFFFFFB7A293FFFFFFFFFFFFB7A293FFFFFFFFFFFF
              B7A293FFFFFFFFFFFFB7A293FFFFFFFFFFFFB7A293FFFFFFFFFFFFB7A293DBC9
              BFB7A293694731FF00FFFF00FFFF00FFD0BAACFFFFFFB7A293FFFFFFFFFFFFB7
              A293FFFFFFFFFFFFB7A293FFFFFFFFFFFFB7A293FFFFFFFFFFFFB7A293FFFFFF
              FFFFFFB7A293DDCCC3B7A293694731FF00FFFF00FFFF00FFD0BAACFFFFFFB7A2
              93B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293C86000C86000C8
              6000C86000B7A293B7A293B7A293DFCFC7B7A293694731FF00FFFF00FFFF00FF
              D0BAACFFFFFFB7A293FFFFFFFFFFFFB7A293FFFFFFFFFFFFB7A293FFFFFFFFFF
              FFC86000FDEDE3FDEDE3C86000FFFFFFFFFFFFB7A293E1D3CBB7A293694731FF
              00FFFF00FFFF00FFD0BAACFFFFFFB7A293FFFFFFFFFFFFB7A293FFFFFFFFFFFF
              B7A293FFFFFFFFFFFFC86000903000FAD8C2C86000FFFFFFFFFFFFB7A293E5D8
              D1B7A293694731FF00FFFF00FFFF00FFD0BAACFFFFFFB7A293B7A293B7A293B7
              A293B7A293B7A293B7A293B7A293B7A293C86000C86000C86000C86000B7A293
              B7A293B7A293E7DBD5B7A293694731FF00FFFF00FFFF00FFD0BAACFFFFFFFFFF
              FFFFFFFFFFFFFFB7A293FFFFFFFFFFFFB7A293FFFFFFFFFFFFB7A293FFFFFFFF
              FFFFB7A293FFFFFFFFFFFFB7A293EADFD9B7A293694731FF00FFFF00FFFF00FF
              D0BAACFFFFFFFFFFFFFFFFFFFFFFFFB7A293FFFFFFFFFFFFB7A293FFFFFFFFFF
              FFB7A293FFFFFFFFFFFFB7A293FFFFFFFFFFFFB7A293ECE2DDB7A293694731FF
              00FFFF00FFFF00FFD0BAACFFFFFFFFFFFFFFFFFFFFFFFFB7A293B7A293B7A293
              B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293EEE5
              E1B7A293694731FF00FFFF00FFFF00FFD0BAACFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFCFAF9F9F6F5F7F3F1
              F5EFEDF2ECE9F0E9E5B7A293694731FF00FFFF00FFFF00FFCD7621CD7621CD76
              21CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD
              7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621FF00FFFF00FFFF00FF
              CD7621FBC39FFBC39FFBC39FFBC39FFBC39FFBC39FFABB95F9B38AF8AB80F8A3
              75F79B6BF79361F78C58F6844EF57D44F5763BF46E31F46B2DF46B2DCD7621FF
              00FFFF00FFFF00FFCD7621FBC39FFBC39F694731FBC39FFBC39FFBC39FFBC39F
              FABB95F9B38AF8AB80F8A375F79B6BF79361F78C58F6844E694731F5763BF46E
              31F46B2DCD7621FF00FFFF00FFFF00FFCD7621FBC39FA36F5AA36F5A694731FB
              C39FFBC39FFBC39FFBC39FFABB95F9B38AF8AB80F8A375F79B6BF79361A36F5A
              A36F5A694731F5763BF46E31CD7621FF00FFFF00FFFF00FFCD7621CD7621A36F
              5AC89898694731CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD
              7621CD7621A36F5AC89898694731CD7621CD7621CD7621FF00FFFF00FFFF00FF
              FF00FFFF00FFA36F5AFFFFFF694731FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFA36F5AFFFFFF694731FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFA36F5AFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA36F5AFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            Layout = blGlyphLeft
            MenuPosition = dmpRight
            OnClick = btnNewMeetingClick
            ExplicitLeft = 4
            ExplicitTop = 70
            ExplicitHeight = 25
          end
          object btnUndoMeeting: TJvSpeedButton
            AlignWithMargins = True
            Left = 119
            Top = 62
            Width = 80
            Height = 39
            Align = alLeft
            Caption = ' Annulla'
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000D30E0000D30E00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFA9A0974D3D2F4D3D2F4D3D2F4D3D2F
              4D3D2F4D3D2F4D3D2F4D3D2F4D3D2F4D3D2F695F55FF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA49B91B7A697F7
              E4D4F7E2D0F6E0CCF6DEC8F6DBC4F5D9BFF5D7BBF5D5B7EBCBAC5E4A3AFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FF968678D6C6B9F9E9DAF9E6D6F8E4D2F4DFCBEBD5C0F7DEC6F7DBC1F7D9BDF6
              D6B9876F5B968678FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFA9A09797887AEEE1D6F9EBDFEADBCDDFD0C0C4C6A954724B4D68
              42A99B87ECD2B9F7D9BEBBA088685F55FF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFA49B91A99B90D3D5C57AA07B3E8B4B627D5D
              85AB7C116E1E0D6317345E2F5D684BD8C0A9E4C8AE5B493BFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF968678C1B7AC57B76F22
              A1441F973C357B4181A67C187A292D79343C6F3A0D5A123D5833C8B39D786452
              968678FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF978B
              7EC8D1C138B45C27AC4C32A65072AF7AECDFD49FBF96CAC3B0729D6A0E65180B
              5A11697555AC9581746D65FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFA9A097A99B90B1DBBB34BB5D659D72DFE2D5F8EEE6FAEEE4FAECE0F8E9
              DB418C491270200E661892967ADBC3AD5A4B3FFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFA49B91B3A79E8BDAA22FC75F38A75A75977BECE4DF
              FBF1E9FAEFE5F0E7D9329043197D2B1C7027C3B8A4F4DDC86B5848918A84FF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF968678D3CBC58DDCA430C8602F
              C75F52A56AF8F2EEF8F0EAFBF1E9F9EDE4DFD7CA91A085A3B894F1DFCEF8E3D0
              9C8877968678FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF968678EEE9
              E6F3F6F157CC7B3AC7668FC09D91C79F819181F7EFE9A7C5A633924928853C8B
              8D7DF5E4D5F9E5D4CFBBA95D4F43FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              A9A097A99B90FAF7F5F7F8F4E0EEE2F8F6F492D0A531C76032B45A839183B4D6
              B625A647219C40709B71E8DCCEF9E8D9EFDDCC615042918A84FF00FFFF00FFFF
              00FFFF00FFFF00FFA49B91C1B6AEFCF9F8FDFAF9FDFAF9F9F9F68FDDA631C860
              2FC75F34B15B58A36C28B14F30A44ECECCBFFAEDE2F9EADDF9E8D98C7A6C9686
              78FF00FFFF00FFFF00FFFF00FFFF00FF968678E0D9D5FDFAF9FDFAF9FDFAF9FD
              FAF9FAF9F6A3E3B542C96C68BC8263C68183CE97CBDEC8F9F0E9FAEFE6FAEDE2
              F9EBDEC2B1A364594EFF00FFFF00FFFF00FFFF00FFA49B9196887BF4EFEEFBF8
              F7FBF8F7FBF8F7FBF8F7FBF8F7FAF8F6EFF4EEEFF3EDF7F6F3FBF7F5FAF5F1FA
              F3EDF9F0E9F8EEE4F8EBE0DFD0C3504032918A84FF00FFFF00FFFF00FFA49B91
              9080739C8D819C8E819C8E81A09084A99D93A89C92AB9F95AB9F94AA9D93A89C
              91A7998FA6988DA4968BA59689A192869E9083938377554335A49B91FF00FFFF
              00FFFF00FFA49B91908B838C786A8D796A8D796AA89B90F2EFEEECE8E6E7E2DF
              E1DAD7DAD2CDD4CAC3CDC1B9C6B8B0BFB0A6B2A297A493879C8A7E9C8A7E776F
              67FF00FFFF00FFFF00FFFF00FFFF00FFA49B91908B838C796A8D796AB9B0A8FB
              FAFAF9F7F7F2EEEDEBE6E4E4DDDADDD4D0D6CCC6CFC3BCC8BBB3BDAEA5AD9C91
              A391866D5C50FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA49B91908B
              838C7869C9C1BBFCFBFBFBFAFAF9F7F7F3EFEFEBE6E5E5DEDBDDD5D1D7CDC7D0
              C4BDC7BAB1B5A69B93827688847EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFA49B918B7768D8D2CFFCFBFBFCFBFBFBFAFAF9F7F7F3EFEFECE7
              E5E5DFDBDED6D1D7CEC8D0C5BEBBADA3726359FF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFA49B91DCD6D2F4F2F1F4F2F1F4F2F1
              F4F2F1F2EFEFECE8E6E6E0DDDFD8D4D8D0CAD2C7C197897F959692FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAAA59D94
              8376948376948376948376948376948376948376948376948376948376908B83
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            Layout = blGlyphLeft
            OnClick = btnUndoMeetingClick
            ExplicitLeft = 120
            ExplicitTop = 70
            ExplicitHeight = 25
          end
          object btnContract: TJvSpeedButton
            AlignWithMargins = True
            Left = 205
            Top = 62
            Width = 120
            Height = 39
            Align = alLeft
            Caption = 'Vedi Contratto'
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000820B0000820B00000000000000000000FF00FFFF00FF
              FF00FFC8B3A46947316947316947316947316947316947316947316947316947
              31694731694731694731694731694731694731694731694731694731FF00FFFF
              00FFFF00FFFF00FFFF00FFC8B3A4EDE5E0B7A293B7A293B7A293B7A293B7A293
              B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A2
              93694731FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4EFE8E3EDE5E0ECE2DEEB
              E0DBE9DDD7E7DAD4E5D7D1E4D6CFE2D3CCE0D1C8DECEC5DCCBC2DBC9BFDBC9BF
              DBC9BFDBC9BFB7A293694731FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4F2EC
              E8F0E9E5EEE6E2EDE4DFEBE1DCEADED9E8DBD6E6D9D2E4D6CFE2D3CCE0D1C8DE
              CEC5DCCBC2DBC9BFDBC9BFDBC9BFB7A293694731FF00FFFF00FFFF00FFFF00FF
              FF00FFC8B3A4F4EEECF2ECE8F0E9E5EEE6E2EDE4DFEBE1DCEADED9E8DBD6E6D9
              D2E4D6CFE2D3CCE0D1C8DECEC5DCCBC2DBC9BFDBC9BFB7A293694731FF00FFFF
              00FFFF00FFFF00FFFF00FFC8B3A4F6F1EFF4EEECE098402D2D2D6094A8EDE4DF
              EBE1DCEADED9E8DBD6E6D9D2E4D6CFE2D3CCE0D1C8DECEC5DCCBC2DBC9BFB7A2
              93694731FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4F8F4F2F6F1EFF4EEEC56
              524F2D2D2D2C424C6094A8EBE1DCEADED9E8DBD6E6D9D2E4D6CFE2D3CCE0D1C8
              DECEC5DCCBC2B7A293694731FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4FAF6
              F6F8F4F2F6F1EF6094A8215A73428CDE396BAD215A73EBE1DCEADED9E8DBD6E6
              D9D2E4D6CFE2D3CCE0D1C8DECEC5B7A293694731FF00FFFF00FFFF00FFFF00FF
              FF00FFC8B3A4FCF9F9FAF6F6F8F4F2F6F1EF54777B5AB5EF3173CE396BAD424D
              5AEBE1DCEADED9E8DBD6E6D9D2E4D6CFE2D3CCE0D1C8B7A293694731FF00FFFF
              00FFFF00FFFF00FFFF00FFC8B3A4FDFCFCFCF9F9E09840E098406094A854777B
              396BADA376760098C81C1C1CE09840E09840E09840E09840E5D7D1E3D5CDB7A2
              93694731FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4FFFFFFFDFCFCFCF9F9FA
              F6F6F9F5F454777BA376764ABEDF30A8D00098C81C1C1CECE2DEEBE0DBE9DDD7
              E7DAD4E5D7D1B7A293694731FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4FFFF
              FFFFFFFFFEFDFEFDFBFBFBF8F768A0C094E4F660C8F84ABEDF30A8D00098C81C
              1C1CECE2DEEBE0DBE9DDD7E7DAD4B7A293694731FF00FFFF00FFFF00FFFF00FF
              FF00FFC8B3A4FFFFFFFFFFFFFFFFFFFEFDFEFDFBFBFBF8F768A0C094E4F660C8
              F84ABEDF30A8D00098C81C1C1CECE2DEEBE0DBE9DDD7B7A293694731FF00FFFF
              00FFFF00FFFF00FFFF00FFC8B3A4FFFFFFFFFFFFE09840E09840E09840E09840
              E0984068A0C094E4F660C8F84ABEDF30A8D00098C81C1C1CECE2DEEBE0DBB7A2
              93694731FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFEFDFEFDFBFBFBF8F768A0C094E4F660C8F84ABEDF30A8D00098C8
              1C1C1CECE2DEB7A293694731FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFDFBFBFBF8F768A0C094E4F660
              C8F84ABEDF30A8D00098C81C1C1CB7A293694731FF00FFFF00FFFF00FFFF00FF
              FF00FFC8B3A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFDFB
              FBFBF8F768A0C094E4F660C8F84ABEDF30A8D09898981C1C1C694731FF00FFFF
              00FFFF00FFFF00FFFF00FFC8B3A4FFFFFFFFFFFFE09840E09840E09840E09840
              E09840E09840E09840E09840E0984068A0C094E4F660C8F8989898B0B0B09898
              981C1C1CFF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCFCF9F968A0C0989898
              D0D0D0BBC0BF0130B10018C600009AFF00FFFF00FFFF00FFFF00FFC8B3A4FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
              FCFCC8B3A499A8ACE8E8E81464C60031FF1029D61029D600009AFF00FFFF00FF
              FF00FFC8B3A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFC8B3A4E8DCD499A8AC0018C6106BFF0031FF1029D600
              009AFF00FFFF00FFFF00FFC8B3A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8B3A4DBC9BF6947310018C66D8A
              FD106BFF00009AFF00FFFF00FFFF00FFFF00FFC8B3A4C8B3A4C8B3A4C8B3A4C8
              B3A4C8B3A4C8B3A4C8B3A4C8B3A4C8B3A4C8B3A4C8B3A4C8B3A4C8B3A4694731
              FF00FFFF00FF7823DF00009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            Layout = blGlyphLeft
            OnClick = btnContractClick
            ExplicitLeft = 256
            ExplicitTop = 70
            ExplicitHeight = 26
          end
          object btnWhatsApp: TJvSpeedButton
            AlignWithMargins = True
            Left = 331
            Top = 62
            Width = 104
            Height = 39
            Align = alLeft
            Caption = '  WhatsApp'
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA47874A47874A47874
              A47874A47874A47874A47874A47874A47874A47874A47874A47874A47874A478
              74A47874A47874A47874FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA4
              7874FFDDAEFFDDAEFFDAACFFDEB3FFDFB6FFDFB6FFDFB6FFDFB6FFDFB6FFDFB6
              FFDFB6FFDEB4FFDCAEFFDAACFFE5B2A47874FF00FFFF00FFFF00FFFF00FFFF00
              FF05720A05720A05720A05720AF4E3CEF3E2CFF3E2CFF3E2CFF3E2CFF3E2CFF3
              E2CFF3E2CFF3E2CFF3E2CFF3E2CFF1D9BEF3E1CEFCEAD4A47874FF00FFFF00FF
              FF00FFFF00FF05720A0C97170E8C17A47874F2EAE0F2EAE0F1EAE1F1EAE1F1EA
              E1F1EAE1F1EAE1F1EAE1F1EAE1F1EAE1F1EAE1F1EAE1F1EAE1F1E9E1F8F3E8A4
              7874FF00FFFF00FFFF00FF05720A10AD1F05720AFF00FFA47874F5EEE4F5EEE4
              F4EEE7DF993EDF993EDF993EDF993EDF993EDF993EDF993EDF993EDF993EF4EE
              E7F4EDE6FBF7EDA47874FF00FFFF00FF05720A09910B12A92205720AFF00FFA4
              7874F8F2EBF8F2EBF5F0EBF5F0EBF5F0EBF5F0EBF5F0EBF5F0EBF5F0EBF5F0EB
              F5F0EBF5F0EBF5F0EBF6F0EAFEFBF3A47874FF00FFFF00FF05720A13A41922B4
              3805720AFF00FFA47874FAF6F0FAF6F0FAF6F0DF993EDF993EDF993EDF993EDF
              993EDF993EDF993EDF993EDF993EF9F8F6F8F6F4FFFEF9A4787405720A05720A
              05720A25B53934C05105720A05720A05720AFBFAF5FBFAF5FAF7F4FAF7F4FAF7
              F4FAF7F4FAF7F4FAF7F4FAF7F4FAF7F4FAF7F4FAF7F4FCFEFCFFFFFFFFFFFFA4
              787405720A0D870029BC4138C65948D37056DF841D912405720AFFFFFBFFFFFB
              FCFAF7FDFBF9FDFCFAFDFCFAFDFCFAFDFCFAFDFCFAFFFFFFF1D8C2D5823CDA8E
              4FD27A2FFFFFFFA47874FF00FF05720A209D284FDC785CE78C29A23A05720AA4
              7874FFFFFFFFFFFFFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFFFF
              EDE0D3C19970C7A37DC29970FFFFFFA47874A47874A4787405720A3AB85035B4
              4E05720AA47874A47874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFC2E0FE3098FC45A3FC2792FCFFFFFFA47874A47874FFDDAE
              FFDDAE05720A05720AFFDFB6FFDFB6A47874FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF05720A05720AFFFFFFFFFCFCA4
              7874A47874F4E3CEF4E3CEF3E2CFF3E2CFF3E2CFF3E2CFA47874A47874A47874
              A47874A47874A47874A47874A47874A47874A47874A4787405720A35B44E3AB8
              5005720AA47874A47874A47874F2EAE0F2EAE0F1EAE1F1EAE1F1EAE1F1EAE1F1
              EAE1F1EAE1F1EAE1F1EAE1F1EAE1F1EAE1F1EAE1F1E9E1F8F3E8A4787405720A
              29A23A5CE78C4FDC78209D2805720AFF00FFA47874F5EEE4F5EEE4F4EEE7DF99
              3EDF993EDF993EDF993EDF993EDF993EDF993EDF993EDF993EF4EEE7F4EDE6FB
              F7ED05720A1D912456DF8448D37038C65929BC410D870005720AA47874F8F2EB
              F8F2EBF5F0EBF5F0EBF5F0EBF5F0EBF5F0EBF5F0EBF5F0EBF5F0EBF5F0EBF5F0
              EBF5F0EBF6F0EAFEFBF305720A05720A05720A34C05125B53905720A05720A05
              720AA47874FAF6F0FAF6F0FAF6F0DF993EDF993EDF993EDF993EDF993EDF993E
              DF993EDF993EDF993EF9F8F6F8F6F4FFFEF9A47874FF00FF05720A22B43813A4
              1905720AFF00FFFF00FFA47874FBFAF5FBFAF5FAF7F4FAF7F4FAF7F4FAF7F4FA
              F7F4FAF7F4FAF7F4FAF7F4FAF7F4FAF7F4FCFEFCFFFFFFFFFFFFA47874FF00FF
              05720A12A92209910B05720AFF00FFFF00FFA47874FFFFFBFFFFFBFCFAF7FDFB
              F9FDFCFAFDFCFAFDFCFAFDFCFAFDFCFAFFFFFFF1D8C2D5823CDA8E4FD27A2FFF
              FFFFA47874FF00FF05720A10AD1F05720AFF00FFFF00FFFF00FFA47874FFFFFF
              FFFFFFFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFFFFEDE0D3C199
              70C7A37DC29970FFFFFFA478740E8C170C971705720AFF00FFFF00FFFF00FFFF
              00FFA47874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFC2E0FE3098FC45A3FC2792FC05720A05720A05720A05720AFF00FFFF00
              FFFF00FFFF00FFFF00FFA47874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCA47874FF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA47874A47874A47874A47874A478
              74A47874A47874A47874A47874A47874A47874A47874A47874A47874A47874A4
              7874A47874FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            Layout = blGlyphLeft
            OnClick = btnWhatsAppClick
            ExplicitLeft = 332
            ExplicitTop = 70
            ExplicitHeight = 25
          end
          object pnlInterventi: TPanel
            Left = 0
            Top = 39
            Width = 441
            Height = 20
            Margins.Top = 1
            Margins.Bottom = 1
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object DBText2: TDBText
              AlignWithMargins = True
              Left = 322
              Top = 0
              Width = 117
              Height = 20
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 2
              Margins.Bottom = 0
              Align = alRight
              DataField = 'calcStato'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMediumblue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              OnDblClick = DBText1DblClick
              ExplicitLeft = 320
            end
            object DBText8: TDBText
              AlignWithMargins = True
              Left = 116
              Top = 3
              Width = 203
              Height = 14
              Align = alRight
              DataField = 'NOME_TECNICO'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              OnDblClick = DBText1DblClick
              ExplicitLeft = 168
            end
            object DBText12: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 107
              Height = 14
              Align = alClient
              DataField = 'calcAppuntamentoDataOra'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              OnDblClick = DBText1DblClick
              ExplicitLeft = 4
              ExplicitTop = 50
              ExplicitWidth = 433
              ExplicitHeight = 17
            end
          end
          object Panel6: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 1
            Width = 435
            Height = 37
            Margins.Top = 1
            Margins.Bottom = 1
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 397
              Height = 37
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object DBText1: TDBText
                Left = 0
                Top = 0
                Width = 397
                Height = 20
                Margins.Top = 1
                Margins.Bottom = 1
                Align = alClient
                DataField = 'DESCRIZIONE_SCHEDA'
                DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
                OnDblClick = DBText1DblClick
                ExplicitLeft = 6
                ExplicitTop = 2
                ExplicitWidth = 355
                ExplicitHeight = 35
              end
              object DBText3: TDBText
                Left = 0
                Top = 20
                Width = 397
                Height = 17
                Align = alBottom
                DataField = 'calcIndirizzo'
                DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
                OnDblClick = DBText1DblClick
                ExplicitTop = 0
                ExplicitWidth = 225
              end
            end
            object scDBImage1: TscDBImage
              AlignWithMargins = True
              Left = 400
              Top = 3
              Width = 32
              Height = 31
              Align = alRight
              FluentUIOpaque = False
              TabOrder = 1
              CustomImageIndex = -1
              DragForm = False
              DragTopForm = True
              StyleKind = scpsPanel
              ShowCaption = False
              BorderStyle = scpbsNone
              WallpaperIndex = -1
              LightBorderColor = clBtnHighlight
              ShadowBorderColor = clBtnShadow
              CaptionGlowEffect.Enabled = False
              CaptionGlowEffect.Color = clBtnShadow
              CaptionGlowEffect.AlphaValue = 255
              CaptionGlowEffect.GlowSize = 7
              CaptionGlowEffect.Offset = 0
              CaptionGlowEffect.Intensive = True
              CaptionGlowEffect.StyleColors = True
              Caption = 'scDBImage1'
              StorePaintBuffer = False
              WordWrap = False
              Ctl3D = False
              DataField = 'WA_IMAGE'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              ParentCtl3D = False
            end
          end
        end
        object Panel4: TPanel
          Left = 441
          Top = 0
          Width = 124
          Height = 104
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 72
            Height = 104
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'Luci:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 16
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'Idranti:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 32
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'E.Ord.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 48
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'E.Stra.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 64
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'Irai:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 80
              Width = 66
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              AutoSize = False
              Caption = 'G.p.a.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
            end
          end
          object Panel5: TPanel
            Left = 72
            Top = 0
            Width = 52
            Height = 104
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBText9: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 46
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'LUCI'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitWidth = 66
            end
            object DBText5: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 16
              Width = 46
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'IDRANTI'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitWidth = 48
            end
            object DBText6: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 32
              Width = 46
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'ESTINTORI_ORDINARIO'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitTop = 36
              ExplicitWidth = 48
            end
            object DBText7: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 48
              Width = 46
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'ESTINTORI_STRAORDINARIO'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitWidth = 48
            end
            object DBText10: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 64
              Width = 46
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'FUMI'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitWidth = 48
            end
            object DBText11: TDBText
              AlignWithMargins = True
              Left = 3
              Top = 80
              Width = 46
              Height = 16
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              DataField = 'GRUPPI_ELETTR'
              DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 0
              ExplicitWidth = 48
            end
          end
        end
      end
      object btnImage: TDBImage
        Left = 0
        Top = 0
        Width = 77
        Height = 104
        Align = alLeft
        DataField = 'STATO_IMMAGINE'
        DataSource = dmVCLPhoenixPlannerController.dsReportsPlanner
        TabOrder = 1
        OnDblClick = DBText1DblClick
        OnMouseDown = btnImageMouseDown
      end
    end
  end
  object grpStato: TRadioGroup
    Left = 164
    Top = 1
    Width = 389
    Height = 51
    Columns = 6
    ItemIndex = 5
    Items.Strings = (
      'Tutti'
      'Pian.'
      'In Lav.'
      'Pronti'
      'Generati'
      'N. Ass.')
    TabOrder = 1
    OnClick = ChangeFilter
  end
  object cboTecnici: TJvDBLookupCombo
    Left = 8
    Top = 28
    Width = 150
    Height = 24
    EmptyValue = '-1'
    LookupField = 'RESPONSABILE'
    LookupDisplay = 'NOME_TECNICO'
    LookupSource = dsTechnicians
    TabOrder = 3
    OnChange = cboTecniciChange
  end
  object cboCustomers: TJvDBLookupCombo
    Left = 8
    Top = 73
    Width = 424
    Height = 24
    LookupField = 'CHIAVE'
    LookupDisplay = 'DESCRIZIONE_SCHEDA'
    LookupSource = dsCustomers
    TabOrder = 4
    OnClick = ChangeFilter
  end
  object cbkFilterReport: TCheckBox
    Left = 60
    Top = 6
    Width = 90
    Height = 16
    Caption = 'Filtra Tecnico'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = cbkFilterReportClick
  end
  object btnWhatsAppMessages: TAdvBadgeButton
    Left = 510
    Top = 72
    Width = 137
    Height = 25
    Caption = 'Messaggi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ImageIndex = 12
    ImageName = '013-alarm'
    ImageMargins.Left = 8
    Images = dmVCLPhoenixPlannerController.SVGIconImageList16
    ParentFont = False
    TabOrder = 6
    OnClick = btnWhatsAppMessagesClick
  end
  object edDateFilter: TJvDatePickerEdit
    Left = 559
    Top = 28
    Width = 97
    Height = 23
    AllowNoDate = True
    ButtonFlat = True
    Checked = True
    Flat = True
    ParentFlat = False
    TabOrder = 7
    OnChange = edDateFilterChange
  end
  object ckbFilterDate: TCheckBox
    Left = 559
    Top = 5
    Width = 95
    Height = 17
    Caption = 'Filtra Data'
    TabOrder = 8
    OnClick = ckbFilterDateClick
  end
  object dsCustomers: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryCustomers
    Left = 88
    Top = 248
  end
  object dsTechnicians: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryTecniciCalendar
    Left = 184
    Top = 280
  end
  object dsCAP: TUniDataSource
    DataSet = dmVCLPhoenixPlannerController.qryCAP
    Left = 264
    Top = 304
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    Left = 480
    Top = 264
  end
  object PopupItems: TPopupMenu
    Images = dmVCLPhoenixPlannerController.SVGIconImageList16
    Left = 600
    Top = 347
    object Colore1: TMenuItem
      Action = dmVCLPhoenixPlannerController.actDlgColorAction
    end
    object ModificaAppuntamento1: TMenuItem
      Action = dmVCLPhoenixPlannerController.actDlgEditAction
    end
    object ModificaAppuntamento2: TMenuItem
      Caption = 'Annulla Appuntamento'
      ImageIndex = 49
      ImageName = '050-stopwatch'
    end
    object InviaMsgWhatsApp1: TMenuItem
      Action = dmVCLPhoenixPlannerController.actDlgMessage
    end
    object ConfermaAppuntmento1: TMenuItem
      Action = dmVCLPhoenixPlannerController.actGridConfirmEvent
    end
  end
  object TimerEventUpdate: TTimer
    Interval = 300
    OnTimer = TimerEventUpdateTimer
    Left = 416
    Top = 312
  end
  object WATimer: TTimer
    Interval = 300000
    OnTimer = WATimerTimer
    Left = 416
    Top = 448
  end
  object PictureContainer1: TPictureContainer
    Items = <>
    Version = '2.1.1.0'
    Left = 139
    Top = 465
  end
  object imgListStatus: TImageList
    Left = 322
    Top = 401
    Bitmap = {
      494C010104000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
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
      000000000000000000000732DE000732DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000081818100818181000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000732DE000732DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000732DE000732DE00000000000000000081818100818181000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008181810081818100000000009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000732DE000732DE000732
      DE00000000000000000000000000000000000000000000000000000000000000
      00000732DE000732DE0000000000000000000000000081818100818181008181
      8100000000000000000000000000000000000000000000000000000000000000
      0000818181008181810000000000000000000000000099330000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000630000006300000000000000000000000000000000
      000000000000000000000000000000000000000000000732DE000732DD000732
      DE000732DE000000000000000000000000000000000000000000000000000732
      DE000732DE000000000000000000000000000000000081818100818181008181
      8100818181000000000000000000000000000000000000000000000000008181
      8100818181000000000000000000000000000000000000000000993300009933
      0000993300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063000018B5310018B531000063000000000000000000000000
      00000000000000000000000000000000000000000000000000000534ED000732
      DF000732DE000732DE00000000000000000000000000000000000732DE000732
      DE00000000000000000000000000000000000000000000000000888888008282
      8200818181008181810000000000000000000000000000000000818181008181
      8100000000000000000000000000000000000000000000000000000000009933
      0000AA5F1F009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000063000031C64A0021B5390018B5290021B5310000630000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000732DE000732DE000732DD00000000000732DD000732DE000732DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000818181008181810081818100000000008181810081818100818181000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000BA7D480099330000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000063
      000042D66B0039CE5A0021AD39000063000018AD290018B53100006300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000732DD000633E6000633E6000633E9000732DC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008181810085858500858585008686860080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CDA27C00D8B596009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000006300004AD6
      7B0052DE7B0031B54A00006300000000000000630000109C210018AD31000063
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000633E3000732E3000534EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000083838300848484008989890000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000E1C6B000ECDCCD00EDDDD100993300000000
      0000000000000000000000000000000000000000000000000000000000000063
      000042C6630000630000CE6B6B00B539390000000000000000000063000018AD
      2900006300000000000000000000000000000000000000000000000000000000
      0000000000000732DD000534ED000533E9000434EF000434F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000818181008888880086868600888888008B8B8B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000F4E9E200FDF9F500FBF4EC009933
      000099330000000000000000000000000000000000000000000000000000B539
      390000630000CE6B6B00CE6B6B00CE6B6B00B539390000000000000000000063
      0000109C21000063000000000000000000000000000000000000000000000000
      00000434F4000534EF000533EB0000000000000000000434F4000335F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B8B8B00898989008787870000000000000000008B8B8B008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000E1C0AB00F7E9DA00F4E0CC00E1BA
      9C00993300009933000000000000000000000000000000000000B5393900DE94
      9400D6848400CE6B6B00B5393900CE636300CE6B6B00B5393900000000000000
      0000000000000063000000630000000000000000000000000000000000000335
      FC000534EF000434F800000000000000000000000000000000000335FC000335
      FB00000000000000000000000000000000000000000000000000000000008E8E
      8E00898989008D8D8D00000000000000000000000000000000008E8E8E008E8E
      8E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000F6E6D600F3DEC800F0D5BA00E3B995009933
      00000000000000000000000000000000000000000000B5393900DE949400DE9C
      9C00D6737300B539390000000000B5393900CE5A5A00CE6B6B00B53939000000
      00000000000000000000006300000063000000000000000000000335FB000335
      FB000335FC000000000000000000000000000000000000000000000000000335
      FB000335FB0000000000000000000000000000000000000000008E8E8E008E8E
      8E008E8E8E000000000000000000000000000000000000000000000000008E8E
      8E008E8E8E000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000EDCAA800EAC19900E7B98B00DFA8
      7500993300000000000000000000000000000000000000000000B5393900D684
      8400B539390000000000000000000000000000000000B5393900CE636300B539
      390000000000000000000000000000000000000000000335FB000335FB000335
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000335FB000000000000000000000000008E8E8E008E8E8E008E8E
      8E00000000000000000000000000000000000000000000000000000000000000
      0000000000008E8E8E0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000E3AE7900E0A56B00DD9C
      5C00DA944F00993300000000000000000000000000000000000000000000B539
      3900000000000000000000000000000000000000000000000000B5393900CE5A
      5A00B53939000000000000000000000000000335FB000335FB000335FB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008E8E8E008E8E8E008E8E8E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5393900B539390000000000000000000335FB000335FB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008E8E8E008E8E8E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5393900B5393900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFCFFFCFFFFFFFF9FF99FF97FFFFFFF
      8FF38FF39FFFFCFF87E787E7C7FFF87FC3CFC3CFE3FFF03FF11FF11FF0FFE01F
      F83FF83FF83FC10FFC7FFC7FFC1FE0C7F83FF83FFE07E063F19FF19FFE03C039
      E3CFE3CFFC0F821CC7E7C7E7FE07C78F8FFB8FFBFF03EFC71FFF1FFFFF81FFF3
      3FFF3FFFFFFFFFF9FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
