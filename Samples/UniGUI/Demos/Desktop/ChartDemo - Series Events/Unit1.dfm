object UniForm1: TUniForm1
  Left = 0
  Top = 0
  ClientHeight = 227
  ClientWidth = 353
  Caption = 'UniForm1'
  BorderStyle = bsNone
  FormStyle = fsStayOnTop
  Position = poDefault
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniChart1: TUniChart
    Left = 0
    Top = 22
    Width = 353
    Height = 205
    Hint = ''
    Axes.AxisA.Max = 1000.000000000000000000
    Legend.Visible = False
    LayoutConfig.BodyPadding = '10'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TitleVisible = False
    ExplicitTop = 25
    ExplicitWidth = 544
    ExplicitHeight = 261
    object UniGaugeSeries1: TUniGaugeSeries
      Donut = 25
      Title = 'UniGaugeSeries1'
      Max = 1000.000000000000000000
      Colors.Strings = (
        '#0000FF'
        '#00FF00'
        '#FF0000'
        '#00FFFF'
        '#FFFF00'
        '#FF00FF')
    end
  end
  object UniToolBar1: TUniToolBar
    Left = 0
    Top = 0
    Width = 353
    Height = 22
    Hint = ''
    ButtonHeight = 20
    ButtonWidth = 20
    ShowCaptions = True
    Anchors = [akLeft, akTop, akRight]
    Align = alTop
    TabOrder = 1
    ParentColor = False
    Color = clBtnFace
    ExplicitWidth = 544
    object UniToolButton1: TUniToolButton
      Left = 0
      Top = 0
      Hint = ''
      Caption = 'X'
      TabOrder = 1
      OnClick = UniToolButton1Click
    end
  end
end
