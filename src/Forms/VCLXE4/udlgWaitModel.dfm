object JanuadlgWaitModel: TJanuadlgWaitModel
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Attesa'
  ClientHeight = 143
  ClientWidth = 409
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 128
    Top = 88
    Width = 126
    Height = 13
    Caption = 'Caricamento Files in Corso'
  end
  object ProgressBar1: TProgressBar
    Left = 40
    Top = 32
    Width = 313
    Height = 33
    TabOrder = 0
  end
end
