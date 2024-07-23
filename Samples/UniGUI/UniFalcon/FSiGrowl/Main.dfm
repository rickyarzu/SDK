object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 641
  ClientWidth = 1000
  Caption = 'MainForm'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Layout = 'fit'
  OnAjaxEvent = UniFormAjaxEvent
  TextHeight = 13
  object pgcMaster: TUniPageControl
    Left = 0
    Top = 0
    Width = 1000
    Height = 641
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
  end
end
