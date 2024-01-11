object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 557
  ClientWidth = 566
  Caption = 'uniGUI Touch Demo'
  ScreenMask.Target = Owner
  TitleButtons = <
    item
      ButtonId = 1
      Separator = True
    end
    item
      ButtonId = 0
      IconCls = 'arrow_left'
    end>
  OnTitleButtonClick = UnimFormTitleButtonClick
  OnCreate = UnimFormCreate
  OnDestroy = UnimFormDestroy
  PixelsPerInch = 96
  TextHeight = 15
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  inline UniMainFrame: TUniMainFrame
    Left = 160
    Top = 0
    Width = 406
    Height = 557
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Color = clWhite
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    ParentColor = False
    ParentBackground = False
    Background.Picture.Data = {00}
    ExplicitLeft = 150
    ExplicitWidth = 341
    ExplicitHeight = 442
    inherited UnimImage1: TUnimImage
      Width = 406
      Height = 439
      Margins.Left = 3
      Margins.Top = 3
      Margins.Right = 3
      Margins.Bottom = 3
      ExplicitWidth = 341
      ExplicitHeight = 324
    end
    inherited UnimLabel1: TUnimLabel
      Top = 439
      Width = 406
      Height = 27
      Margins.Left = 3
      Margins.Top = 3
      Margins.Right = 3
      Margins.Bottom = 3
      ExplicitTop = 324
      ExplicitWidth = 341
      ExplicitHeight = 27
    end
    inherited UnimImage2: TUnimImage
      Top = 466
      Width = 406
      Height = 91
      Margins.Left = 3
      Margins.Top = 3
      Margins.Right = 3
      Margins.Bottom = 3
      ExplicitTop = 351
      ExplicitWidth = 341
      ExplicitHeight = 91
    end
  end
  object NavList: TUnimNestedList
    Left = 0
    Top = 0
    Width = 160
    Height = 557
    Hint = ''
    Align = alLeft
    Items.FontData = {0100000000}
    Title = 'Navigator'
    ScreenMask.Enabled = True
    OnBackClick = NavListBackClick
    OnLeafClick = NavListLeafClick
    ExplicitHeight = 442
  end
end
