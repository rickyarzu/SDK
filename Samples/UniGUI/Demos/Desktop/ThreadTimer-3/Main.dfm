object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 499
  ClientWidth = 853
  Caption = 'MainForm'
  OnResize = UniFormResize
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  inline UniFrame11: TUniFrame1
    Left = 0
    Top = 0
    Width = 425
    Height = 499
    Align = alLeft
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 0
    ParentRTL = False
    ExplicitWidth = 425
    ExplicitHeight = 499
    inherited UniButton1: TUniButton
      ScreenMask.Target = UniFrame11
    end
    inherited UniChart1: TUniChart
      Top = 155
      Width = 425
      Height = 344
      ExplicitTop = 155
      ExplicitWidth = 425
      ExplicitHeight = 344
    end
  end
  inline UniFrame12: TUniFrame1
    Left = 428
    Top = 0
    Width = 425
    Height = 499
    Align = alRight
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 1
    ParentRTL = False
    ExplicitLeft = 428
    ExplicitWidth = 425
    ExplicitHeight = 499
    inherited UniButton1: TUniButton
      ScreenMask.Target = UniFrame12
    end
    inherited UniChart1: TUniChart
      Top = 155
      Width = 425
      Height = 344
      ExplicitTop = 155
      ExplicitWidth = 425
      ExplicitHeight = 344
    end
  end
end
