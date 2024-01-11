object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'MainmForm'
  AlignmentControl = uniAlignmentClient
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimFieldSet1: TUnimFieldSet
    Left = 0
    Top = 0
    Width = 320
    Height = 480
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    Flex = 1
    object UnimNumberEdit1: TUnimNumberEdit
      Left = 24
      Top = 72
      Width = 272
      Height = 47
      Hint = ''
      FieldLabel = 'Mass (kg):'
      OnChange = UnimNumberEdit1Change
    end
    object UnimNumberEdit2: TUnimNumberEdit
      Left = 24
      Top = 116
      Width = 272
      Height = 47
      Hint = ''
      FieldLabel = 'Height (cm):'
      OnChange = UnimNumberEdit2Change
    end
    object UnimButton1: TUnimButton
      Left = 40
      Top = 169
      Width = 240
      Height = 47
      Hint = ''
      Caption = 'Calculate'
      OnClick = UnimButton1Click
    end
    object UnimContainerPanel2: TUnimContainerPanel
      Left = 11
      Top = 222
      Width = 285
      Height = 68
      Hint = ''
      Layout = 'hbox'
      LayoutAttribs.Align = 'start'
      LayoutAttribs.Pack = 'center'
      object UnimSlider1: TUnimSlider
        Left = 0
        Top = 0
        Width = 208
        Height = 68
        Hint = ''
        FieldLabel = 'BMI:'
        Min = 150
        Max = 600
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        OnChange = UnimSlider1Change
      end
      object UnimButton2: TUnimButton
        Left = 208
        Top = 0
        Width = 77
        Height = 68
        Hint = ''
        Align = alRight
        Anchors = [akTop, akRight, akBottom]
        Caption = 'Ideal'
        OnClick = UnimButton2Click
      end
    end
    object UnimPanel1: TUnimPanel
      Left = 24
      Top = 296
      Width = 256
      Height = 131
      Hint = ''
      LayoutAttribs.Align = 'center'
      LayoutAttribs.Pack = 'center'
      object UnimLabel1: TUnimLabel
        AlignWithMargins = True
        Left = -19
        Top = 18
        Width = 272
        Height = 30
        Hint = ''
        Alignment = taCenter
        AutoSize = False
        Caption = 'Your Body-Mass Index:'
        LayoutConfig.Padding = '5'
      end
      object UnimLabel2: TUnimLabel
        AlignWithMargins = True
        Left = 16
        Top = 54
        Width = 225
        Height = 30
        Hint = ''
        Alignment = taCenter
        AutoSize = False
        Caption = '-'
        LayoutConfig.Padding = '5'
      end
    end
    object UnimBitBtn1: TUnimBitBtn
      Left = 40
      Top = 433
      Width = 225
      Height = 47
      Hint = ''
      IconCls = 'info'
      Caption = 'Information'
      OnClick = UnimBitBtn1Click
    end
  end
end
