object dlgVCLDocAttachments: TdlgVCLDocAttachments
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Documents Attachments'
  ClientHeight = 309
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    645
    309)
  PixelsPerInch = 96
  TextHeight = 13
  object lbGUID: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 639
    Height = 13
    Align = alTop
    AutoSize = False
    Caption = 'lbGUID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 24
    ExplicitTop = 16
    ExplicitWidth = 201
  end
  object edFileName: TEdit
    Left = 112
    Top = 67
    Width = 270
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    Text = 'edFileName'
    OnChange = edFileNameChange
  end
  object memDescription: TMemo
    Left = 112
    Top = 106
    Width = 525
    Height = 89
    Lines.Strings = (
      'memDescription')
    TabOrder = 1
  end
  object edDirectoryPath: TEdit
    Left = 388
    Top = 67
    Width = 249
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    ReadOnly = True
    TabOrder = 2
    Text = 'edFileName'
  end
  object btnSaveAttachment: TButton
    Left = 544
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Save File'
    ModalResult = 1
    TabOrder = 3
  end
  object btnUndoAttachment: TButton
    Left = 440
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Discard File'
    ModalResult = 2
    TabOrder = 4
  end
  object btnPreview: TButton
    Left = 3
    Top = 65
    Width = 103
    Height = 120
    Caption = 'Preview File'
    ImageAlignment = iaTop
    TabOrder = 5
    OnClick = btnPreviewClick
  end
  object btnReplaceFile: TButton
    Left = 8
    Top = 22
    Width = 629
    Height = 27
    Caption = 'Replace File / Upload and Replace the File'
    TabOrder = 6
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 280
    Top = 120
  end
end
