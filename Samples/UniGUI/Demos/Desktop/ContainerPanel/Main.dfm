object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 488
  ClientWidth = 651
  Caption = 'MainForm'
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  DesignSize = (
    651
    488)
  PixelsPerInch = 96
  TextHeight = 13
  object UniContainerPanel1: TUniContainerPanel
    Left = 40
    Top = 24
    Width = 265
    Height = 266
    Hint = ''
    Anchors = [akLeft, akTop, akBottom]
    ExplicitHeight = 264
    object UniContainerPanel5: TUniContainerPanel
      Left = 0
      Top = 138
      Width = 265
      Height = 128
      Hint = ''
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      ExplicitTop = 136
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 265
        Height = 128
        Hint = ''
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        LoadMask.Message = 'Loading data...'
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
      end
    end
    object UniMemo1: TUniMemo
      Left = 0
      Top = 0
      Width = 265
      Height = 138
      Hint = ''
      Lines.Strings = (
        '_UniMemo1')
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clWindow
      TabOrder = 1
      ExplicitHeight = 136
    end
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 311
    Top = 24
    Width = 238
    Height = 266
    Hint = ''
    Color = 8454143
    Anchors = [akLeft, akTop, akRight, akBottom]
    ExplicitHeight = 264
    DesignSize = (
      238
      266)
    object UniContainerPanel4: TUniContainerPanel
      Left = 0
      Top = 0
      Width = 238
      Height = 128
      Hint = ''
      Color = 8454016
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      DesignSize = (
        238
        128)
      object UniPanel2: TUniPanel
        Left = 15
        Top = 6
        Width = 213
        Height = 113
        Hint = ''
        Caption = 'UniPanel2'
        Color = clGray
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
      end
    end
    object UniPanel1: TUniPanel
      Left = 15
      Top = 139
      Width = 210
      Height = 111
      Hint = ''
      Caption = 'UniPanel1'
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      ExplicitHeight = 109
    end
  end
  object UniContainerPanel3: TUniContainerPanel
    Left = 40
    Top = 305
    Width = 265
    Height = 153
    Hint = ''
    Color = 16744448
    Anchors = [akLeft, akBottom]
    ExplicitTop = 303
    DesignSize = (
      265
      153)
    object UniContainerPanel6: TUniContainerPanel
      Left = 32
      Top = 32
      Width = 193
      Height = 81
      Hint = ''
      Anchors = []
      object UniMemo2: TUniMemo
        Left = 0
        Top = 0
        Width = 193
        Height = 81
        Hint = ''
        Lines.Strings = (
          '_UniMemo2')
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clWindow
        TabOrder = 0
      end
    end
  end
end
