object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 529
  ClientWidth = 769
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  DesignSize = (
    769
    529)
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 8
    Width = 743
    Height = 497
    Hint = ''
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete]
    ReadOnly = True
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Columns = <
      item
        FieldName = 'TimeStamp'
        Title.Caption = 'TimeStamp'
        Width = 132
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Ajax'
        Title.Caption = 'Ajax'
        Width = 69
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'EventName'
        Title.Caption = 'EventName'
        Width = 118
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Params'
        Title.Caption = 'Params'
        Width = 142
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
        DisplayMemo = True
      end
      item
        FieldName = 'Headers'
        Title.Caption = 'Headers'
        Width = 271
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
        DisplayMemo = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.CDS
    Left = 264
    Top = 240
  end
end
