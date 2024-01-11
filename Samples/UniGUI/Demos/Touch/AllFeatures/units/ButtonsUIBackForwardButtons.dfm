object UniButtonsUIBackForwardButtons: TUniButtonsUIBackForwardButtons
  Left = 0
  Top = 0
  Width = 303
  Height = 480
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 303
    Height = 480
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    ExplicitHeight = 466
    DesignSize = (
      303
      480)
    object UnimPanel1: TUnimPanel
      Left = 26
      Top = 32
      Width = 256
      Height = 358
      Hint = ''
      Anchors = []
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      BorderStyle = ubsSolid
      ExplicitTop = 26
      object UnimLabel1: TUnimLabel
        Left = 40
        Top = 16
        Width = 225
        Height = 23
        Hint = ''
        AutoSize = False
        Caption = 'Back and Forward'
      end
      object UnimButton2: TUnimButton
        Left = 15
        Top = 80
        Width = 225
        Height = 47
        Hint = ''
        Caption = 'Back Button'
        UI = 'back'
      end
      object UnimPanel2: TUnimContainerPanel
        Left = 16
        Top = 152
        Width = 237
        Height = 48
        Hint = ''
      end
      object UnimButton5: TUnimButton
        Left = 15
        Top = 231
        Width = 225
        Height = 47
        Hint = ''
        Caption = 'Forward Button'
        UI = 'forward'
      end
    end
  end
end
