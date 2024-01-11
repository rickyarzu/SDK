object UniDatabaseDBControls: TUniDatabaseDBControls
  Left = 0
  Top = 0
  Width = 506
  Height = 580
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimDBNavigator1: TUnimDBNavigator
    Left = 0
    Top = 533
    Width = 506
    Height = 47
    Hint = ''
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel]
    IconSet = icsFontAwesome
    Align = alBottom
    TabOrder = 0
  end
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 506
    Height = 533
    Hint = ''
    Align = alClient
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    object UnimDBEdit1: TUnimDBEdit
      Left = 0
      Top = 0
      Width = 506
      Height = 47
      Hint = ''
      DataField = 'City'
      DataSource = DataSource1
      Align = alTop
      FieldLabel = 'City'
      TabOrder = 1
    end
    object UnimDBNumberEdit1: TUnimDBNumberEdit
      Left = 0
      Top = 47
      Width = 506
      Height = 47
      Hint = ''
      DataField = 'Salary'
      DataSource = DataSource1
      Align = alTop
      FieldLabel = 'Salary'
      ParentFont = False
      TabOrder = 2
    end
    object UnimDBToggle1: TUnimDBToggle
      Left = 0
      Top = 94
      Width = 506
      Height = 64
      Hint = ''
      DataField = 'Shift'
      DataSource = DataSource1
      FieldLabel = 'Shift'
      Align = alTop
    end
    object UnimDBCheckBox1: TUnimDBCheckBox
      Left = 0
      Top = 158
      Width = 506
      Height = 47
      Hint = ''
      DataField = 'Shift'
      DataSource = DataSource1
      FieldLabel = 'Shift'
      Align = alTop
      Caption = 'Shift'
    end
    object UnimDBDatePicker1: TUnimDBDatePicker
      Left = 0
      Top = 205
      Width = 506
      Height = 47
      Hint = ''
      DataField = 'HireDate'
      DataSource = DataSource1
      Align = alTop
      FieldLabel = 'Hire Date'
      DateFormat = 'dd/MM/yyyy'
      Date = 41995.000000000000000000
    end
    object UnimDBSpinner1: TUnimDBSpinner
      Left = 0
      Top = 252
      Width = 506
      Height = 47
      Hint = ''
      DataField = 'Salary'
      DataSource = DataSource1
      Align = alTop
      Step = 1.000000000000000000
      FieldLabel = 'Salary'
      ParentFont = False
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSetSalary
    Left = 152
    Top = 180
  end
  object ClientDataSetSalary: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 16
    object ClientDataSetSalaryEmpNo: TIntegerField
      FieldName = 'EmpNo'
    end
    object ClientDataSetSalaryLastName: TStringField
      FieldName = 'LastName'
    end
    object ClientDataSetSalaryFirstName: TStringField
      FieldName = 'FirstName'
      Size = 15
    end
    object ClientDataSetSalaryPhoneExt: TStringField
      FieldName = 'PhoneExt'
      Size = 4
    end
    object ClientDataSetSalaryHireDate: TDateTimeField
      FieldName = 'HireDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ClientDataSetSalarySalary: TFloatField
      FieldName = 'Salary'
      currency = True
    end
    object ClientDataSetSalaryShift: TBooleanField
      FieldName = 'Shift'
      DisplayValues = 'Day;Night'
    end
    object ClientDataSetSalaryShiftStart: TTimeField
      FieldName = 'ShiftStart'
      DisplayFormat = 'hh:nn'
    end
    object ClientDataSetSalaryCity: TStringField
      FieldName = 'City'
      Size = 12
    end
  end
end
