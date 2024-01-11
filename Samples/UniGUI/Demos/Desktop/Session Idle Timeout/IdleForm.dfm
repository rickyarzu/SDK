object UniIdleForm: TUniIdleForm
  Left = 0
  Top = 0
  ClientHeight = 113
  ClientWidth = 506
  Caption = 'Warning!'
  BorderStyle = bsDialog
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  BorderIcons = [biMinimize, biMaximize]
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 210
    Top = 80
    Width = 90
    Height = 25
    Hint = ''
    Caption = 'Continue...'
    ModalResult = 1
    ParentFont = False
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 0
  end
  object UniLabel1: TUniLabel
    Left = 0
    Top = 0
    Width = 506
    Height = 41
    Hint = ''
    Alignment = taCenter
    TextConversion = txtHTML
    AutoSize = False
    Caption = 'UniLabel1'
    Align = alTop
    TabOrder = 1
    LayoutConfig.Padding = '5px'
    ExplicitLeft = 24
    ExplicitTop = 8
    ExplicitWidth = 473
  end
  object UniTimer1: TUniTimer
    Interval = 5000
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = UniTimer1Timer
    Left = 56
    Top = 40
  end
end
