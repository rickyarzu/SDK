object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 475
  ClientWidth = 887
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  DesignSize = (
    887
    475)
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 40
    Width = 871
    Height = 427
    Hint = ''
    DataSource = UniMainModule.DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Columns = <
      item
        FieldName = 'DateTime'
        Title.Caption = 'DateTime'
        Width = 112
      end
      item
        FieldName = 'No'
        Title.Caption = 'No'
        Width = 64
      end
      item
        FieldName = 'EClass'
        Title.Caption = 'EClass'
        Width = 124
      end
      item
        FieldName = 'xForm'
        Title.Caption = 'Form'
        Width = 124
      end
      item
        FieldName = 'Component'
        Title.Caption = 'Component'
        Width = 148
      end
      item
        FieldName = 'Message'
        Title.Caption = 'Message'
        Width = 604
      end>
  end
  object UniButton1: TUniButton
    Left = 8
    Top = 9
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Raise A'
    TabOrder = 1
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 104
    Top = 9
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Raise B'
    TabOrder = 2
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 200
    Top = 8
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Raise C'
    TabOrder = 3
    OnClick = UniButton3Click
  end
  object UniButton4: TUniButton
    Left = 296
    Top = 8
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Raise D'
    TabOrder = 4
    OnClick = UniButton4Click
  end
end
