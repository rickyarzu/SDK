object frameUniGUIAddressList: TframeUniGUIAddressList
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  Font.Height = -12
  TabOrder = 0
  object pnbButtons: TUniPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 49
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    DesignSize = (
      640
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
      Width = 383
      Height = 47
      Hint = ''
      ParentColor = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      object lbSearch: TUniLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 377
        Height = 13
        Hint = ''
        Margins.Bottom = 0
        AutoSize = False
        Caption = 'Ricerca Indirizzi'
        Align = alTop
        ParentColor = False
        Color = clBtnFace
        TabOrder = 1
      end
      object edSearch: TUniEdit
        AlignWithMargins = True
        Left = 3
        Top = 19
        Width = 377
        Height = 25
        Hint = ''
        Text = ''
        Align = alClient
        TabOrder = 2
        EmptyText = 'Inserire qui testo ricerca indirizzi'
      end
    end
    object btnSearch: TUniFSButton
      AlignWithMargins = True
      Left = 516
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
    end
  end
end
