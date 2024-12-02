object fmConnect: TfmConnect
  Left = 192
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Connect To Database'
  ClientHeight = 253
  ClientWidth = 330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 330
    Height = 209
    Align = alClient
    Shape = bsFrame
  end
  object laDBFile: TLabel
    Left = 8
    Top = 11
    Width = 65
    Height = 13
    Caption = 'Database File'
  end
  object laUserName: TLabel
    Left = 8
    Top = 39
    Width = 53
    Height = 13
    Caption = 'User Name'
  end
  object laPassword: TLabel
    Left = 8
    Top = 67
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object laRole: TLabel
    Left = 8
    Top = 95
    Width = 22
    Height = 13
    Caption = 'Role'
  end
  object laCharset: TLabel
    Left = 8
    Top = 123
    Width = 36
    Height = 13
    Caption = 'Charset'
  end
  object Bevel2: TBevel
    Left = 302
    Top = 8
    Width = 21
    Height = 21
  end
  object edDBFile: TEdit
    Left = 108
    Top = 8
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object edUserName: TEdit
    Left = 108
    Top = 36
    Width = 193
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object edPassword: TEdit
    Left = 108
    Top = 63
    Width = 193
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
  object edRole: TEdit
    Left = 108
    Top = 91
    Width = 193
    Height = 21
    TabOrder = 4
  end
  object cbCharset: TComboBox
    Left = 108
    Top = 118
    Width = 193
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'NONE'
      'ASCII'
      'BIG_5'
      'CYRL'
      'DOS437'
      'DOS850'
      'DOS852'
      'DOS857'
      'DOS860'
      'DOS861'
      'DOS863'
      'DOS865'
      'DOS866'
      'EUCJ_0208'
      'ISO8859_1'
      'NEXT'
      'NONE'
      'OCTETS'
      'SJIS_0208'
      'UNICODE_FSS'
      'WIN1250'
      'WIN1251'
      'WIN1252'
      'WIN1253'
      'WIN1254')
  end
  object paButtons: TPanel
    Left = 0
    Top = 209
    Width = 330
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 6
    object buOk: TButton
      Left = 68
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object buCancel: TButton
      Left = 184
      Top = 10
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object buBrowse: TButton
    Left = 303
    Top = 9
    Width = 19
    Height = 19
    Hint = 'Browse'
    Caption = '...'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = buBrowseClick
  end
  object rgDialect: TRadioGroup
    Left = 8
    Top = 148
    Width = 313
    Height = 50
    Caption = ' InterBase/FireBird Dialect '
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Dialect 1'
      'Dialect 3')
    TabOrder = 7
  end
  object dlgOpen: TOpenDialog
    DefaultExt = 'gdb'
    Filter = 'InterBase database files (*.gdb)|*.gdb|All Files (*.*)|*.*'
    Options = [ofReadOnly, ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Title = 'Open SQL File'
    Left = 4
    Top = 156
  end
end
