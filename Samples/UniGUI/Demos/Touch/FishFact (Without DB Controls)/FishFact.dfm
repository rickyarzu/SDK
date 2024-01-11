object UnimForm1: TUnimForm1
  Left = 0
  Top = 0
  ClientHeight = 527
  ClientWidth = 303
  Caption = 'UnimForm1'
  AutoHeight = False
  Scrollable = True
  ShowTitle = False
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 800
  PlatformData = {}
  object UnimToolBar1: TUnimToolBar
    Left = 0
    Top = 0
    Width = 303
    Height = 48
    Hint = ''
    Anchors = [akLeft, akTop, akRight]
    ShowCaptions = True
    Caption = 'UnimToolBar1'
    object UnimToolButton1: TUnimToolButton
      Left = 0
      Top = 0
      Width = 48
      Height = 48
      Hint = ''
      Caption = 'Back'
      UI = 'back'
      OnClick = UnimToolButton1Click
    end
  end
  object UnimImage1: TUnimImage
    Left = 0
    Top = 48
    Width = 303
    Height = 225
    Hint = ''
    Align = alTop
    Stretch = True
    Proportional = True
    Anchors = [akLeft, akTop, akRight]
  end
  object UnimEdit1: TUnimEdit
    Left = 0
    Top = 273
    Width = 303
    Height = 32
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Species No'
    ReadOnly = True
  end
  object UnimEdit2: TUnimEdit
    Left = 0
    Top = 305
    Width = 303
    Height = 32
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Category'
    ReadOnly = True
  end
  object UnimEdit3: TUnimEdit
    Left = 0
    Top = 337
    Width = 303
    Height = 32
    Hint = ''
    ParentRTL = False
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Common Name'
    ReadOnly = True
  end
  object UnimEdit4: TUnimEdit
    Left = 0
    Top = 369
    Width = 303
    Height = 32
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Species Name'
    ReadOnly = True
  end
  object UnimEdit5: TUnimEdit
    Left = 0
    Top = 401
    Width = 303
    Height = 32
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Length (cm)'
    ReadOnly = True
  end
  object UnimEdit6: TUnimEdit
    Left = 0
    Top = 433
    Width = 303
    Height = 32
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Text = ''
    FieldLabel = 'Length In'
    ReadOnly = True
  end
  object UnimMemo1: TUnimMemo
    Left = 0
    Top = 465
    Width = 303
    Height = 384
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    FieldLabel = 'Notes'
    ReadOnly = True
  end
end
