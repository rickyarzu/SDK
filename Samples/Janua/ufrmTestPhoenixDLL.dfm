object frmTestDelphiDLL: TfrmTestDelphiDLL
  Left = 0
  Top = 0
  Caption = 'Test Phoenix DLL'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbInitialize: TLabel
    Left = 152
    Top = 36
    Width = 43
    Height = 15
    Caption = 'Initialize'
  end
  object lbGUID: TLabel
    Left = 264
    Top = 96
    Width = 27
    Height = 15
    Caption = 'GUID'
  end
  object btnTestSetup: TButton
    Left = 40
    Top = 32
    Width = 89
    Height = 25
    Caption = 'Initialize'
    TabOrder = 0
    OnClick = btnTestSetupClick
  end
  object btnLocalTest: TButton
    Left = 40
    Top = 92
    Width = 89
    Height = 25
    Caption = 'LocalTest'
    TabOrder = 1
    OnClick = btnLocalTestClick
  end
  object edGUID: TEdit
    Left = 40
    Top = 63
    Width = 465
    Height = 23
    TabOrder = 2
    Text = 'F3C93E19-8124-4D74-95BA-9FE0E5E119F7'
  end
  object btnDLLTest: TButton
    Left = 135
    Top = 92
    Width = 89
    Height = 25
    Caption = 'DLLTest'
    TabOrder = 3
  end
end
