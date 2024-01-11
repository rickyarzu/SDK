object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 425
  ClientWidth = 651
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object dd: TUniDBGrid
    Left = 0
    Top = 0
    Width = 651
    Height = 361
    HeaderTitle = 'Grid CheckSelect Only'
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCheckSelect, dgCheckSelectCheckOnly, dgConfirmDelete]
    LoadMask.Message = 'Loading data...'
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    Columns = <
      item
        FieldName = 'EmpNo'
        Title.Caption = 'EmpNo'
        Width = 76
        Visible = True
        Alignment = taRightJustify
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'LastName'
        Title.Caption = 'LastName'
        Width = 80
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'FirstName'
        Title.Caption = 'FirstName'
        Width = 80
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Shift'
        Title.Caption = 'Shift'
        Width = 76
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
        CheckBoxField.DisplayValues = 'True;False'
      end
      item
        FieldName = 'BoolInt'
        Title.Caption = 'Integer Field'
        Width = 81
        Visible = True
        Alignment = taLeftJustify
        Expanded = False
        CheckBoxField.BooleanFieldOnly = False
        CheckBoxField.FieldValues = '1;0'
        CheckBoxField.DisplayValues = 'Yes;No'
      end
      item
        FieldName = 'BoolString'
        Title.Caption = 'String Field'
        Width = 98
        Visible = True
        Alignment = taLeftJustify
        Expanded = False
        CheckBoxField.BooleanFieldOnly = False
        CheckBoxField.FieldValues = 'set;unset'
        CheckBoxField.DisplayValues = 'Accept;Fail'
      end
      item
        FieldName = 'Shift'
        Title.Caption = 'Auto Post = True'
        Width = 112
        Visible = True
        Expanded = False
        CheckBoxField.AutoPost = True
        CheckBoxField.FieldValues = 'true;false'
        CheckBoxField.DisplayValues = 'True;False'
      end>
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 368
    Top = 379
    Width = 241
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.ClientDataSet1
    Left = 224
    Top = 88
  end
end
