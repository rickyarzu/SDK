object UniTabPanelTabPanel: TUniTabPanelTabPanel
  Left = 0
  Top = 0
  Width = 329
  Height = 449
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 329
    Height = 449
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    ExplicitWidth = 320
    ExplicitHeight = 240
    DesignSize = (
      329
      449)
    object UnimTabPanel1: TUnimTabPanel
      Left = 16
      Top = 16
      Width = 298
      Height = 402
      Hint = ''
      ActivePage = UnimTabSheet1
      Anchors = [akLeft, akTop, akRight, akBottom]
      ExplicitWidth = 289
      ExplicitHeight = 193
      object UnimTabSheet1: TUnimTabSheet
        Left = 4
        Top = 51
        Width = 290
        Height = 347
        Hint = ''
        Caption = 'Tab1'
        ExplicitWidth = 281
        ExplicitHeight = 138
        object UnimPanel3: TUnimPanel
          Left = 0
          Top = 0
          Width = 290
          Height = 347
          Hint = ''
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clWhite
          BorderStyle = ubsSingle
          ExplicitWidth = 281
          ExplicitHeight = 138
          object UnimDatePicker1: TUnimDatePicker
            Left = 24
            Top = 32
            Width = 225
            Height = 47
            Hint = ''
            DateFormat = 'dd/MM/yyyy'
            Date = 42139.000000000000000000
          end
        end
      end
      object UnimTabSheet2: TUnimTabSheet
        Left = 4
        Top = 51
        Width = 290
        Height = 347
        Hint = ''
        Caption = 'Tab2'
        ExplicitWidth = 281
        ExplicitHeight = 138
        object UnimPanel2: TUnimPanel
          Left = 0
          Top = 0
          Width = 290
          Height = 347
          Hint = ''
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clWhite
          BorderStyle = ubsSingle
          ExplicitWidth = 281
          ExplicitHeight = 138
          object UnimToggle1: TUnimToggle
            Left = 24
            Top = 24
            Width = 225
            Height = 64
            Hint = ''
          end
        end
      end
      object UnimTabSheet3: TUnimTabSheet
        Left = 4
        Top = 51
        Width = 290
        Height = 347
        Hint = ''
        Caption = 'Tab3'
        ExplicitWidth = 281
        ExplicitHeight = 138
        object UnimPanel1: TUnimPanel
          Left = 0
          Top = 0
          Width = 290
          Height = 347
          Hint = ''
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clWhite
          BorderStyle = ubsSingle
          ExplicitWidth = 281
          ExplicitHeight = 138
          object UnimLabel1: TUnimLabel
            Left = 56
            Top = 48
            Width = 225
            Height = 23
            Hint = ''
            AutoSize = False
            Caption = 'UnimLabel1'
          end
        end
      end
    end
  end
end
