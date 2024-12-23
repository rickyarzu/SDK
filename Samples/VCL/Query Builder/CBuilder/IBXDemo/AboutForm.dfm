object fmAbout: TfmAbout
  Left = 256
  Top = 122
  BorderStyle = bsDialog
  Caption = 'About'
  ClientHeight = 224
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object paButton: TPanel
    Left = 0
    Top = 185
    Width = 417
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object buOK: TButton
      Left = 167
      Top = 7
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
  end
  object paClient: TPanel
    Left = 2
    Top = 4
    Width = 412
    Height = 176
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 1
    object imLogo: TImage
      Left = 8
      Top = 8
      Width = 32
      Height = 32
    end
    object laTitle: TLabel
      Left = 44
      Top = 8
      Width = 317
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'Advanced Query Builder VCL'#13#10'Demo Application'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laCopyright: TLabel
      Left = 6
      Top = 48
      Width = 400
      Height = 26
      Alignment = taCenter
      AutoSize = False
      Caption = 'Copyright (C) 1999-2021'#13#10'EMS Software Development'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laInfo: TLabel
      Left = 6
      Top = 88
      Width = 400
      Height = 33
      Alignment = taCenter
      AutoSize = False
      Caption = 'You can visit Advanced Query Builder site by the following URL:'
    end
    object laURL: TLabel
      Left = 6
      Top = 112
      Width = 400
      Height = 13
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'http://www.sqlmanager.net/products/tools/querybuilder'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = laURLClick
    end
  end
end
