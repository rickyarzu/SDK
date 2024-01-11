object UniLayoutManagementFormLayout: TUniLayoutManagementFormLayout
  Left = 0
  Top = 0
  Width = 661
  Height = 513
  Layout = 'fit'
  LayoutConfig.BodyPadding = '25'
  LayoutAttribs.Padding = '25'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 661
    Height = 513
    Hint = ''
    ParentColor = False
    Align = alClient
    Anchors = []
    TabOrder = 0
    Layout = 'fit'
    object UniPanel1: TUniPanel
      Left = 0
      Top = 3
      Width = 657
      Height = 444
      Hint = ''
      TabOrder = 1
      TitleVisible = True
      Title = 'Form'
      Caption = ''
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Layout = 'form'
      LayoutConfig.Flex = 4
      LayoutConfig.BodyPadding = '25'
      LayoutConfig.Width = '100%'
      object UniEdit1: TUniEdit
        Left = 16
        Top = 3
        Width = 121
        Hint = ''
        CreateOrder = 1
        Text = ''
        TabOrder = 1
        EmptyText = 'First Name'
        FieldLabel = 'First Name'
      end
      object UniEdit2: TUniEdit
        Left = 16
        Top = 31
        Width = 121
        Hint = ''
        CreateOrder = 2
        Text = ''
        TabOrder = 2
        EmptyText = 'Last Name'
        FieldLabel = 'Last Name'
      end
      object UniEdit3: TUniEdit
        Left = 48
        Top = 59
        Width = 121
        Hint = ''
        CreateOrder = 3
        Text = ''
        TabOrder = 3
        EmptyText = 'Age'
        FieldLabel = 'Age'
      end
      object UniHTMLMemo1: TUniHTMLMemo
        Left = 16
        Top = 96
        Width = 638
        Height = 329
        Hint = ''
        Lines.Strings = (
          'UniHTMLMemo1')
        Color = clWindow
        TabOrder = 4
      end
    end
    object UniContainerPanel2: TUniContainerPanel
      Left = 3
      Top = 450
      Width = 256
      Height = 57
      Hint = ''
      ParentColor = False
      TabOrder = 2
      LayoutConfig.Flex = 1
      object UniButton1: TUniButton
        Left = 22
        Top = 3
        Width = 75
        Height = 25
        Hint = ''
        Caption = 'Send'
        TabOrder = 1
      end
      object UniButton2: TUniButton
        Left = 124
        Top = 3
        Width = 75
        Height = 25
        Hint = ''
        Caption = 'Clear'
        TabOrder = 2
      end
    end
  end
end
