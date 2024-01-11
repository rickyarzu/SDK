object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 447
  ClientWidth = 643
  Caption = 'MainForm'
  Color = clSilver
  OldCreateOrder = False
  Script.Strings = (
    '')
  MonitoredKeys.Keys = <>
  DesignSize = (
    643
    447)
  PixelsPerInch = 96
  TextHeight = 13
  object UniMyFlashComponent1: TUniMyFlashComponent
    Left = 96
    Top = 40
    Width = 409
    Height = 329
    Url = 'files\keyframe_fishyStuff.swf'
    Anchors = [akLeft, akTop, akRight, akBottom]
    OnSuccess = UniMyFlashComponent1Success
    OnFailure = UniMyFlashComponent1Failure
  end
  object UniLabel1: TUniLabel
    Left = 96
    Top = 21
    Width = 55
    Height = 13
    Caption = 'UniLabel1'
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 1
  end
end
