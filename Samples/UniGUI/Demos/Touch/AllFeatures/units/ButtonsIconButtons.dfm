object UniButtonsIconButtons: TUniButtonsIconButtons
  Left = 0
  Top = 0
  Width = 343
  Height = 444
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 343
    Height = 444
    Hint = ''
    Align = alClient
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    object UnimToolBar1: TUnimToolBar
      Left = 0
      Top = 0
      Width = 343
      Height = 48
      Hint = ''
      Caption = ''
      object UnimToolButton1: TUnimToolButton
        Left = 0
        Top = 0
        Width = 48
        Height = 48
        Hint = ''
        Caption = 'UnimToolButton1'
        IconCls = 'action'
      end
      object UnimToolButton2: TUnimToolButton
        Left = 48
        Top = 0
        Width = 48
        Height = 48
        Hint = ''
        Caption = 'UnimToolButton2'
        IconCls = 'delete'
      end
      object UnimToolButton3: TUnimToolButton
        Left = 96
        Top = 0
        Width = 48
        Height = 48
        Hint = ''
        Caption = 'UnimToolButton3'
        IconCls = 'settings'
      end
      object UnimToolButton4: TUnimToolButton
        Left = 144
        Top = 0
        Width = 8
        Height = 48
        Hint = ''
        Style = tbsSeparator
        Caption = 'UnimToolButton4'
      end
      object UnimToolButton5: TUnimToolButton
        Left = 152
        Top = 0
        Width = 48
        Height = 48
        Hint = ''
        Caption = 'UnimToolButton5'
        IconCls = 'reply'
      end
      object UnimToolButton6: TUnimToolButton
        Left = 200
        Top = 0
        Width = 48
        Height = 48
        Hint = ''
        Caption = 'UnimToolButton6'
        IconCls = 'team'
      end
    end
    object UnimSegmentedButton1: TUnimSegmentedButton
      Left = 0
      Top = 48
      Width = 343
      Height = 47
      Hint = ''
      Items = <
        item
          ButtonId = 0
          IconCls = 'maps'
        end
        item
          ButtonId = 1
          Pressed = True
          IconCls = 'favorites'
        end
        item
          ButtonId = 2
          IconCls = 'refresh'
        end>
      Align = alTop
      ExplicitLeft = 3
      ExplicitTop = 64
      ExplicitWidth = 337
    end
    object UnimButton27: TUnimButton
      Left = 0
      Top = 95
      Width = 343
      Height = 47
      Hint = ''
      Align = alTop
      Caption = 'UnimButton1'
      ClientEvents.ExtEvents.Strings = (
        
          'tap=function tap(sender, e, eOpts)'#13#10'{'#13#10'  window.open("https://ww' +
          'w.ergomercator.com", "_blank")'#13#10'}')
      IconCls = 'trash'
      ExplicitLeft = 3
      ExplicitTop = 192
      ExplicitWidth = 337
    end
    object UnimButton28: TUnimButton
      Left = 0
      Top = 142
      Width = 343
      Height = 47
      Hint = ''
      Align = alTop
      Caption = 'UnimButton2'
      IconCls = 'more'
      OnClick = UnimButton28Click
      ExplicitLeft = 3
      ExplicitTop = 285
      ExplicitWidth = 337
    end
  end
end
