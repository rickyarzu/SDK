object UniButtonsUIConfirmationButtons: TUniButtonsUIConfirmationButtons
  Left = 0
  Top = 0
  Width = 314
  Height = 434
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 314
    Height = 434
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    ExplicitHeight = 432
    DesignSize = (
      314
      434)
    object UnimPanel3: TUnimPanel
      Left = 24
      Top = 22
      Width = 256
      Height = 382
      Hint = ''
      Anchors = []
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      BorderStyle = ubsSolid
      ExplicitTop = 21
      object UnimLabel2: TUnimLabel
        Left = 28
        Top = 16
        Width = 225
        Height = 23
        Hint = ''
        AutoSize = False
        Caption = 'Confirmation '
      end
      object UnimButton4: TUnimButton
        Left = 15
        Top = 90
        Width = 225
        Height = 47
        Hint = ''
        Caption = 'Action Button'
        UI = 'action'
      end
      object UnimPanel4: TUnimContainerPanel
        Left = 32
        Top = 160
        Width = 190
        Height = 20
        Hint = ''
      end
      object UnimButton6: TUnimButton
        Left = 15
        Top = 196
        Width = 225
        Height = 47
        Hint = ''
        Caption = 'Decline Button'
        UI = 'decline'
      end
      object UnimPanel5: TUnimContainerPanel
        Left = 16
        Top = 271
        Width = 224
        Height = 20
        Hint = ''
      end
      object UnimButton7: TUnimButton
        Left = 15
        Top = 297
        Width = 225
        Height = 47
        Hint = ''
        Caption = 'Confirm Button'
        UI = 'confirm'
      end
    end
  end
end
