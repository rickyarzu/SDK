inherited dlgVCLInputNumber: TdlgVCLInputNumber
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Inserire numero'
  ClientHeight = 121
  ClientWidth = 418
  Color = clWhite
  Font.Color = clBlack
  Font.Height = -16
  Position = poScreenCenter
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 434
  ExplicitHeight = 160
  TextHeight = 21
  object Label1: TLabel [0]
    Left = 71
    Top = 34
    Width = 139
    Height = 21
    Caption = 'Inserire il numero:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCaptionText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SVGIconImage1: TSVGIconImage [1]
    Left = 8
    Top = 18
    Width = 57
    Height = 55
    AutoSize = False
    ImageIndex = 32
  end
  inherited StatusBar: TStatusBar
    Top = 102
    Width = 418
    ExplicitTop = 102
    ExplicitWidth = 418
  end
  object AdvSpinEdit1: TSpinEdit
    Left = 304
    Top = 32
    Width = 89
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 0
    Value = 0
  end
  object AdvGlowButton3: TButton
    Left = 246
    Top = 89
    Width = 67
    Height = 24
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
  end
  object AdvGlowButton4: TButton
    Left = 326
    Top = 89
    Width = 67
    Height = 24
    Caption = 'Annulla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ModalResult = 2
    ParentFont = False
    TabOrder = 2
  end
end
