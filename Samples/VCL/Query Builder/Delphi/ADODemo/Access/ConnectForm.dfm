object fmConnect: TfmConnect
  Left = 192
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Connect To Database'
  ClientHeight = 206
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 331
    Height = 162
    Align = alClient
    Shape = bsFrame
  end
  object laDBName: TLabel
    Left = 7
    Top = 9
    Width = 77
    Height = 13
    Caption = 'Database Name'
  end
  object laUserName: TLabel
    Left = 59
    Top = 89
    Width = 53
    Height = 13
    Caption = 'User Name'
    Enabled = False
  end
  object btnOpenDlg: TSpeedButton
    Left = 294
    Top = 8
    Width = 27
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555555555555555555555555555555555555555555555555555555555555
      555555555555555555555555555555555555555FFFFFFFFFF555550000000000
      55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
      B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
      000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
      555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
      55555575FFF75555555555700007555555555557777555555555555555555555
      5555555555555555555555555555555555555555555555555555}
    NumGlyphs = 2
    OnClick = btnOpenDlgClick
  end
  object edDBName: TEdit
    Left = 107
    Top = 8
    Width = 190
    Height = 21
    TabOrder = 0
  end
  object edUserName: TEdit
    Left = 125
    Top = 87
    Width = 196
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object paButtons: TPanel
    Left = 0
    Top = 162
    Width = 331
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object buOk: TButton
      Left = 78
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object buCancel: TButton
      Left = 171
      Top = 10
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object raDefaultUser: TRadioButton
    Left = 7
    Top = 35
    Width = 250
    Height = 17
    Caption = 'Use default user name (Admin)'
    Checked = True
    TabOrder = 1
    TabStop = True
    OnClick = raSpecificUserClick
  end
  object raSpecificUser: TRadioButton
    Left = 7
    Top = 61
    Width = 258
    Height = 17
    Caption = 'Use a specific user name and password'
    TabOrder = 2
    TabStop = True
    OnClick = raSpecificUserClick
  end
  object chLoginPrompt: TCheckBox
    Left = 125
    Top = 115
    Width = 172
    Height = 17
    Caption = 'Prompt for password'
    Enabled = False
    TabOrder = 5
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'mdb'
    FileName = 'demo.mdb'
    Filter = '*.mdb|*.mdb'
    Left = 8
    Top = 112
  end
end
