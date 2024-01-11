object UniPanelsMobilePanel: TUniPanelsMobilePanel
  Left = 0
  Top = 0
  Width = 451
  Height = 470
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  TabOrder = 0
  ExplicitHeight = 305
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 470
    Hint = ''
    Align = alClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    ExplicitHeight = 305
    DesignSize = (
      451
      470)
    object UnimPanel1: TUnimPanel
      Left = 40
      Top = 15
      Width = 336
      Height = 143
      Hint = ''
      Anchors = []
      Color = clGradientActiveCaption
      BorderStyle = ubsSolid
      ExplicitTop = -15
      object UnimCheckBox1: TUnimCheckBox
        Left = 24
        Top = 24
        Width = 153
        Height = 47
        Hint = ''
        FieldLabel = 'CheckBox1'
        Caption = 'CheckBox1'
      end
      object UnimCheckBox2: TUnimCheckBox
        Left = 144
        Top = 78
        Width = 153
        Height = 47
        Hint = ''
        FieldLabel = 'CheckBox2'
        Caption = 'CheckBox2'
      end
    end
    object UnimPanel3: TUnimPanel
      Left = 56
      Top = 157
      Width = 320
      Height = 297
      Hint = ''
      Anchors = []
      Color = clHotLight
      BorderStyle = ubsSolid
      ExplicitTop = 50
    end
  end
end
