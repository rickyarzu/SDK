object UniButtonsUIShapeButtons: TUniButtonsUIShapeButtons
  Left = 0
  Top = 0
  Width = 321
  Height = 641
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 321
    Height = 641
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    ExplicitHeight = 644
    DesignSize = (
      321
      641)
    object UnimPanel6: TUnimPanel
      Left = 20
      Top = 24
      Width = 256
      Height = 510
      Hint = ''
      Anchors = []
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      BorderStyle = ubsSolid
      ExplicitTop = 25
      object UnimLabel3: TUnimLabel
        Left = 28
        Top = 16
        Width = 225
        Height = 23
        Hint = ''
        AutoSize = False
        Caption = 'Shape'
      end
      object UnimButton1: TUnimButton
        Left = 15
        Top = 59
        Width = 225
        Height = 47
        Hint = ''
        Caption = 'Normal Button'
        UI = 'normal'
      end
      object UnimPanel7: TUnimContainerPanel
        Left = 23
        Top = 120
        Width = 217
        Height = 30
        Hint = ''
      end
      object UnimButton3: TUnimButton
        Left = 15
        Top = 173
        Width = 225
        Height = 47
        Hint = ''
        Caption = 'Round Button'
        UI = 'round'
      end
      object UnimPanel8: TUnimContainerPanel
        Left = 15
        Top = 228
        Width = 238
        Height = 30
        Hint = ''
      end
      object UnimButton8: TUnimButton
        Left = 15
        Top = 264
        Width = 225
        Height = 47
        Hint = ''
        Caption = 'Small Button'
        UI = 'small'
      end
      object UnimPanel9: TUnimContainerPanel
        Left = 15
        Top = 335
        Width = 225
        Height = 30
        Hint = ''
      end
      object UnimButton9: TUnimButton
        Left = 15
        Top = 371
        Width = 225
        Height = 47
        Hint = ''
        Caption = 'Plain Button'
        UI = 'plain'
      end
    end
  end
end
