object mEventEditForm: TmEventEditForm
  Left = 0
  Top = 0
  ClientHeight = 592
  ClientWidth = 568
  Caption = 'Add/Edit Event'
  AutoHeight = False
  Scrollable = True
  TitleDocked = True
  TitleButtons = <>
  OnCreate = UnimFormCreate
  OnClose = UnimFormClose
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 847
  PlatformData = {}
  object UnimFieldSet1: TUnimFieldSet
    Left = 0
    Top = 0
    Width = 568
    Height = 800
    Hint = ''
    Align = alClient
    ExplicitWidth = 585
    ExplicitHeight = 592
    object UnimSelect1: TUnimSelect
      Left = 24
      Top = 24
      Width = 225
      Height = 47
      Hint = ''
      FieldLabel = 'Calendar Id'
      Flex = 1
      TabOrder = 3
    end
    object UnimEdit1: TUnimEdit
      Left = 24
      Top = 88
      Width = 225
      Height = 47
      Hint = ''
      Text = 'UnimEdit1'
      FieldLabel = 'Title'
      ParentFont = False
      Flex = 1
      TabOrder = 2
    end
    object UnimEdit2: TUnimEdit
      Left = 25
      Top = 152
      Width = 225
      Height = 47
      Hint = ''
      Text = 'UnimEdit2'
      FieldLabel = 'Reminder'
      ParentFont = False
      Flex = 1
      TabOrder = 1
    end
    object UnimFieldContainer1: TUnimFieldContainer
      Left = 24
      Top = 221
      Width = 481
      Height = 73
      Hint = ''
      ParentColor = False
      FieldLabel = 'Start'
      object UnimDatePicker1: TUnimDatePicker
        Left = 1
        Top = 11
        Width = 225
        Height = 47
        Hint = ''
        Flex = 1
        DateFormat = 'dd/MM/yyyy'
        Date = 43616.000000000000000000
      end
      object UnimTimePicker1: TUnimTimePicker
        Left = 239
        Top = 11
        Width = 225
        Height = 47
        Hint = ''
        Flex = 1
        Time = 0.571009155093634000
      end
    end
    object UnimFieldContainer2: TUnimFieldContainer
      Left = 24
      Top = 309
      Width = 481
      Height = 73
      Hint = ''
      ParentColor = False
      FieldLabel = 'Stop'
      object UnimDatePicker2: TUnimDatePicker
        Left = 1
        Top = 11
        Width = 225
        Height = 47
        Hint = ''
        Flex = 1
        DateFormat = 'dd/MM/yyyy'
        Date = 43616.000000000000000000
      end
      object UnimTimePicker2: TUnimTimePicker
        Left = 239
        Top = 11
        Width = 225
        Height = 47
        Hint = ''
        Flex = 1
        Time = 0.571009155093634000
      end
    end
    object UnimCheckBox1: TUnimCheckBox
      Left = 25
      Top = 388
      Width = 225
      Height = 47
      Hint = ''
      FieldLabel = 'All Day'
      FieldLabelWidth = 50
      Caption = 'All Day'
    end
    object UnimCheckBox2: TUnimCheckBox
      Left = 224
      Top = 408
      Width = 225
      Height = 47
      Hint = ''
      FieldLabel = 'Delete this event'
      FieldLabelWidth = 50
      Caption = 'Delete this event'
    end
    object UnimFieldContainer3: TUnimFieldContainer
      Left = 3
      Top = 461
      Width = 489
      Height = 84
      Hint = ''
      ParentColor = False
      Layout = 'hbox'
      object UnimButton2: TUnimButton
        Left = 10
        Top = 14
        Width = 225
        Height = 47
        Hint = ''
        Caption = 'Cancel'
        ModalResult = 2
        UI = 'decline'
        Flex = 1
      end
      object UnimButton1: TUnimButton
        Left = 237
        Top = 14
        Width = 225
        Height = 47
        Hint = ''
        Caption = 'OK'
        ModalResult = 1
        UI = 'confirm'
        Flex = 1
      end
    end
  end
end
