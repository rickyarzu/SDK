object dlgInputMemo: TdlgInputMemo
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Caricamento Indirizzi Mail'
  ClientHeight = 375
  ClientWidth = 613
  Color = clBtnFace
  ParentFont = True
  Position = poScreenCenter
  DesignSize = (
    613
    375)
  TextHeight = 15
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 510
    Height = 357
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
    ExplicitWidth = 281
    ExplicitHeight = 161
  end
  object Label1: TLabel
    Left = 24
    Top = 22
    Width = 488
    Height = 15
    Caption = 
      'Incolla qui gli indirizzi email da importare (il programma gesti' +
      'sce da solo eventuali doppioni)'
  end
  object OKBtn: TButton
    Left = 529
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 529
    Top = 38
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 24
    Top = 38
    Width = 473
    Height = 315
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
  end
end
