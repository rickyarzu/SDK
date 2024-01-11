object AniForm: TAniForm
  Left = 461
  Top = 256
  Caption = 'ImageKit SimpleAnimation'
  ClientHeight = 581
  ClientWidth = 795
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 528
    Top = 0
    Width = 267
    Height = 581
    Align = alRight
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      267
      581)
    object DurationLabel: TLabel
      Left = 8
      Top = 8
      Width = 43
      Height = 13
      Caption = 'Duration:'
    end
    object Button1: TButton
      Left = 56
      Top = 478
      Width = 145
      Height = 25
      Caption = 'Preview && Compare'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Duration: TTrackBar
      Left = 10
      Top = 30
      Width = 247
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      Max = 5000
      Position = 1000
      TabOrder = 1
      TickMarks = tmBoth
      TickStyle = tsNone
      OnChange = DurationChange
    end
    object AniPages: TPageControl
      Left = 6
      Top = 76
      Width = 255
      Height = 373
      ActivePage = TabSheet1
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      OnChange = AniPagesChange
      object TabSheet1: TTabSheet
        Caption = 'Cubic Bezier'
        object BezierList: TListBox
          Left = 0
          Top = 0
          Width = 247
          Height = 101
          Align = alTop
          ItemHeight = 13
          Items.Strings = (
            'Default'
            'Linear'
            'Ease'
            'Ease-In'
            'Ease-Out'
            'Ease-In-Out')
          TabOrder = 0
          OnClick = BezierListClick
        end
        object BezierPanel: TPanel
          Left = 8
          Top = 120
          Width = 227
          Height = 215
          TabOrder = 1
          object BezierPaint: TPaintBox
            Left = 1
            Top = 1
            Width = 225
            Height = 213
            Align = alClient
            OnPaint = BezierPaintPaint
          end
          object Point2: TShape
            Left = 148
            Top = 6
            Width = 10
            Height = 10
            Shape = stCircle
            OnMouseMove = Point2MouseMove
          end
          object Point1: TShape
            Left = 50
            Top = 122
            Width = 10
            Height = 10
            Shape = stCircle
            OnMouseMove = Point2MouseMove
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Steps'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        DesignSize = (
          247
          345)
        object StepsLabel: TLabel
          Left = 12
          Top = 10
          Width = 80
          Height = 13
          Caption = 'Number of steps:'
        end
        object Steps: TTrackBar
          Left = 8
          Top = 32
          Width = 229
          Height = 27
          Anchors = [akLeft, akTop, akRight]
          Max = 100
          Position = 4
          TabOrder = 0
          TickMarks = tmBoth
          TickStyle = tsNone
          OnChange = StepsChange
        end
        object CeilCheck: TCheckBox
          Left = 16
          Top = 72
          Width = 97
          Height = 17
          Caption = 'Use ceil value'
          TabOrder = 1
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 50
    Top = 50
    Width = 123
    Height = 113
    BevelOuter = bvNone
    Caption = 'Linear'
    Color = 33023
    ParentBackground = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 50
    Top = 186
    Width = 123
    Height = 113
    BevelOuter = bvNone
    Caption = 'Current'
    Color = 16744448
    ParentBackground = False
    TabOrder = 2
  end
end
