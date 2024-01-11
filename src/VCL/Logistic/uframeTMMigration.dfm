inherited frameTMMigration: TframeTMMigration
  Width = 735
  Height = 518
  ParentFont = False
  ExplicitWidth = 735
  ExplicitHeight = 518
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 33
    Align = alTop
    TabOrder = 0
    object btnAsync: TSpeedButton
      Left = 289
      Top = 1
      Width = 104
      Height = 31
      Align = alLeft
      Caption = 'Async Insert/Update'
      OnClick = btnAsyncClick
      ExplicitLeft = 283
      ExplicitTop = -4
    end
    object btnStandard: TSpeedButton
      Left = 393
      Top = 1
      Width = 104
      Height = 31
      Align = alLeft
      Caption = 'Insert/Update All'
      OnClick = btnStandardClick
      ExplicitLeft = 441
      ExplicitTop = 2
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 288
      Height = 31
      DataSource = dsLegacyTable
      Align = alLeft
      TabOrder = 0
    end
  end
  object CRDBGrid1: TCRDBGrid
    Left = 0
    Top = 33
    Width = 735
    Height = 192
    Align = alTop
    DataSource = dsLegacyTable
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 225
    Width = 735
    Height = 33
    Align = alTop
    TabOrder = 2
    object DBAdvNavigator2: TDBNavigator
      Left = 1
      Top = 1
      Width = 288
      Height = 31
      DataSource = dsPostgresTable
      Align = alLeft
      TabOrder = 0
    end
  end
  object CRDBGrid2: TCRDBGrid
    Left = 0
    Top = 258
    Width = 735
    Height = 260
    Align = alClient
    DataSource = dsPostgresTable
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dsLegacyTable: TDataSource
    Left = 296
    Top = 80
  end
  object dsPostgresTable: TDataSource
    Left = 296
    Top = 312
  end
  object dsInsertUpdateProcedure: TDataSource
    Left = 296
    Top = 153
  end
end
