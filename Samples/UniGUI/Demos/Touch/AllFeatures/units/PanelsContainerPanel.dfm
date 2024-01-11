object UniPanelsContainerPanel: TUniPanelsContainerPanel
  Left = 0
  Top = 0
  Width = 320
  Height = 451
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 451
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    DesignSize = (
      320
      451)
    object UnimContainerPanel2: TUnimContainerPanel
      Left = 32
      Top = 16
      Width = 265
      Height = 393
      Hint = ''
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clBtnShadow
      object UnimEdit1: TUnimEdit
        Left = 20
        Top = 16
        Width = 225
        Height = 47
        Hint = ''
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        Text = 'UnimEdit1'
      end
      object UnimButton1: TUnimButton
        Left = 3
        Top = 128
        Width = 259
        Height = 47
        Hint = ''
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        Caption = 'UnimButton1'
      end
    end
  end
end
