object Form16: TForm16
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'SSE Client'
  ClientHeight = 449
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object Label3: TLabel
    Left = 114
    Top = 8
    Width = 23
    Height = 13
    Caption = 'URL:'
  end
  object Label6: TLabel
    Left = 22
    Top = 56
    Width = 17
    Height = 13
    Caption = 'Log'
  end
  object btnGetSSE: TButton
    Left = 24
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Get SSE'
    TabOrder = 0
    OnClick = btnGetSSEClick
  end
  object btnCancel: TButton
    Left = 441
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = btnCancelClick
  end
  object txtURL: TEdit
    Left = 114
    Top = 27
    Width = 295
    Height = 21
    TabOrder = 2
    Text = 'https://www.esegece.com/sse.php'
  end
  object Log: TMemo
    Left = 24
    Top = 75
    Width = 492
    Height = 350
    ScrollBars = ssVertical
    TabOrder = 3
  end
end
