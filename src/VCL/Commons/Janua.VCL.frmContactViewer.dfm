object frmContactViewerVCL: TfrmContactViewerVCL
  Left = 0
  Top = 0
  Caption = 'Visualizzatore Contatto'
  ClientHeight = 430
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 450
    Height = 430
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object imgContact: TImage
      Left = 24
      Top = 47
      Width = 96
      Height = 96
      Center = True
      Proportional = True
      Stretch = True
    end
    object lblNameCaption: TLabel
      Left = 144
      Top = 24
      Width = 41
      Height = 17
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPhoneCaption: TLabel
      Left = 144
      Top = 79
      Width = 58
      Height = 17
      Caption = 'Telefono:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblEmailCaption: TLabel
      Left = 144
      Top = 134
      Width = 38
      Height = 17
      Caption = 'Email:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCompanyCaption: TLabel
      Left = 24
      Top = 189
      Width = 53
      Height = 17
      Caption = 'Azienda:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTitleCaption: TLabel
      Left = 24
      Top = 244
      Width = 40
      Height = 17
      Caption = 'Ruolo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblAddressCaption: TLabel
      Left = 24
      Top = 299
      Width = 57
      Height = 17
      Caption = 'Indirizzo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnClose: TButton
      Left = 354
      Top = 374
      Width = 75
      Height = 36
      Caption = 'Chiudi'
      TabOrder = 6
      OnClick = btnCloseClick
    end
    object btnCopyAll: TButton
      Left = 24
      Top = 374
      Width = 148
      Height = 36
      Caption = 'Copia negli Appunti'
      TabOrder = 7
      OnClick = btnCopyAllClick
    end
    object edName: TEdit
      Left = 144
      Top = 47
      Width = 285
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edPhone: TEdit
      Left = 144
      Top = 102
      Width = 285
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object edEmail: TEdit
      Left = 144
      Top = 157
      Width = 285
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object edCompany: TEdit
      Left = 24
      Top = 212
      Width = 405
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object edTitle: TEdit
      Left = 24
      Top = 267
      Width = 405
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object memAddress: TMemo
      Left = 24
      Top = 322
      Width = 405
      Height = 40
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 5
    end
  end
end
