object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 365
  ClientWidth = 701
  Caption = 'MainForm'
  WindowState = wsMaximized
  OldCreateOrder = False
  Menu = UniMainMenu1
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  Layout = 'hbox'
  OnBeforeShow = UniFormBeforeShow
  PixelsPerInch = 96
  TextHeight = 13
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 346
    Width = 701
    Height = 19
    Hint = ''
    Panels = <
      item
        Width = 50
      end>
    SizeGrip = False
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    ParentColor = False
    Color = clWindow
    ExplicitTop = 363
    ExplicitWidth = 700
  end
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 346
    Hint = ''
    ParentColor = False
    Align = alLeft
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 0
    Layout = 'fit'
    LayoutConfig.Height = '100%'
    LayoutConfig.Width = '25%'
    LayoutConfig.DockWhenAligned = False
    ExplicitHeight = 363
  end
  object UniContainerPanel3: TUniContainerPanel
    Left = 185
    Top = 0
    Width = 297
    Height = 346
    Hint = ''
    ParentColor = False
    Align = alClient
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    Layout = 'border'
    LayoutConfig.Height = '100%'
    LayoutConfig.Width = '50%'
    LayoutConfig.DockWhenAligned = False
    ExplicitWidth = 296
    ExplicitHeight = 363
    object UniContainerPanel4: TUniContainerPanel
      Left = 0
      Top = 0
      Width = 297
      Height = 88
      Hint = ''
      ParentColor = False
      Align = alTop
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      Layout = 'fit'
      LayoutConfig.Height = '25%'
      LayoutConfig.Region = 'north'
      ExplicitWidth = 296
    end
    object UniContainerPanel5: TUniContainerPanel
      Left = 0
      Top = 88
      Width = 297
      Height = 167
      Hint = ''
      ParentColor = False
      Align = alClient
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      Layout = 'fit'
      LayoutConfig.Region = 'center'
      ExplicitWidth = 296
      ExplicitHeight = 184
    end
    object UniContainerPanel6: TUniContainerPanel
      Left = 0
      Top = 255
      Width = 297
      Height = 91
      Hint = ''
      ParentColor = False
      Align = alBottom
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 3
      Layout = 'fit'
      LayoutConfig.Height = '25%'
      LayoutConfig.Region = 'south'
      ExplicitTop = 272
      ExplicitWidth = 296
    end
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 482
    Top = 0
    Width = 219
    Height = 346
    Hint = ''
    ParentColor = False
    Align = alRight
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 1
    Layout = 'fit'
    LayoutConfig.Height = '100%'
    LayoutConfig.Width = '25%'
    LayoutConfig.DockWhenAligned = False
    ExplicitLeft = 481
    ExplicitHeight = 363
  end
  object UniMainMenu1: TUniMainMenu
    Left = 258
    Top = 25
    object ChangeColor1: TUniMenuItem
      Caption = 'ChangeColor'
      object UniForm11: TUniMenuItem
        Caption = 'UniForm1'
        OnClick = UniForm11Click
      end
      object UniForm21: TUniMenuItem
        Caption = 'UniForm2'
        OnClick = UniForm21Click
      end
      object UniForm31: TUniMenuItem
        Caption = 'UniForm3'
        OnClick = UniForm31Click
      end
      object UniForm41: TUniMenuItem
        Caption = 'UniForm4'
        OnClick = UniForm41Click
      end
      object UniForm51: TUniMenuItem
        Caption = 'UniForm5'
        OnClick = UniForm51Click
      end
    end
  end
end
