object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Pack: TAdvOutlookCalendar Demo'
  ClientHeight = 616
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 714
    Height = 41
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 10
      Width = 110
      Height = 25
      Hint = 'Connect to Windows Live'
      Caption = 'Connect'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object btRemove: TButton
      Left = 132
      Top = 10
      Width = 110
      Height = 25
      Hint = 'Remove access to Live account'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 714
    Height = 82
    Align = alTop
    Caption = 'Calendars'
    TabOrder = 1
    object Label1: TLabel
      Left = 369
      Top = 25
      Width = 53
      Height = 13
      Caption = 'Start date:'
    end
    object Label13: TLabel
      Left = 369
      Top = 53
      Width = 47
      Height = 13
      Caption = 'End date:'
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 22
      Width = 259
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object dpCalStartDate: TDateTimePicker
      Left = 426
      Top = 22
      Width = 121
      Height = 21
      Date = 41153.582957546300000000
      Time = 41153.582957546300000000
      TabOrder = 1
    end
    object dpCalEndDate: TDateTimePicker
      Left = 426
      Top = 49
      Width = 121
      Height = 21
      Date = 41274.582957546300000000
      Time = 41274.582957546300000000
      TabOrder = 2
    end
    object btUpdate: TButton
      Left = 553
      Top = 49
      Width = 110
      Height = 25
      Hint = 'Update time span'
      Caption = 'Update'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btUpdateClick
    end
    object edAddCall: TEdit
      Left = 17
      Top = 49
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'New Calendar'
    end
    object btAddCal: TButton
      Left = 165
      Top = 49
      Width = 110
      Height = 25
      Caption = 'Add Calendar'
      TabOrder = 5
      OnClick = btAddCalClick
    end
    object Button2: TButton
      Left = 281
      Top = 49
      Width = 75
      Height = 25
      Caption = 'Rename'
      TabOrder = 6
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 281
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 7
      OnClick = Button3Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 123
    Width = 714
    Height = 217
    Align = alClient
    Caption = 'Events'
    TabOrder = 2
    DesignSize = (
      714
      217)
    object ListView1: TListView
      Left = 16
      Top = 23
      Width = 687
      Height = 188
      Anchors = [akLeft, akTop, akRight, akBottom]
      Columns = <
        item
          Caption = 'Start time'
          Width = 110
        end
        item
          Caption = 'End time'
          Width = 110
        end
        item
          Caption = 'Subject'
          Width = 180
        end
        item
          Caption = 'Description'
          Width = 250
        end>
      ColumnClick = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnChange = ListView1Change
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 340
    Width = 714
    Height = 276
    Align = alBottom
    Caption = 'Details'
    TabOrder = 3
    object Label4: TLabel
      Left = 16
      Top = 49
      Width = 57
      Height = 13
      Caption = 'Description:'
    end
    object Label5: TLabel
      Left = 16
      Top = 77
      Width = 44
      Height = 13
      Caption = 'Location:'
    end
    object Label6: TLabel
      Left = 16
      Top = 174
      Width = 51
      Height = 13
      Caption = 'Start time:'
    end
    object Label7: TLabel
      Left = 17
      Top = 203
      Width = 45
      Height = 13
      Caption = 'End time:'
    end
    object Label11: TLabel
      Left = 16
      Top = 104
      Width = 53
      Height = 13
      Caption = 'Sensitivity:'
    end
    object Label10: TLabel
      Left = 16
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Name:'
    end
    object Edit3: TEdit
      Left = 87
      Top = 19
      Width = 248
      Height = 21
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 87
      Top = 46
      Width = 248
      Height = 21
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 87
      Top = 72
      Width = 248
      Height = 21
      TabOrder = 2
    end
    object StartDate: TDateTimePicker
      Left = 87
      Top = 172
      Width = 121
      Height = 21
      Date = 41171.620329733800000000
      Time = 41171.620329733800000000
      TabOrder = 5
    end
    object EndDate: TDateTimePicker
      Left = 87
      Top = 199
      Width = 121
      Height = 21
      Date = 41171.620329733800000000
      Time = 41171.620329733800000000
      TabOrder = 7
    end
    object StartTime: TDateTimePicker
      Left = 214
      Top = 172
      Width = 121
      Height = 21
      Date = 41165.000000000000000000
      Format = 'HH:mm'
      Time = 41165.000000000000000000
      Kind = dtkTime
      TabOrder = 6
    end
    object EndTime: TDateTimePicker
      Left = 214
      Top = 199
      Width = 121
      Height = 21
      Date = 41165.000000000000000000
      Format = 'HH:mm'
      Time = 41165.000000000000000000
      Kind = dtkTime
      TabOrder = 8
    end
    object cbVisibility: TComboBox
      Left = 87
      Top = 99
      Width = 121
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 3
      Text = 'Normal'
      Items.Strings = (
        'Normal'
        'Personal'
        'Private'
        'Confidential')
    end
    object cbAllday: TCheckBox
      Left = 87
      Top = 149
      Width = 248
      Height = 17
      Caption = 'This is an all day Event'
      TabOrder = 4
      OnClick = cbAlldayClick
    end
    object Panel2: TPanel
      Left = 2
      Top = 233
      Width = 710
      Height = 41
      Align = alBottom
      TabOrder = 9
      object Button6: TButton
        Left = 15
        Top = 8
        Width = 110
        Height = 25
        Hint = 'Delete the Event'
        Caption = 'Delete'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 130
        Top = 8
        Width = 110
        Height = 25
        Hint = 'Update the Event'
        Caption = 'Update'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = Button7Click
      end
      object Button5: TButton
        Left = 246
        Top = 8
        Width = 110
        Height = 25
        Hint = 'Create a new Event'
        Caption = 'New'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = Button5Click
      end
    end
    object cbRec: TCheckBox
      Left = 87
      Top = 126
      Width = 248
      Height = 17
      Caption = 'This is a recurrent Event'
      Enabled = False
      TabOrder = 10
    end
  end
  object AdvOutlookCalendar1: TAdvOutlookCalendar
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'https://www.microsoft.com/'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    Scopes.Strings = (
      'https://outlook.office.com/calendars.readwrite'
      'offline_access')
    OnReceivedAccessToken = AdvOutlookCalendar1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Calendars = <>
    Items = <>
    Left = 488
    Top = 8
  end
end
