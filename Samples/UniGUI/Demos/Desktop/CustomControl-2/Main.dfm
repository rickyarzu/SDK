object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 447
  ClientWidth = 643
  Caption = 'MainForm'
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  RTL = False
  PixelsPerInch = 96
  TextHeight = 13
  object UniMyDrawComponent1: TUniMyDrawComponent
    Left = 80
    Top = 24
    Width = 465
    Height = 385
    DrawObjects = <
      item
        X = 100
        Y = 100
        Radius = 50
        Color = clGreen
        Stroke = clYellow
      end
      item
        ObjectType = udoRect
        X = 200
        Y = 5
        Color = clMaroon
        Width = 100
        Height = 40
        Stroke = clOlive
      end
      item
        X = 250
        Y = 200
        Radius = 35
        Color = clNavy
        Stroke = clPurple
        StrokeWidth = 3
      end
      item
        ObjectType = udoEllipse
        X = 100
        Y = 40
        Color = clTeal
        RadiusX = 65
        RadiusY = 35
        Stroke = clGreen
      end>
  end
end
