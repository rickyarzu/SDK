object frmTwainScanner: TfrmTwainScanner
  Left = 0
  Top = 0
  Caption = 'frmTwainScanner'
  ClientHeight = 505
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ImgHolder: TImage
    Left = 185
    Top = 41
    Width = 458
    Height = 464
    Align = alClient
    Proportional = True
    Stretch = True
    ExplicitLeft = 0
    ExplicitTop = 33
    ExplicitWidth = 543
    ExplicitHeight = 355
  end
  object PnlTop: TPanel
    Left = 0
    Top = 0
    Width = 643
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object BtnScanWithDialog: TButton
      Left = 191
      Top = 10
      Width = 129
      Height = 25
      Caption = 'Scansione con Dialogo'
      TabOrder = 0
      OnClick = BtnScanWithDialogClick
    end
    object BtnScanWithoutDialog: TButton
      Left = 326
      Top = 10
      Width = 129
      Height = 25
      Caption = 'Scansione Diretta'
      TabOrder = 1
      OnClick = BtnScanWithoutDialogClick
    end
    object BtnReloadSources: TButton
      Left = 0
      Top = 10
      Width = 185
      Height = 25
      Caption = 'Aggiorna Elenco Scanner'
      TabOrder = 2
      OnClick = BtnReloadSourcesClick
    end
  end
  object LBSources: TListBox
    Left = 0
    Top = 41
    Width = 185
    Height = 464
    Align = alLeft
    ItemHeight = 13
    TabOrder = 1
  end
end
