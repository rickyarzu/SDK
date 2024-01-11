object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 539
  ClientWidth = 320
  Caption = 'MainmForm'
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 539
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBtnFace
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    ExplicitHeight = 433
    object UnimContainerPanel2: TUnimContainerPanel
      Left = 16
      Top = 3
      Width = 288
      Height = 62
      Hint = ''
      Color = clBtnFace
      Layout = 'hbox'
      LayoutAttribs.Align = 'stretch'
      LayoutAttribs.Pack = 'center'
      object UnimButton1: TUnimButton
        Left = 16
        Top = 8
        Width = 128
        Height = 36
        Hint = ''
        Caption = 'UnimButton1'
        UI = 'small'
      end
      object UnimButton2: TUnimButton
        Left = 150
        Top = 8
        Width = 128
        Height = 36
        Hint = ''
        Caption = 'UnimButton2'
        UI = 'small'
      end
    end
    object UnimContainerPanel3: TUnimContainerPanel
      Left = 16
      Top = 79
      Width = 256
      Height = 130
      Hint = ''
      Color = clBtnFace
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      object UnimButton3: TUnimButton
        Left = 0
        Top = 3
        Width = 225
        Height = 47
        Hint = ''
        Caption = 'UnimButton3'
        UI = 'round'
      end
      object UnimButton4: TUnimButton
        Left = 16
        Top = 56
        Width = 225
        Height = 47
        Hint = ''
        Caption = 'UnimButton4'
        UI = 'round'
      end
    end
    object UnimContainerPanel4: TUnimContainerPanel
      Left = 19
      Top = 215
      Width = 231
      Height = 146
      Hint = ''
      Color = clBtnFace
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'justify'
      object UnimButton6: TUnimButton
        Left = 3
        Top = 3
        Width = 225
        Height = 47
        Hint = ''
        Caption = 'UnimButton6'
      end
      object UnimButton7: TUnimButton
        Left = 3
        Top = 56
        Width = 225
        Height = 47
        Hint = ''
        Caption = 'UnimButton7'
      end
    end
    object UnimContainerPanel5: TUnimContainerPanel
      Left = 3
      Top = 367
      Width = 314
      Height = 146
      Hint = ''
      Color = clBtnFace
      Layout = 'hbox'
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'justify'
      object UnimBitBtn1: TUnimBitBtn
        Left = 3
        Top = 3
        Width = 120
        Height = 36
        Hint = ''
        UI = 'decline-small'
        Caption = 'UnimBitBtn1'
      end
      object UnimBitBtn2: TUnimBitBtn
        Left = 72
        Top = 72
        Width = 120
        Height = 36
        Hint = ''
        UI = 'confirm-small'
        Caption = 'UnimBitBtn2'
      end
    end
  end
end
