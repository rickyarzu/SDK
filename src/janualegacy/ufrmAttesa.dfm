object frmAttesa: TfrmAttesa
  Left = 383
  Top = 102
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Attendere Prego'
  ClientHeight = 210
  ClientWidth = 394
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ProductName: TLabel
    Left = 16
    Top = 0
    Width = 323
    Height = 36
    Caption = 'inizializzazione archivio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    IsControl = True
  end
  object Panel1: TPanel
    Left = 8
    Top = 42
    Width = 361
    Height = 160
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 119
      Width = 329
      Height = 25
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 8
      Top = 16
      Width = 329
      Height = 89
      Lines.Strings = (
        'Memo1')
      TabOrder = 1
    end
  end
end
