object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Pack Outlook Mail Demo'
  ClientHeight = 661
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 6
    Top = 134
    Width = 16
    Height = 13
    Caption = 'To:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 636
    Height = 41
    Align = alTop
    TabOrder = 0
    object btConnect: TButton
      Left = 16
      Top = 10
      Width = 110
      Height = 25
      Hint = 'Connect to Outlook'
      Caption = 'Connect'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btConnectClick
    end
    object btRemove: TButton
      Left = 132
      Top = 10
      Width = 110
      Height = 25
      Hint = 'Remove access to Outlook account'
      Caption = 'Remove access'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btRemoveClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 636
    Height = 620
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Mailbox'
      object Label4: TLabel
        Left = 3
        Top = 199
        Width = 43
        Height = 13
        Caption = 'Content:'
      end
      object WebBrowser1: TWebBrowser
        Left = 3
        Top = 218
        Width = 614
        Height = 371
        TabOrder = 0
        ControlData = {
          4C000000753F0000582600000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
      object cbFolders: TComboBox
        Left = 3
        Top = 5
        Width = 153
        Height = 21
        Style = csDropDownList
        TabOrder = 1
        Items.Strings = (
          '')
      end
      object btGetMails: TButton
        Left = 162
        Top = 3
        Width = 110
        Height = 25
        Caption = 'Get Mails'
        TabOrder = 2
        OnClick = btGetMailsClick
      end
      object lvMails: TListView
        Left = 3
        Top = 32
        Width = 614
        Height = 161
        Columns = <
          item
            Caption = 'From'
            Width = 150
          end
          item
            Caption = 'Subject'
            Width = 250
          end
          item
            Caption = 'Date'
            Width = 120
          end
          item
            Caption = 'Attachment'
          end>
        ColumnClick = False
        RowSelect = True
        TabOrder = 3
        ViewStyle = vsReport
        OnChange = lvMailsChange
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'New Email'
      ImageIndex = 1
      object Label3: TLabel
        Left = 3
        Top = 6
        Width = 16
        Height = 13
        Caption = 'To:'
      end
      object Label1: TLabel
        Left = 3
        Top = 174
        Width = 40
        Height = 13
        Caption = 'Subject:'
      end
      object Label5: TLabel
        Left = 3
        Top = 203
        Width = 65
        Height = 13
        Caption = 'Attachments:'
      end
      object Label2: TLabel
        Left = 3
        Top = 304
        Width = 28
        Height = 13
        Caption = 'Body:'
      end
      object Label7: TLabel
        Left = 3
        Top = 62
        Width = 16
        Height = 13
        Caption = 'Cc:'
      end
      object Label8: TLabel
        Left = 3
        Top = 118
        Width = 20
        Height = 13
        Caption = 'Bcc:'
      end
      object meTo: TMemo
        Left = 78
        Top = 3
        Width = 426
        Height = 50
        TabOrder = 0
      end
      object edSubject: TEdit
        Left = 78
        Top = 171
        Width = 427
        Height = 21
        TabOrder = 3
      end
      object lbFiles: TListBox
        Left = 78
        Top = 198
        Width = 426
        Height = 97
        ItemHeight = 13
        TabOrder = 4
      end
      object btAttachments: TButton
        Left = 510
        Top = 198
        Width = 110
        Height = 25
        Caption = 'Add File'
        TabOrder = 5
        OnClick = btAttachmentsClick
      end
      object btDelAttach: TButton
        Left = 510
        Top = 229
        Width = 110
        Height = 25
        Caption = 'Remove File'
        TabOrder = 6
        OnClick = btDelAttachClick
      end
      object meBody: TMemo
        Left = 77
        Top = 301
        Width = 543
        Height = 238
        TabOrder = 7
      end
      object cbHTML: TCheckBox
        Left = 78
        Top = 545
        Width = 97
        Height = 17
        Caption = 'Send as HTML'
        TabOrder = 8
      end
      object btSendMail: TButton
        Left = 510
        Top = 545
        Width = 110
        Height = 25
        Caption = 'Send Mail'
        TabOrder = 9
        OnClick = btSendMailClick
      end
      object meCC: TMemo
        Left = 78
        Top = 59
        Width = 427
        Height = 50
        TabOrder = 1
      end
      object meBCC: TMemo
        Left = 78
        Top = 115
        Width = 427
        Height = 50
        TabOrder = 2
      end
    end
  end
  object AdvOutlookMail1: TAdvOutlookMail
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'https://www.tmssoftware.com/site'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    Scopes.Strings = (
      'https://outlook.office.com/mail.readwrite'
      'https://outlook.office.com/mail.send'
      'offline_access')
    OnConnected = AdvOutlookMail1Connected
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 464
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 552
    Top = 8
  end
end
