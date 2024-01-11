object UniGridsCheckBox: TUniGridsCheckBox
  Left = 0
  Top = 0
  Width = 985
  Height = 500
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 985
    Height = 500
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitTop = 38
    ExplicitWidth = 937
    ExplicitHeight = 419
    DesignSize = (
      985
      500)
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 979
      Height = 460
      Hint = ''
      HeaderTitle = 'UniDBGrid CheckBox'
      DataSource = DataSource1
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      Columns = <
        item
          FieldName = 'EmpNo'
          Title.Caption = 'EmpNo'
          Width = 64
          Alignment = taRightJustify
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
    object UniDBNavigator1: TUniDBNavigator
      Left = 741
      Top = 472
      Width = 241
      Height = 25
      Hint = ''
      DataSource = DataSource1
      IconSet = icsFontAwesome
      Anchors = [akRight, akBottom]
      TabOrder = 1
      ExplicitLeft = 693
      ExplicitTop = 391
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 432
    Top = 192
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 292
    Top = 158
  end
end
