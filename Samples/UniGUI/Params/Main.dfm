object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 437
  Caption = 'MainForm'
  BorderStyle = bsNone
  WindowState = wsMaximized
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Font.Height = -12
  Font.Name = 'Segoe UI'
  OnCreate = UniFormCreate
  DesignSize = (
    437
    480)
  TextHeight = 15
  object ulb1: TUniLabel
    Left = 16
    Top = 80
    Width = 413
    Height = 55
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'ClientID'
    Anchors = [akLeft, akTop, akRight]
    ParentFont = False
    Font.Height = 55
    Font.Name = 'Segoe UI'
    ParentColor = False
    Color = clBtnFace
    TabOrder = 0
  end
  object btnAccept: TUniButton
    Left = 16
    Top = 208
    Width = 413
    Height = 41
    Hint = ''
    Caption = 'Accetta richiesta'
    Anchors = [akLeft, akTop, akRight]
    ParentFont = False
    Font.Height = 35
    Font.Name = 'Segoe UI'
    TabOrder = 1
  end
end
