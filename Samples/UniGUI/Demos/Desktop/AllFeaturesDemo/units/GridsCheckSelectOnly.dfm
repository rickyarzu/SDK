object UniGridsCheckSelectOnly: TUniGridsCheckSelectOnly
  Left = 0
  Top = 0
  Width = 942
  Height = 525
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 942
    Height = 525
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 48
    ExplicitTop = 35
    ExplicitWidth = 849
    ExplicitHeight = 462
    DesignSize = (
      942
      525)
    object UniDBNavigator1: TUniDBNavigator
      Left = 698
      Top = 497
      Width = 241
      Height = 25
      Hint = ''
      DataSource = DataSource1
      IconSet = icsFontAwesome
      Anchors = [akRight, akBottom]
      TabOrder = 0
    end
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 936
      Height = 476
      Hint = ''
      HeaderTitle = 'UniDBGrid CheckBox'
      DataSource = DataSource1
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCheckSelect, dgCheckSelectCheckOnly, dgConfirmDelete]
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      Columns = <
        item
          FieldName = 'EmpNo'
          Title.Caption = 'EmpNo'
          Width = 64
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'LastName'
          Title.Caption = 'LastName'
          Width = 92
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'FirstName'
          Title.Caption = 'FirstName'
          Width = 83
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Shift'
          Title.Caption = 'Boolean Field'
          Width = 81
          CheckBoxField.DisplayValues = 'True;False'
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'BoolInt'
          Title.Caption = 'Integer Field'
          Width = 81
          Alignment = taLeftJustify
          CheckBoxField.BooleanFieldOnly = False
          CheckBoxField.FieldValues = '1;0'
          CheckBoxField.DisplayValues = 'Yes;No'
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'BoolString'
          Title.Caption = 'String Field'
          Width = 64
          Alignment = taLeftJustify
          CheckBoxField.BooleanFieldOnly = False
          CheckBoxField.FieldValues = 'set;unset'
          CheckBoxField.DisplayValues = 'Accept;Fail'
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Shift'
          Title.Caption = 'Auto Post = True'
          Width = 87
          CheckBoxField.AutoPost = True
          CheckBoxField.DisplayValues = 'True;False'
          Menu.MenuEnabled = False
        end>
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'EmpNo'
        DataType = ftInteger
      end
      item
        Name = 'LastName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FirstName'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Shift'
        DataType = ftBoolean
      end
      item
        Name = 'BoolInt'
        DataType = ftSmallint
      end
      item
        Name = 'BoolString'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 347
    Top = 155
    object ClientDataSet1EmpNo: TIntegerField
      FieldName = 'EmpNo'
    end
    object ClientDataSet1LastName: TStringField
      FieldName = 'LastName'
    end
    object ClientDataSet1FirstName: TStringField
      FieldName = 'FirstName'
      Size = 15
    end
    object ClientDataSet1Shift: TBooleanField
      FieldName = 'Shift'
    end
    object ClientDataSet1BoolInt: TSmallintField
      FieldName = 'BoolInt'
    end
    object ClientDataSet1BoolString: TStringField
      FieldName = 'BoolString'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 419
    Top = 267
  end
end
