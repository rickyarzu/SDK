object UnimEditForm: TUnimEditForm
  Left = 0
  Top = 0
  ClientHeight = 331
  ClientWidth = 335
  Caption = 'UnimEditForm'
  AutoHeight = False
  FullScreen = False
  TitleDocked = True
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimEdit1: TUnimNumberEdit
    Left = 0
    Top = 0
    Width = 335
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    FieldLabel = 'Species No'
    FieldLabelWidth = 40
  end
  object UnimEdit2: TUnimEdit
    Left = 0
    Top = 47
    Width = 335
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Category'
    FieldLabelWidth = 40
  end
  object UnimEdit3: TUnimEdit
    Left = 0
    Top = 94
    Width = 335
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Common Name'
    FieldLabelWidth = 40
  end
  object UnimEdit4: TUnimEdit
    Left = 0
    Top = 141
    Width = 335
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Species Name'
    FieldLabelWidth = 40
  end
  object UnimEdit5: TUnimNumberEdit
    Left = 0
    Top = 188
    Width = 335
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    FieldLabel = 'Length (cm)'
    FieldLabelWidth = 40
  end
  object UnimEdit6: TUnimEdit
    Left = 0
    Top = 235
    Width = 335
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Length In'
    FieldLabelWidth = 40
  end
  object UnimButton1: TUnimButton
    Left = 0
    Top = 284
    Width = 335
    Height = 47
    Hint = ''
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Post'
    OnClick = UnimButton1Click
    ExplicitTop = 286
  end
end
