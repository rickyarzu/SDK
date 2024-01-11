object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 514
  ClientWidth = 750
  Caption = 'MainForm'
  OnShow = UniFormShow
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Menu = UniMainMenu1
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniMainMenu1: TUniMainMenu
    Left = 160
    Top = 80
    object File1: TUniMenuItem
      Caption = 'File'
      object Exit1: TUniMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
  end
end
