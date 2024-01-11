object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 621
  ClientWidth = 919
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 24
    Top = 113
    Width = 865
    Height = 416
    Hint = ''
    DataSource = UniMainModule.DataSource1
    LoadMask.Message = 'Loading data...'
    TabOrder = 0
    OnColumnSort = UniDBGrid1ColumnSort
    Columns = <
      item
        FieldName = 'EmpNo'
        Title.Caption = 'EmpNo'
        Width = 64
        Alignment = taRightJustify
        Sortable = True
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'LastName'
        Title.Caption = 'LastName'
        Width = 124
        Sortable = True
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'FirstName'
        Title.Caption = 'FirstName'
        Width = 94
        Sortable = True
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'PhoneExt'
        Title.Caption = 'PhoneExt'
        Width = 50
        Sortable = True
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'HireDate'
        Title.Caption = 'HireDate'
        Width = 112
        Sortable = True
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Salary'
        Title.Caption = 'Salary'
        Width = 64
        Alignment = taRightJustify
        Sortable = True
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Shift'
        Title.Caption = 'Shift'
        Width = 34
        Sortable = True
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'ShiftStart'
        Title.Caption = 'ShiftStart'
        Width = 64
        Sortable = True
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'City'
        Title.Caption = 'City'
        Width = 76
        Sortable = True
        CheckBoxField.FieldValues = 'true;false'
      end>
  end
end
