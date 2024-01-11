object UniFormControlsFieldSet: TUniFormControlsFieldSet
  Left = 0
  Top = 0
  Width = 608
  Height = 327
  TabOrder = 0
  object UniContainerPanel2: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 608
    Height = 327
    Hint = ''
    ParentColor = False
    Align = alClient
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Anchors = [akRight, akBottom]
    TabOrder = 0
    Layout = 'fit'
    DesignSize = (
      608
      327)
    object UniContainerPanel1: TUniContainerPanel
      Left = 0
      Top = 3
      Width = 601
      Height = 320
      Hint = ''
      ParentColor = False
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Anchors = []
      TabOrder = 1
      Layout = 'hbox'
      LayoutAttribs.Padding = '25'
      LayoutConfig.BodyPadding = '25'
      object UniFieldSet1: TUniFieldSet
        Left = 8
        Top = 8
        Width = 273
        Height = 209
        Hint = ''
        Title = 'Personal Information'
        LayoutConfig.Flex = 1
        TabOrder = 1
        object UniEdit1: TUniEdit
          Left = 40
          Top = 24
          Width = 121
          Hint = ''
          Text = 'Jane'
          TabOrder = 1
          ReadOnly = True
          FieldLabel = 'Name'
        end
        object UniEdit2: TUniEdit
          Left = 40
          Top = 52
          Width = 121
          Hint = ''
          Text = 'Doe'
          TabOrder = 2
          ReadOnly = True
          FieldLabel = 'Lastname'
        end
        object UniComboBox1: TUniComboBox
          Left = 40
          Top = 80
          Width = 145
          Hint = ''
          Text = 'UniComboBox1'
          Items.Strings = (
            'Female'
            'Male')
          ItemIndex = 0
          TabOrder = 3
          FieldLabel = 'Gender'
        end
      end
      object UniFieldSet2: TUniFieldSet
        Left = 271
        Top = 8
        Width = 330
        Height = 289
        Hint = ''
        Title = 'Job Information'
        Collapsible = True
        LayoutConfig.Flex = 1
        TabOrder = 2
        object UniEdit3: TUniEdit
          Left = 24
          Top = 24
          Width = 121
          Hint = ''
          Text = 'Teacher'
          TabOrder = 1
          ReadOnly = True
          FieldLabel = 'Job'
        end
        object UniCheckBox1: TUniCheckBox
          Left = 24
          Top = 52
          Width = 97
          Height = 17
          Hint = ''
          Checked = True
          Caption = 'Active'
          TabOrder = 2
          ParentColor = False
          FieldLabel = 'Statu'
        end
        object UniNumberEdit1: TUniNumberEdit
          Left = 24
          Top = 88
          Width = 121
          Hint = ''
          TabOrder = 4
          ReadOnly = True
          Value = 15.000000000000000000
          DecimalSeparator = ','
        end
        object UniLabel1: TUniLabel
          Left = 88
          Top = 120
          Width = 102
          Height = 13
          Hint = ''
          Caption = 'Active Working Years'
          TabOrder = 3
        end
        object UniDateTimePicker1: TUniDateTimePicker
          Left = 24
          Top = 139
          Width = 120
          Hint = ''
          DateTime = 36783.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          ReadOnly = True
          TabOrder = 5
          FieldLabel = 'Starting Year'
        end
        object UniDateTimePicker2: TUniDateTimePicker
          Left = 24
          Top = 163
          Width = 120
          Hint = ''
          DateTime = 49566.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          ReadOnly = True
          TabOrder = 6
          FieldLabel = 'Retirement Year'
        end
      end
    end
  end
end
