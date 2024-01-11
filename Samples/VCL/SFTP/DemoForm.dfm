object DemoForm: TDemoForm
  Left = 77
  Top = 70
  Caption = 'SecureBridge demos'
  ClientHeight = 486
  ClientWidth = 911
  Color = clSilver
  Constraints.MinHeight = 450
  Constraints.MinWidth = 600
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object MainPanel: TPanel
    Left = 0
    Top = 74
    Width = 911
    Height = 412
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object shTopShape: TShape
      Left = 0
      Top = 0
      Width = 911
      Height = 3
      Align = alTop
      Brush.Color = 48127
      Pen.Color = clBtnFace
      ExplicitWidth = 919
    end
    object pnDemo: TPanel
      Left = 0
      Top = 3
      Width = 911
      Height = 409
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
    end
    object pnSource: TPanel
      Left = 0
      Top = 3
      Width = 911
      Height = 409
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      Visible = False
      object Panel6: TPanel
        Left = 0
        Top = 374
        Width = 911
        Height = 35
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          911
          35)
        object Panel3: TPanel
          Left = 16
          Top = 3
          Width = 127
          Height = 25
          Anchors = [akLeft, akBottom]
          BevelOuter = bvNone
          Color = 48127
          TabOrder = 0
          object sbOpenDemoDir: TSpeedButton
            Left = 1
            Top = 1
            Width = 125
            Height = 23
            Caption = 'Open demo folder'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            OnClick = sbOpenDemoDirClick
          end
        end
      end
    end
  end
  object pnTopLabel: TPanel
    Left = 0
    Top = 0
    Width = 911
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      911
      45)
    object lbTitle: TLabel
      Left = 0
      Top = 0
      Width = 911
      Height = 45
      Cursor = crArrow
      Align = alTop
      AutoSize = False
      Caption = ' SecureBridge'
      Color = 48127
      Constraints.MinWidth = 130
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWhite
      Font.Height = -35
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      OnMouseMove = lbTitleMouseMove
      ExplicitWidth = 919
    end
    object lbAbout: TLabel
      Left = 858
      Top = 12
      Width = 34
      Height = 13
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'About'
      Color = 48127
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold, fsUnderline]
      ParentColor = False
      ParentFont = False
      OnClick = lbAboutClick
      OnMouseMove = lbAboutMouseMove
      ExplicitLeft = 866
    end
  end
  object pnTopPanel: TPanel
    Left = 0
    Top = 45
    Width = 911
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      911
      29)
    object pnShowSource: TPanel
      Left = 766
      Top = 3
      Width = 125
      Height = 24
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      Color = 48127
      TabOrder = 0
      object sbDemo: TSpeedButton
        Left = 1
        Top = 1
        Width = 123
        Height = 22
        AllowAllUp = True
        GroupIndex = 1
        Caption = 'Show source'
        Enabled = False
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = sbDemoClick
      end
    end
    object Panel1: TPanel
      Left = 16
      Top = 3
      Width = 125
      Height = 24
      BevelOuter = bvNone
      Color = 48127
      TabOrder = 1
      object btRandom: TSpeedButton
        Left = 1
        Top = 1
        Width = 123
        Height = 22
        Caption = 'Randomize'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        OnClick = btRandomClick
      end
    end
  end
end
