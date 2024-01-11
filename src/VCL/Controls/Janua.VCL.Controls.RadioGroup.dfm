inherited framSelectRadioGroup: TframSelectRadioGroup
  inherited pnlFrameSelector: TPanel
    Height = 57
    Align = alClient
    ExplicitHeight = 57
    inherited lbDisplayText: TLabel
      Top = 1
      Width = 4
      Align = alNone
      Caption = ''
      Enabled = False
      Visible = False
      ExplicitTop = 1
      ExplicitWidth = 4
    end
    object rgSelect: TRadioGroup
      AlignWithMargins = True
      Left = 1
      Top = 0
      Width = 278
      Height = 56
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alClient
      Caption = 'rgSelect'
      Columns = 2
      Items.Strings = (
        'Uno'
        'Due'
        'Tre'
        'Quattro')
      TabOrder = 0
      OnClick = rgSelectClick
    end
  end
end
