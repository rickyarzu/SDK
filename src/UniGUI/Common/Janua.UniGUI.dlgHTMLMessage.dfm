object frmUniGUIHtmlMessage: TfrmUniGUIHtmlMessage
  Left = 0
  Top = 0
  ClientHeight = 408
  ClientWidth = 600
  Caption = 'Disclaimer'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  TextHeight = 15
  object pnlBottom: TUniPanel
    Left = 0
    Top = 362
    Width = 600
    Height = 46
    Hint = ''
    Align = alBottom
    TabOrder = 0
    Caption = ''
    ExplicitTop = 503
    ExplicitWidth = 755
    DesignSize = (
      600
      46)
    object btnOK: TUniFSButton
      Left = 461
      Top = 8
      Width = 105
      Height = 28
      Hint = ''
      StyleButton = GoogleGreen
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'OK'
      ModalResult = 1
      Anchors = [akTop, akRight]
      TabOrder = 1
      ExplicitLeft = 616
    end
    object btnCancel: TUniFSButton
      Left = 341
      Top = 8
      Width = 105
      Height = 28
      Hint = ''
      StyleButton = GoogleDanger
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Annulla'
      ModalResult = 1
      Anchors = [akTop, akRight]
      TabOrder = 2
      ExplicitLeft = 496
    end
  end
  object htmlFrameText: TUniHTMLFrame
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 594
    Height = 356
    Hint = ''
    AutoScroll = True
    Align = alClient
    ExplicitLeft = -112
    ExplicitTop = -1575
    ExplicitWidth = 730
    ExplicitHeight = 2000
    ScrollHeight = 356
    ScrollWidth = 594
  end
end
