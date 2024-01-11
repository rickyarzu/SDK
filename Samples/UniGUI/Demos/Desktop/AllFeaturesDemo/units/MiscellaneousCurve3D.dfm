object UniMiscellaneousCurve3D: TUniMiscellaneousCurve3D
  Left = 0
  Top = 0
  Width = 788
  Height = 573
  OnCreate = UniFrameCreate
  TabOrder = 0
  DesignSize = (
    788
    573)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 3
    Width = 785
    Height = 567
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object PaintBox1: TUniCanvas
      Left = 0
      Top = 0
      Width = 592
      Height = 516
      Hint = ''
      Align = alClient
      Color = clWhite
    end
    object Label9: TUniLabel
      Left = 464
      Top = 232
      Width = 3
      Height = 13
      Hint = ''
      Caption = ''
      TabOrder = 2
    end
    object UniPanel1: TUniPanel
      Left = 592
      Top = 0
      Width = 193
      Height = 516
      Hint = ''
      Align = alRight
      TabOrder = 3
      BorderStyle = ubsNone
      ShowCaption = False
      Caption = 'UniPanel1'
      DesignSize = (
        193
        516)
      object Label1: TUniLabel
        Left = 11
        Top = 3
        Width = 72
        Height = 13
        Hint = ''
        Caption = 'Grid Resolution'
        TabOrder = 1
      end
      object Label2: TUniLabel
        Left = 104
        Top = 3
        Width = 26
        Height = 13
        Hint = ''
        Caption = 'Zoo&m'
        TabOrder = 2
      end
      object Label3: TUniLabel
        Left = 15
        Top = 61
        Width = 41
        Height = 13
        Hint = ''
        Caption = 'Rotation'
        TabOrder = 3
      end
      object Label7: TUniLabel
        Left = 16
        Top = 191
        Width = 51
        Height = 13
        Hint = ''
        Caption = 'Start &Point'
        TabOrder = 4
      end
      object Button1: TUniButton
        Left = 16
        Top = 289
        Width = 90
        Height = 25
        Hint = ''
        Caption = 'Render'
        Anchors = [akLeft, akBottom]
        TabOrder = 5
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Calculating...'
        ScreenMask.Target = Owner
        OnClick = Button1Click
      end
      object Edit1: TUniSpinEdit
        Left = 15
        Top = 22
        Width = 73
        Hint = ''
        MaxValue = 240
        MinValue = 10
        TabOrder = 6
      end
      object Edit2: TUniSpinEdit
        Left = 104
        Top = 22
        Width = 73
        Hint = ''
        MaxValue = 10
        MinValue = 1
        TabOrder = 7
      end
      object Edit3: TUniSpinEdit
        Left = 16
        Top = 80
        Width = 120
        Hint = ''
        MaxValue = 90
        TabOrder = 8
        FieldLabel = 'X'
      end
      object Edit4: TUniSpinEdit
        Left = 16
        Top = 110
        Width = 120
        Hint = ''
        MaxValue = 90
        TabOrder = 9
        FieldLabel = 'Y'
      end
      object Edit5: TUniSpinEdit
        Left = 16
        Top = 140
        Width = 120
        Hint = ''
        MaxValue = 90
        TabOrder = 10
        FieldLabel = 'Z'
      end
      object Edit6: TUniSpinEdit
        Left = 16
        Top = 207
        Width = 65
        Hint = ''
        Value = 3
        MaxValue = 25
        MinValue = 1
        TabOrder = 11
      end
      object UniCheckBox1: TUniCheckBox
        Left = 16
        Top = 247
        Width = 97
        Height = 17
        Hint = ''
        Checked = True
        Caption = 'Wire Frame'
        TabOrder = 12
      end
    end
    object UniPanel2: TUniPanel
      Left = 0
      Top = 516
      Width = 785
      Height = 51
      Hint = ''
      Align = alBottom
      TabOrder = 4
      BorderStyle = ubsNone
      ShowCaption = False
      Caption = 'UniPanel2'
      object ComboBox1: TUniComboBox
        Left = 16
        Top = 17
        Width = 441
        Hint = ''
        Style = csDropDownList
        Text = 'f = sin(x)*cos(y)'
        Items.Strings = (
          'f = sin(x)*cos(y)'
          'f = (1.5-x/2)*sqr(2.25-y*y)*sqr(2.25-y*y)*sqr(sin(3.1416*x/2))'
          'f = sin(x*cos(x))*cos(y*y)')
        ItemIndex = 0
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 1
        IconItems = <>
      end
      object Label8: TUniLabel
        Left = 16
        Top = 3
        Width = 41
        Height = 13
        Hint = ''
        Caption = '&Function'
        TabOrder = 2
      end
    end
  end
end
