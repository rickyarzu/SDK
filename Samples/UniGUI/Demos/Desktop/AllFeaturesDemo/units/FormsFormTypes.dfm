object UniFormsFormTypes: TUniFormsFormTypes
  Left = 0
  Top = 0
  Width = 530
  Height = 451
  TabStop = True
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    530
    451)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 530
    Height = 448
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniGroupBox1: TUniGroupBox
      Left = 35
      Top = 48
      Width = 225
      Height = 169
      Hint = ''
      Caption = 'BorderStyle'
      ParentColor = False
      TabOrder = 0
      object UniButton1: TUniButton
        Left = 32
        Top = 24
        Width = 155
        Height = 25
        Hint = ''
        Caption = 'DialogForm'
        TabOrder = 1
        OnClick = UniButton1Click
      end
      object UniButton2: TUniButton
        Left = 32
        Top = 55
        Width = 155
        Height = 25
        Hint = ''
        Caption = 'Borderless Form'
        TabOrder = 2
        OnClick = UniButton2Click
      end
      object UniButton3: TUniButton
        Left = 32
        Top = 86
        Width = 155
        Height = 25
        Hint = ''
        Caption = 'Single Border Form'
        TabOrder = 3
        OnClick = UniButton3Click
      end
      object UniButton4: TUniButton
        Left = 32
        Top = 117
        Width = 155
        Height = 25
        Hint = ''
        Caption = 'Sizeable Form'
        TabOrder = 4
        OnClick = UniButton4Click
      end
    end
    object UniGroupBox2: TUniGroupBox
      Left = 287
      Top = 48
      Width = 225
      Height = 169
      Hint = ''
      Caption = 'Border Icon'
      ParentColor = False
      TabOrder = 1
      object UniButton5: TUniButton
        Left = 32
        Top = 55
        Width = 155
        Height = 25
        Hint = ''
        Caption = 'All Border Icons'
        TabOrder = 1
        OnClick = UniButton5Click
      end
      object UniButton6: TUniButton
        Left = 32
        Top = 86
        Width = 155
        Height = 25
        Hint = ''
        Caption = 'Only Close Icon'
        TabOrder = 2
        OnClick = UniButton6Click
      end
    end
    object UniGroupBox3: TUniGroupBox
      Left = 160
      Top = 264
      Width = 225
      Height = 121
      Hint = ''
      Caption = 'Show Method'
      ParentColor = False
      TabOrder = 2
      object UniButton9: TUniButton
        Left = 32
        Top = 35
        Width = 155
        Height = 25
        Hint = ''
        Caption = 'Open Form (NonModal)'
        TabOrder = 1
        OnClick = UniButton9Click
      end
      object UniButton10: TUniButton
        Left = 32
        Top = 66
        Width = 155
        Height = 25
        Hint = ''
        Caption = 'Open Form (Modal)'
        TabOrder = 2
        OnClick = UniButton10Click
      end
    end
  end
end
