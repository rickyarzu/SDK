object frmContactViewerUniGUI: TfrmContactViewerUniGUI
  Left = 0
  Top = 0
  ClientHeight = 446
  ClientWidth = 447
  Caption = 'Contact Viewer'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  TextHeight = 15
  object pnlMain: TUniPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 446
    Hint = ''
    Align = alClient
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = clWhite
    ExplicitWidth = 450
    ExplicitHeight = 460
    object imgContact: TUniImage
      Left = 24
      Top = 47
      Width = 96
      Height = 96
      Hint = ''
      Center = True
      Stretch = True
      Proportional = True
      Url = '/images/default_avatar.png'
    end
    object lblNameCaption: TUniLabel
      Left = 144
      Top = 24
      Width = 35
      Height = 13
      Hint = ''
      Caption = 'Nome:'
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 1
    end
    object lblPhoneCaption: TUniLabel
      Left = 144
      Top = 79
      Width = 48
      Height = 13
      Hint = ''
      Caption = 'Telefono:'
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 2
    end
    object lblEmailCaption: TUniLabel
      Left = 144
      Top = 134
      Width = 31
      Height = 13
      Hint = ''
      Caption = 'Email:'
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 3
    end
    object lblCompanyCaption: TUniLabel
      Left = 24
      Top = 189
      Width = 45
      Height = 13
      Hint = ''
      Caption = 'Azienda:'
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 4
    end
    object lblTitleCaption: TUniLabel
      Left = 24
      Top = 244
      Width = 34
      Height = 13
      Hint = ''
      Caption = 'Ruolo:'
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 5
    end
    object lblAddressCaption: TUniLabel
      Left = 24
      Top = 299
      Width = 47
      Height = 13
      Hint = ''
      Caption = 'Indirizzo:'
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 6
    end
    object btnClose: TUniButton
      Left = 354
      Top = 395
      Width = 75
      Height = 36
      Hint = ''
      Caption = 'Chiudi'
      TabOrder = 7
    end
    object btnCopyAll: TUniButton
      Left = 24
      Top = 395
      Width = 148
      Height = 36
      Hint = ''
      Caption = 'Copia negli Appunti'
      TabOrder = 8
    end
    object edName: TUniEdit
      Left = 144
      Top = 47
      Width = 285
      Height = 25
      Hint = ''
      Text = ''
      TabOrder = 9
      ReadOnly = True
    end
    object edPhone: TUniEdit
      Left = 144
      Top = 102
      Width = 285
      Height = 25
      Hint = ''
      Text = ''
      TabOrder = 10
      ReadOnly = True
    end
    object edEmail: TUniEdit
      Left = 144
      Top = 157
      Width = 285
      Height = 25
      Hint = ''
      Text = ''
      TabOrder = 11
      ReadOnly = True
    end
    object edCompany: TUniEdit
      Left = 24
      Top = 212
      Width = 405
      Height = 25
      Hint = ''
      Text = ''
      TabOrder = 12
      ReadOnly = True
    end
    object edTitle: TUniEdit
      Left = 24
      Top = 267
      Width = 405
      Height = 25
      Hint = ''
      Text = ''
      TabOrder = 13
      ReadOnly = True
    end
    object memAddress: TUniMemo
      Left = 24
      Top = 322
      Width = 405
      Height = 62
      Hint = ''
      Lines.Strings = (
        '')
      ReadOnly = True
      TabOrder = 14
    end
  end
end
