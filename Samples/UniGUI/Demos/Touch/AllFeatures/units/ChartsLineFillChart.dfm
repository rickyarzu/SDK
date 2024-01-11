object UniChartsLineFillChart: TUniChartsLineFillChart
  Left = 0
  Top = 0
  Width = 320
  Height = 428
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 428
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    object UnimChart1: TUnimChart
      Left = 0
      Top = 0
      Width = 320
      Height = 381
      Hint = ''
      Legend.Alignment = uaBottom
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      object UnimLineSeries1: TUnimLineSeries
        Title = 'Divorced Couples'
        Pen.Color = clBlue
        Brush.Color = clRed
        Brush.Opacity = 0.500000000000000000
        Brush.Default = False
      end
      object UnimLineSeries2: TUnimLineSeries
        Title = 'Married Couples'
        Pen.Color = clLime
        Brush.Color = clFuchsia
        Brush.Opacity = 0.400000005960464500
        Brush.Default = False
      end
    end
    object UnimButton1: TUnimButton
      Left = 0
      Top = 381
      Width = 320
      Height = 47
      Hint = ''
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Change Values'
      OnClick = UnimButton1Click
    end
  end
end
