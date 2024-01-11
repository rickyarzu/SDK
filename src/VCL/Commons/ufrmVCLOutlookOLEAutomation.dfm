object frmVCLOutlookOLEAutomation: TfrmVCLOutlookOLEAutomation
  Left = 0
  Top = 0
  Caption = 'VCL Outlook OLE Automation'
  ClientHeight = 691
  ClientWidth = 961
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    961
    691)
  PixelsPerInch = 96
  TextHeight = 13
  object btnSynchro: TButton
    Left = 24
    Top = 8
    Width = 113
    Height = 49
    Caption = 'Sync Contacts'
    TabOrder = 0
    OnClick = btnSynchroClick
  end
  object EnhCRDBGrid1: TEnhCRDBGrid
    Left = 24
    Top = 64
    Width = 929
    Height = 603
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = UniDataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -11
    HighlightFont.Name = 'Tahoma'
    HighlightFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FirstName'
        Width = 255
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LastName'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMail'
        Width = 300
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 143
    Top = 8
    Width = 800
    Height = 50
    DataSource = UniDataSource1
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
  end
  object tbContacts: TVirtualTable
    Left = 440
    Top = 200
    Data = {04000000000000000000}
    object tbContactsFirstName: TStringField
      FieldName = 'FirstName'
      Size = 128
    end
    object tbContactsLastName: TStringField
      FieldName = 'LastName'
      Size = 128
    end
    object tbContactsEMail: TStringField
      FieldName = 'EMail'
      Size = 256
    end
  end
  object UniDataSource1: TUniDataSource
    DataSet = tbContacts
    Left = 440
    Top = 256
  end
end
