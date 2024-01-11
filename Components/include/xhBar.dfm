object HProgressDlg: THProgressDlg
  Left = 390
  Top = 247
  BorderStyle = bsDialog
  Caption = 'HProgressDlg'
  ClientHeight = 88
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object ProgressText: TxhLabel
    Left = 8
    Top = 24
    Width = 65
    Height = 14
    Caption = 'ProgressText'
  end
  object CancelButton: TxhButton
    Left = 152
    Top = 56
    Width = 75
    Height = 25
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 0
    OnClick = CancelButtonClick
  end
  object StatusText: TxhStaticText
    Left = 8
    Top = 0
    Width = 56
    Height = 18
    Alignment = taCenter
    Caption = 'StatusText'
    TabOrder = 1
    Visible = False
  end
end
