object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 577
  ClientWidth = 801
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  DesignSize = (
    801
    577)
  PixelsPerInch = 96
  TextHeight = 13
  object UniPageControl1: TUniPageControl
    Left = 24
    Top = 40
    Width = 745
    Height = 513
    Hint = ''
    ActivePage = UniTabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'UniTabSheet1'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 745
      ExplicitHeight = 497
      object UniLabel1: TUniLabel
        Left = 128
        Top = 176
        Width = 173
        Height = 13
        Hint = ''
        Caption = 'Please select one of the TabSheets.'
        TabOrder = 0
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Closable = True
      Caption = 'UniTabSheet2'
      ScreenMask.Message = 'Please wait...'
      ShowMaskBeforeActivate = True
      OnBeforeFirstActivate = UniTabSheet2BeforeFirstActivate
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 745
      ExplicitHeight = 497
    end
    object UniTabSheet3: TUniTabSheet
      Hint = ''
      Caption = 'UniTabSheet3'
      OnBeforeActivate = UniTabSheet3BeforeActivate
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 745
      ExplicitHeight = 497
    end
    object UniTabSheet4: TUniTabSheet
      Hint = ''
      Caption = 'UniTabSheet4'
      ScreenMask.Message = 'Please wait...'
      ShowMaskBeforeActivate = True
      OnBeforeFirstActivate = UniTabSheet4BeforeFirstActivate
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 745
      ExplicitHeight = 497
    end
  end
  object UniCheckBox1: TUniCheckBox
    Left = 28
    Top = 8
    Width = 225
    Height = 17
    Hint = ''
    Caption = 'TabSheet3 can not be shown'
    TabOrder = 1
    OnClick = UniCheckBox1Click
  end
end
