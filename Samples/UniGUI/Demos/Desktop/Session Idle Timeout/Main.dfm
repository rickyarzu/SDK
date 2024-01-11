object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 299
  ClientWidth = 635
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnSessionIdle = UniFormSessionIdle
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 0
    Top = 0
    Width = 635
    Height = 105
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'This app will terminate itself after 30 seconds of inactivity'
    Align = alTop
    ParentFont = False
    Font.Height = -21
    TabOrder = 0
    LayoutConfig.Padding = '20px'
    ExplicitWidth = 473
  end
  object UniButton2: TUniButton
    Left = 216
    Top = 160
    Width = 217
    Height = 25
    Hint = ''
    Caption = 'Click to avoid idle timeout!!'
    TabOrder = 1
    OnClick = UniButton2Click
  end
end
