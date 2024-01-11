object FRMGoogleCalendar: TFRMGoogleCalendar
  Left = 0
  Top = 0
  Caption = 'sgcWebSockets - Google Calendar API Client'
  ClientHeight = 842
  ClientWidth = 507
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 13
  object pageBody: TPageControl
    Left = 0
    Top = 161
    Width = 507
    Height = 681
    ActivePage = tabDemo
    Align = alClient
    TabOrder = 0
    TabWidth = 100
    object tabDemo: TTabSheet
      Caption = 'Calendar Demo'
      ImageIndex = 1
      DesignSize = (
        499
        653)
      object groupCalendars: TGroupBox
        Left = 3
        Top = 3
        Width = 479
        Height = 302
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Calendars'
        TabOrder = 0
        DesignSize = (
          479
          302)
        object Label11: TLabel
          Left = 16
          Top = 24
          Width = 75
          Height = 13
          Caption = 'Select Calendar'
        end
        object Label12: TLabel
          Left = 16
          Top = 234
          Width = 85
          Height = 13
          Caption = 'Next Sync Token:'
        end
        object Label13: TLabel
          Left = 42
          Top = 261
          Width = 59
          Height = 13
          Caption = 'Sync Token:'
        end
        object listCalendars: TListBox
          Left = 16
          Top = 74
          Width = 451
          Height = 151
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnClick = listCalendarsClick
          OnDblClick = listCalendarsDblClick
        end
        object btnCalendarNew: TButton
          Left = 17
          Top = 43
          Width = 49
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'New'
          ImageIndex = 2
          Images = ImageList1
          TabOrder = 1
          OnClick = btnCalendarNewClick
        end
        object btnCalendarEdit: TButton
          Left = 72
          Top = 43
          Width = 50
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Edit'
          ImageIndex = 3
          Images = ImageList1
          TabOrder = 2
          OnClick = btnCalendarEditClick
        end
        object btnCalendarDelete: TButton
          Left = 128
          Top = 43
          Width = 58
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Delete'
          ImageIndex = 1
          Images = ImageList1
          TabOrder = 3
          OnClick = btnCalendarDeleteClick
        end
        object btnCalendarRefresh: TButton
          Left = 192
          Top = 43
          Width = 66
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Refresh'
          ImageIndex = 0
          Images = ImageList1
          TabOrder = 4
          OnClick = btnCalendarRefreshClick
        end
        object txtCalendarNextSyncToken: TEdit
          Left = 107
          Top = 231
          Width = 360
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          ParentColor = True
          ReadOnly = True
          TabOrder = 5
        end
        object txtCalendarSyncToken: TEdit
          Left = 107
          Top = 258
          Width = 279
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 6
        end
        object btnCalendarsChanges: TButton
          Left = 393
          Top = 256
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Changes'
          ImageIndex = 4
          Images = ImageList1
          TabOrder = 7
          OnClick = btnCalendarsChangesClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 311
        Width = 479
        Height = 337
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Events'
        TabOrder = 1
        DesignSize = (
          479
          337)
        object Label14: TLabel
          Left = 15
          Top = 269
          Width = 85
          Height = 13
          Caption = 'Next Sync Token:'
        end
        object Label15: TLabel
          Left = 41
          Top = 296
          Width = 59
          Height = 13
          Caption = 'Sync Token:'
        end
        object Label16: TLabel
          Left = 54
          Top = 242
          Width = 47
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Order By:'
          ExplicitLeft = 53
        end
        object listEvents: TListBox
          Left = 16
          Top = 51
          Width = 451
          Height = 182
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnDblClick = listEventsDblClick
        end
        object chkEventByDate: TCheckBox
          Left = 206
          Top = 241
          Width = 85
          Height = 17
          Caption = 'Filter by Date:'
          TabOrder = 1
          OnClick = chkEventByDateClick
        end
        object dateFromEvents: TDateTimePicker
          Left = 297
          Top = 240
          Width = 81
          Height = 21
          Date = 43831.000000000000000000
          Time = 43831.000000000000000000
          TabOrder = 2
          OnChange = dateFromEventsChange
        end
        object dateToEvents: TDateTimePicker
          Left = 385
          Top = 240
          Width = 81
          Height = 21
          Date = 43831.000000000000000000
          Time = 43831.000000000000000000
          TabOrder = 3
          OnChange = dateToEventsChange
        end
        object btnEventEdit: TButton
          Left = 72
          Top = 20
          Width = 50
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Edit'
          ImageIndex = 3
          Images = ImageList1
          TabOrder = 4
          OnClick = btnEventEditClick
        end
        object btnEventNew: TButton
          Left = 17
          Top = 20
          Width = 49
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'New'
          ImageIndex = 2
          Images = ImageList1
          TabOrder = 5
          OnClick = btnEventNewClick
        end
        object btnEventDelete: TButton
          Left = 128
          Top = 20
          Width = 58
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Delete'
          ImageIndex = 1
          Images = ImageList1
          TabOrder = 6
          OnClick = btnEventDeleteClick
        end
        object btnEventRefresh: TButton
          Left = 192
          Top = 20
          Width = 66
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Refresh'
          ImageIndex = 0
          Images = ImageList1
          TabOrder = 7
          OnClick = btnEventRefreshClick
        end
        object txtEventNextSyncToken: TEdit
          Left = 106
          Top = 266
          Width = 361
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          ParentColor = True
          ReadOnly = True
          TabOrder = 8
        end
        object txtEventSyncToken: TEdit
          Left = 106
          Top = 293
          Width = 279
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 9
        end
        object cboEventsOrderBy: TComboBox
          Left = 108
          Top = 239
          Width = 74
          Height = 21
          Style = csDropDownList
          Anchors = [akTop, akRight]
          ItemIndex = 1
          TabOrder = 10
          Text = 'StartTime'
          OnChange = cboEventsOrderByChange
          Items.Strings = (
            'None'
            'StartTime'
            'Updated')
        end
        object btnEventsChanged: TButton
          Left = 392
          Top = 291
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Changes'
          ImageIndex = 4
          Images = ImageList1
          TabOrder = 11
          OnClick = btnEventsChangedClick
        end
      end
    end
    object tabAPI: TTabSheet
      Caption = 'Calendar API'
      object pnlAPI: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 493
        Height = 173
        Align = alTop
        TabOrder = 0
        object PageControl1: TPageControl
          Left = 1
          Top = 1
          Width = 491
          Height = 171
          ActivePage = tabACL
          Align = alClient
          TabOrder = 0
          object tabACL: TTabSheet
            Caption = 'ACL'
            object Label1: TLabel
              Left = 24
              Top = 15
              Width = 56
              Height = 13
              Caption = 'Calendar Id'
            end
            object Label4: TLabel
              Left = 216
              Top = 15
              Width = 34
              Height = 13
              Caption = 'Rule Id'
            end
            object btnExecuteACL: TButton
              Left = 24
              Top = 72
              Width = 75
              Height = 25
              Caption = 'Execute'
              TabOrder = 0
              OnClick = btnExecuteACLClick
            end
            object txtACLCalendarId: TEdit
              Left = 24
              Top = 34
              Width = 170
              Height = 21
              TabOrder = 1
            end
            object txtACLRuleId: TEdit
              Left = 216
              Top = 34
              Width = 209
              Height = 21
              TabOrder = 2
            end
            object cboACL: TComboBox
              Left = 121
              Top = 74
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemIndex = 3
              TabOrder = 3
              Text = 'List'
              Items.Strings = (
                'Delete'
                'Get'
                'Insert'
                'List'
                'Patch'
                'Update'
                'Watch')
            end
          end
          object tabCalendarList: TTabSheet
            Caption = 'CalendarList'
            ImageIndex = 1
            object Label5: TLabel
              Left = 24
              Top = 18
              Width = 56
              Height = 13
              Caption = 'Calendar Id'
            end
            object btnExecuteCalendarList: TButton
              Left = 24
              Top = 72
              Width = 75
              Height = 25
              Caption = 'Execute'
              TabOrder = 0
              OnClick = btnExecuteCalendarListClick
            end
            object cboCalendarList: TComboBox
              Left = 121
              Top = 74
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemIndex = 3
              TabOrder = 1
              Text = 'List'
              Items.Strings = (
                'Delete'
                'Get'
                'Insert'
                'List'
                'Patch'
                'Update'
                'Watch')
            end
            object txtCalendarListCalendarId: TEdit
              Left = 24
              Top = 37
              Width = 217
              Height = 21
              TabOrder = 2
            end
          end
          object tabCalendar: TTabSheet
            Caption = 'Calendar'
            ImageIndex = 2
            object Label6: TLabel
              Left = 32
              Top = 26
              Width = 56
              Height = 13
              Caption = 'Calendar Id'
            end
            object txtCalendarId: TEdit
              Left = 32
              Top = 45
              Width = 242
              Height = 21
              TabOrder = 0
            end
            object btnExecuteCalendar: TButton
              Left = 32
              Top = 80
              Width = 75
              Height = 25
              Caption = 'Execute'
              TabOrder = 1
              OnClick = btnExecuteCalendarClick
            end
            object cboCalendar: TComboBox
              Left = 129
              Top = 82
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemIndex = 2
              TabOrder = 2
              Text = 'Get'
              Items.Strings = (
                'Clear'
                'Delete'
                'Get'
                'Insert'
                'Patch'
                'Update')
            end
          end
          object tabChannel: TTabSheet
            Caption = 'Channel'
            ImageIndex = 3
            object Label7: TLabel
              Left = 32
              Top = 23
              Width = 10
              Height = 13
              Caption = 'Id'
            end
            object Label8: TLabel
              Left = 224
              Top = 23
              Width = 58
              Height = 13
              Caption = 'Resource Id'
            end
            object txtChannelId: TEdit
              Left = 32
              Top = 42
              Width = 170
              Height = 21
              TabOrder = 0
            end
            object txtChannelResourceId: TEdit
              Left = 224
              Top = 42
              Width = 209
              Height = 21
              TabOrder = 1
            end
            object btnExecuteChannel: TButton
              Left = 32
              Top = 80
              Width = 75
              Height = 25
              Caption = 'Execute'
              TabOrder = 2
              OnClick = btnExecuteChannelClick
            end
          end
          object tabColor: TTabSheet
            Caption = 'Color'
            ImageIndex = 4
            object btnExecuteColor: TButton
              Left = 24
              Top = 40
              Width = 75
              Height = 25
              Caption = 'Execute'
              TabOrder = 0
              OnClick = btnExecuteColorClick
            end
          end
          object tabEvent: TTabSheet
            Caption = 'Event'
            ImageIndex = 5
            object Label9: TLabel
              Left = 24
              Top = 15
              Width = 56
              Height = 13
              Caption = 'Calendar Id'
            end
            object Label10: TLabel
              Left = 216
              Top = 15
              Width = 41
              Height = 13
              Caption = 'Event Id'
            end
            object txtEventCalendarId: TEdit
              Left = 24
              Top = 34
              Width = 170
              Height = 21
              TabOrder = 0
            end
            object txtEventId: TEdit
              Left = 216
              Top = 34
              Width = 209
              Height = 21
              TabOrder = 1
            end
            object cboEvent: TComboBox
              Left = 121
              Top = 74
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemIndex = 5
              TabOrder = 2
              Text = 'List'
              Items.Strings = (
                'Delete'
                'Get'
                'Import'
                'Insert'
                'Instances'
                'List'
                'Move'
                'Patch'
                'QuickAdd'
                'Update'
                'Watch')
            end
            object btnExecuteEvent: TButton
              Left = 24
              Top = 72
              Width = 75
              Height = 25
              Caption = 'Execute'
              TabOrder = 3
              OnClick = btnExecuteEventClick
            end
          end
          object tabFreebusy: TTabSheet
            Caption = 'Freebusy'
            ImageIndex = 6
            object btnExecuteFreebusy: TButton
              Left = 24
              Top = 56
              Width = 75
              Height = 25
              Caption = 'Execute'
              TabOrder = 0
              OnClick = btnExecuteFreebusyClick
            end
            object dateFromFreeBusy: TDateTimePicker
              Left = 24
              Top = 13
              Width = 186
              Height = 21
              Date = 44120.000000000000000000
              Time = 0.646075960648886400
              TabOrder = 1
            end
            object dateToFreeBusy: TDateTimePicker
              Left = 224
              Top = 13
              Width = 186
              Height = 21
              Date = 44120.000000000000000000
              Time = 0.646118784723512400
              TabOrder = 2
            end
          end
          object tabSettings: TTabSheet
            Caption = 'Settings'
            ImageIndex = 7
            object tabExecuteSettings: TButton
              Left = 24
              Top = 32
              Width = 75
              Height = 25
              Caption = 'Execute'
              TabOrder = 0
              OnClick = tabExecuteSettingsClick
            end
            object cboSettings: TComboBox
              Left = 121
              Top = 34
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemIndex = 1
              TabOrder = 1
              Text = 'List'
              Items.Strings = (
                'Get'
                'List'
                'Watch')
            end
          end
        end
      end
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 182
        Width = 493
        Height = 468
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 1
        object memoLog: TMemo
          Left = 1
          Top = 1
          Width = 491
          Height = 466
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 501
    Height = 155
    Align = alTop
    TabOrder = 1
    object PageControl2: TPageControl
      Left = 1
      Top = 1
      Width = 499
      Height = 153
      ActivePage = tabOAuth2
      Align = alClient
      TabOrder = 0
      object tabOAuth2: TTabSheet
        Caption = 'OAuth2'
        object Label2: TLabel
          Left = 47
          Top = 23
          Width = 40
          Height = 13
          Caption = 'Client Id'
        end
        object Label3: TLabel
          Left = 26
          Top = 59
          Width = 61
          Height = 13
          Caption = 'Client Secret'
        end
        object RadioGroup2: TRadioGroup
          Left = 0
          Top = 0
          Width = 491
          Height = 125
          Align = alClient
          Caption = 'Google API'
          TabOrder = 0
        end
        object txtClientId: TEdit
          Left = 100
          Top = 20
          Width = 285
          Height = 21
          TabOrder = 1
          OnChange = txtClientIdChange
        end
        object txtClientSecret: TEdit
          Left = 100
          Top = 56
          Width = 285
          Height = 21
          TabOrder = 2
          OnChange = txtClientSecretChange
        end
      end
      object tabServiceAccount: TTabSheet
        Caption = 'Service Account'
        ImageIndex = 1
        object Label17: TLabel
          Left = 0
          Top = 10
          Width = 78
          Height = 13
          Caption = 'ServiceAccount:'
        end
        object Label18: TLabel
          Left = -3
          Top = 37
          Width = 72
          Height = 13
          Caption = 'Private Key Id:'
        end
        object Label19: TLabel
          Left = 10
          Top = 64
          Width = 59
          Height = 13
          Caption = 'Private Key:'
        end
        object Label20: TLabel
          Left = 249
          Top = 10
          Width = 40
          Height = 13
          Caption = 'Subject:'
        end
        object txtJWTClientEmail: TEdit
          Left = 75
          Top = 7
          Width = 166
          Height = 21
          TabOrder = 0
          OnChange = txtJWTClientEmailChange
        end
        object txtJWTPrivateKeyId: TEdit
          Left = 75
          Top = 34
          Width = 390
          Height = 21
          TabOrder = 1
          OnChange = txtJWTPrivateKeyIdChange
        end
        object memoJWTPrivateKey: TMemo
          Left = 75
          Top = 61
          Width = 318
          Height = 53
          TabOrder = 2
          OnChange = memoJWTPrivateKeyChange
        end
        object btnLoadJSONSettings: TButton
          Left = 399
          Top = 61
          Width = 66
          Height = 53
          Caption = 'Load JSON Settings'
          TabOrder = 3
          WordWrap = True
          OnClick = btnLoadJSONSettingsClick
        end
        object txtJWTSubject: TEdit
          Left = 295
          Top = 7
          Width = 170
          Height = 21
          TabOrder = 4
          OnChange = txtJWTSubjectChange
        end
      end
    end
  end
  object GoogleCalendar: TsgcHTTPGoogleCloud_Calendar_Client
    GoogleCloudOptions.Authentication = gcaOAuth2
    GoogleCloudOptions.JWT.Algorithm = jwtRS256
    GoogleCloudOptions.JWT.API_Endpoint = 'https://calendar.googleapis.com/'
    GoogleCloudOptions.JWT.Expiry = 3600
    GoogleCloudOptions.OAuth2.LocalIP = '127.0.0.1'
    GoogleCloudOptions.OAuth2.LocalPort = 8080
    LogFile.Enabled = False
    Scopes.CalendarAddOn = False
    Scopes.CalendarsReadOnly = False
    Scopes.CalendarsReadWrite = True
    Scopes.EventsReadOnly = False
    Scopes.EventsReadWrite = True
    Scopes.Settings = False
    OnAuthToken = GoogleCalendarAuthToken
    OnError = GoogleCalendarError
    Left = 24
    Top = 32
  end
  object ImageList1: TImageList
    Left = 360
    Top = 88
    Bitmap = {
      494C010106000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000099330000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      00000000000000000000CD6C0B00D27010009835000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E80AA000E80
      AA000E80AA000E80AA0099330000FDFEFE00FDFEFE00FDFEFE008EA4FD00B8C6
      FD00FDFEFE009933000000000000000000000000000000000000000000000000
      00000000000000000000CD6C0B00E7D7A5009835000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000078DBB0049D5EE0023D7
      FE0036D9FE006FE6FF0099330000FDFEFE00FDFEFE007E98FC000335FB00597A
      FC00FDFEFE009933000000000000000000000000000000000000000000000000
      00000000000000000000CD6C0B00E7D7A5009835000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000D6DEFE004368FC000335FB004368FC000335
      FB00D9E0FE009933000000000000000000000000000000000000000000000000
      00000000000000000000CD6C0B00E7D7A5009835000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF00993300005274FC001442FB00BCC9FD00EFF2FE001A47
      FB004F72FC009733040000000000000000000000000000000000000000000000
      00000000000000000000CD6C0B00E7D7A5009835000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000E4EAFE00D9E0FE00FDFEFE00FDFEFE0098AC
      FD000335FB006434590000000000000000000000000000000000000000000000
      00000000000000000000CD6C0B00E7D7A5009835000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00EBFBFF0099330000FDFEFE00FDFEFE00FDFEFE00FDFEFE00FDFE
      FE005274FC000335FB0000000000000000000000000000000000000000000000
      00000000000000000000CD6C0B00E7D7A5009835000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A2CB0099330000993300009933000099330000993300009933
      00008F3311002235C8000335FB00000000000000000000000000000000000000
      00000000000000000000CD6C0B00E7D7A5009835000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E3000682B6000E80AA00000000000000
      000000000000000000000335FB000335FB000000000000000000000000000000
      00000000000000000000CD6C0B00E7D7A5009835000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000335FB000000000000000000000000000000
      00000000000000000000CD6C0B00E7D7A5009835000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000993F0800A28D75006C29070000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000166990001669900016699000166990001669900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      0000000000000000000000000000000000009835000098350000983500009835
      00009835000001669900CBE0F9001798C6001798C600016699006C2907009835
      0000983500009835000098350000983500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000078DBB00FDFEFE00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      000000000000000000000000000000000000D2701000E7D7A500E7D7A500E7D7
      A500E7D7A50001669900CFF0F800CBE0F9001798C60001669900A28D7500E7D7
      A500E7D7A500E7D7A500E7D7A500D27010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      000000000000000000000000000000000000CD6C0B00CD6C0B00CD6C0B00CD6C
      0B00CD6C0B0001669900E7F0F300CFF0F800CBE0F90001669900993F0800CD6C
      0B00CD6C0B00CD6C0B00CD6C0B00CD6C0B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000166990001669900016699000166990001669900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2A6A400C2A6
      A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6
      A400C2A6A400C2A6A40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008750D0008750D000875
      0D0008750D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006D7C94006F7C88000000000000000000C2A6A400FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00C2A6A40000000000000000000000000000000000000000000D80
      AA000D80AA000D80AA000D80AA000D80AA000D80AA0000000000000000000000
      00000000000000000000000000000000000000000000000000000E80AA000E80
      AA000E80AA000E80AA000E80AA000E80AA000000000008750D0013AA220010A6
      1D0008750D0000000000000000000000000000000000000000000D7FA9000E80
      AA000D7FA9000E80AA000E80AA001081AB000000000000000000000000000000
      000000000000788295001F89E00059A9DC000000000000000000C2A6A400FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00D8EBD600018A0200018A0200D8EBD600FEFC
      FB00FEFCFB00C2A6A40000000000000000000000000000000000078DBB0049D5
      EE0023D6FD0036D9FE006FE6FF008DE7FA0044BADD000D80AA00000000000000
      00000000000000000000000000000000000000000000078DBB0049D5EE0023D7
      FE0036D8FD006FE6FF008DE7FA0044BADD000E80AA0008750D001AB12D0013AA
      220008750D0000000000000000000000000000000000048CB90048D5EE0022D7
      FC0035D8FD006FE6FF008DE6FA0044BADD000E80AA0000000000000000000000
      0000788295002087DE004EB7FF0057AEF4000000000000000000C2A6A400FEFB
      F700FEFBF700018A0200D8EAD200018A0200D8EAD200D8EAD200018A0200FEFB
      F700FEFBF700C2A6A400000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0008750D0008750D0008750D0025BD3E001CB4
      310008750D0008750D0008750D0008750D00048CB9008CFAFD0058E9FD0022D7
      FC0035D8FD0070E6FF008DE6FA004ABFE0000F9DCE001180A700000000008B86
      97001F7ECE004EB7FF0057AEF400000000000000000000000000C2A6A400FEF9
      F400FEF9F400018A0200018A0200D8E8D000FEF9F400FEF9F400D8E8D000FEF9
      F400FEF9F400C2A6A400000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A003E6EFF00285BFF001248FF000236FF000029
      F900001DEC0000009A000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D003CD4620035CE590030C952002CC3490026BE
      410025BD3E001AB12D0017AF2A0008750D00088EBC008CFAFD0058E9FD0022D7
      FC0035D8FD0075D3E900B1979400C2A69A00C6AEA000AE877C008C6B6C006092
      BD004EB7FF004EB7FF0000000000000000000000000000000000C2A6A400FEF7
      F000FEF7F000018A0200018A0200018A0200FEF7F000FEF7F000FEF7F000FEF7
      F000FEF7F000C2A6A400000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D4F80000009A004474FF003264FF001B50FF00083CFF000029
      F9000022F10000009A000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0041DA6D0041DA6D0038D15E0035CE59002CC3
      49002AC1470025BD3E0020B8360008750D00088EBC008CFAFD0058E9FD0024D8
      FD0046C6E400AB939500ECDDCC00FEFED600FFFFE400F7F2D900CFB7A100AD85
      80004EB7FF000000000000000000000000000000000000000000C2A6A400FEF5
      EC00FEF5EC00FEF5EC00FEF5EC00FEF5EC00018A0200018A0200018A0200FEF5
      EC00FEF5EC00C2A6A400000000000000000000000000078DBB00B3FCFE00B6F6
      FF00C6F5FF00E1F8FD0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A000000000000000000078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00E9F9FD0008750D0008750D0008750D0008750D003FD868003CD4
      620008750D0008750D0008750D0008750D00048CB900B4FFFF00B6F6FF00C6F5
      FF00B5A09F00E8DDD600FFFFF400FEFED600FFFEDD00FEFED600FFF2BA00CAA0
      8C00000000000000000000000000000000000000000000000000C2A6A400FEF3
      E900FEF3E900D8E3C700FEF3E900FEF3E900D8E3C700018A0200018A0200FEF3
      E900FEF3E900C2A6A400000000000000000000000000078DBB00BAEEF60030BC
      DD0011A7D200129ECA0020A2CB0035A7CD002692BF0092CEE4000D80AA000000
      000000000000000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A1CA0035A7CD002692BF0092CEE40008750D0045DD710041DA
      6D0008750D00000000000000000000000000048CB900B8EDF60030BCDC0011A7
      D1009C919000FFFFE400FFFEDD00FEFED600FFFEDD00FCF5CD00F8D09800ECD1
      AC00AD8580000000000000000000000000000000000000000000C2A6A400FFF1
      E500FFF1E500018A0200D9E2C300D9E2C300018A0200D9E2C300018A0200FFF1
      E500FFF1E500C2A6A400000000000000000000000000078DBB004AC5DD0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E3000682B6000D80AA000000
      000000000000000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E3000682B60008750D004DE67F004DE6
      7F0008750D00000000000000000000000000088EBC004BC6DC0058E9FD0022D7
      FC00A49E9900FFFEDD00FFFEDD00FFFEDD00FFFEDD00F6DAAB00F3BE8000F5DE
      B500AD8580000000000000000000000000000000000000000000C2A6A400FFF0
      E200FFF0E200D9E1C100018A0200018A0200D9E1C100DDCFC200DDCFC200DDCF
      C200DDCFC200C2A6A400000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE0008750D0008750D000875
      0D0008750D00000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD0096959400FAF6D600FFFEDD00FAF6D600F9E1B100F5CB9A00FEEAB900E4CC
      A900AD8580000000000000000000000000000000000000000000C2A6A400FFEE
      DE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00C5B5A900C3B4A800C2B3
      A700C1B2A600C2A6A400000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E7FA900000000000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD005EA8BE00D3BBA200FFF7C600F8D09800F4C88E00FEF7E000F9F6F200AD85
      8000000000000000000000000000000000000000000000000000C2A6A400FFEC
      DA00FFECDA00FFECDA00FFECDA00FFECDA00FFECDA00B0A29600B0A29600B0A2
      9600B0A29600C2A6A400000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E80AA00000000000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD0039D7FB008AA5AD00CDAC9300ECD1AC00F5E1B600DAC5B700AD858000AD85
      8000000000000000000000000000000000000000000000000000C2A6A400FFEA
      D700FFEAD700FFEAD700FFEAD700FFEAD700C9B9AC00FBF8F400FBF8F400E6DA
      D900C2A6A40000000000000000000000000000000000078DBB0091FCFE0082F8
      FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000D80AA000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      000000000000000000000000000000000000088EBC008CFAFD0081F8FE0071F9
      FE007BFFFF0097FCFD00A1C6C8008F989B008683880087707000000000000000
      0000000000000000000000000000000000000000000000000000C2A6A400FFE8
      D300FFE8D300FFE8D300FFE8D300FFE8D300C9B9AC00FBF8F400DFCEC700C2A6
      A4000000000000000000000000000000000000000000078DBB00FCFFFF00F4FF
      FF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000D80AA000000
      000000000000000000000000000000000000078DBB00FCFFFF00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      000000000000000000000000000000000000048CB900FBFFFF00F5FFFE00D2FF
      FF00B4FFFF00ADFFFE00ADFFFE00ADFFFE0071F9FE000E80AA00000000000000
      0000000000000000000000000000000000000000000000000000C2A6A400FFE6
      D000FFE6D000FFE6D000FFE6D000FFE6D000C9B9AC00DFCEC700C2A6A4000000
      00000000000000000000000000000000000000000000000000000C92C000F4FF
      FF00E1F8FD00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF00000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      000000000000000000000000000000000000000000000A91C100F5FFFE00E3FE
      FF00C6FEFF00ADFFFE00A7FFFF009BFBFD001285B00000000000000000000000
      0000000000000000000000000000000000000000000000000000C2A6A400C2A6
      A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400000000000000
      000000000000000000000000000000000000000000000000000000000000078D
      BB00078DBB00078DBB00078DBB00078DBB00078DBB0000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088EBC00088E
      BC00048CB900088EBC00088EBC00088EBC000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FC03FC7F00000000C003FC7F00000000
      8003FC7F000000000003FC7F000000000003FC7F000000000003FC7F00000000
      0003FC7F000000000001FC7F00000000003CFC7F00000000003EFC7F00000000
      003FFC7F00000000003FF83F00000000003F000000000000003F000000000000
      807F000000000000C0FFF83F00000000C003FFFFFF87FFFCC003E07FC087C0F8
      C003C03F80078070C003800300000021C003800300000003C003800300000007
      C00380030000000FC003801F00070007C003801F00070007C003801F00070007
      C003801F003F000FC003801F003F000FC007801F003F003FC00F801F003F003F
      C01FC03F807F807FC03FE07FC0FFC0FF00000000000000000000000000000000
      000000000000}
  end
  object Timer1: TTimer
    Interval = 600000
    OnTimer = Timer1Timer
    Left = 432
    Top = 88
  end
end
