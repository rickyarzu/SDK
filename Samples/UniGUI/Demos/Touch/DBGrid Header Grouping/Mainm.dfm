object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'MainmForm'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimDBGrid1: TUnimDBGrid
    Left = 0
    Top = 47
    Width = 320
    Height = 433
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    Options = [dgTitles, dgColLines, dgRowLines, dgConfirmDelete]
    Columns = <
      item
        EditorType = ceSpinner
        Title.Caption = 'EmpNo'
        Title.Font.Height = -21
        FieldName = 'EmpNo'
        Visible = True
        Width = 100
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        EditorType = ceText
        Title.Caption = 'LastName'
        Title.Font.Height = -21
        FieldName = 'LastName'
        Visible = True
        Width = 180
        GroupHeader = 'Name'
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        EditorType = ceText
        Title.Caption = 'FirstName'
        Title.Font.Height = -21
        FieldName = 'FirstName'
        Visible = True
        Width = 169
        GroupHeader = 'Name'
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        EditorType = ceNumber
        Title.Caption = 'PhoneExt'
        Title.Font.Height = -21
        FieldName = 'PhoneExt'
        Visible = True
        Width = 91
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        EditorType = ceDate
        Title.Caption = 'HireDate'
        Title.Font.Height = -21
        FieldName = 'HireDate'
        Visible = True
        Width = 202
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        EditorType = ceNumber
        Title.Caption = 'Salary'
        Title.Font.Height = -21
        FieldName = 'Salary'
        Visible = True
        Width = 114
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        EditorType = ceToggle
        Title.Caption = 'Shift'
        Title.Font.Height = -21
        FieldName = 'Shift'
        Visible = True
        Width = 59
        GroupHeader = 'Shift Information'
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        EditorType = ceSelect
        EditorItems.Strings = (
          '08:30:00'
          '09:00:00'
          '09:30:00'
          '10:00:00')
        Title.Caption = 'ShiftStart'
        Title.Font.Height = -21
        FieldName = 'ShiftStart'
        Visible = True
        Width = 114
        GroupHeader = 'Shift Information'
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        EditorType = ceSelect
        EditorItems.Strings = (
          'New York'
          'London'
          'Ankara'
          'Paris'
          'Rome')
        Title.Caption = 'City'
        Title.Font.Height = -21
        FieldName = 'City'
        Visible = True
        Width = 136
        CheckBoxField.FieldValues = 'true;false'
      end>
  end
  object UnimDBNavigator1: TUnimDBNavigator
    Left = 0
    Top = 0
    Width = 320
    Height = 47
    Hint = ''
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.ClientDataSet1
    Left = 128
    Top = 72
  end
end
