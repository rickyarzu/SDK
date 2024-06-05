object Form98: TForm98
  Left = 0
  Top = 0
  Caption = 'Google tasks demo'
  ClientHeight = 490
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 45
    Width = 38
    Height = 13
    Caption = 'My Lists'
  end
  object Label2: TLabel
    Left = 8
    Top = 230
    Width = 44
    Height = 13
    Caption = 'My Tasks'
  end
  object btnConnect: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 0
    OnClick = btnConnectClick
  end
  object lstTaskList: TListBox
    Left = 8
    Top = 64
    Width = 378
    Height = 112
    ItemHeight = 13
    TabOrder = 1
    OnClick = lstTaskListClick
  end
  object btnAddTask: TButton
    Left = 634
    Top = 461
    Width = 78
    Height = 25
    Caption = 'Add'
    Enabled = False
    TabOrder = 10
    OnClick = btnAddTaskClick
  end
  object btnSaveTask: TButton
    Left = 802
    Top = 461
    Width = 80
    Height = 25
    Caption = 'Save'
    Enabled = False
    TabOrder = 12
    OnClick = btnSaveTaskClick
  end
  object btnAddList: TButton
    Left = 717
    Top = 182
    Width = 80
    Height = 25
    Caption = 'Add'
    Enabled = False
    TabOrder = 4
    OnClick = btnAddListClick
  end
  object btnSaveList: TButton
    Left = 803
    Top = 182
    Width = 80
    Height = 25
    Caption = 'Save'
    Enabled = False
    TabOrder = 5
    OnClick = btnSaveListClick
  end
  object btnRemoveTaskList: TButton
    Left = 406
    Top = 182
    Width = 145
    Height = 25
    Caption = 'Remove'
    Enabled = False
    TabOrder = 6
    OnClick = btnRemoveTaskListClick
  end
  object lstvTaskLists: TListView
    Left = 8
    Top = 249
    Width = 378
    Height = 206
    Columns = <
      item
        AutoSize = True
        Caption = 'Description'
      end
      item
        AutoSize = True
        Caption = 'Due Date'
      end
      item
        AutoSize = True
        Caption = 'Completed'
      end
      item
        AutoSize = True
        Caption = 'Parent'
      end>
    ReadOnly = True
    RowSelect = True
    TabOrder = 7
    ViewStyle = vsReport
    OnSelectItem = lstvTaskListsSelectItem
  end
  object btnNextPage: TButton
    Left = 313
    Top = 182
    Width = 73
    Height = 25
    Caption = 'Next Page'
    Enabled = False
    TabOrder = 2
    OnClick = btnNextPageClick
  end
  object btnNextPageTasks: TButton
    Left = 313
    Top = 461
    Width = 73
    Height = 25
    Caption = 'Next Page'
    Enabled = False
    TabOrder = 9
    OnClick = btnNextPageTasksClick
  end
  object btnAddChildTask: TButton
    Left = 718
    Top = 461
    Width = 78
    Height = 25
    Caption = 'Add child'
    Enabled = False
    TabOrder = 11
    OnClick = btnAddChildTaskClick
  end
  object btnRemoveTask: TButton
    Left = 406
    Top = 461
    Width = 146
    Height = 25
    Caption = 'Remove task'
    Enabled = False
    TabOrder = 13
    OnClick = btnRemoveTaskClick
  end
  object GroupBox1: TGroupBox
    Left = 406
    Top = 58
    Width = 475
    Height = 118
    Caption = 'Task list detail'
    TabOrder = 3
    object Label5: TLabel
      Left = 16
      Top = 24
      Width = 24
      Height = 13
      Caption = 'Title:'
    end
    object Label6: TLabel
      Left = 16
      Top = 56
      Width = 67
      Height = 13
      Caption = 'Last updated:'
    end
    object Label7: TLabel
      Left = 16
      Top = 88
      Width = 14
      Height = 13
      Caption = 'Id:'
    end
    object lblLastUpdated: TLabel
      Left = 105
      Top = 56
      Width = 3
      Height = 13
    end
    object lblTaskListId: TLabel
      Left = 104
      Top = 88
      Width = 3
      Height = 13
    end
    object edListTitle: TEdit
      Left = 104
      Top = 21
      Width = 249
      Height = 21
      TabOrder = 0
      TextHint = 'Title'
    end
  end
  object GroupBox2: TGroupBox
    Left = 406
    Top = 243
    Width = 475
    Height = 212
    Caption = 'Task detail'
    TabOrder = 8
    object Label8: TLabel
      Left = 16
      Top = 32
      Width = 24
      Height = 13
      Caption = 'Title:'
    end
    object Label9: TLabel
      Left = 16
      Top = 62
      Width = 48
      Height = 13
      Caption = 'Due date:'
    end
    object Label10: TLabel
      Left = 14
      Top = 121
      Width = 14
      Height = 13
      Caption = 'Id:'
    end
    object lblTaskId: TLabel
      Left = 104
      Top = 120
      Width = 3
      Height = 13
    end
    object Label3: TLabel
      Left = 14
      Top = 160
      Width = 32
      Height = 13
      Caption = 'Notes:'
    end
    object edTitle: TEdit
      Left = 106
      Top = 30
      Width = 247
      Height = 21
      TabOrder = 0
      TextHint = 'Title'
    end
    object dtDue: TDateTimePicker
      Left = 106
      Top = 57
      Width = 247
      Height = 21
      Date = 41914.413306631940000000
      Time = 41914.413306631940000000
      ShowCheckbox = True
      TabOrder = 1
    end
    object cbCompleted: TCheckBox
      Left = 107
      Top = 84
      Width = 102
      Height = 17
      Caption = 'Completed'
      TabOrder = 2
    end
    object MemoNotes: TMemo
      Left = 104
      Top = 140
      Width = 249
      Height = 67
      TabOrder = 3
    end
  end
  object btnDisconnect: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Disconnect'
    Enabled = False
    TabOrder = 14
    OnClick = btnDisconnectClick
  end
  object AdvGTasks1: TAdvGTasks
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888/'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'GoogleTasks'
    PersistTokens.Key = '.\GTASKS.INI'
    Scopes.Strings = (
      'https://www.googleapis.com/auth/userinfo.profile'
      'https://www.googleapis.com/auth/userinfo.email'
      'https://www.googleapis.com/auth/tasks'
      'https://www.googleapis.com/auth/tasks.readonly')
    OnReceivedAccessToken = AdvGTasks1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 360
    Top = 8
  end
end
