object UniScrollBoxScrollBox: TUniScrollBoxScrollBox
  Left = 0
  Top = 0
  Width = 628
  Height = 505
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 505
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    DesignSize = (
      628
      505)
    object UnimPanel1: TUnimPanel
      Left = 96
      Top = 240
      Width = 409
      Height = 239
      Hint = ''
      Anchors = []
      DesignSize = (
        409
        239)
      object UnimScrollBox2: TUnimScrollBox
        Left = 61
        Top = 40
        Width = 320
        Height = 177
        Hint = ''
        Anchors = []
        Color = clLime
        ScrollHeight = 632
        ScrollWidth = 283
        ScrollY = 228
        object UnimNumberEdit1: TUnimNumberEdit
          Left = 40
          Top = -188
          Width = 225
          Height = 47
          Hint = ''
        end
        object UnimBitBtn1: TUnimBitBtn
          Left = 58
          Top = 3
          Width = 225
          Height = 47
          Hint = ''
          Caption = 'UnimBitBtn1'
        end
        object UnimEdit1: TUnimEdit
          Left = 40
          Top = 357
          Width = 225
          Height = 47
          Hint = ''
          Text = 'UnimEdit1'
        end
      end
      object UnimLabel3: TUnimLabel
        Left = 61
        Top = 11
        Width = 225
        Height = 23
        Hint = ''
        AutoSize = False
        Caption = 'Vertical Scroll'
        Anchors = []
      end
    end
    object UnimPanel2: TUnimPanel
      Left = 16
      Top = 15
      Width = 593
      Height = 206
      Hint = ''
      Anchors = []
      DesignSize = (
        593
        206)
      object UnimLabel2: TUnimLabel
        Left = 208
        Top = 11
        Width = 225
        Height = 23
        Hint = ''
        AutoSize = False
        Caption = 'Horizontal Scroll'
        Anchors = []
      end
      object UnimScrollBox1: TUnimScrollBox
        Left = 80
        Top = 40
        Width = 473
        Height = 150
        Hint = ''
        Anchors = []
        Color = clHighlight
        ScrollDirection = sdHorizontal
        ScrollHeight = 119
        ScrollWidth = 1003
        object UnimButton1: TUnimButton
          Left = 368
          Top = 72
          Width = 225
          Height = 47
          Hint = ''
          Caption = 'UnimButton1'
        end
        object UnimLabel1: TUnimLabel
          Left = 11
          Top = 40
          Width = 225
          Height = 23
          Hint = ''
          AutoSize = False
          Caption = 'UnimLabel1'
        end
        object UnimSelect1: TUnimSelect
          Left = 778
          Top = 40
          Width = 225
          Height = 47
          Hint = ''
        end
      end
    end
  end
end
