object UniForm3: TUniForm3
  Left = 0
  Top = 0
  ClientHeight = 382
  ClientWidth = 617
  Caption = 'Align'
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 617
    Height = 75
    BorderStyle = ubsNone
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Color = clYellow
    TabOrder = 0
    object UniLabel1: TUniLabel
      Left = 24
      Top = 8
      Width = 31
      Height = 13
      Caption = 'alTop'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clBtnFace
      TabOrder = 1
    end
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 75
    Width = 185
    Height = 307
    BorderStyle = ubsNone
    Align = alLeft
    Anchors = [akLeft, akTop, akBottom]
    Color = 8421631
    TabOrder = 1
    object UniLabel2: TUniLabel
      Left = 24
      Top = 24
      Width = 32
      Height = 13
      Caption = 'alLeft'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clBtnFace
      TabOrder = 1
    end
  end
  object UniPanel3: TUniPanel
    Left = 432
    Top = 75
    Width = 185
    Height = 307
    BorderStyle = ubsNone
    Align = alRight
    Anchors = [akTop, akRight, akBottom]
    Color = clSilver
    TabOrder = 2
    object UniLabel4: TUniLabel
      Left = 16
      Top = 24
      Width = 40
      Height = 13
      Caption = 'alRight'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clBtnFace
      TabOrder = 1
    end
  end
  object UniPanel4: TUniPanel
    Left = 185
    Top = 75
    Width = 247
    Height = 307
    BorderStyle = ubsNone
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = 16744448
    TabOrder = 3
    object UniLabel3: TUniLabel
      Left = 24
      Top = 24
      Width = 42
      Height = 13
      Caption = 'alClient'
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clBtnFace
      TabOrder = 1
    end
  end
end
