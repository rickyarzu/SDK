inherited MainForm1: TMainForm1
  Top = 281
  Caption = 'MainForm1'
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel2: TUniLabel [1]
    Left = 231
    Top = 144
    Width = 154
    Height = 16
    Caption = 'Inherited Form Level #1'
    ParentFont = False
    Font.Height = -13
    Font.Style = [fsBold]
    ParentColor = False
    Color = clBtnFace
    TabOrder = 4
  end
  inherited UniMemo1: TUniMemo
    Left = 8
    ExplicitLeft = 8
  end
  inherited UniButton3: TUniButton
    TabOrder = 5
  end
end
