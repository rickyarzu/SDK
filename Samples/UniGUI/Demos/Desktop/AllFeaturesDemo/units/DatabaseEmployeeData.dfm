object UniDatabaseEmployeeData: TUniDatabaseEmployeeData
  Left = 0
  Top = 0
  Width = 947
  Height = 631
  OnCreate = UniFrameCreate
  TabStop = True
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 947
    Height = 631
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitTop = 3
    ExplicitWidth = 1161
    ExplicitHeight = 678
    object UniDBNavigator1: TUniDBNavigator
      Left = 3
      Top = 289
      Width = 241
      Height = 25
      Hint = ''
      DataSource = DataSource1
      IconSet = icsFontAwesome
      TabOrder = 0
    end
    object UniDBGrid1: TUniDBGrid
      Left = 0
      Top = 320
      Width = 947
      Height = 311
      Hint = ''
      ClientEvents.ExtEvents.Strings = (
        
          'columnhide=function columnhide(ct, column, eOpts)'#13#10'{'#13#10'  _log(col' +
          'umn);'#13#10'  _log(column.isVisible());'#13#10'   ajaxRequest(MainForm.UniD' +
          'BGrid1, "columnhide", ["column=" + column.dataIndex, "visible=" ' +
          '+ column.isHidden()]);'#13#10'}')
      TitleFont.Color = clGreen
      TitleFont.Style = [fsBold]
      DataSource = DataSource1
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      Columns = <
        item
          FieldName = 'EmpNo'
          Title.Caption = 'EmpNo'
          Width = 64
          Alignment = taRightJustify
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
          FieldName = 'PhoneExt'
          Title.Caption = 'PhoneExt'
          Width = 105
        end
        item
          FieldName = 'HireDate'
          Title.Caption = 'HireDate'
          Width = 112
        end
        item
          FieldName = 'Salary'
          Title.Caption = 'Salary'
          Width = 111
          Alignment = taRightJustify
        end
        item
          FieldName = 'Shift'
          Title.Caption = 'Shift'
          Width = 95
        end
        item
          FieldName = 'ShiftStart'
          Title.Caption = 'ShiftStart'
          Width = 90
        end
        item
          FieldName = 'City'
          Title.Caption = 'City'
          Width = 161
        end>
    end
    object UniDBListBox1: TUniDBListBox
      Left = 375
      Top = 24
      Width = 178
      Height = 236
      Hint = ''
      Items.Strings = (
        'New York'
        'London'
        'Tokyo'
        'Hong Kong'
        'Paris'
        'Singapore'
        'Los Angeles'
        'Seoul'
        'Vienna'
        'Stockholm'
        'Toronto'
        'Chicago'
        'Zurich'
        'Sydney'
        'Helsinki'
        #304'stanbul'
        'Ankara')
      DataField = 'City'
      DataSource = DataSource1
      TabOrder = 2
    end
    object UniLabel5: TUniLabel
      Left = 375
      Top = 5
      Width = 26
      Height = 13
      Hint = ''
      Caption = 'Cities'
      TabOrder = 3
    end
    object UniDBCheckBox1: TUniDBCheckBox
      Left = 216
      Top = 62
      Width = 97
      Height = 17
      Hint = ''
      DataField = 'Shift'
      DataSource = DataSource1
      Caption = 'Shift'
      TabOrder = 4
      ParentColor = False
      Color = clBtnFace
    end
    object UniLabel1: TUniLabel
      Left = 8
      Top = 1
      Width = 62
      Height = 13
      Hint = ''
      Caption = 'Employee No'
      TabOrder = 5
    end
    object UniDBEdit1: TUniDBEdit
      Left = 8
      Top = 20
      Width = 159
      Height = 21
      Hint = ''
      DataField = 'EmpNo'
      DataSource = DataSource1
      TabOrder = 6
      InputMask.Mask = '999'
      InputMask.RemoveWhiteSpace = True
    end
    object UniLabel2: TUniLabel
      Left = 8
      Top = 44
      Width = 51
      Height = 13
      Hint = ''
      Caption = 'First Name'
      TabOrder = 7
    end
    object UniDBEdit2: TUniDBEdit
      Left = 8
      Top = 60
      Width = 159
      Height = 21
      Hint = ''
      DataField = 'FirstName'
      DataSource = DataSource1
      TabOrder = 8
    end
    object UniLabel3: TUniLabel
      Left = 8
      Top = 85
      Width = 50
      Height = 13
      Hint = ''
      Caption = 'Last Name'
      TabOrder = 9
    end
    object UniDBEdit3: TUniDBEdit
      Left = 8
      Top = 101
      Width = 159
      Height = 21
      Hint = ''
      DataField = 'LastName'
      DataSource = DataSource1
      TabOrder = 10
      Color = 16769217
    end
    object UniLabel4: TUniLabel
      Left = 8
      Top = 127
      Width = 49
      Height = 13
      Hint = ''
      Caption = 'Phone Ext'
      TabOrder = 11
    end
    object UniDBEdit4: TUniDBEdit
      Left = 8
      Top = 142
      Width = 159
      Height = 21
      Hint = ''
      DataField = 'PhoneExt'
      DataSource = DataSource1
      TabOrder = 12
      InputMask.Mask = '(999)'
      InputMask.UnmaskText = True
      InputMask.RemoveWhiteSpace = True
    end
    object UniDBComboBox1: TUniDBComboBox
      Left = 8
      Top = 235
      Width = 159
      Hint = ''
      DataField = 'City'
      DataSource = DataSource1
      Items.Strings = (
        'New York'
        'Rome'
        'Ankara'
        'London')
      TabOrder = 13
      IconItems = <>
    end
    object UniDBText1: TUniDBText
      Left = 216
      Top = 20
      Width = 72
      Height = 16
      Hint = ''
      DataField = 'FirstName'
      DataSource = DataSource1
      Alignment = taCenter
      ParentFont = False
      Font.Color = clNavy
      Font.Height = -13
      Font.Style = [fsBold]
    end
    object UniDBDateTimePicker1: TUniDBDateTimePicker
      Left = 216
      Top = 127
      Width = 120
      Hint = ''
      DataField = 'HireDate'
      DataSource = DataSource1
      DateTime = 42037.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 15
    end
    object UniLabel6: TUniLabel
      Left = 8
      Top = 169
      Width = 30
      Height = 13
      Hint = ''
      Caption = 'Salary'
      TabOrder = 16
    end
    object UniLabel7: TUniLabel
      Left = 8
      Top = 216
      Width = 19
      Height = 13
      Hint = ''
      Caption = 'City'
      TabOrder = 17
    end
    object UniLabel8: TUniLabel
      Left = 216
      Top = 108
      Width = 45
      Height = 13
      Hint = ''
      Caption = 'Hire Date'
      TabOrder = 18
    end
    object UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit
      Left = 8
      Top = 188
      Width = 161
      Height = 22
      Hint = ''
      FormattedInput.ShowCurrencySign = True
      FormattedInput.CurrencySignPos = cpsLeft
      DataField = 'Salary'
      DataSource = DataSource1
      TabOrder = 20
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'EmpNo'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'LastName'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FirstName'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'PhoneExt'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'HireDate'
        Attributes = [faUnNamed]
        DataType = ftDateTime
      end
      item
        Name = 'Salary'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'Shift'
        Attributes = [faUnNamed]
        DataType = ftBoolean
      end
      item
        Name = 'ShiftStart'
        Attributes = [faUnNamed]
        DataType = ftTime
      end
      item
        Name = 'City'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 12
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 584
    Top = 376
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 304
    Top = 376
  end
end
