object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Google mail demo'
  ClientHeight = 866
  ClientWidth = 651
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 651
    Height = 41
    Align = alTop
    TabOrder = 0
    object lblMsg: TLabel
      Left = 144
      Top = 13
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 10
      Top = 10
      Width = 110
      Height = 25
      Caption = 'Connect'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 651
    Height = 825
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'New Email'
      object Label1: TLabel
        Left = 34
        Top = 24
        Width = 16
        Height = 13
        Caption = 'To:'
      end
      object Label6: TLabel
        Left = 254
        Top = 24
        Width = 30
        Height = 13
        Caption = 'Labels'
      end
      object Label2: TLabel
        Left = 34
        Top = 75
        Width = 18
        Height = 13
        Caption = 'CC:'
      end
      object Label3: TLabel
        Left = 27
        Top = 124
        Width = 24
        Height = 13
        Caption = 'BCC:'
      end
      object Label5: TLabel
        Left = 10
        Top = 224
        Width = 40
        Height = 13
        Caption = 'Subject:'
      end
      object Label4: TLabel
        Left = 2
        Top = 251
        Width = 46
        Height = 13
        Caption = 'Message:'
      end
      object lblErrorMsg: TLabel
        Left = 396
        Top = 718
        Width = 53
        Height = 13
        Caption = 'lblErrorMsg'
      end
      object meToRecipients: TMemo
        Left = 56
        Top = 21
        Width = 185
        Height = 45
        TabOrder = 0
      end
      object cbLabels: TCheckListBox
        Left = 290
        Top = 21
        Width = 182
        Height = 194
        ItemHeight = 13
        TabOrder = 1
      end
      object meCC: TMemo
        Left = 56
        Top = 72
        Width = 185
        Height = 45
        TabOrder = 2
      end
      object meBCC: TMemo
        Left = 56
        Top = 123
        Width = 185
        Height = 45
        TabOrder = 3
      end
      object txtSubject: TEdit
        Left = 56
        Top = 221
        Width = 416
        Height = 21
        TabOrder = 4
        Text = 'Lorem'
        TextHint = 'Subject'
      end
      object meBody: TMemo
        Left = 56
        Top = 248
        Width = 416
        Height = 249
        Lines.Strings = (
          
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi d' +
            'ictum ultrices magna '
          
            'placerat scelerisque. In diam arcu, convallis at dignissim finib' +
            'us, porta vel tortor. '
          
            'Praesent elementum, arcu sed commodo eleifend, metus magna tinci' +
            'dunt lectus, et '
          
            'sollicitudin justo erat at orci. Morbi eget neque id elit blandi' +
            't eleifend. Nullam a dui ut '
          
            'tortor convallis tempus. Vivamus ligula felis, commodo quis dolo' +
            'r in, blandit rutrum '
          
            'nisi. In rutrum, urna et malesuada volutpat, dolor sem aliquam s' +
            'em, ut maximus '
          
            'turpis risus sed est. Curabitur congue lacinia euismod. Morbi ti' +
            'ncidunt, enim non '
          
            'aliquet hendrerit, dolor mauris consectetur eros, eget eleifend ' +
            'lectus ante id leo. '
          'Curabitur a neque eget nisl dignissim porttitor at feugiat leo. '
          ''
          
            'Aenean at est eget diam interdum rutrum. Curabitur laoreet felis' +
            ' vel lacus faucibus '
          
            'luctus. Praesent ut pulvinar justo. Aenean eget nisi at odio por' +
            'ttitor mollis. Cras '
          
            'tincidunt neque metus, et auctor nisl pretium dapibus. Mauris bl' +
            'andit, purus vel '
          
            'facilisis vehicula, felis mauris rutrum nisl, non faucibus nunc ' +
            'lacus sit amet diam. '
          
            'Suspendisse eget commodo nibh. Pellentesque blandit ligula eu he' +
            'ndrerit imperdiet.')
        TabOrder = 5
      end
      object rgMessageType: TRadioGroup
        Left = 56
        Top = 503
        Width = 185
        Height = 41
        Caption = 'Send as:'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Plain Text'
          'HTML')
        TabOrder = 6
      end
      object btnAttachFile: TButton
        Left = 396
        Top = 550
        Width = 75
        Height = 25
        Caption = 'Add File'
        TabOrder = 7
        OnClick = btnAttachFileClick
      end
      object btnSendMail: TButton
        Left = 396
        Top = 519
        Width = 75
        Height = 25
        Caption = 'Send Mail'
        TabOrder = 8
        OnClick = btnSendMailClick
      end
      object btnRemove: TButton
        Left = 396
        Top = 581
        Width = 75
        Height = 25
        Caption = 'Remove'
        Enabled = False
        TabOrder = 9
        OnClick = btnRemoveClick
      end
      object lstFiles: TListBox
        Left = 56
        Top = 550
        Width = 334
        Height = 186
        ItemHeight = 13
        TabOrder = 10
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'MailBox'
      ImageIndex = 1
      object Button2: TButton
        Left = 173
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Get Mails'
        TabOrder = 0
        OnClick = Button2Click
      end
      object lvMails: TListView
        Left = 22
        Top = 55
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
          end>
        ColumnClick = False
        RowSelect = True
        TabOrder = 1
        ViewStyle = vsReport
        OnChange = lvMailsChange
      end
      object WebBrowser1: TWebBrowser
        Left = 22
        Top = 231
        Width = 611
        Height = 446
        TabOrder = 2
        ControlData = {
          4C000000263F0000182E00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
      object ComboBox1: TComboBox
        Left = 22
        Top = 26
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 3
      end
    end
  end
  object AdvGMail1: TAdvGMail
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888/'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    Scopes.Strings = (
      'https://www.googleapis.com/auth/userinfo.profile'
      'https://www.googleapis.com/auth/userinfo.email'
      'https://www.googleapis.com/auth/gmail.modify'
      'https://www.googleapis.com/auth/gmail.compose'
      'https://www.googleapis.com/auth/gmail.readonly')
    OnReceivedAccessToken = AdvGMail1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Mails = <>
    Left = 440
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 392
    Top = 8
  end
end
