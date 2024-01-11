object UniFormControlsFieldSet: TUniFormControlsFieldSet
  Left = 0
  Top = 0
  Width = 432
  Height = 563
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 432
    Height = 563
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    LayoutAttribs.Align = 'stretch'
    LayoutAttribs.Pack = 'center'
    DesignSize = (
      432
      563)
    object UnimFieldSet2: TUnimFieldSet
      Left = 8
      Top = 0
      Width = 371
      Height = 82
      Hint = ''
      Title = 'Fill here first...'
      Anchors = [akLeft, akTop, akRight, akBottom]
      object UnimEdit3: TUnimEdit
        Left = 0
        Top = 0
        Width = 371
        Height = 47
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        Text = 'UnimEdit3'
        FieldLabel = 'Rec#'
      end
      object UnimSelect2: TUnimSelect
        Left = 0
        Top = 47
        Width = 371
        Height = 47
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        Items.Strings = (
          'Dr. Oz'
          'Dr. Ziya'
          'Dr. X')
        FieldLabel = 'Doc.'
      end
    end
    object UnimFieldSet1: TUnimFieldSet
      Left = 8
      Top = 136
      Width = 371
      Height = 362
      Hint = ''
      Title = 'Patient Data'
      Instructions = 'Please fill above fields!'
      Anchors = [akLeft, akTop, akRight, akBottom]
      object UnimEdit1: TUnimEdit
        Left = 0
        Top = 0
        Width = 371
        Height = 47
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        Text = 'UnimEdit1'
        FieldLabel = 'Name'
      end
      object UnimEdit2: TUnimEdit
        Left = 0
        Top = 47
        Width = 371
        Height = 47
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        Text = 'UnimEdit2'
        FieldLabel = 'Surname'
      end
      object UnimCheckBox1: TUnimCheckBox
        Left = 0
        Top = 94
        Width = 371
        Height = 47
        Hint = ''
        FieldLabel = 'Emerg.'
        Align = alTop
        Caption = 'Emerg.'
      end
      object UnimDatePicker1: TUnimDatePicker
        Left = 0
        Top = 141
        Width = 371
        Height = 47
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        FieldLabel = 'Ent. Date'
        DateFormat = 'dd/MM/yyyy'
        Date = 42052.000000000000000000
      end
      object UnimToggle1: TUnimToggle
        Left = 0
        Top = 188
        Width = 371
        Height = 64
        Hint = ''
        FieldLabel = 'Local'
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
      end
      object UnimSelect1: TUnimSelect
        Left = 0
        Top = 252
        Width = 371
        Height = 47
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        Items.Strings = (
          'Cardio.'
          'Ortop.'
          'Ophta.'
          'Intens.')
        FieldLabel = 'Sect.'
      end
      object UnimSlider1: TUnimSlider
        Left = 0
        Top = 299
        Width = 371
        Height = 54
        Hint = ''
        FieldLabel = 'Priority'
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
      end
    end
  end
end
