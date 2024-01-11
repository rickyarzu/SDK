object UniClientsideAlignmentLayoutFlex: TUniClientsideAlignmentLayoutFlex
  Left = 0
  Top = 0
  Width = 365
  Height = 583
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 365
    Height = 583
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    object UnimContainerPanel2: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 365
      Height = 137
      Hint = ''
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Layout = 'hbox'
      Flex = 1
      object UnimPanel1: TUnimPanel
        Left = 0
        Top = 0
        Width = 161
        Height = 137
        Hint = ''
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Color = 8454143
        Flex = 1
      end
      object UnimPanel2: TUnimPanel
        Left = 161
        Top = 0
        Width = 204
        Height = 137
        Hint = ''
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clRed
        Flex = 3
      end
    end
    object UnimContainerPanel3: TUnimContainerPanel
      Left = 0
      Top = 137
      Width = 365
      Height = 446
      Hint = ''
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flex = 1
      object UnimPanel3: TUnimPanel
        Left = 0
        Top = 0
        Width = 365
        Height = 128
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        Color = 8454016
        Flex = 1
      end
      object UnimPanel4: TUnimPanel
        Left = 0
        Top = 128
        Width = 365
        Height = 318
        Hint = ''
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = 16744448
        Flex = 2
        object UnimToolBar1: TUnimToolBar
          Left = 1
          Top = 270
          Width = 363
          Height = 48
          Hint = ''
          ShowTitle = False
          Align = alBottom
          Anchors = [akLeft, akRight, akBottom]
          ShowCaptions = True
          Caption = 'UnimToolBar1'
          object UnimToolButton1: TUnimToolButton
            Left = 0
            Top = 0
            Width = 48
            Height = 48
            Hint = ''
            Caption = 'Flex 1'
            Flex = 1
          end
          object UnimToolButton2: TUnimToolButton
            Left = 48
            Top = 0
            Width = 48
            Height = 48
            Hint = ''
            Caption = 'Flex 1'
            Flex = 1
          end
          object UnimToolButton3: TUnimToolButton
            Left = 96
            Top = 0
            Width = 48
            Height = 48
            Hint = ''
            Caption = 'Flex 2'
            Flex = 2
          end
          object UnimToolButton4: TUnimToolButton
            Left = 144
            Top = 0
            Width = 48
            Height = 48
            Hint = ''
            Caption = 'Flex 3'
            Flex = 3
          end
          object UnimToolButton5: TUnimToolButton
            Left = 192
            Top = 0
            Width = 48
            Height = 48
            Hint = ''
            Caption = 'Flex 1'
            Flex = 1
          end
        end
      end
    end
  end
end
