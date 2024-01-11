object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 593
  ClientWidth = 683
  Caption = 'MainmForm'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimDBNavigator1: TUnimDBNavigator
    Left = 0
    Top = 0
    Width = 683
    Height = 47
    Hint = ''
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    IconSet = icsFontAwesome
    Align = alTop
    TabOrder = 1
  end
  object UnimDBGrid1: TUnimDBGrid
    Left = 0
    Top = 47
    Width = 683
    Height = 546
    Hint = ''
    Align = alClient
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgConfirmDelete]
    EditorConfig.FieldLabelWidth = 50
    Columns = <
      item
        EditorType = ceSpinner
        Title.Caption = 'EmpNo'
        FieldName = 'EmpNo'
        Width = 100
      end
      item
        EditorType = ceText
        Title.Caption = 'LastName'
        FieldName = 'LastName'
        Width = 180
      end
      item
        EditorType = ceText
        Title.Caption = 'FirstName'
        FieldName = 'FirstName'
        Width = 169
      end
      item
        EditorType = ceNumber
        Title.Caption = 'PhoneExt'
        FieldName = 'PhoneExt'
        Width = 91
      end
      item
        EditorType = ceDate
        Title.Caption = 'HireDate'
        FieldName = 'HireDate'
        Width = 202
      end
      item
        EditorType = ceNumber
        Title.Caption = 'Salary'
        FieldName = 'Salary'
        Width = 114
      end
      item
        EditorType = ceToggle
        Title.Caption = 'Shift'
        FieldName = 'Shift'
        Width = 59
      end
      item
        EditorType = ceSelect
        EditorItems.Strings = (
          '08:30'
          '09:00'
          '09:30'
          '10:00')
        Title.Caption = 'ShiftStart'
        FieldName = 'ShiftStart'
        Width = 114
      end
      item
        EditorType = ceComboBox
        EditorItems.Strings = (
          'New York'
          'London'
          'Ankara'
          'Paris'
          'Rome')
        Title.Caption = 'City'
        FieldName = 'City'
        Width = 136
      end>
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.ClientDataSet1
    Left = 128
    Top = 72
  end
end
