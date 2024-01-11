object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 433
  ClientWidth = 320
  Caption = 'MainmForm'
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 433
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBtnFace
    AlignmentControl = uniAlignmentClient
    object UnimContainerPanel2: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 320
      Height = 137
      Hint = ''
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
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
        Width = 159
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
      Width = 320
      Height = 296
      Hint = ''
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clBtnFace
      Flex = 1
      object UnimPanel3: TUnimPanel
        Left = 0
        Top = 0
        Width = 320
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
        Width = 320
        Height = 168
        Hint = ''
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = 16744448
        Flex = 2
        object UnimToolBar1: TUnimToolBar
          Left = 0
          Top = 120
          Width = 320
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
            UI = 'normal'
            Flex = 1
          end
          object UnimToolButton2: TUnimToolButton
            Left = 48
            Top = 0
            Width = 48
            Height = 48
            Hint = ''
            Caption = 'Flex 1'
            UI = 'normal'
            Flex = 1
          end
          object UnimToolButton3: TUnimToolButton
            Left = 96
            Top = 0
            Width = 48
            Height = 48
            Hint = ''
            Caption = 'Flex 2'
            UI = 'normal'
            Flex = 2
          end
          object UnimToolButton4: TUnimToolButton
            Left = 144
            Top = 0
            Width = 48
            Height = 48
            Hint = ''
            Caption = 'Flex 3'
            UI = 'normal'
            Flex = 3
          end
          object UnimToolButton5: TUnimToolButton
            Left = 192
            Top = 0
            Width = 48
            Height = 48
            Hint = ''
            Caption = 'Flex 1'
            UI = 'normal'
            Flex = 1
          end
        end
      end
    end
  end
end
