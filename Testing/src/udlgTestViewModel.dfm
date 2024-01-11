object dlgTestViewModel: TdlgTestViewModel
  Left = 0
  Top = 0
  Caption = 'Test View Model Detail'
  ClientHeight = 531
  ClientWidth = 819
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object tbDocument: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 813
    Height = 46
    ButtonHeight = 21
    ButtonWidth = 31
    ShowCaptions = True
    TabOrder = 0
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 230
    Width = 813
    Height = 251
    ActivePage = tabDetailTest1
    Align = alTop
    TabOrder = 1
    object tabDetailTest1: TTabSheet
      Caption = 'Detail Test 1'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object DetailTest1: TTabSheet
      Caption = 'Detail Test 2'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 770
      ExplicitHeight = 196
    end
  end
  object btnUndo: TButton
    Left = 547
    Top = 487
    Width = 122
    Height = 25
    Caption = 'Undo'
    ModalResult = 2
    TabOrder = 2
  end
  object edButtonSave: TButton
    Left = 675
    Top = 487
    Width = 122
    Height = 25
    Caption = 'Save Document'
    ModalResult = 1
    TabOrder = 3
  end
  inline frameVCLTest1: TframeVCLTest
    AlignWithMargins = True
    Left = 3
    Top = 55
    Width = 813
    Height = 169
    Align = alTop
    TabOrder = 4
    ExplicitLeft = 3
    ExplicitTop = 55
    ExplicitWidth = 813
    ExplicitHeight = 169
    inherited lbMemo: TLabel
      Left = 488
      Top = 21
      ExplicitLeft = 488
      ExplicitTop = 21
    end
    inherited memMemoField: TMemo
      Left = 488
      Top = 42
      Width = 301
      Height = 127
      ExplicitLeft = 488
      ExplicitTop = 42
      ExplicitWidth = 301
      ExplicitHeight = 127
    end
  end
  object JanuaActionViewController1: TJanuaActionViewController
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ToolBar = tbDocument
    ButtonSize = jbs24
    Left = 552
    Top = 40
  end
end
