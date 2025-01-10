inherited dlgVCLInputDateTime: TdlgVCLInputDateTime
  BorderStyle = bsDialog
  Caption = 'Inserisci Data/Ora'
  ClientHeight = 121
  ClientWidth = 481
  Font.Height = -12
  Position = poScreenCenter
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 497
  ExplicitHeight = 160
  TextHeight = 15
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
    Left = 79
    Top = 32
    Width = 243
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
    Top = 102
    Width = 481
    ExplicitTop = 86
    ExplicitWidth = 419
  end
  object btnOk: TButton
    Left = 319
    Top = 73
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
    TabOrder = 1
    OnClick = btnOkClick
  end
  object AdvGlowButton2: TButton
    Left = 406
    Top = 73
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
    TabOrder = 2
    OnClick = AdvGlowButton1Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 328
    Top = 32
    Width = 145
    Height = 23
    Date = 45665.000000000000000000
    Time = 0.518597881942696400
    Kind = dtkDateTime
    TabOrder = 3
  end
end
