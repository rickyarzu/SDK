object UniDBGridHeaderGrouping: TUniDBGridHeaderGrouping
  Left = 0
  Top = 0
  Width = 333
  Height = 445
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 333
    Height = 445
    Hint = ''
    Align = alClient
    object UnimContainerPanel2: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 333
      Height = 445
      Hint = ''
      Align = alClient
      object UnimDBGrid1: TUnimDBGrid
        Left = 0
        Top = 47
        Width = 333
        Height = 398
        Hint = ''
        Align = alClient
        DataSource = DataSource1
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgConfirmDelete]
        Columns = <
          item
            EditorType = ceSpinner
            Title.Caption = 'EmpNo'
            FieldName = 'EmpNo'
            Width = 114
          end
          item
            Title.Caption = 'LastName'
            FieldName = 'LastName'
            Width = 224
            GroupHeader = 'Employer Name'
          end
          item
            Title.Caption = 'FirstName'
            FieldName = 'FirstName'
            Width = 169
            GroupHeader = 'Employer Name'
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
            GroupHeader = 'Shift Information'
          end
          item
            EditorType = ceSelect
            EditorItems.Strings = (
              '08:30:00'
              '09:00:00'
              '09:30:00'
              '10:00:00')
            Title.Caption = 'ShiftStart'
            FieldName = 'ShiftStart'
            Width = 114
            GroupHeader = 'Shift Information'
          end
          item
            EditorType = ceSelect
            EditorItems.Strings = (
              'New York'
              'London'
              'Ankara'
              'Rome'
              'Paris')
            Title.Caption = 'City'
            FieldName = 'City'
            Width = 136
          end>
      end
      object UnimDBNavigator1: TUnimDBNavigator
        Left = 0
        Top = 0
        Width = 333
        Height = 47
        Hint = ''
        DataSource = DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        IconSet = icsFontAwesome
        Align = alTop
        TabOrder = 2
      end
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 70
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
    object ClientDataSet1PhoneExt: TStringField
      FieldName = 'PhoneExt'
      Size = 4
    end
    object ClientDataSet1HireDate: TDateTimeField
      FieldName = 'HireDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ClientDataSet1Salary: TFloatField
      FieldName = 'Salary'
      currency = True
    end
    object ClientDataSet1Shift: TBooleanField
      FieldName = 'Shift'
      DisplayValues = 'Day;Night'
    end
    object ClientDataSet1ShiftStart: TTimeField
      FieldName = 'ShiftStart'
      DisplayFormat = 'hh:nn'
    end
    object ClientDataSet1City: TStringField
      FieldName = 'City'
      Size = 12
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 240
    Top = 160
  end
end
