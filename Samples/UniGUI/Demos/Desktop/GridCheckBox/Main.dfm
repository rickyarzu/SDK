object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 601
  ClientWidth = 901
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  DesignSize = (
    901
    601)
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 899
    Height = 558
    Hint = ''
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentFont = False
    TabOrder = 0
    Columns = <
      item
        FieldName = 'EmpNo'
        Title.Caption = 'EmpNo'
        Width = 76
      end
      item
        FieldName = 'LastName'
        Title.Caption = 'LastName'
        Width = 148
      end
      item
        FieldName = 'FirstName'
        Title.Caption = 'FirstName'
        Width = 112
      end
      item
        FieldName = 'Shift'
        Title.Caption = 'Boolean Field'
        Width = 100
        Tag = 255
        ImageOptions.Visible = True
        ImageOptions.Width = 32
        ImageOptions.Height = 32
      end
      item
        FieldName = 'BoolInt'
        Title.Caption = 'Integer Field'
        Width = 100
        Alignment = taLeftJustify
        CheckBoxField.BooleanFieldOnly = False
        CheckBoxField.FieldValues = '1;0'
        CheckBoxField.DisplayValues = 'Yes;No'
      end
      item
        FieldName = 'BoolString'
        Title.Caption = 'String Field'
        Width = 100
        Alignment = taLeftJustify
        CheckBoxField.BooleanFieldOnly = False
        CheckBoxField.FieldValues = 'set;unset'
        CheckBoxField.DisplayValues = 'Accept;Fail'
      end
      item
        FieldName = 'Shift'
        Title.Caption = 'Auto Post = True'
        Width = 100
        Font.Style = [fsBold]
        CheckBoxField.AutoPost = True
      end>
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 659
    Top = 564
    Width = 240
    Height = 25
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    DataSource = DataSource1
    Anchors = [akRight, akBottom]
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.ClientDataSet1
    Left = 344
    Top = 480
  end
end
