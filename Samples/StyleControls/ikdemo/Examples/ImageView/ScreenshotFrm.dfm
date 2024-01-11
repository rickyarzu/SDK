object ScreenshotForm: TScreenshotForm
  Left = 0
  Top = 0
  Caption = 'Screenshot'
  ClientHeight = 519
  ClientWidth = 893
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 893
    Height = 519
    Align = alClient
    Center = True
    ExplicitLeft = 256
    ExplicitTop = 194
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object Button1: TButton
    Left = 4
    Top = 4
    Width = 83
    Height = 25
    Caption = 'Save PNG...'
    TabOrder = 0
    OnClick = Button1Click
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'png'
    Filter = 'PNG Image|*.png'
    Left = 136
    Top = 22
  end
end
