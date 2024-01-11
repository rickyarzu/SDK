object frmRichEdit: TfrmRichEdit
  Left = 0
  Top = 0
  Caption = 'RichEditControl'
  ClientHeight = 690
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 872
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 649
    Width = 872
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object advMemo1: TRichEdit
    Left = 0
    Top = 41
    Width = 872
    Height = 608
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'advMemo1')
    ParentFont = False
    TabOrder = 2
    Zoom = 100
  end
end
