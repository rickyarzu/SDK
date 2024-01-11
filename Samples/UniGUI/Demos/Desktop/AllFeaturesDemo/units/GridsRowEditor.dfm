object UniGridsRowEditor: TUniGridsRowEditor
  Left = 0
  Top = 0
  Width = 816
  Height = 556
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 816
    Height = 556
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 16
    ExplicitTop = 23
    ExplicitWidth = 785
    ExplicitHeight = 506
    DesignSize = (
      816
      556)
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 810
      Height = 519
      Hint = ''
      HeaderTitle = 'Grid Row Editor'
      RowEditor = True
      DataSource = DataSource1
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      Columns = <
        item
          FieldName = 'EmpNo'
          Title.Caption = 'Id No'
          Width = 94
          Alignment = taRightJustify
          Locked = True
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'LastName'
          Title.Alignment = taCenter
          Title.Caption = 'Last Name'
          Width = 124
          Editor = UniEdit1
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'FirstName'
          Title.Caption = 'First Name'
          Width = 94
          Editor = UniEdit2
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'PhoneExt'
          Title.Caption = 'Phone Ext.'
          Width = 72
          Editor = UniSpinEdit1
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'HireDate'
          Title.Caption = 'Hire Date'
          Width = 112
          Editor = UniDateTimePicker1
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Salary'
          Title.Caption = 'Salary'
          Width = 86
          Alignment = taRightJustify
          Editor = UniFormattedNumberEdit1
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'ShiftStart'
          Title.Caption = 'Work Start'
          Width = 71
          Editor = UniDateTimePicker2
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'City'
          Title.Caption = 'City'
          Width = 88
          Editor = UniComboBox1
          Locked = True
          Menu.MenuEnabled = False
        end>
    end
    object UniDBNavigator1: TUniDBNavigator
      Left = 527
      Top = 526
      Width = 280
      Height = 25
      Hint = ''
      DataSource = DataSource1
      IconSet = icsFontAwesome
      Anchors = [akRight, akBottom]
      TabStop = False
      TabOrder = 1
      ExplicitLeft = 502
      ExplicitTop = 478
    end
    object UniHiddenPanel1: TUniHiddenPanel
      Left = 594
      Top = 88
      Width = 161
      Height = 305
      Hint = ''
      Visible = True
      DesignSize = (
        161
        305)
      object UniEdit1: TUniEdit
        Left = 16
        Top = 37
        Width = 121
        Height = 20
        Hint = ''
        Text = 'UniEdit1'
        ParentFont = False
        Font.Color = clBlue
        Anchors = []
        TabOrder = 0
      end
      object UniDateTimePicker1: TUniDateTimePicker
        Left = 16
        Top = 124
        Width = 120
        Height = 21
        Hint = ''
        DateTime = 40886.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        FirstDayOfWeek = dowLocaleDefault
        Anchors = []
        TabOrder = 3
      end
      object UniComboBox1: TUniComboBox
        Left = 16
        Top = 168
        Width = 121
        Hint = ''
        Text = 'UniComboBox1'
        Items.Strings = (
          'New York'
          'London'
          'Paris'
          'Berlin')
        Anchors = []
        TabOrder = 5
        IconItems = <>
      end
      object UniSpinEdit1: TUniSpinEdit
        Left = 16
        Top = 213
        Width = 121
        Hint = ''
        MaxValue = 999
        MinValue = 1
        TabOrder = 2
        Anchors = []
        ParentFont = False
        Font.Color = clMaroon
      end
      object UniDateTimePicker2: TUniDateTimePicker
        Left = 16
        Top = 250
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
        ParentFont = False
        Font.Color = clBlack
      end
      object UniEdit2: TUniEdit
        Left = 16
        Top = 81
        Width = 121
        Height = 20
        Hint = ''
        Text = 'UniEdit2'
        ParentFont = False
        Font.Color = clBlue
        Anchors = []
        TabOrder = 1
      end
      object UniFormattedNumberEdit1: TUniFormattedNumberEdit
        Left = 16
        Top = 277
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
    Left = 225
    Top = 360
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 256
  end
end
