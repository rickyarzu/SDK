object UnimShowDataForm: TUnimShowDataForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 303
  Caption = 'Show Data'
  AutoHeight = False
  Scrollable = True
  TitleDocked = True
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 206
  ScrollHeight = 733
  PlatformData = {}
  object UnimImage1: TUnimImage
    Left = 0
    Top = -206
    Width = 303
    Height = 169
    Hint = ''
    Align = alTop
    Center = True
    Stretch = True
    Proportional = True
    Anchors = [akLeft, akTop, akRight]
    Transparent = True
  end
  object UnimEdit1: TUnimEdit
    Left = 0
    Top = -37
    Width = 303
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Species No:'
    ReadOnly = True
  end
  object UnimEdit2: TUnimEdit
    Left = 0
    Top = 10
    Width = 303
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Category:'
    ReadOnly = True
  end
  object UnimEdit3: TUnimEdit
    Left = 0
    Top = 57
    Width = 303
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Common Name:'
    ReadOnly = True
  end
  object UnimEdit4: TUnimEdit
    Left = 0
    Top = 104
    Width = 303
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Species Name:'
    ReadOnly = True
  end
  object UnimEdit5: TUnimEdit
    Left = 0
    Top = 151
    Width = 303
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Length (cm):'
    ReadOnly = True
  end
  object UnimEdit6: TUnimEdit
    Left = 0
    Top = 198
    Width = 303
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Length In:'
    ReadOnly = True
  end
  object UnimMemo1: TUnimMemo
    Left = 0
    Top = 245
    Width = 303
    Height = 235
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    FieldLabel = 'Notes'
    Lines.Strings = (
      '')
    ReadOnly = True
  end
end
