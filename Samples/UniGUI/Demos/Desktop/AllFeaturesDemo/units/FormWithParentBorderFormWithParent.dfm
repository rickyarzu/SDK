object UniFormWithParentBorderFormWithParent: TUniFormWithParentBorderFormWithParent
  Left = 0
  Top = 0
  Width = 592
  Height = 500
  OnCreate = UniFrameCreate
  Layout = 'fit'
  LayoutConfig.BodyPadding = '15'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 500
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Caption = 'UniPanel1'
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Layout = 'border'
    object UniStatusBar1: TUniStatusBar
      Left = 1
      Top = 481
      Width = 590
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
    end
  end
  object UniMainMenu1: TUniMainMenu
    Left = 368
    Top = 64
    object UniForm11: TUniMenuItem
      Caption = 'UniForm1'
      object Show1: TUniMenuItem
        Caption = 'Show'
        Enabled = False
        OnClick = Show1Click
      end
      object Close1: TUniMenuItem
        Caption = 'Close'
        OnClick = Close1Click
      end
    end
    object UniForm21: TUniMenuItem
      Caption = 'UniForm2'
      object Show2: TUniMenuItem
        Caption = 'Show'
        Enabled = False
        OnClick = Show2Click
      end
      object Close2: TUniMenuItem
        Caption = 'Close'
        OnClick = Close2Click
      end
    end
    object UniForm31: TUniMenuItem
      Caption = 'UniForm3'
      object Show3: TUniMenuItem
        Caption = 'Show'
        Enabled = False
        OnClick = Show3Click
      end
      object Close3: TUniMenuItem
        Caption = 'Close'
        OnClick = Close3Click
      end
    end
    object UniForm41: TUniMenuItem
      Caption = 'UniForm4'
      object Show4: TUniMenuItem
        Caption = 'Show'
        Enabled = False
        OnClick = Show4Click
      end
      object Close4: TUniMenuItem
        Caption = 'Close'
        OnClick = Close4Click
      end
    end
    object UniForm51: TUniMenuItem
      Caption = 'UniForm5'
      object Show5: TUniMenuItem
        Caption = 'Show'
        Enabled = False
        OnClick = Show5Click
      end
      object Close5: TUniMenuItem
        Caption = 'Close'
        OnClick = Close5Click
      end
    end
  end
end
