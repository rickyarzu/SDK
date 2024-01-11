object UniMiscellaneousPDFViewer: TUniMiscellaneousPDFViewer
  Left = 0
  Top = 0
  Width = 643
  Height = 550
  OnCreate = UniFrameCreate
  Layout = 'fit'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 643
    Height = 550
    Hint = ''
    TabOrder = 0
    Caption = 'UniPanel1'
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Layout = 'border'
    object UniPanel2: TUniPanel
      Left = 16
      Top = 16
      Width = 201
      Height = 433
      Hint = ''
      CreateOrder = 1
      TabOrder = 1
      TitleVisible = True
      TitleAlign = taCenter
      Title = 'PDF List'
      Caption = 'UniPanel2'
      Collapsible = True
      Layout = 'fit'
      LayoutConfig.Split = True
      LayoutConfig.Region = 'west'
      object UniButton1: TUniButton
        Left = 1
        Top = 1
        Width = 199
        Height = 25
        Hint = ''
        CreateOrder = 3
        Caption = 'Open PDF in a New Form'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        TabOrder = 1
        OnClick = UniButton1Click
      end
      object UniListBox1: TUniListBox
        Left = 1
        Top = 25
        Width = 199
        Height = 408
        Hint = ''
        CreateOrder = 4
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        OnChange = UniListBox1Change
      end
    end
    object UniURLFrame1: TUniURLFrame
      Left = 256
      Top = 56
      Width = 320
      Height = 240
      Hint = ''
      CreateOrder = 2
      LayoutConfig.Region = 'center'
      TabOrder = 2
      ParentColor = False
      Color = clBtnFace
    end
  end
end
