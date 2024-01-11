object OKRightDlg: TOKRightDlg
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Dialog'
  ClientHeight = 322
  ClientWidth = 528
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  DesignSize = (
    528
    322)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 425
    Height = 304
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
    ExplicitWidth = 281
    ExplicitHeight = 161
  end
  object Label1: TLabel
    Left = 24
    Top = 26
    Width = 102
    Height = 13
    Caption = 'Indirizzo Mail inviante'
  end
  object Label2: TLabel
    Left = 24
    Top = 121
    Width = 26
    Height = 13
    Caption = 'Porta'
  end
  object Label3: TLabel
    Left = 24
    Top = 73
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label4: TLabel
    Left = 71
    Top = 121
    Width = 32
    Height = 13
    Caption = 'Server'
  end
  object OKBtn: TButton
    Left = 444
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    ExplicitLeft = 300
  end
  object CancelBtn: TButton
    Left = 444
    Top = 38
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
    ExplicitLeft = 300
  end
  object edMailAddress: TEdit
    Left = 24
    Top = 42
    Width = 393
    Height = 21
    TabOrder = 2
    Text = 'edMailAddress'
  end
  object btnSend: TAdvGlowButton
    Left = 444
    Top = 69
    Width = 76
    Height = 28
    Caption = 'Test'
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    Rounded = False
    TabOrder = 3
    Appearance.BorderColor = 15000546
    Appearance.BorderColorHot = 16371364
    Appearance.BorderColorDown = 14983778
    Appearance.BorderColorChecked = 14327846
    Appearance.Color = 16250613
    Appearance.ColorTo = clNone
    Appearance.ColorChecked = 14327846
    Appearance.ColorCheckedTo = clNone
    Appearance.ColorDisabled = 16250871
    Appearance.ColorDisabledTo = clNone
    Appearance.ColorDown = 16244937
    Appearance.ColorDownTo = clNone
    Appearance.ColorHot = 16248808
    Appearance.ColorHotTo = clNone
    Appearance.ColorMirror = 16250613
    Appearance.ColorMirrorTo = clNone
    Appearance.ColorMirrorHot = 16248808
    Appearance.ColorMirrorHotTo = clNone
    Appearance.ColorMirrorDown = 16244937
    Appearance.ColorMirrorDownTo = clNone
    Appearance.ColorMirrorChecked = 14327846
    Appearance.ColorMirrorCheckedTo = clNone
    Appearance.ColorMirrorDisabled = 16250871
    Appearance.ColorMirrorDisabledTo = clNone
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
    Appearance.TextColorChecked = clWhite
  end
  object edPort: TEdit
    Left = 24
    Top = 137
    Width = 41
    Height = 21
    TabOrder = 4
    Text = 'edMailAddress'
  end
  object edPassword: TEdit
    Left = 24
    Top = 89
    Width = 393
    Height = 21
    TabOrder = 5
    Text = 'edMailAddress'
  end
  object edServer: TEdit
    Left = 71
    Top = 137
    Width = 346
    Height = 21
    TabOrder = 6
    Text = 'edMailAddress'
  end
  object RadioGroup1: TRadioGroup
    Left = 24
    Top = 184
    Width = 385
    Height = 97
    Caption = 'Sicurezza'
    TabOrder = 7
  end
  object JanuaMailController1: TJanuaMailController
    Verbose = False
    LogToFile = False
    JanuaLogger = dmCMSViewModel.JanuaCoreLogger1
    Language = jlaNone
    TestMode = False
    JanuaMailSender = dmCMSViewModel.JanuaMailSender1
    lbUserName = Label1
    edUserName = edMailAddress
    edUserPassword = edPassword
    edPort = edPort
    edServer = edServer
    btnCheck = btnSend
    Left = 456
    Top = 168
  end
  object AdvFormStyler1: TAdvFormStyler
    Style = tsWindows10
    Left = 256
    Top = 160
  end
end
