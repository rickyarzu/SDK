object dlgVclMasterDetailTestDBOrmSync: TdlgVclMasterDetailTestDBOrmSync
  Left = 0
  Top = 0
  Caption = 'dlgVclMasterDetailTestDBOrmSync'
  ClientHeight = 386
  ClientWidth = 870
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object pgTestMasterDetail: TPageControl
    Left = 0
    Top = 52
    Width = 870
    Height = 297
    ActivePage = tsDetail
    Align = alTop
    TabOrder = 0
    object tsMaster: TTabSheet
      Caption = 'Master'
    end
    object tsDetail: TTabSheet
      Caption = 'Detail'
      ImageIndex = 1
    end
  end
  object tlbDocument: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 864
    Height = 46
    ButtonHeight = 21
    ButtonWidth = 31
    ShowCaptions = True
    TabOrder = 1
  end
  object JanuaActionViewController1: TJanuaActionViewController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ButtonSize = jbs24
    Left = 307
    Top = 65248
  end
end
