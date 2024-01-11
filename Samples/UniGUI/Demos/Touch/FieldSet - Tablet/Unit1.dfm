object UnimForm1: TUnimForm1
  Left = 0
  Top = 0
  ClientHeight = 512
  ClientWidth = 563
  Caption = 'FieldSet Form'
  AutoHeight = False
  Scrollable = True
  FullScreen = False
  TitleDocked = True
  TitleButtons = <>
  OnCreate = UnimFormCreate
  DesignSize = (
    563
    512)
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 188
  ScrollHeight = 747
  PlatformData = {}
  object UnimFieldSet2: TUnimFieldSet
    Left = 8
    Top = 179
    Width = 545
    Height = 198
    Hint = ''
    Visible = False
    Instructions = 'Spouse Info'
    Anchors = [akLeft, akTop, akRight]
    object UnimEdit3: TUnimEdit
      Left = 0
      Top = 0
      Width = 545
      Height = 38
      Hint = ''
      Align = alTop
      Text = 'Jane'
      FieldLabel = 'Name:'
      ParentFont = False
      TabOrder = 1
    end
    object UnimDatePicker2: TUnimDatePicker
      Left = 0
      Top = 38
      Width = 545
      Height = 38
      Hint = ''
      Align = alTop
      FieldLabel = 'Birthday Date:'
      DateFormat = 'dd/MM/yyyy'
      Date = 31041.000000000000000000
    end
  end
  object UnimFieldSet1: TUnimFieldSet
    Left = 8
    Top = -180
    Width = 545
    Height = 321
    Hint = ''
    Title = 'Personel Informations'
    Instructions = 'This Fieldset holds Personel Information '
    Anchors = [akLeft, akTop, akRight]
    object UnimEdit2: TUnimEdit
      Left = 0
      Top = 0
      Width = 545
      Height = 38
      Hint = ''
      Align = alTop
      Text = 'Doe'
      FieldLabel = 'Lastname:'
      ParentFont = False
      TabOrder = 1
    end
    object UnimEdit1: TUnimEdit
      Left = 0
      Top = 38
      Width = 545
      Height = 38
      Hint = ''
      Align = alTop
      Text = 'John'
      FieldLabel = 'Name:'
      ParentFont = False
      TabOrder = 2
    end
    object UnimSelect1: TUnimSelect
      Left = 0
      Top = 76
      Width = 545
      Height = 38
      Hint = ''
      Align = alTop
      Items.Strings = (
        'Single'
        'Married'
        'Divorced')
      ItemIndex = 1
      FieldLabel = 'Marital Status:'
      TabOrder = 3
      OnChange = UnimSelect1Change
    end
    object UnimDatePicker1: TUnimDatePicker
      Left = 0
      Top = 114
      Width = 545
      Height = 38
      Hint = ''
      Align = alTop
      FieldLabel = 'Birthday Date:'
      DateFormat = 'dd/MM/yyyy'
      Date = 26041.000000000000000000
    end
    object UnimSpinner2: TUnimSpinner
      Left = 0
      Top = 152
      Width = 545
      Height = 35
      Hint = ''
      Align = alTop
      Value = 185.000000000000000000
      Step = 1.000000000000000000
      ParentFont = False
      TabOrder = 5
      OnChange = UnimSpinner2Change
    end
    object UnimSpinner1: TUnimSpinner
      Left = 0
      Top = 187
      Width = 545
      Height = 38
      Hint = ''
      Align = alTop
      Value = 73.000000000000000000
      Step = 1.000000000000000000
      FieldLabel = 'Weight (kg):'
      ParentFont = False
      TabOrder = 6
    end
  end
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 459
    Width = 563
    Height = 53
    Hint = ''
    Align = alBottom
    ExplicitLeft = 8
    DesignSize = (
      563
      53)
    object UnimButton1: TUnimButton
      Left = 8
      Top = 3
      Width = 125
      Height = 47
      Hint = ''
      Caption = 'Cancel'
      UI = 'decline'
      OnClick = UnimButton1Click
    end
    object UnimButton2: TUnimButton
      Left = 428
      Top = 3
      Width = 125
      Height = 47
      Hint = ''
      Anchors = [akTop, akRight]
      Caption = 'Ok'
      UI = 'confirm'
      ScreenMask.Enabled = True
      OnClick = UnimButton2Click
    end
  end
end
