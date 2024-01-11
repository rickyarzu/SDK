inherited dmVCLMainApplication: TdmVCLMainApplication
  Height = 343
  Width = 290
  inherited dsMaster: TDataSource
    Left = 56
    Top = 32
  end
  inherited dsDetail: TDataSource
    Left = 56
    Top = 96
  end
  object ActionListStandard: TActionList
    Left = 56
    Top = 163
    object RecordNew: TAction
      Category = 'Edit'
      Caption = 'RecordNew'
    end
    object RecordDelete: TAction
      Category = 'Edit'
      Caption = 'RecordDelete'
    end
    object RecordEdit: TAction
      Category = 'Edit'
      Caption = 'RecordEdit'
    end
    object AdvancedSearch: TAction
      Category = 'Edit'
      Caption = 'AdvancedSearch'
    end
    object Print: TAction
      Category = 'Edit'
      Caption = 'Print'
    end
    object Export: TAction
      Category = 'Edit'
      Caption = 'Export'
    end
  end
  object ActionList: TActionList
    Left = 58
    Top = 228
    object actHome: TAction
      Caption = 'Home'
      Hint = 'Home action...'
      ImageIndex = 5
    end
    object actChangeTheme: TAction
      Caption = 'Theme selector'
      Hint = 'Change theme using Theme Selector...'
      ImageIndex = 7
    end
    object actShowChildForm: TAction
      Caption = 'Child form'
      Hint = 'Show child form...'
      ImageIndex = 3
    end
    object actMenu: TAction
      Caption = 'actMenu'
      Hint = 'Collapse'
      ImageIndex = 0
    end
    object actSettings: TAction
      Caption = 'Settings'
      ImageIndex = 1
    end
    object actViewOptions: TAction
      Caption = 'Menu'
      Hint = 'Menu settings'
      ImageIndex = 12
    end
    object actBack: TAction
      Caption = 'Back'
      ImageIndex = 8
    end
    object actAnimate: TAction
      Caption = 'Animate'
      ImageIndex = 9
    end
    object actLog: TAction
      Caption = 'Log'
      ImageIndex = 10
    end
    object acFont: TAction
      Caption = 'Font'
      ImageIndex = 11
    end
    object acApplyFont: TAction
      Caption = 'Save'
      Hint = 'Save application font...'
      ImageIndex = 13
    end
    object acIconFonts: TAction
      Caption = 'Icon Fonts'
      ImageIndex = 14
    end
    object acErrorMessage: TAction
      Caption = 'Error Message...'
      ImageIndex = 16
    end
    object acWarningMessage: TAction
      Caption = 'Warning Message...'
      ImageIndex = 15
    end
    object acInfoMessage: TAction
      Caption = 'Info Message...'
      ImageIndex = 17
    end
    object acConfirmMessage: TAction
      Caption = 'Confirmation Message...'
      ImageIndex = 18
    end
    object acAbout: TAction
      Caption = 'About...'
      ImageIndex = 19
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 152
    Top = 120
  end
  object ColorDialog1: TColorDialog
    Left = 152
    Top = 184
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.txt (Text file)|*.txt'
    Left = 152
    Top = 248
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.txt (Text file)|*.txt'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 160
    Top = 56
  end
end
