inherited dlgTMSInputDate: TdlgTMSInputDate
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Inserire numero'
  ClientHeight = 129
  ClientWidth = 481
  Color = clWhite
  ParentFont = False
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Position = poScreenCenter
  OnShow = FormShow
  ExplicitWidth = 487
  ExplicitHeight = 158
  PixelsPerInch = 96
  TextHeight = 21
  object SVGIconImage1: TSVGIconImage
    Left = 8
    Top = 16
    Width = 65
    Height = 57
    AutoSize = False
    Proportional = False
    ImageList = dmSVGImageList.SVGIconImageList
    ImageIndex = 31
  end
  object Label1: TLabel
    Left = 69
    Top = 32
    Width = 253
    Height = 27
    AutoSize = False
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object btnOk: TButton
    Left = 318
    Top = 97
    Width = 67
    Height = 24
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 0
    OnClick = btnOkClick
  end
  object AdvGlowButton2: TButton
    Left = 398
    Top = 97
    Width = 67
    Height = 24
    Caption = 'Annulla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ModalResult = 2
    ParentFont = False
    TabOrder = 1
  end
  object PlannerMaskDatePicker1: TDateTimePicker
    Left = 342
    Top = 32
    Width = 123
    Height = 29
    Date = 44020.000000000000000000
    Time = 0.622337326385604700
    TabOrder = 2
    OnKeyPress = PlannerMaskDatePicker1KeyPress
  end
end
