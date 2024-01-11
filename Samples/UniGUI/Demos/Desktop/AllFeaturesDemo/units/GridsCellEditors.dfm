object UniGridsCellEditors: TUniGridsCellEditors
  Left = 0
  Top = 0
  Width = 885
  Height = 490
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    885
    490)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 16
    Width = 862
    Height = 449
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      862
      449)
    object UniDBNavigator1: TUniDBNavigator
      Left = 579
      Top = 414
      Width = 280
      Height = 28
      Hint = ''
      DataSource = DataSource1
      IconSet = icsFontAwesome
      Anchors = []
      TabOrder = 0
    end
    object UniDBGrid1: TUniDBGrid
      Left = 3
      Top = 0
      Width = 856
      Height = 408
      Hint = ''
      HeaderTitle = 'Grid Editor'
      DataSource = DataSource1
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Anchors = []
      TabOrder = 2
      OnDrawColumnCell = UniDBGrid1DrawColumnCell
      Columns = <
        item
          FieldName = 'EmpNo'
          Title.Caption = 'Id No'
          Width = 56
          Alignment = taRightJustify
          ReadOnly = True
        end
        item
          FieldName = 'LastName'
          Title.Alignment = taCenter
          Title.Caption = 'Last Name'
          Width = 124
          Editor = UniEdit1
        end
        item
          FieldName = 'FirstName'
          Title.Caption = 'First Name'
          Width = 94
          Editor = UniEdit2
        end
        item
          FieldName = 'PhoneExt'
          Title.Caption = 'Phone Ext.'
          Width = 106
          Editor = UniSpinEdit1
        end
        item
          FieldName = 'HireDate'
          Title.Caption = 'Hire Date'
          Width = 112
          Editor = UniDateTimePicker1
        end
        item
          FieldName = 'Salary'
          Title.Caption = 'Salary'
          Width = 86
          Alignment = taRightJustify
          Editor = UniFormattedNumberEdit1
        end
        item
          FieldName = 'Shift'
          Title.Caption = 'Shift'
          Width = 59
          Font.Color = clBlack
          CheckBoxField.DisplayValues = 'Day;Night'
        end
        item
          FieldName = 'ShiftStart'
          Title.Caption = 'Work Start'
          Width = 96
          Editor = UniDateTimePicker2
        end
        item
          FieldName = 'City'
          Title.Caption = 'City'
          Width = 88
          Editor = UniComboBox1
        end>
    end
    object UniHiddenPanel1: TUniHiddenPanel
      Left = 579
      Top = 48
      Width = 161
      Height = 289
      Hint = ''
      Visible = True
      DesignSize = (
        161
        289)
      object UniDateTimePicker1: TUniDateTimePicker
        Left = 16
        Top = 89
        Width = 120
        Height = 21
        Hint = ''
        DateTime = 40886.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        FirstDayOfWeek = dowLocaleDefault
        Anchors = []
        TabOrder = 1
      end
      object UniComboBox1: TUniComboBox
        Left = 16
        Top = 121
        Width = 121
        Hint = ''
        Text = 'UniComboBox1'
        Items.Strings = (
          'New York'
          'London'
          'Paris'
          'Berlin')
        Anchors = []
        TabOrder = 2
        IconItems = <>
      end
      object UniSpinEdit1: TUniSpinEdit
        Left = 16
        Top = 154
        Width = 121
        Hint = ''
        MaxValue = 999
        MinValue = 1
        TabOrder = 3
        Anchors = []
        Color = 16770250
      end
      object UniDateTimePicker2: TUniDateTimePicker
        Left = 16
        Top = 182
        Width = 120
        Height = 21
        Hint = ''
        DateTime = 0.759275347219954700
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm'
        Kind = tUniTime
        FirstDayOfWeek = dowLocaleDefault
        Anchors = []
        TabOrder = 4
      end
      object UniEdit2: TUniEdit
        Left = 16
        Top = 57
        Width = 121
        Height = 20
        Hint = ''
        Text = 'UniEdit2'
        ParentFont = False
        Font.Color = clBlue
        Anchors = []
        TabOrder = 5
      end
      object UniEdit1: TUniEdit
        Left = 16
        Top = 25
        Width = 121
        Height = 20
        Hint = ''
        Text = 'UniEdit1'
        ParentFont = False
        Font.Color = clBlue
        Anchors = []
        TabOrder = 0
      end
      object UniFormattedNumberEdit1: TUniFormattedNumberEdit
        Left = 16
        Top = 209
        Width = 121
        Hint = ''
        FormattedInput.ShowCurrencySign = True
        FormattedInput.CurrencySignPos = cpsLeft
        TabOrder = 7
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 128
    Top = 439
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 163
    Top = 192
  end
end
