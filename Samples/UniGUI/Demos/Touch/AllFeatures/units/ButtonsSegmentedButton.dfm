object UniButtonsSegmentedButton: TUniButtonsSegmentedButton
  Left = 0
  Top = 0
  Width = 435
  Height = 327
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 327
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    ExplicitHeight = 320
    object UnimSegmentedButton1: TUnimSegmentedButton
      Left = 3
      Top = 16
      Width = 429
      Height = 47
      Hint = ''
      Items = <
        item
          Caption = 'Segment1'
          ButtonId = 0
          Pressed = True
        end
        item
          Caption = 'Segment2'
          ButtonId = 1
        end
        item
          Caption = 'Segment3'
          ButtonId = 2
        end>
    end
    object UnimPanel1: TUnimContainerPanel
      Left = 80
      Top = 69
      Width = 256
      Height = 29
      Hint = ''
    end
    object UnimSegmentedButton2: TUnimSegmentedButton
      Left = 3
      Top = 104
      Width = 429
      Height = 47
      Hint = ''
      Items = <
        item
          Caption = 'Segment1'
          ButtonId = 1
          IconCls = 'home'
          UI = 'confirm'
        end
        item
          Caption = 'Segment2'
          ButtonId = 2
          IconCls = 'organize'
          UI = 'round'
        end>
    end
  end
end
