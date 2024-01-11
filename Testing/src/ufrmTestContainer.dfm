object frmTestContainer: TfrmTestContainer
  Left = 0
  Top = 0
  Caption = 'frmTestContainer'
  ClientHeight = 480
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 807
    Height = 57
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
  end
  object SplitView1: TSplitView
    Left = 0
    Top = 57
    Width = 200
    Height = 423
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 200
    Top = 57
    Width = 607
    Height = 423
    Align = alClient
    Images = dmSVGImageList.SVGIconImageList
    TabOrder = 2
  end
end
