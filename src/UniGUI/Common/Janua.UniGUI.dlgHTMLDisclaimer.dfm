object frmUniGUIHtmlDisclaimer: TfrmUniGUIHtmlDisclaimer
  Left = 0
  Top = 0
  ClientHeight = 550
  ClientWidth = 759
  Caption = 'Disclaimer'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  TextHeight = 15
  object pnlBottom: TUniPanel
    Left = 0
    Top = 504
    Width = 759
    Height = 46
    Hint = ''
    Align = alBottom
    TabOrder = 0
    Caption = ''
    DesignSize = (
      759
      46)
    object btnOK: TUniFSButton
      Left = 624
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
      Caption = 'Accetto'
      ModalResult = 1
      Anchors = [akTop, akRight]
      TabOrder = 1
    end
    object btnCancel: TUniFSButton
      Left = 504
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
      Caption = 'Non Accetto'
      ModalResult = 1
      Anchors = [akTop, akRight]
      TabOrder = 2
    end
  end
  object scbHtml: TUniScrollBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 753
    Height = 498
    Hint = ''
    Align = alClient
    TabOrder = 1
    ScrollHeight = 2003
    ScrollWidth = 733
    object htmlFrameText: TUniHTMLFrame
      Left = 3
      Top = 3
      Width = 730
      Height = 2000
      Hint = ''
      AutoScroll = True
      ScrollHeight = 2000
      ScrollWidth = 730
    end
  end
end
