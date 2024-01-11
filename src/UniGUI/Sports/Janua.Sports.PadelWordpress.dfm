object frmUNIPadelWordpressMain: TfrmUNIPadelWordpressMain
  Left = 0
  Top = 0
  ClientHeight = 745
  ClientWidth = 987
  Caption = 'PadelConnct'
  BorderStyle = bsNone
  WindowState = wsMaximized
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  Font.Height = -12
  Layout = 'fit'
  OnCreate = UniFormCreate
  OnDestroy = UniFormDestroy
  TextHeight = 15
  object ulbSeasons: TUniLabel
    Left = 40
    Top = 16
    Width = 139
    Height = 30
    Hint = ''
    Caption = 'ulbLabelCenter'
    ParentFont = False
    Font.Height = -21
    ParentColor = False
    Color = clBtnFace
    TabOrder = 0
  end
  object ulbLeague: TUniLabel
    Left = 208
    Top = 16
    Width = 513
    Height = 30
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'ulbLabelCenter'
    ParentFont = False
    Font.Height = -21
    ParentColor = False
    Color = clBtnFace
    TabOrder = 1
  end
  object cboMatchDay: TUniDBLookupComboBox
    Left = 736
    Top = 8
    Width = 121
    Height = 38
    Hint = ''
    ListField = 'match_day_number'
    ListSource = dsMatchDays
    ListFieldIndex = 0
    DataField = 'matchday'
    DataSource = dsMatches
    ParentFont = False
    Font.Height = -21
    TabOrder = 2
    Color = clWindow
    MatchFieldWidth = False
  end
  object ImgList: TUniNativeImageList
    Left = 384
    Top = 176
  end
  object fdmMatches: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 488
    Top = 112
    object fdmMatchesseason_id: TIntegerField
      FieldName = 'season_id'
    end
    object fdmMatchesleague_id: TIntegerField
      FieldName = 'league_id'
    end
    object fdmMatchesmatchday: TSmallintField
      FieldName = 'matchday'
    end
  end
  object dsMatchDays: TDataSource
    DataSet = dmJanuaPgSportsMatches.qryMatchDays
    Left = 480
    Top = 200
  end
  object dsMatches: TDataSource
    DataSet = fdmMatches
    Left = 576
    Top = 144
  end
end
