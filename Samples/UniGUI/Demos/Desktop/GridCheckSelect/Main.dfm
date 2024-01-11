object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 399
  ClientWidth = 635
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object dd: TUniDBGrid
    Left = 0
    Top = 0
    Width = 635
    Height = 361
    Hint = ''
    HeaderTitle = 'Grid CheckSelect'
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCheckSelect, dgConfirmDelete, dgMultiSelect, dgDontShowSelected]
    LoadMask.Message = 'Loading data...'
    Align = alTop
    TabOrder = 0
    Columns = <
      item
        FieldName = 'EmpNo'
        Title.Caption = 'EmpNo'
        Width = 64
      end
      item
        FieldName = 'LastName'
        Title.Caption = 'LastName'
        Width = 124
      end
      item
        FieldName = 'FirstName'
        Title.Caption = 'FirstName'
        Width = 94
      end
      item
        FieldName = 'Shift'
        Title.Caption = 'Shift'
        Width = 81
        CheckBoxField.DisplayValues = 'True;False'
      end
      item
        FieldName = 'BoolInt'
        Title.Caption = 'Integer Field'
        Width = 65
        Alignment = taLeftJustify
        CheckBoxField.BooleanFieldOnly = False
        CheckBoxField.FieldValues = '1;0'
        CheckBoxField.DisplayValues = 'Yes;No'
      end
      item
        FieldName = 'BoolString'
        Title.Caption = 'Boolean Field'
        Width = 67
        Alignment = taLeftJustify
        CheckBoxField.BooleanFieldOnly = False
        CheckBoxField.FieldValues = 'set;unset'
        CheckBoxField.DisplayValues = 'Accept;Fail'
      end
      item
        FieldName = 'Shift'
        Title.Caption = 'Auto Post = True'
        Width = 81
        CheckBoxField.AutoPost = True
        CheckBoxField.DisplayValues = 'True;False'
      end>
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 376
    Top = 367
    Width = 241
    Height = 25
    Hint = ''
    DataSource = DataSource1
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.ClientDataSet1
    Left = 248
    Top = 104
  end
end
