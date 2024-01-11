object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Coloring Focused'
  ClientHeight = 238
  ClientWidth = 191
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 185
    Height = 13
    Align = alTop
    Caption = 'http://zarko-gajic.iz.hr'
    ExplicitWidth = 109
  end
  object SpeedButton1: TSpeedButton
    AlignWithMargins = True
    Left = 3
    Top = 126
    Width = 185
    Height = 22
    Align = alTop
    Caption = 'disable edit 2'
    OnClick = SpeedButton1Click
    ExplicitLeft = 96
    ExplicitTop = 120
    ExplicitWidth = 23
  end
  object Edit1: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 22
    Width = 185
    Height = 21
    Align = alTop
    TabOrder = 0
    Text = 'Edit1'
  end
  object ComboBox1: TComboBox
    AlignWithMargins = True
    Left = 3
    Top = 76
    Width = 185
    Height = 21
    Align = alTop
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 2
    Text = 'delphi'
    Items.Strings = (
      'delphi'
      'zarko'
      'gajic')
  end
  object CheckBox1: TCheckBox
    AlignWithMargins = True
    Left = 3
    Top = 103
    Width = 185
    Height = 17
    Align = alTop
    Caption = 'skip this one'
    TabOrder = 3
  end
  object Memo1: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 154
    Width = 185
    Height = 47
    Align = alTop
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
  object Edit2: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 49
    Width = 185
    Height = 21
    Align = alTop
    TabOrder = 1
    Text = 'Edit2'
  end
  object Button1: TButton
    AlignWithMargins = True
    Left = 3
    Top = 207
    Width = 185
    Height = 25
    Align = alTop
    Caption = 'Do Dialog'
    TabOrder = 5
    OnClick = Button1Click
    ExplicitLeft = 48
    ExplicitTop = 193
    ExplicitWidth = 75
  end
end
