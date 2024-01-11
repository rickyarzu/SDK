object frameUniGUIAddressList: TframeUniGUIAddressList
  Left = 0
  Top = 0
  ClientHeight = 728
  ClientWidth = 921
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnbButtons: TUniPanel
    Left = 0
    Top = 0
    Width = 921
    Height = 49
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    ExplicitWidth = 929
    DesignSize = (
      921
      49)
    object btnNewAddress: TUniFSButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 120
      Height = 41
      Hint = ''
      StyleButton = Success
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Nuovo Indirizzo'
      Align = alLeft
      TabOrder = 1
    end
    object UniContainerPanel1: TUniContainerPanel
      Left = 127
      Top = 1
      Width = 664
      Height = 47
      Hint = ''
      ParentColor = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      ExplicitWidth = 672
      object lbSearch: TUniLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 658
        Height = 13
        Hint = ''
        Margins.Bottom = 0
        AutoSize = False
        Caption = 'Ricerca Indirizzi'
        Align = alTop
        ParentColor = False
        Color = clBtnFace
        TabOrder = 1
        ExplicitWidth = 684
      end
      object edSearch: TUniEdit
        AlignWithMargins = True
        Left = 3
        Top = 19
        Width = 658
        Height = 25
        Hint = ''
        Text = ''
        Align = alClient
        TabOrder = 2
        EmptyText = 'Inserire qui testo ricerca indirizzi'
        ExplicitWidth = 684
      end
    end
    object btnSearch: TUniFSButton
      AlignWithMargins = True
      Left = 797
      Top = 4
      Width = 120
      Height = 41
      Hint = ''
      StyleButton = Success
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Ricerca'
      Align = alRight
      TabOrder = 3
      ExplicitLeft = 805
    end
  end
end
