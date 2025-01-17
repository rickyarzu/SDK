inherited dlgTMSInputDate: TdlgTMSInputDate
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Inserire numero'
  ClientHeight = 129
  ClientWidth = 481
  Color = clWhite
  Font.Color = clBlack
  Font.Height = -16
  Position = poScreenCenter
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 497
  ExplicitHeight = 168
  TextHeight = 21
  object SVGIconImage1: TSVGIconImage [0]
    Left = 8
    Top = 16
    Width = 65
    Height = 57
    AutoSize = False
    ImageList = dmSVGImageList.SVGIconImageList
    ImageIndex = 31
    ImageName = '029-calendar'
    Proportional = False
  end
  object Label1: TLabel [1]
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
  inherited StatusBar: TStatusBar
    Top = 110
    Width = 481
    ExplicitTop = 110
    ExplicitWidth = 481
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
