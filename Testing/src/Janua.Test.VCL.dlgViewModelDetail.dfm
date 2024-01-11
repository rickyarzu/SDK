inherited dlgTestViewModelDetail: TdlgTestViewModelDetail
  BorderStyle = bsDialog
  Caption = 'Test View Model Detail'
  ClientHeight = 127
  ClientWidth = 569
  ParentFont = False
  Position = poScreenCenter
  ExplicitWidth = 575
  ExplicitHeight = 156
  PixelsPerInch = 96
  TextHeight = 13
  inline frameTestViewModelDetail1: TframeTestViewModelDetail
    Left = 0
    Top = 0
    Width = 569
    Height = 80
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 3
    ExplicitWidth = 569
    inherited grpDetail: TGroupBox
      Width = 569
      ExplicitLeft = 15
      ExplicitTop = 71
      ExplicitWidth = 569
      ExplicitHeight = 74
      inherited lbDetailGUID: TLabel
        Width = 300
        ExplicitWidth = 300
      end
    end
  end
  object edButtonSave: TButton
    Left = 443
    Top = 95
    Width = 122
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Save Document'
    ModalResult = 1
    TabOrder = 1
    ExplicitLeft = 586
    ExplicitTop = 164
  end
  object btnUndo: TButton
    Left = 308
    Top = 95
    Width = 122
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Undo'
    ModalResult = 2
    TabOrder = 2
    ExplicitLeft = 451
    ExplicitTop = 164
  end
end
