object frameTestOrmDB: TframeTestOrmDB
  Left = 0
  Top = 0
  Width = 1378
  Height = 521
  TabOrder = 0
  inline frameBindTestOrm1: TframeBindTestOrm
    Left = 647
    Top = 3
    Width = 728
    Height = 502
    TabOrder = 6
    ExplicitLeft = 647
    ExplicitTop = 3
    ExplicitWidth = 728
    ExplicitHeight = 502
    inherited grpMaster: TGroupBox
      Left = 16
      Width = 665
      ExplicitLeft = 16
      ExplicitWidth = 665
      inherited Button1: TButton
        OnClick = frameBindTestOrm1Button1Click
      end
      inherited btnUndo: TButton
        OnClick = frameBindTestOrm1btnUndoClick
      end
    end
    inherited grpDetail: TGroupBox
      Width = 680
      Height = 133
      ExplicitWidth = 680
      ExplicitHeight = 133
      inherited btnSave: TButton
        OnClick = frameBindTestOrm1btnSaveClick
      end
    end
    inherited EnhCRDBGrid1: TEnhCRDBGrid
      Width = 680
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 3
    Top = 3
    Width = 360
    Height = 41
    TabOrder = 0
  end
  object btnStartOrmdbTest: TButton
    Left = 369
    Top = 3
    Width = 75
    Height = 41
    Caption = 'Start Test'
    TabOrder = 1
    OnClick = btnStartOrmdbTestClick
  end
  object EnhCRDBGrid1: TEnhCRDBGrid
    Left = 3
    Top = 50
    Width = 654
    Height = 167
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -11
    HighlightFont.Name = 'Tahoma'
    HighlightFont.Style = []
  end
  object EnhCRDBGrid2: TEnhCRDBGrid
    Left = 3
    Top = 270
    Width = 654
    Height = 155
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -11
    HighlightFont.Name = 'Tahoma'
    HighlightFont.Style = []
  end
  object DBNavigator2: TDBNavigator
    Left = 3
    Top = 223
    Width = 360
    Height = 41
    TabOrder = 4
  end
  object btnSetupRecord: TButton
    Left = 450
    Top = 3
    Width = 105
    Height = 41
    Caption = 'Record Load'
    Enabled = False
    TabOrder = 5
    OnClick = btnSetupRecordClick
  end
  object btnSave: TButton
    Left = 582
    Top = 3
    Width = 75
    Height = 41
    Caption = 'Save'
    TabOrder = 7
    OnClick = btnSaveClick
  end
end
