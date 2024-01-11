object UnimShowDataForm: TUnimShowDataForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Show Data'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimImage1: TUnimImage
    Left = 0
    Top = 0
    Width = 320
    Height = 169
    Hint = ''
    Align = alTop
    Center = True
    Stretch = True
    Proportional = True
    Anchors = [akLeft, akTop, akRight]
    Transparent = True
    ExplicitWidth = 303
  end
  object UnimEdit1: TUnimEdit
    Left = 0
    Top = 169
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Species No:'
    ReadOnly = True
    ExplicitWidth = 303
  end
  object UnimEdit2: TUnimEdit
    Left = 0
    Top = 216
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Category:'
    ReadOnly = True
    ExplicitWidth = 303
  end
  object UnimEdit3: TUnimEdit
    Left = 0
    Top = 498
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Common Name:'
    ReadOnly = True
    ExplicitTop = 263
    ExplicitWidth = 303
  end
  object UnimEdit4: TUnimEdit
    Left = 0
    Top = 545
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Species Name:'
    ReadOnly = True
    ExplicitTop = 310
    ExplicitWidth = 303
  end
  object UnimEdit5: TUnimEdit
    Left = 0
    Top = 592
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Length (cm):'
    ReadOnly = True
    ExplicitTop = 357
    ExplicitWidth = 303
  end
  object UnimEdit6: TUnimEdit
    Left = 0
    Top = 639
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Length In:'
    ReadOnly = True
    ExplicitTop = 404
    ExplicitWidth = 303
  end
  object UnimMemo1: TUnimMemo
    Left = 0
    Top = 263
    Width = 320
    Height = 235
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    FieldLabel = 'Notes'
    Lines.Strings = (
      '')
    ReadOnly = True
    ExplicitTop = 245
    ExplicitWidth = 303
  end
end
