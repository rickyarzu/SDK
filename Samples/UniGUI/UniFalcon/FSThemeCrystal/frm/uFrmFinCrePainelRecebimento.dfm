object frmFinCrePainelRecebimento: TfrmFinCrePainelRecebimento
  Left = 0
  Top = 0
  Width = 971
  Height = 510
  TabOrder = 0
  object dbg1: TUniDBGrid
    Left = 0
    Top = 63
    Width = 971
    Height = 447
    Hint = ''
    LoadMask.Message = 'Loading data...'
    RowHeight = 40
    LayoutConfig.Padding = '0 10 0 10'
    Align = alClient
    TabOrder = 1
  end
  object pnl1: TUniPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 965
    Height = 57
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    object btn1: TUniFSButton
      Left = 13
      Top = 10
      Width = 188
      Height = 34
      Hint = ''
      StyleButton = GoogleGreen
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Nova Receita'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 1
    end
  end
end
